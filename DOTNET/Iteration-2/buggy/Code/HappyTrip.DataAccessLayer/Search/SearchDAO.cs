using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.Model.Entities.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using HappyTrip.Model.Entities;
using System.Data.Common;

namespace HappyTrip.DataAccessLayer.Search
{
    /// <summary>
    /// Class to represent the database related activities with respect to searching of a 
    /// flight for the given parameters
    /// </summary>
    class SearchDAO : DataAccessLayer.Common.DAO, HappyTrip.DataAccessLayer.Search.ISearchDAO
    {
        /// <summary>
        /// Instance of the class created. To make it a singleton class
        /// </summary>
        private static SearchDAO instance = new SearchDAO();


        /// <summary>
        /// Default Constructor being made private
        /// </summary>
        private SearchDAO()
        {

        }


        #region Method to get the instance of SearchDAO
        /// <summary>
        /// Gets the instance of SearchDAO as this a singleton
        /// </summary>
        /// <returns></returns>
        public static SearchDAO GetInstance()
        {
            return instance;
        }
        #endregion

        #region Method to get the flights for the search made by a user
        /// <summary>
        /// Gets the flight schedules for the search made by the user
        /// </summary>
        /// <param name="searchInformation"></param>
        /// <exception cref="SearchFlightDAOException">Throws SearchFlightDAOException if flights are not available or if there is any other exception</exception>
        /// <returns>Returns the schedules for the given search - which is a custom collection</returns>
        public Schedules SearchForFlight(SearchInfo searchInformation)
        {
            Schedules schCollection = null;

            try
            {
                Database db = GetDatabaseConnection();
                TimeSpan ts;
                int hours = 0;
                int minutes = 0;
                int seconds = 0;

                using (IDataReader reader = db.ExecuteReader("GetFlightSchedules", searchInformation.FromCity.CityId, searchInformation.ToCity.CityId, (int)searchInformation.Class))
                {
                    schCollection = new Schedules();
                    while (reader.Read())
                    {
                        Schedule sch = new Schedule();
                        sch.ID = Convert.ToInt64(reader["ScheduleId"]);

                        hours = Convert.ToDateTime(reader["ArrivalTime"]).Hour;
                        minutes = Convert.ToDateTime(reader["ArrivalTime"]).Minute;
                        seconds = Convert.ToDateTime(reader["ArrivalTime"]).Second;
                        ts = new TimeSpan(hours, minutes, seconds);
                        sch.ArrivalTime = ts;

                        hours = Convert.ToDateTime(reader["DepartureTime"]).Hour;
                        minutes = Convert.ToDateTime(reader["DepartureTime"]).Minute;
                        seconds = Convert.ToDateTime(reader["DepartureTime"]).Second;
                        ts = new TimeSpan(hours, minutes, seconds);
                        sch.DepartureTime = ts;

                        sch.DurationInMins = Convert.ToInt16(reader["DurationInMins"]);
                        sch.IsActive = Convert.ToBoolean(reader["IsActive"]);

                        Airline objAirlineForFlight = new Airline();
                        objAirlineForFlight.Code = reader["AirlineCode"].ToString();
                        objAirlineForFlight.Id = Convert.ToInt16(reader["AirlineId"]);
                        objAirlineForFlight.Logo = reader["AirlineLogo"].ToString();
                        objAirlineForFlight.Name = reader["AirlineName"].ToString();

                        Flight objFlight = new Flight();
                        objFlight.ID = Convert.ToInt16(reader["FlightId"]);
                        objFlight.Name = reader["FlightName"].ToString();
                        objFlight.AirlineForFlight = objAirlineForFlight;
                        FlightClass fc = new FlightClass();
                        fc.ClassInfo = (TravelClass)(Convert.ToInt16(reader["ClassId"]));
                        fc.NoOfSeats = Convert.ToInt32(reader["NoOfSeats"]);
                        objFlight.AddClass(fc);

                        FlightCost objFlightCost = new FlightCost();
                        objFlightCost.CostPerTicket = Convert.ToDecimal(reader["CostPerTicket"]);
                        objFlightCost.Class = (TravelClass)(Convert.ToInt16(reader["ClassId"]));

                        City objFromCity = new City();
                        objFromCity.CityId = Convert.ToInt64(reader["FromCityId"]);
                        objFromCity.Name = reader["FromCityName"].ToString();

                        City objToCity = new City();
                        objToCity.CityId = Convert.ToInt64(reader["ToCityId"]);
                        objToCity.Name = reader["ToCityName"].ToString();

                        Route objRoute = new Route();
                        objRoute.DistanceInKms = Convert.ToDouble(reader["DistanceInKms"]);
                        objRoute.FromCity = objFromCity;
                        objRoute.ToCity = objToCity;

                        sch.FlightInfo = objFlight;
                        sch.AddFlightCost(objFlightCost);
                        sch.RouteInfo = objRoute;

                        schCollection.AddSchedule(sch);
                    }
                }
            }
            catch (Common.ConnectToDatabaseException ex)
            {
                throw new SearchFlightDAOException("Unable to Search for Flight", ex);
            }
            catch (Exception ex)
            {
                throw new SearchFlightDAOException("Unable to Search for Flight", ex);
            }

            return schCollection;
        }
        #endregion

