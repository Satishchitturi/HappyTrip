package com.happytrip.services.impl;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.BackupDao;
import com.happytrip.dao.BookingCancellationDao;
import com.happytrip.dao.FlightBookingDao;
import com.happytrip.dao.FlightDao;
import com.happytrip.dao.FlightRouteDao;
import com.happytrip.dao.LookupDao;
import com.happytrip.dao.SeatsExhaustedException;
import com.happytrip.dao.UserDao;
import com.happytrip.miles.HappyMile;
import com.happytrip.miles.HappyMilesService;
import com.happytrip.model.Booking;
import com.happytrip.model.BookingCancelation;
import com.happytrip.model.BookingContact;
import com.happytrip.model.BookingPayment;
import com.happytrip.model.City;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.FlightCapacity;
import com.happytrip.model.FlightClass;
import com.happytrip.model.FlightInventory;
import com.happytrip.model.FlightRouteCost;
import com.happytrip.model.Passenger;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.SeatAvailability;
import com.happytrip.model.User;
import com.happytrip.payment.PaymentGateway;
import com.happytrip.payment.Transaction;
import com.happytrip.payment.model.CreditCard;
import com.happytrip.services.CardDeclinedException;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.InvalidCancellationTimeException;
import com.happytrip.services.InvalidCardDataException;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.AuthenticatedUserUtil;
import com.happytrip.util.StringUtil;

