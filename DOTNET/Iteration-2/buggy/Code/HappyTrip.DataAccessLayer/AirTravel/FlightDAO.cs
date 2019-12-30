using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.DataAccessLayer.Common;
using HappyTrip.Model.Entities.AirTravel;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace HappyTrip.DataAccessLayer.AirTravel
{
	/// <summary>
	/// Class to represent the database related activities  
	/// with respect to flight operations for fetch,add,update
	/// </summary>
	class FlightDAO : DAO, IFlightDAO
	{
		/// <summary>
		/// Default Constructor
		/// </summary>
		public FlightDAO()
		{

		}

		#region Method to get the flight details from the database
		/// <summary>
		/// Get the flight details from the database
		/// </summary>
        /// <exception cref="FlightDAOException">Thorws an exception when unable to get flights</exception>
		/// <returns>Returns the list of flights from the database</returns>
		public List<Flight> GetFlights()
		{
			List<Flight> flights = new List<Flight>();

			try
			{
				Database db = GetDatabaseConnection();

				using (IDataReader reader = db.ExecuteReader("GetFlights"))
				{
					while (reader.Read())
					{
						Flight flight = new Flight();

                        flight.ID = long.Parse(reader["FlightId"].ToString());
                        flight.Name = reader["FlightName"].ToString();
                        flight.AirlineForFlight = new Airline();
                        flight.AirlineForFlight.Id = int.Parse(reader["AirlineId"].ToString());
                        flight.AirlineForFlight.Name = reader["AirlineName"].ToString();
                        flight.AirlineForFlight.Code = reader["AirlineCode"].ToString();

						using (IDataReader reader2 = db.ExecuteReader("GetFlightClasses", flight.ID))
						{
							try
							{
								while (reader2.Read())
								{
									FlightClass _class = new FlightClass();
									int classid = int.Parse(reader2["ClassId"].ToString());
									_class.ClassInfo = (TravelClass)classid;

									_class.NoOfSeats = int.Parse(reader2["NoOfSeats"].ToString());
									flight.AddClass(_class);
								}
							}
							catch (Exception)
							{
								throw;
							}
						}
                        flights.Add(flight);
					}
				}
			}
            catch (ConnectToDatabaseException ex)
			{
                throw new FlightDAOException("Unable to connect to database", ex);
			}
			catch (Exception ex)
			{
				throw new FlightDAOException("Unable to get flights", ex);
			}

			return flights;
		}
		#endregion

		#region Method to get the flight details for a given flight id from the database
		/// <summary>
		/// Get the flights details for a given flight from the database
		/// </summary>
		/// <parameter name="FlightId"></parameter>
		/// <returns>Returns the flight for a given id from the database</returns>
		public Flight GetFlight(int flightId)
		{
            Flight flight = null;

			try
			{
				using (IDataReader Reader = GetDatabaseConnection().ExecuteReader("GetFlightsID", flightId))
				{
					while (Reader.Read())
					{
						flight = new Flight();

                        flight.ID = long.Parse(Reader["FlightId"].ToString());
                        flight.Name = Reader["FlightName"].ToString();
                        flight.AirlineForFlight = new Airline();
                        flight.AirlineForFlight.Id = int.Parse(Reader["AirlineId"].ToString());
                        flight.AirlineForFlight.Name = Reader["AirlineName"].ToString();
                        flight.AirlineForFlight.Code = Reader["AirlineCode"].ToString();

						using (IDataReader Reader2 = GetDatabaseConnection().ExecuteReader("GetFlightClasses", flight.ID))
						{
							try
							{
								while (Reader2.Read())
								{
									FlightClass fClass = new FlightClass();
									int classId = int.Parse(Reader2["ClassId"].ToString());
                                    fClass.ClassInfo = (TravelClass)classId;

                                    fClass.NoOfSeats = int.Parse(Reader2["NoOfSeats"].ToString());
                                    flight.AddClass(fClass);
								}
							}
							catch (Exception ex)
							{
								throw ex;
							}
						}
						
					}
				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new FlightDAOException("Unable to get the flight details");
			}
			catch (Exception)
			{
				throw new FlightDAOException("Unable to get the flight details");
			}
			return flight;
		}
		#endregion

		#region Method to Add the flight details for the database
		/// <summary>
		/// Add the flight details for the database
		/// </summary>
		/// <parameter name="flight"></parameter>
		/// <returns>Returns the status of the insert</returns>
		public bool AddFlight(Flight flight)
		{
			long flightId = 0;
			bool flag = false;
			try
			{
				using (IDataReader reader = GetDatabaseConnection().ExecuteReader(CommandType.Text, "select count(*) as CityCount from flights where FlightName = '" + flight.Name + "' and AirlineId = " + flight.AirlineForFlight.Id))
				{

					reader.Read();
					if (Convert.ToInt32(reader["CityCount"]) > 0)
					{
						flag = false;
					}
					else
					{
						using (IDataReader reader1 = GetDatabaseConnection().ExecuteReader("AddFlight", flight.Name, flight.AirlineForFlight.Id))
						{
							if (reader1.Read())
							{
								flightId = long.Parse(reader1[0].ToString());
							}
						}
						foreach (FlightClass item in flight.GetClasses())
						{
							int ClassId = (int)item.ClassInfo;
							int NoOfSeats = item.NoOfSeats;
							string query = "INSERT INTO FlightClasses (FlightId, ClassId, NoOfSeats) VALUES ('" + flightId + "','" + ClassId + "','" + NoOfSeats + "')";
							GetDatabaseConnection().ExecuteNonQuery(CommandType.Text, query);
						}
						return true;
					}
				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new FlightDAOException("Unable to add flight");
			}
			catch (Exception)
			{
				throw new FlightDAOException("Unable to add flight");
			}
			return flag;
		}
		#endregion

		#region Method to update the existing flight details for a given flight id for the database
		/// <summary>
		/// Update the existing flight details for a given flight id for the database
		/// </summary>
		/// <parameter name="flight"></parameter>
		/// <returns>Returns the number of rows affected by the update</returns>
		public int UpdateFlight(Flight flight)
		{
            Database db = null;
			int flag = 0;
			try
			{
				using (IDataReader Reader = GetDatabaseConnection().ExecuteReader(CommandType.Text, "select count(*) from flights where FlightName = '" + flight.Name + "' and AirlineId = " + flight.AirlineForFlight.Id))
				{

					while (Reader.Read())
					{
						if (int.Parse(Reader[0].ToString()) > 0)
						{
							flag = 1;
						}
						else
						{
							db = GetDatabaseConnection();
							db.ExecuteNonQuery("UpdateFlight", flight.ID, flight.Name, flight.AirlineForFlight.Id);
							flag = 0;
						}
					}

					return flag;
				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new FlightDAOException("Unable to update flight");
			}
			catch (Exception)
			{
				throw new FlightDAOException("Unable to update flight");
			}
		}
		#endregion

		#region Method to update the existing flight class seats for a given flight id for the database
		/// <summary>
		/// Update the existing flight class seats for a given flight id for the database
		/// </summary>
		/// <parameter name="flight"></parameter>
		/// <parameter name="flightClass"></parameter>
		/// <returns>Returns the number of rows affected by the insert</returns>
		public int UpdateFlightClass(Flight flight, FlightClass flightClass)
		{
            Database db = null;
			try
			{

				db = GetDatabaseConnection();

				return db.ExecuteNonQuery("UpdateFlightClass", flight.ID, flightClass.ClassInfo, flightClass.NoOfSeats);
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new FlightDAOException("Unable to update flight class");
			}
			catch (Exception)
			{
				throw new FlightDAOException("Unable to update flight class");
			}
		}
		#endregion

	}
}
