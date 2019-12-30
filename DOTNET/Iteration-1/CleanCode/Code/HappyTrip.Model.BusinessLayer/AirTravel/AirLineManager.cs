using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.DataAccessLayer.AirTravel;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.DataAccessLayer.Common;
namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    /// <summary>
    /// Class to manage the activities related to airlines operation
    /// </summary>
    public class AirLineManager
    {
        /// <summary>
        /// Fields of the class
        /// </summary>
        private IAirlineDAO airlineDAO = null;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public AirLineManager()
        {
            airlineDAO = AirTravelDAOFactory.GetInstance().CreateAirlineDAO();
        }

        /// <summary>
        /// Parameterized Constructor to accept a data access object to work with
        /// </summary>
        /// <param name="airlineDAO"></param>
        public AirLineManager(IAirlineDAO airlineDAO)
        {
            this.airlineDAO = airlineDAO;
        }


        #region Method to get all the airlines
        /// <summary>
        /// Gets all the airlines from the database
        /// </summary>
        /// <exception cref="AirlineManagerException">Throws the exception when airlines is not available</exception>
        /// <returns>Returns the list of airlines</returns>
        public Airline[] GetAirLines()
        {
			Airline[] airlines = null;
			try
			{
				airlines = airlineDAO.GetAirlines();
				return airlines;
			}
			catch (AirlineDAOException ex)
			{
				throw new AirlineManagerException("Unable to get airlines", ex);
			}
        }
        #endregion

        #region Method to get all the airlines
        /// <summary>
        /// Gets all the airlines from the database
        /// </summary>
        /// <exception cref="AirlineManagerException">Throws the exception when airlines is not available</exception>
        /// <returns>Returns the collection of airlines</returns>
        public Airlines GetSortedAirLines()
        {
            //CSPRBUG18.3 - Implementing Custom Collection
            //Airlines - Custom Collection also Sorted with needed Interfaces
            Airlines airlines = null;
            try
            {
                Airline[] airlineArray = airlineDAO.GetAirlines();

                airlines = SortAirlines(airlineArray.ToList());

                return airlines;
            }
            catch (AirlineDAOException ex)
            {
                throw new AirlineManagerException("Unable to get airlines", ex);
            }
        }

        /// <summary>
        /// Method to sort list of airlines
        /// </summary>
        /// <param name="airlinesList"></param>
        /// <returns>A sorted custom collection</returns>
        private Airlines SortAirlines(List<Airline> airlineList)
        {
            //CSPRBUG18.3 - Implementing Custom Collection
            //Airlines - Custom Collection also Sorted with needed Interfaces
            Airlines airlines = new Airlines();

            foreach (Airline a in airlineList)
            {
                airlines.Add(a);
            }

            airlines.Sort();

            return airlines;
        }
        #endregion
	}
}