package com.happytrip.controllers.flight;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.happytrip.controllers.AdminController;
import com.happytrip.controllers.dto.flight.FlightBookingDto;
import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.SeatsExhaustedException;
import com.happytrip.model.Flight;
import com.happytrip.model.Passenger;
import com.happytrip.payment.Transaction;
import com.happytrip.payment.model.CreditCard;
import com.happytrip.services.CardDeclinedException;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.InvalidCardDataException;

@Controller
@SessionAttributes({"SearchData","SelectedFlights","PassengerList","Bookings"})
public class FlightPaymentController {

	@ModelAttribute("CreditCard")
	public CreditCard getCreditCard() {
		return new CreditCard();
	}

	@Autowired
	private FlightBookingService flightBookingService;
	private static final Logger LOGGER = LoggerFactory
			.getLogger(FlightPaymentController.class);

	@RequestMapping(value = "/flight/showPayment.html", method = RequestMethod.POST)
	public ModelAndView makePayment(
			@ModelAttribute("PassengerList") PassengerListDto passengerList,
			@ModelAttribute("Bookings") FlightBookingDto flightBooking){
		
		Map<String, Object> models = new HashMap<String, Object>();
		float totalCost = 0;
		
		if(flightBooking.getOutboundFlightBooking() !=null){
			totalCost+=flightBooking.getOutboundFlightBooking().getBooking().getTotalCost();
		}
		if(flightBooking.getReturnFlightBooking() !=null){
			totalCost+=flightBooking.getReturnFlightBooking().getBooking().getTotalCost();
		}
		models.put("totalCost", totalCost);
		return new ModelAndView("/flight/paymentDetails",models);
	}
	
	@RequestMapping(value = "/flight/confirmBooking.html", method = RequestMethod.POST)
	public ModelAndView confirmBooking(
			@ModelAttribute("CreditCard") CreditCard card,
			@ModelAttribute("PassengerList") PassengerListDto passengerList,
			@ModelAttribute("Bookings") FlightBookingDto flightBooking){
		
		Map<String, Object> models = new HashMap<String, Object>();
		Passenger primaryPassenger = passengerList.getPassengers().get(0);
		models.put("PrimaryPassenger", primaryPassenger);
		Transaction tx = null;
		if(flightBooking.getReturnFlightBooking() != null && flightBooking.getOutboundFlightBooking() != null){
			try{
				tx = flightBookingService.bookFlight(card, flightBooking.getOutboundFlightBooking(),flightBooking.getReturnFlightBooking());
				flightBooking.setReferenceNumber(tx.getTransactionId());
			}catch(SeatsExhaustedException see){
				LOGGER.error(see.getMessage());
				models.put("message", see.getMessage());
				return new ModelAndView("/flight/bookingFailure",models);
			} catch (InvalidCardDataException ice) {
				LOGGER.error(ice.getMessage());
				models.put("message", ice.getMessage());
				return new ModelAndView("/flight/bookingFailure",models);
			} catch (CardDeclinedException cde) {
				LOGGER.error(cde.getMessage());
				models.put("message", cde.getMessage());
				return new ModelAndView("/flight/bookingFailure",models);
			}
		}else{
			try {
				if(flightBooking.getOutboundFlightBooking() != null){
					tx = flightBookingService.bookFlight(card, flightBooking.getOutboundFlightBooking());
				}else{
					tx = flightBookingService.bookFlight(card, flightBooking.getReturnFlightBooking());
				}
				flightBooking.setReferenceNumber(tx.getTransactionId());
			} catch (SeatsExhaustedException see) {
				// TODO Auto-generated catch block
				LOGGER.error(see.getMessage());
				models.put("message", see.getMessage());
				return new ModelAndView("/flight/bookingFailure",models);
			} catch (InvalidCardDataException ice) {
				LOGGER.error(ice.getMessage());
				models.put("message", ice.getMessage());
				return new ModelAndView("/flight/bookingFailure",models);
			} catch (CardDeclinedException cde) {
				LOGGER.error(cde.getMessage());
				models.put("message", cde.getMessage());
				return new ModelAndView("/flight/bookingFailure",models);
			}
		}
		return new ModelAndView("/flight/bookingConfirmation",models);
	}
	
	@ExceptionHandler(Throwable.class)
	public String adminError(){
		return "/resultError";
	}

}
