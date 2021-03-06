﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Transaction;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.DataAccessLayer.Transaction;
using System.Transactions;
using HappyTrip.Model.PaymentService;

namespace HappyTrip.Model.BusinessLayer.Transaction
{
    /// <summary>
    /// Class to represent the operations that can be peformed to process a booking
    /// </summary>
    class BookingManager : HappyTrip.Model.BusinessLayer.Transaction.IBookingManager
    {
        /// <summary>
        /// Fields of the class
        /// </summary>
        IBookingDAO bookingDAO;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public BookingManager()
        {
            bookingDAO = BookingDAOFactory.GetInstance().Create(BookingTypes.Flight);
        }

        /// <summary>
        /// Paramerized Constructor
        /// </summary>
        /// <param name="bookingDAO"></param>
        public BookingManager(IBookingDAO bookingDAO)
        {
            this.bookingDAO = bookingDAO;
        }

        #region Method to make a payment to contact the payment services layer
        /// <summary>
        /// Processes the payment for a given card and returns the reference no for the 
        /// payment processed
        /// </summary>
        /// <param name="cardForBooking"></param>
        /// <param name="amount"></param>
        /// <param name="status"></param>
        /// <returns>Returns the payment reference number</returns>
        private string MakePayment(Card cardForBooking, decimal amount, out PaymentStatus status)
        {
            string referenceNo = string.Empty;
            IPaymentManager paymentManager = null;

            //Call the Payment Service which will internally call the wcf service payment gateway
            try
            {
                paymentManager = PaymentManagerFactory.GetInstance().Create();

                //referenceNo = paymentManager.MakePayment(cardForBooking, amount, out status);
                referenceNo = Guid.NewGuid().ToString();
                status = PaymentStatus.Success;

            }
            catch (PaymentNotProcessedFromServiceException ex)
            {
                throw new PaymentProcessException("Unable to Process Payment", ex);
            }
            catch(Exception ex)
            {
                throw new PaymentProcessException("Unable to Process Payment", ex);
            }

            return referenceNo;
        }
        #endregion

        #region Method to process new booking for air travel
        /// <summary>
        /// Processes a booking to be made - flight 
        /// </summary>
        /// <param name="newTravelBooking"></param>
        /// <param name="cardForBooking"></param>
        /// <returns>Returns a travel booking object updated with all the booking information</returns>
        public TravelBooking ProcessAirTravelBooking(TravelBooking newTravelBooking, Card cardForBooking)
        {
            bool isAvailable = false;
            string bookingReferenceNo = string.Empty;

            PaymentStatus status;
            string paymentReferenceNumber = string.Empty;

            //Checking for Availability of Schedules before porcessing the booking
            //1. Check for Availablity
            try
            {
                isAvailable = CheckAvailabilityForBooking(newTravelBooking);
            }
            catch (Search.FlightSeatsAvailabilityException Ex)
            {
                throw Ex;
            }
            catch (Exception ex)
            {
                throw new Search.FlightSeatsAvailabilityException("Seats Not Available", ex);
            }
           
            //If available, then make payment and store in database using transactions
            //If Available then do rest of the code
            if (isAvailable)
            {
                TransactionOptions options = new TransactionOptions();
                options.IsolationLevel = IsolationLevel.ReadCommitted;
                options.Timeout = TransactionManager.MaximumTimeout;

                using (TransactionScope scope = new TransactionScope(TransactionScopeOption.Required, options))
                {
                    try
                    {
                        //Processing the payment
                        paymentReferenceNumber = ProcessAirTravelBookingPayment(newTravelBooking, cardForBooking, out status);
                        
                        //Store in database
                        if (status == PaymentStatus.Success)
                        {
                            //Persist in the database
                            foreach (TravelDirection Direction in newTravelBooking.GetBookingTravelDirections())
                            {
                                bookingReferenceNo = StoreBookingInDatabase(newTravelBooking.GetBookingForTravel(Direction));
                                newTravelBooking.GetBookingForTravel(Direction).ReferenceNo = bookingReferenceNo;
                            }

                            scope.Complete();
                        }
                    }
                    catch (PaymentProcessException ex)
                    {
                        scope.Dispose();
                        throw ex;
                    }
                    catch (InvalidBookingTypeException ex)
                    {
                        scope.Dispose();
                        throw ex;
                    }
                    catch (StoreBookingInDatabaseException ex)
                    {
                        scope.Dispose();
                        throw new BookingException("Unable to Book Tickets", ex);
                    }
                    catch (Exception ex)
                    {
                        scope.Dispose();
                        throw new BookingException("Unable to Book Tickets", ex);
                    }
                }
            }
          
            return newTravelBooking;
        }