@Service
public class FlightBookingServiceImpl implements FlightBookingService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(FlightBookingServiceImpl.class);

	@Autowired
	private FlightRouteDao flightRouteDao;

	@Autowired
	private FlightBookingDao flightBookingDao;

	@Autowired
	private BackupDao backupDao;

	@Autowired
	private BookingCancellationDao bookingCancellationDao;

	@Autowired
	private PaymentGateway paymentGateway;

	@Autowired
	private LookupDao lookupDao;

	@Autowired
	private HappyMilesService happyMilesService;

	@Autowired
	private UserDao userDao;

	@Autowired
	private FlightDao flightDao;

	@Autowired
	private UserProfileService userProfileService;

	@Override
	public List<City> findAllFromCities(String cityName) {
		// TODO Auto-generated method stub
		return flightRouteDao.findAllFromCities(cityName);
	}

	@Override
	public List<City> findAllCitiesFlownFrom(String cityName) {
		// TODO Auto-generated method stub
		return flightRouteDao.findAllToCity(cityName);
	}

	@Override
	public List<ScheduledFlight> searchFlights(long fromCity, long toCity,
			FlightClass classOfFlight, int paxNo, Date departureDate) {
		// TODO Auto-generated method stub
		Date currentDate = getTodaysDateAtMidnight();
		LOGGER.info("The Departure Date is " + departureDate + " And current date is " + currentDate);
		long departureTimeInMillis = departureDate.getTime();
		long currentDateTimeInMillis = currentDate.getTime();
		String searchDelay = "0000";
		Calendar cal = Calendar.getInstance();
		LOGGER.info("The departureTimeInMillis is " + departureTimeInMillis + " And current date in millis is " + currentDateTimeInMillis);
		if(currentDate.compareTo(departureDate)==0){
			LOGGER.info("The departure date is same as current date");
			searchDelay = returnHourDelayedBy2(cal);
		}else{
			if((departureTimeInMillis - currentDateTimeInMillis)==86400000){
				if(cal.get(Calendar.HOUR_OF_DAY)>=22){
					searchDelay = returnHourDelayedBy2(cal);
				}
			}
		}
		LOGGER.info("Search delay is " + searchDelay);
	
		return flightRouteDao.searchFlights(fromCity, toCity, departureDate,
				classOfFlight, paxNo,searchDelay);
	}

	private String returnHourDelayedBy2(Calendar cal){
		cal.add(Calendar.HOUR_OF_DAY,4);
		int hourDelay = cal.get(Calendar.HOUR_OF_DAY);
		if(hourDelay==0){
			hourDelay=24;
		}
		return StringUtil.convertTimeTo24HoursOne(hourDelay);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public Transaction bookFlight(CreditCard card, FlightBooking flightBooking)
			throws SeatsExhaustedException, InvalidCardDataException,
			CardDeclinedException {
		float totalCost = flightBooking.getBooking().getTotalCost();
		Transaction tx = makePayment(card, totalCost);
		BookingPayment payment = createBookingPayment(card, tx);

		flightBooking.getBooking().setBookingpayment(payment);
		payment.setBooking(flightBooking.getBooking());

		makeBooking(flightBooking);
		return tx;
	}

	private float calculateMiles(HappyMile miles, float totalCost) {
		// TODO Auto-generated method stub
		if (miles != null) {
			if (miles.isAvailable()) {
				int minCharge = miles.getMinimumCharge();
				// Miles assigned only if the amount charged is more than
				// minimum charge
				if (totalCost >= minCharge) {
					float chargeableMiles = totalCost
							- miles.getBaseExcemption();
					return chargeableMiles * miles.getMilesPerRupee();
				}
			} else {
				return 0;
			}
		}
		return 0;
	}

	private HappyMile getMiles(FlightBooking booking) {
		try {
			if (AuthenticatedUserUtil.currentLoggedInUser(userProfileService) != null) {
				String airlineName = booking.getFlightRoute().getFlight()
						.getAirline().getAirlineName();
				return this.happyMilesService.getForAirlineName(airlineName);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO Auto-generated catch block
			return null;
		}
	}

	private Transaction makePayment(CreditCard card, float amount)
			throws InvalidCardDataException, CardDeclinedException {
		if (paymentGateway.validateCard(card.getCardNumber(),
				card.getCardHolderName(), card.getCvvNumber(),
				card.getCreditCardType(), card.getExpiryMonth(),
				card.getExpiryYear())) {
			Transaction paymentTransaction = paymentGateway.authorize(
					card.getCardNumber(), amount);
			if (paymentTransaction != null && paymentTransaction.isStatus()) {
				return paymentTransaction;
			} else {
				throw new CardDeclinedException(
						"The payment was not approved by your bank. Please try again.");
			}
		} else {
			throw new InvalidCardDataException("Card information is incorrect.");
		}
	}

	private void makeBooking(FlightBooking flightBooking)
			throws SeatsExhaustedException {

		// Calculate the miles on the cost of ticket minus the amount paid for
		// insurance
		float totalCostOfTicket = flightBooking.getBooking().getTotalCost()
				- flightBooking.getInsuranceAmount();
		float miles = calculateMiles(getMiles(flightBooking), totalCostOfTicket);

		// Set the miles in the flight booking
		flightBooking.setMiles(miles);
		User currentUser = flightBooking.getBooking().getBooker();
		if (currentUser != null) {
			userDao.updateMiles(currentUser, miles);
		}

		// Save the flight booking
		flightBooking.getBooking().setCancelled(false);
		flightBookingDao.save(flightBooking);

		ScheduledFlight flight = new ScheduledFlight();
		flight.setFlightRouteId(flightBooking.getFlightRoute()
				.getFlightRouteId());
		flightRouteDao.updateAvailability(flightBooking.getNoOfSeats(), flight,
				flightBooking.getFlightClass());
	}

	private BookingPayment createBookingPayment(CreditCard card, Transaction tx) {
		BookingPayment payment = new BookingPayment();
		payment.setCreditCardNumber(new Long(card.getCardNumber()));
		payment.setPaymentDate(new Date(System.currentTimeMillis()));
		payment.setReferenceNo(tx.getTransactionId());
		return payment;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public Transaction bookFlight(CreditCard card, FlightBooking outbound,
			FlightBooking returnFlight) throws SeatsExhaustedException,
			InvalidCardDataException, CardDeclinedException {
		// TODO Auto-generated method stub
		float totalCost = outbound.getBooking().getTotalCost();
		totalCost += returnFlight.getBooking().getTotalCost();
		Transaction tx = makePayment(card, totalCost);

		BookingPayment paymentOut = createBookingPayment(card, tx);
		outbound.getBooking().setBookingpayment(paymentOut);
		paymentOut.setBooking(outbound.getBooking());

		BookingPayment paymentReturn = createBookingPayment(card, tx);
		returnFlight.getBooking().setBookingpayment(paymentReturn);
		paymentReturn.setBooking(returnFlight.getBooking());

		makeBooking(outbound);
		makeBooking(returnFlight);
		return tx;
	}

	public void setFlightRouteDao(FlightRouteDao flightRouteDao) {
		this.flightRouteDao = flightRouteDao;
	}

	public void setFlightBookingDao(FlightBookingDao flightBookingDao) {
		this.flightBookingDao = flightBookingDao;
	}

	public void setBackupDao(BackupDao backupDao) {
		this.backupDao = backupDao;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public float cancelFlightBooking(String id)
			throws InvalidCardDataException, InvalidCancellationTimeException {
		long longId = Long.parseLong(id);
		FlightBooking booking = flightBookingDao.getById(longId);
		Date dateOfJourney = booking.getDateOfJourney();
		LOGGER.info("Cancelling the flight");
		try {
			long timeDiff = StringUtil.elapsedTime(dateOfJourney, booking
					.getFlightRoute().getDepartureTime());
			if (timeDiff < 3) {
				LOGGER.error("Unable to cancel a flight within 3 hours of take off");
				throw new InvalidCancellationTimeException(
						"Flight is scheduled within 3 hours of cancellation");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			LOGGER.error(e.getMessage());
			throw new InvalidCancellationTimeException(e.getMessage());
		}
		LOGGER.info("Cancelling the booking " + booking);

		if (null != booking) {
			
			// Find the cost of each ticket in the booking
			float costPerTicket = booking.getCostPerTicket();
			LOGGER.info("Cancelling the booking cost per ticket is " + costPerTicket);
			float refundAmount = 0;
			if (costPerTicket > 750) {
				// Reduce Rs 750 from the cost of ticket if the cost is greater than 750.
				refundAmount = costPerTicket - 750;
			}
			
			float totalRefundAmount = refundAmount * booking.getNoOfSeats();
			
			LOGGER.info("Cancelling the flight and refunding " + totalRefundAmount);
			User booker = booking.getBooking().getBooker();
			if (null != booker) {
				booker.setMiles(booker.getMiles() - booking.getMiles());
			}
			booking.getBooking().setCancelled(true);

			BookingCancelation cancellation = new BookingCancelation();
			cancellation.setBooking(booking.getBooking());
			cancellation.setCancelationDate(new Date());
			cancellation.setRefundAmount(totalRefundAmount);

			if(totalRefundAmount>0){
				Transaction transaction = paymentGateway.creditAmount(
						String.valueOf(booking.getBooking().getBookingpayment()
								.getCreditCardNumber()), refundAmount);
	
				if (transaction.isStatus()) {
					bookingCancellationDao.save(cancellation);
					flightBookingDao.update(booking);
					userDao.update(booker);
				} else {
					throw new InvalidCardDataException();
				}
			}else{
				bookingCancellationDao.save(cancellation);
				flightBookingDao.update(booking);
				userDao.update(booker);
			}
			return totalRefundAmount;
		}else{
			return 0;
		}
	}

	public FlightBooking createBooking(String flightClassName,
			Date journeyDate, ScheduledFlight flightToBeBooked,
			PassengerListDto passengerList, Passenger primaryPassenger,
			User loggedInUser) {
		// TODO Auto-generated method stub
		FlightBooking flightBooking = new FlightBooking();

		flightBooking.setFlightClass(lookupDao
				.findForClassName(flightClassName));

		flightBooking.setDateOfJourney(journeyDate);

		Set<Passenger> passengers = new HashSet<Passenger>();
		passengers.addAll(passengerList.getPassengers());
		flightBooking.setPassengers(passengers);

		flightBooking.setFlightRoute(flightToBeBooked);
		Set<FlightRouteCost> costs = flightToBeBooked.getFlightRouteCosts();
		int totalPax = passengerList.getPassengers().size();
		
		FlightRouteCost perTicketCost = costs.iterator().next();
		flightBooking.setCostPerTicket(perTicketCost.getCostPerTicket());
		
		float insuranceAmount = calculateInsurance(costs, passengerList,
				totalPax, flightClassName);
		float totalCost = calculateTotalCost(costs, passengerList,
				insuranceAmount, totalPax);

		Booking booking = new Booking();
		booking.setBookingReferenceNo(Long.toString(StringUtil
				.generateReference(System.currentTimeMillis())));
		booking.setTotalCost(totalCost);
		BookingContact contact = new BookingContact();
		contact.setContactName(primaryPassenger.getName());
		contact.setMobileNo(passengerList.getMobileNumber());

		if (loggedInUser != null) {
			booking.setBooker(loggedInUser);
		}
		booking.setBookingcontact(contact);

		flightBooking.setInsuranceAmount(insuranceAmount);
		flightBooking.setBooking(booking);
		flightBooking.setInsured(passengerList.isInsured());
		flightBooking.setNoOfSeats(totalPax);
		return flightBooking;
	}

	private float calculateInsurance(Set<FlightRouteCost> costs,
			PassengerListDto passengerList, int totalPax, String flightClassName) {
		if (passengerList.isInsured()) {
			FlightRouteCost bookedClassCost = null;
			for(FlightRouteCost cost:costs){
				if(cost.getFlightClass().getClassType().equals(flightClassName)){
					bookedClassCost = cost;
				}
			}
			if(bookedClassCost == null){
				return 0;
			}
			
			FlightRouteCost perTicketCost = bookedClassCost;
			float totalCost = perTicketCost.getCostPerTicket();

			// 5 percent of the ticket cost
			float insuranceAmount = totalCost * 0.05f;
 
			// Make it 250 if less than 250
			if (insuranceAmount < 250) {
				insuranceAmount = 250;
			} else {
				// Make it 500 if greater than 500
				if (insuranceAmount > 500) {
					insuranceAmount = 500;
				}
			}
			// Final insurance amount across all the tickets.
			return insuranceAmount*totalPax;
		} else {
			return 0;
		}
	}

	private float calculateTotalCost(Set<FlightRouteCost> costs,
			PassengerListDto passengerList, float insuranceAmount, int totalPax) {
		// TODO Auto-generated method stub
		float totalCost = 0;
		if (costs != null) {
			FlightRouteCost perTicketCost = costs.iterator().next();
			totalCost = totalPax * perTicketCost.getCostPerTicket()
					+ insuranceAmount;
		}
		return totalCost;
	}
	
	private Date getTodaysDateAtMidnight(){
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(new Date().getTime());
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		return cal.getTime();
	}

	@Override
	public List<FlightInventory> loadFlightInventoryForCurrentDate() {
		// TODO Auto-generated method stub
		List<FlightInventory> inventories = new ArrayList<FlightInventory>();
		
		Date date = getTodaysDateAtMidnight();
		
		List<ScheduledFlight> flights = flightRouteDao
				.findAllFlightsForDate(date);
		for (ScheduledFlight flight : flights) {
			FlightInventory inventory = new FlightInventory();
			inventory.setAirlineName(flight.getFlight().getAirline()
					.getAirlineName());
			inventory.setFromCity(flight.getRoute().getFromCity().getCityName());
			inventory.setToCity(flight.getRoute().getToCity().getCityName());
			inventory.setArrivalTime(flight.getArrivalTime());
			inventory.setDepartureTime(flight.getDepartureTime());
			inventory.setFlightName(flight.getFlight().getFlightName());

			List<FlightCapacity> capacities = flightDao
					.getCapacitiesForFlightId(flight.getFlight().getFlightId());

			int economyCapacity = 0;
			int businessCapacity = 0;

			for (FlightCapacity capacity : capacities) {
				if (capacity.getFlightClass().getClassType().equals("Economy")) {
					economyCapacity = capacity.getTotalSeats();
					inventory.setEconomyCapacity(economyCapacity);
				}
				if (capacity.getFlightClass().getClassType().equals("Business")) {
					businessCapacity = capacity.getTotalSeats();
					inventory.setBusinessCapacity(businessCapacity);
				}
			}

			Set<SeatAvailability> availabilities = flight.getAvailability();
			for (SeatAvailability availability : availabilities) {
				if (availability.getFlightClass().getClassType()
						.equals("Economy")) {
					inventory.setEconomyBooked(economyCapacity
							- availability.getAvailableSeats());
					inventory.setEconomyAvailable(availability
							.getAvailableSeats());
				}
				if (availability.getFlightClass().getClassType()
						.equals("Business")) {
					inventory.setBusinessBooked(businessCapacity
							- availability.getAvailableSeats());
					inventory.setBusinessAvailable(availability
							.getAvailableSeats());
				}
			}
			inventories.add(inventory);
		}
		return inventories;
	}

}
