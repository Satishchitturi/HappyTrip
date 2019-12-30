using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Transaction;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;
using HappyTrip.Model.Entities.AirTravel;

namespace HappyTrip.DataAccessLayer.Transaction
{
    /// <summary>
    /// Class to represent the database activities related to AirTravel Booking
    /// </summary>
    class AirTravelBookingDAOImpl : IBookingDAOImpl
    {
        #region Method to store booking details for an air travel

        /// <summary>
        /// Inserts into database the booking for air travel
        /// </summary>
        /// <param name="newBooking"></param>
        /// <param name="dbConnection"></param>
        /// <exception cref="AirTravelBookingException">Throws the AirTravelBookingException, if unable to store a booking</exception>
        /// <returns>Returns the booking reference number</returns>
        public string MakeBooking(Booking newBooking, Database dbConnection)
        {
            string bookingReferenceNo = string.Empty;

            //Downcast to flight booking
            FlightBooking airBooking = (FlightBooking)newBooking;

            try
            {
                //Write code to store data into database
                DbCommand command = dbConnection.GetStoredProcCommand("BookFlightTicket");
                dbConnection.AddInParameter(command, "@TypeID", DbType.Int32, (int)airBooking.BookingType);
                dbConnection.AddInParameter(command, "@DateOfJourney", DbType.DateTime, airBooking.DateOfJourney);
                dbConnection.AddInParameter(command, "@NoOfSeats", DbType.Int32, airBooking.NoOfSeats);
                dbConnection.AddInParameter(command, "@ClassID", DbType.Int32, (int)airBooking.Class.ClassInfo);
                dbConnection.AddInParameter(command, "@ContactName", DbType.String, airBooking.Contact.ContactName);
                dbConnection.AddInParameter(command, "@Address", DbType.String, airBooking.Contact.Address);
                dbConnection.AddInParameter(command, "@City", DbType.String, airBooking.Contact.City);
                dbConnection.AddInParameter(command, "@State", DbType.String, airBooking.Contact.State);
                dbConnection.AddInParameter(command, "@PinCode", DbType.String, airBooking.Contact.PinCode);
                dbConnection.AddInParameter(command, "@Email", DbType.String, airBooking.Contact.Email);
                dbConnection.AddInParameter(command, "@PhoneNo", DbType.String, airBooking.Contact.PhoneNo);
                dbConnection.AddInParameter(command, "@MobileNo", DbType.String, airBooking.Contact.MobileNo);
                dbConnection.AddInParameter(command, "@PaymentRefernceNo", DbType.String, airBooking.PaymentInfo.ReferenceNo);
                dbConnection.AddInParameter(command, "@TotalCost", DbType.Decimal, airBooking.TotalCost);

                //Concatenate to send to database as a single string
                string passengerDetails = String.Empty;
                string name = String.Empty;
                string gender = String.Empty;
                string dob = String.Empty;

                foreach (Passenger p in airBooking.GetPassengers())
                {
                    name = p.Name;
                    gender = p.Gender.ToString();
                    dob = p.DateOfBirth.ToShortDateString();

                    passengerDetails += name + "|" + gender + "|" + dob + ";";
                }

                dbConnection.AddInParameter(command, "@PassengerDetails", DbType.String, passengerDetails);
                dbConnection.AddOutParameter(command, "@BookingReferenceNumber", DbType.String, 100);
                dbConnection.AddOutParameter(command, "@LastBookingID", DbType.Int64, 0);

                //Execute the command
                dbConnection.ExecuteNonQuery(command);

                //Get the values from the database
                bookingReferenceNo = dbConnection.GetParameterValue(command, "@BookingReferenceNumber").ToString();
                long bookingId = Convert.ToInt64(dbConnection.GetParameterValue(command, "@LastBookingID"));

                //Insert the schedules for a booking
                foreach (Schedule s in airBooking.TravelScheduleInfo.GetSchedules())
                {
                    try
                    {
                        InsertBookingSchedule(bookingId, s.ID, s.GetFlightCosts().FirstOrDefault().CostPerTicket, dbConnection);
                    }
                    catch (AirTravelBookingException)
                    {
                        throw;
                    }
                }
            }
            catch(AirTravelBookingException)
            {
                throw;
            }
            catch (DbException ex)
            {
                throw new AirTravelBookingException("Unable to insert air travel booking", ex);
            }
            catch (Exception ex)
            {
                throw new AirTravelBookingException("Unable to insert air travel booking", ex);
            }

            return bookingReferenceNo;
        }

        /// <summary>
        /// Inserts the schedule for a booking
        /// </summary>
        /// <param name="bookingId"></param>
        /// <param name="scheduleId"></param>
        /// <param name="costPerTicket"></param>
        /// <param name="dbConnection"></param>
        /// <returns></returns>
        private bool InsertBookingSchedule(long bookingId, long scheduleId, decimal costPerTicket, Database dbConnection)
        {
            bool isStored = false;

            try
            {
                //Write code to store data into database
                DbCommand command = dbConnection.GetStoredProcCommand("InsertFlightTicketSchedule");
                dbConnection.AddInParameter(command, "@BookingId", DbType.Int64, bookingId);
                dbConnection.AddInParameter(command, "@ScheduleId", DbType.Int64, scheduleId);
                dbConnection.AddInParameter(command, "@CostPerTicket", DbType.Decimal, costPerTicket);

                //Execute the command
                dbConnection.ExecuteNonQuery(command);

                isStored = true;
            }
            catch (DbException ex)
            {
                throw new AirTravelBookingException("Unable to insert air travel schedule", ex);
            }
            catch (Exception ex)
            {
                throw new AirTravelBookingException("Unable to insert air travel schedule", ex);
            }

            return isStored;
        }
        #endregion
    }
}
