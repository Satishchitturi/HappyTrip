using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.DataAccessLayer.AirTravel;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.DataAccessLayer.Common;
using System.Data;
namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    /// <summary>
    /// Class to manage the activities related to airlines operation
    /// </summary>
    public class AirLineManager : HappyTrip.Model.BusinessLayer.AirTravel.IAirLineManager
    {
        /// <summary>
        /// Fields of the class
        /// </summary>
        IAirlineDAO airlineDAO = null;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public AirLineManager()
        {
            airlineDAO = (IAirlineDAO)AirTravelDAOFactory.GetInstance().Create("Airline");
        }

        /// <summary>
        /// Parameterized Constructor
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
        public List<Airline> GetAirLines()
        {
            List<Airline> airlines = null;
			try
			{
				DataSet ds = airlineDAO.GetAirlines();
                
                airlines = new List<Airline>();

                foreach (DataRow rw in ds.Tables[0].Rows)
                {
                    Airline airline = new Airline();

                    airline.Id = Convert.ToInt32(rw["AirlineId"]);
                    airline.Name = rw["AirlineName"].ToString();
                    airline.Code = rw["AirlineCode"].ToString();
                    airline.Logo = rw["AirlineLogo"].ToString();

                    airlines.Add(airline);
                }
			}
			catch (AirlineDAOException ex)
			{
				throw new AirlineManagerException("Unable to get airlines", ex);
			}

            return airlines;
        }
        #endregion

    }
}