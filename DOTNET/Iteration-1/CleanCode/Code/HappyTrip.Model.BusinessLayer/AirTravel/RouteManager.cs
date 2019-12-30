using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using HappyTrip.DataAccessLayer.AirTravel;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.Model.Entities.Logs;

namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    /// <summary>
    /// Class to manage the activities related to routes of the flight
    /// </summary>
    public class RouteManager
    {
        /// <summary>
        /// Fields of the class
        /// </summary>
        private IRouteDAO routeDAO = null;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public RouteManager()
        {
            routeDAO = AirTravelDAOFactory.GetInstance().CreateRouteDAO();
        }

        /// <summary>
        /// Parameterized Constructor to accept a data access object to work with
        /// </summary>
        /// <param name="routeDAO"></param>
        public RouteManager(IRouteDAO routeDAO)
        {
            this.routeDAO = routeDAO;
        }

        #region Method to get all the flight routes
        /// <summary>
        /// Gets the flight routes
        /// </summary>
        /// <exception cref="RouteManagerException">Thrown when unable to get routes</exception>
        /// <returns>Returns a collection with all the route information</returns>
        public Route[] GetRoutes()
        {
            Route[] routes = null;

			try
			{
                routes = routeDAO.GetRoutes();
                return routes;
			}
			catch (RouteDAOException ex)
			{
				throw new RouteManagerException("Unable to get routes", ex);
			}
        }
        #endregion

        #region Method to get all the flight routes
        /// <summary>
        /// Gets the flight routes
        /// </summary>
        /// <exception cref="RouteManagerException">Thrown when unable to get routes</exception>
        /// <returns>Returns a collection with all the route information</returns>
        public Routes GetSortedRoutes()
        {
            //CSPRBUG18.2 - Implementing Custom Collection
            //Routes - Custom Collection also Sorted with needed Interfaces
            Routes routes = null;

            try
            {
                Route[] routeColl = routeDAO.GetRoutes();

                routes = SortRoutes(routeColl.ToList());

                return routes;
            }
            catch (RouteDAOException ex)
            {
                throw new RouteManagerException("Unable to get routes", ex);
            }
        }
        #endregion

        #region Method to sort the routes by distance
        /// <summary>
        /// Method to sort the routes by distance in kms
        /// </summary>
        /// <param name="routeList">Receives the list of routes</param>
        /// <returns>A custom collection</returns>
        private Routes SortRoutes(List<Route> routeList)
        {
            //CSPRBUG18.2 - Implementing Custom Collection
            //Routes - Custom Collection also Sorted with needed Interfaces
            Routes routes = new Routes();

            foreach (Route r in routeList)
            {
                routes.Add(r);
            }

            routes.Sort();

            return routes;
        }
        #endregion

        #region Methods to Add a flight route
        /// <summary>
        /// Add a route to the database
        /// </summary>
        /// <parameter name="routeInfo"></parameter>
        /// <exception cref="RouteManagerException">Thrown when unable to add a route</exception>
        /// <returns>Returns the status of the insertion</returns>
        public bool AddRoute(Route routeInfo)
        {
            bool isRouteValid = false;
            isRouteValid = ValidateRouteInfo(routeInfo);
            if (isRouteValid)
            {
                try
                {
                    int noOfRows = routeDAO.AddRoute(routeInfo);
                    if (noOfRows > 0)
                        isRouteValid = true;
                }
                catch (RouteDAOException ex)
                {
                    //CSPRCR17.4 - Log an exception using the LogManager
                    LogMessage message = new LogMessage();
                    message.ClassName = "RouteManager";
                    message.Message = ex.Message;
                    message.MessageDateTime = DateTime.Now;
                    message.MethodName = "AddRoute()";
                    message.ExceptionType = "RouteDAOException";

                    Logs.LogManager manager = new Logs.LogManager(Loggers.XML);
                    manager.WriteToLog(message);

                    throw new RouteManagerException("Unable to add route", ex);
                }
            }
            
            return isRouteValid;
        }

        /// <summary>
        /// Validates Route Information
        /// </summary>
        /// <param name="routeInfo"></param>
        /// <returns>bool</returns>
        private bool ValidateRouteInfo(Route routeInfo)
        {
            bool isValid = true;

            if (routeInfo == null)
                // Route should not be null
                isValid = false;

            if (routeInfo.FromCity == null || routeInfo.ToCity == null)
                // From City or To City should not be null
                isValid = false;

            if (routeInfo.FromCity.Name == "None" || routeInfo.ToCity.Name == "None")
                // From City or To City should not be null
                isValid = false;
            
            if (routeInfo.FromCity.CityId == routeInfo.ToCity.CityId)
                // From City and To City should not be the same
                isValid = false;


            if (routeInfo.DistanceInKms <= 0)
                // Distance in Kilometers should be more than zero
                isValid = false;


            return isValid;
        }
        #endregion

        #region Methods to Update existing Flight route for a given route
        /// <summary>
        /// Update existing flight route for a given route
        /// </summary>
        /// <parameter name="routeInfo"></parameter>
        /// <exception cref="RouteManagerException">Thrown when unable to modify a route</exception>
        /// <returns>Returns the status of the update</returns>
        public bool UpdateRoute(Route routeInfo)
        {
			try
			{
				return routeDAO.UpdateRoute(routeInfo);
			}
			catch (RouteDAOException ex)
			{
				throw new RouteManagerException("Unable to update route", ex);
			}
        }
        #endregion

        #region Method to get the route id for a given route
        /// <summary>
        /// Get the route id for a given route id
        /// </summary>
        /// <parameter name="routeInfo"></parameter>
        /// <exception cref="RouteManagerException">Thrown when unable to get route</exception>
        /// <returns>int</returns>
        public int GetRouteID(Route routeInfo)
        {
			try
			{
				return routeDAO.GetRouteID(routeInfo);
			}
			catch (RouteDAOException ex)
			{
				throw new RouteManagerException("Unable to get route id", ex);
			}
        }
        #endregion
    }
}