        #region Method to get all the cities with state information
        /// <summary>
        /// Gets the cities in the database
        /// </summary>
        /// <exception cref="CityDAOException">CityDAO Exception is thrown if not able to get from database</exception>
        /// <returns>The list of cities after fetching from the database</returns>
        public List<City> GetCities()
        {
            List<City> cities = null;

            try
            {
                using (IDataReader reader = GetDatabaseConnection().ExecuteReader("GetCities"))
                {

                    cities = new List<City>();
                    while (reader.Read())
                    {
                        City city = new City();
                        city.CityId = Convert.ToInt64(reader["CityId"]);
                        city.Name = reader["CityName"].ToString();

                        State state = new State();
                        state.StateId = Convert.ToInt64(reader["StateId"]);
                        state.Name = reader["StateName"].ToString();

                        city.StateInfo = state;

                        cities.Add(city);
                    }

                }
            }
            catch (Common.ConnectToDatabaseException ex)
            {
                throw new Common.CityDAOException("Unable to Get Cities", ex);
            }
            catch (Exception ex)
            {
                throw new Common.CityDAOException("Unable to Get Cities", ex);
            }

            return cities;
        }
        #endregion

        #region Method to get the availability for a given schedule

        /// <summary>
        /// Gets the availability of schedule for the given information
        /// </summary>
        /// <param name="scheduleForAvailability"></param>
        /// <param name="numberOfSeats"></param>
        /// <param name="dateOfJourney"></param>
        /// <param name="tClass"></param>
        /// <exception cref="FlightAvailabilityDAOException">Thorws when flights not available</exception>
        /// <returns>True if avalable. False if not available</returns>
        public bool GetAvailabilityForSchedule(Schedule scheduleForAvailability, int numberOfSeats, DateTime dateOfJourney, TravelClass tClass)
        {
            bool isAvailable = false;

            try
            {
                Database dbConnection = GetDatabaseConnection();

                //Write code to store data into database
                DbCommand command = dbConnection.GetStoredProcCommand("CheckAvailabilityOfSchedule");
                dbConnection.AddInParameter(command, "@ScheduleId", DbType.Int64, scheduleForAvailability.ID);
                dbConnection.AddInParameter(command, "@NoOfSeats", DbType.Int32, numberOfSeats);
                dbConnection.AddInParameter(command, "@DateOfJourney", DbType.DateTime, dateOfJourney);
                dbConnection.AddInParameter(command, "@ClassId", DbType.Int32, (int)tClass);
                dbConnection.AddOutParameter(command, "@IsAvailable", DbType.Boolean, 0);

                //Execute the command
                dbConnection.ExecuteNonQuery(command);

                isAvailable = Convert.ToBoolean(dbConnection.GetParameterValue(command, "@IsAvailable"));
            }
            catch (Common.ConnectToDatabaseException ex)
            {
                throw new FlightAvailabilityDAOException("Unable to get availability of flights", ex);
            }
            catch (Exception ex)
            {
                throw new FlightAvailabilityDAOException("Unable to get availability of flights", ex);
            }

            return isAvailable;
        }

        #endregion
    }
}