        /// <summary>
        /// To store Booking Information into the database for each schedule
        /// </summary>
        /// <param name="newBooking"></param>
        /// <returns>Returns the booking reference number for a given booking</returns>
        private string StoreBookingInDatabase(Booking newBooking)
        {
            string bookingReferenceNo = string.Empty;

            try
            {
                //Contact the Booking DAO from here to store flight booking information into database
                bookingReferenceNo = bookingDAO.MakeBooking(newBooking);

            }
            catch (InvalidBookingTypeDAOException ex)
            {
                throw new InvalidBookingTypeException("Invalid BookingType", ex);
            }
            catch(BookingDAOException ex)
            {
                throw new StoreBookingInDatabaseException("Unable to Store Booking in Database", ex);
            }
            catch (Exception ex)
            {
                throw new StoreBookingInDatabaseException("Unable to Store Booking in Database", ex);
            }

            return bookingReferenceNo;
        }

        /// <summary>
        /// Checks for the availabity of a travel booking sent
        /// </summary>
        /// <param name="newTravelBooking"></param>
        /// <returns>Returns the status of availability. True if available</returns>
        private bool CheckAvailabilityForBooking(TravelBooking newTravelBooking)
        {
            bool isAvailable = false;
            Search.SearchManager manager = new Search.SearchManager();
            FlightBooking booking = null;

            try
            {
                foreach (TravelDirection direction in newTravelBooking.GetBookingTravelDirections())
                {
                    booking = (FlightBooking)newTravelBooking.GetBookingForTravel(direction);

                    foreach (Schedule s in booking.TravelScheduleInfo.GetSchedules())
                    {
                        isAvailable = manager.GetAvailabilityForSchedule(s, booking.NoOfSeats, booking.DateOfJourney, booking.Class.ClassInfo);

                        if (!isAvailable)
                            break;
                    }

                }
            }
            catch (Search.FlightSeatsAvailabilityException)
            {
                throw;
            }

            return isAvailable;
        }

        /// <summary>
        /// Process Air Travel Booking payment
        /// </summary>
        /// <param name="newTravelBooking"></param>
        /// <param name="cardForBooking"></param>
        /// <param name="status"></param>
        /// <returns>Returns payment reference number</returns>
        private string ProcessAirTravelBookingPayment(TravelBooking newTravelBooking, Card cardForBooking, out PaymentStatus status)
        {
            string paymentReferenceNumber = string.Empty;
            decimal travelTotalCost = 0;

            //Calculating the cost
            travelTotalCost = newTravelBooking.GetBookingForTravel(TravelDirection.OneWay).TotalCost;

            if (newTravelBooking.IsReturnAvailable())
                travelTotalCost += newTravelBooking.GetBookingForTravel(TravelDirection.Return).TotalCost;
            

            //Make a Payment and update the booking reference number into booking object
            try
            {
                paymentReferenceNumber = MakePayment(cardForBooking, travelTotalCost, out status);

                if (status == PaymentStatus.Success)
                {
                    foreach (TravelDirection direction in newTravelBooking.GetBookingTravelDirections())
                    {
                        Payment newPayment = new Payment();
                        newPayment.Amount = travelTotalCost;
                        newPayment.PaymentDate = DateTime.Now;
                        newPayment.ReferenceNo = paymentReferenceNumber;

                        newTravelBooking.GetBookingForTravel(direction).PaymentInfo = newPayment;
                    }
                }
                else
                    throw new PaymentProcessException("Unable to Process Payment");
            }
            catch(PaymentProcessException)
            {
                throw;
            }
            catch(Exception ex)
            {
                throw new PaymentProcessException("Unable to Process Payment", ex);
            }

            return paymentReferenceNumber;
        }
        #endregion

    }
}
