using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Transaction;

namespace HappyTrip.DataAccessLayer.Transaction
{
    /// <summary>
    /// Class to construct the implementation object for a type of booking
    /// </summary>
    class BookingDAOImplFactory
    {
        /// <summary>
        /// Field of the class - Having a static instance. Singleton
        /// </summary>
        private static BookingDAOImplFactory instance = new BookingDAOImplFactory();

        /// <summary>
        /// Making the constructor private so that object is not created
        /// </summary>
        private BookingDAOImplFactory()
        {

        }
        /// <summary>
        /// Gets the instance of BookingDAOImplFactory
        /// </summary>
        /// <returns>Instance of BookingDAOImplFactory</returns>
        public static BookingDAOImplFactory GetInstance()
        {
            return instance;
        }

        /// <summary>
        /// Creates an object of a Data Access Implementor
        /// </summary>
        /// <param name="type"></param>
        /// <exception cref="InvalidBookingTypeDAOException</exception>
        /// <returns>Returns an interface for one the booking types supplied</returns>
        public IBookingDAOImpl Create(BookingTypes type)
        {
			IBookingDAOImpl bookings = null;
			if (type == BookingTypes.Flight)
			{
				bookings = new AirTravelBookingDAOImpl();
			}

			return bookings;
        }
    }
}
