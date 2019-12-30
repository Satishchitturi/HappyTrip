using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Common;

namespace HappyTrip.Model.Entities.AirTravel
{
    /// <summary>
    /// Class to represent the flight search related information
    /// </summary>
    public class SearchInfo
    {
        
        //Using VS - Effectively - CR - STYCBG09.01
        //Create properties and make them private set
        //Create the parameterized constructor to initialize the values

        #region Properties of the class

        public City FromCity { get; private set; }
        public City ToCity { get; private set; }
        public DateTime OnwardDateOfJourney { get; private set; }
        public DateTime ReturnDateOfJourney { get; private set; }
        public int NoOfSeats { get; private set; }
        public TravelClass Class { get; private set; }
        public TravelDirection Direction { get; private set; }

        #endregion

        /// <summary>
        /// Parameterized Constructor - To Initialize the data members and properties with private set
        /// </summary>
        /// <param name="fromCity"></param>
        /// <param name="toCity"></param>
        /// <param name="onwardDateOfJourney"></param>
        /// <param name="returnDateOfJourney"></param>
        /// <param name="noOfSeats"></param>
        /// <param name="travelClass"></param>
        /// <param name="direction"></param>
        public SearchInfo(City fromCity, City toCity, DateTime onwardDateOfJourney, DateTime returnDateOfJourney, int noOfSeats, TravelClass travelClass, TravelDirection direction)
        {
            this.FromCity = fromCity;
            this.ToCity = toCity;
            this.OnwardDateOfJourney = onwardDateOfJourney;
            this.ReturnDateOfJourney = returnDateOfJourney;
            this.NoOfSeats = noOfSeats;
            this.Class = travelClass;
            this.Direction = direction;
        }
    }
}
