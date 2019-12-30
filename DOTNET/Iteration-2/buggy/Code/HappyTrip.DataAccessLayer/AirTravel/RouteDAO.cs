using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.DataAccessLayer.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.Model.Entities.Common;

namespace HappyTrip.DataAccessLayer.AirTravel
{
	/// <summary>
	/// Class to represent the database related activities  
	/// with respect to routes operations for fetch,add,update
	/// </summary>
	class RouteDAO : DAO, IRouteDAO
	{

		#region Making the constructor public
		public RouteDAO()
		{

		}
		#endregion

		Database db;

		#region Method to get the routes from the database
		/// <summary>
		/// Gets the routes from the database
		/// </summary>
		/// <returns>DataSet with all Routes</returns>
		public System.Data.DataSet GetRoutes()
		{
			DataSet dataset = new DataSet();
			try
			{

				db = GetDatabaseConnection();

				using (IDataReader reader = db.ExecuteReader("GetRoutes"))
				{
					List<Route> lstroute = new List<Route>();
					DataTable routedt = dataset.Tables.Add("Routes");

					routedt.Columns.Add("RouteId", typeof(long));
					routedt.Columns.Add("FromCityName", typeof(string));
					routedt.Columns.Add("FromCityId", typeof(long));
					routedt.Columns.Add("ToCityName", typeof(string));
					routedt.Columns.Add("ToCityId", typeof(long));
					routedt.Columns.Add("DistanceInKms", typeof(decimal));
					routedt.Columns.Add("status", typeof(bool));

					while (reader.Read())
					{
                        DataRow rw = null;
						rw["RouteId"] = reader["RouteId"];
						rw["FromCityName"] = reader["FromCityName"];
						rw["FromCityId"] = reader["FromCityId"];
						rw["ToCityName"] = reader["ToCityName"];
						rw["ToCityId"] = reader["ToCityId"];
						rw["DistanceInKms"] = reader["DistanceInKms"];
						rw["status"] = reader["status"];

						
					}

				}
			}
			catch (Common.ConnectToDatabaseException)
			{

				throw new RouteDAOException("Unable to get routes");
			}
			catch (Exception)
			{
				throw new RouteDAOException("Unable to get routes");
			}

			return dataset;
		}
		#endregion

		#region Method to add the routes to the database
		/// <summary>
		/// Add the routes to the database
		/// </summary>
		/// <parameter name="routeInfo"></parameter>
		/// <returns>Returns the number of rows affected by the insert</returns>
		public int AddRoute(Model.Entities.AirTravel.Route routeInfo)
		{
			try
			{
				db = GetDatabaseConnection();

				return db.ExecuteNonQuery("InsertRoute", routeInfo.FromCity.CityId, routeInfo.ToCity.CityId, routeInfo.DistanceInKms, routeInfo.IsActive);
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new RouteDAOException("Unable to add route");
			}
			catch (Exception)
			{
				throw new RouteDAOException("Unable to add route");
			}

		}
		#endregion

		#region Method to update the existing routes to the database
		/// <summary>
		/// Update the existing routes to the database
		/// </summary>
		/// <parameter name="routeInfo"></parameter>
		/// <returns>Returns the number of rows affected by the update</returns>
		public int UpdateRoute(Model.Entities.AirTravel.Route routeInfo)
		{
			try
			{
				db = GetDatabaseConnection();

				return db.ExecuteNonQuery("UpdateRoutes", routeInfo.ID, routeInfo.DistanceInKms, routeInfo.IsActive);

			}
			catch (Common.ConnectToDatabaseException)
			{

				throw new RouteDAOException("Unable to update route");
			}
			catch (Exception)
			{
				throw new RouteDAOException("Unable to update route");
			}
		}
		#endregion

		#region Method to get the route id for a route from the database
		/// <summary>
		/// Gets the route id for a route from the database
		/// </summary>
        /// <parameter name="routeInfo"></parameter>
		/// <returns>Returns the route id for given route with city information</returns>
		public int GetRouteID(Route routeInfo)
		{
			try
			{
				db = GetDatabaseConnection();

				int routeId = 0;

				using (IDataReader Reader = GetDatabaseConnection().ExecuteReader("getRouteId", routeInfo.FromCity.Name, routeInfo.ToCity.Name))
				{
					while (Reader.Read())
					{
						routeId = int.Parse(Reader["RouteId"].ToString());
					}

					return routeId;
				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new RouteDAOException("Unable to get route id");
			}
			catch (Exception)
			{
				throw new RouteDAOException("Unable to get route id");
			}
		}
		#endregion

	}
}
