using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.Model.Entities.Transaction;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;

namespace HappyTrip.DataAccessLayer.Transaction
{
    /// <summary>
    /// Class to implement Booking related database activities for different types of booking
    /// </summary>
    class BookingDAO : DataAccessLayer.Common.DAO, HappyTrip.DataAccessLayer.Transaction.IBookingDAO
    {
        /// <summary>
        /// Field of the class - Having a static instance. Singleton
        /// </summary>
        private static BookingDAO instance = new BookingDAO();

        /// <summary>
        /// Type of Booking implementation for a booking. AirTravel or Hotel, etc..
        /// </summary>
        private static IBookingDAOImpl daoImpl = null;


        /// <summary>
        /// Default Constructor - Made private to avoid construction from outside
        /// </summary>
        private BookingDAO()
        {
            
        }
        

        #region Method to get the instance of BookingDAO
        /// <summary>
        /// Gets the instance of Booking Data Access Object as this a singleton
        /// </summary>
        /// <exception cref="InvalidBookingTypeDAOException">Throws an exception if an invalid booking type</exception>
        /// <returns>Instance of the Booking Data Access Object</returns>
        public static BookingDAO GetInstance(BookingTypes type)
        {
            try
            {
                daoImpl = BookingDAOImplFactory.GetInstance().Create(type);
            }
            catch (InvalidBookingTypeDAOException)
            {
                throw;
            }

            return instance;
        }
        #endregion


        /// <summary>
        /// Inserts into database the booking information for different types
        /// </summary>
        /// <param name="newBooking"></param>
        /// <exception cref="BookingDAOException">Throws the BookingDAOException, if unable to store a booking</exception>
        /// <returns>Returns the booking reference number</returns>
        public string MakeBooking(HappyTrip.Model.Entities.Transaction.Booking newBooking)
        {
            string bookingReferenceNo = string.Empty;

            try
            {
                //Get the database connection from DAO class that is inherited
                Database dbConnection = GetDatabaseConnection();

                //Delegate to the corresponding dao implementation created during call to get instance
                bookingReferenceNo = daoImpl.MakeBooking(newBooking, dbConnection);

                if (!newBooking.UserName.Equals("Anonymous", StringComparison.OrdinalIgnoreCase))
                {
                    try
                    {
                        StoreBookingForUser(bookingReferenceNo, newBooking.UserName, dbConnection);
                    }
                    catch (BookingDAOException)
                    {
                        throw;
                    }
                }
            }
            catch (Common.ConnectToDatabaseException ex)
            {
                throw new BookingDAOException("Unable to store Booking Information", ex);
            }
            catch (BookingDAOException)
            {
                throw;
            }
            catch (AirTravelBookingException ex)
            {
                throw new BookingDAOException("Unable to store Air Travel Booking Information", ex);
            }
            catch (DbException ex)
            {
                throw new BookingDAOException("Unable to store Booking Information", ex);
            }
            catch (Exception ex)
            {
                throw new BookingDAOException("Unable to store Booking Information", ex);
            }

            return bookingReferenceNo;
        }

        /// <summary>
        /// Stores booking for a user
        /// </summary>
        /// <param name="bookingId"></param>
        /// <param name="userName"></param>
        /// <param name="dbConnection"></param>
        /// <exception cref="BookingDAOException">Throws the BookingDAOException, if unable to store a booking</exception>
        private void StoreBookingForUser(string bookingRefernceNo, string userName, Database dbConnection)
        {
            try
            {
                //Write code to store data into database
                DbCommand command = dbConnection.GetStoredProcCommand("InsertBookingForUser");
                dbConnection.AddInParameter(command, "@BookingReferenceNo", DbType.String, bookingRefernceNo);
                dbConnection.AddInParameter(command, "@UserName", DbType.String, userName);

                //Execute the command
                dbConnection.ExecuteNonQuery(command);
            }
            catch (DbException ex)
            {
                throw new BookingDAOException("Unable to insert booking for user", ex);
            }
            catch (Exception ex)
            {
                throw new BookingDAOException("Unable to insert booking for user", ex);
            }
        }
    }
}
