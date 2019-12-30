using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.DataAccessLayer.AirTravel
{
    /// <summary>
    /// Class to represent the factory that would create all the data access objects needed
    /// to perform database related activities for air travel
    /// </summary>
   public class AirTravelDAOFactory
    {
        /// <summary>
        /// Fields of the class - Instance of the factory created - Singleton
        /// </summary>
        private static AirTravelDAOFactory instance = new AirTravelDAOFactory();

        /// <summary>
        /// Making the constructor private so that object is not created
        /// </summary>
        private AirTravelDAOFactory()
        {

        }

        /// <summary>
        /// Gets the instance of the AirTravelDAOFactory
        /// </summary>
        /// <returns></returns>
        public static AirTravelDAOFactory GetInstance()
        {
            return instance;
        }


        /// <summary>
        /// Returns the instance of the Airline data access object as an interface
        /// </summary>
        /// <returns></returns>
        public IAirlineDAO CreateAirline()
        {
            return new AirlineDAO();
        }

        /// <summary>
        /// Returns the instance of the Flight data access object as an interface
        /// </summary>
        /// <returns></returns>
        public IFlightDAO CreateFlight()
        {
            return new FlightDAO();
        }

        /// <summary>
        /// Returns the instance of the Schedule data access object as an interface
        /// </summary>
        /// <returns></returns>
        public IScheduleDAO CreateSchedule()
        {
            return new ScheduleDAO();
        }


        /// <summary>
        /// Returns the instance of the Route data access object as an interface
        /// </summary>
        /// <returns></returns>
        public IRouteDAO CreateRoute()
        {
            return new RouteDAO();
        }


		public IAirTravelDAO Create(string managerType)
		{
			IAirTravelDAO airTravelDAO = null;
			switch (managerType)
			{
				case "Airline":
					airTravelDAO = new AirlineDAO();
				break;

				case "Flight":
					airTravelDAO = new FlightDAO();
				break;

				case "Route":
					airTravelDAO = new RouteDAO();
				break;

				case "Schedule":
					airTravelDAO = new ScheduleDAO();
				break;
			}
			return airTravelDAO;
		}

    }
}
