using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Hotel;

namespace HappyTrip.Model.Entities.Transaction
{
    /// <summary>
    /// Class to represent the hotel booking information
    /// </summary>
    public class HotelBooking : Booking
    {
        #region Properties of the class
        
        public Hotel.Hotel HotelForBooking { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public int NoOfPeople { get; set; }
        public int NoOfRooms { get; set; }
        public decimal CostPerDay { get; set; }

        #endregion
    }
}
