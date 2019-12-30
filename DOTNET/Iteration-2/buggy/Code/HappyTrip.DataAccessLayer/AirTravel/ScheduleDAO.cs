using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.DataAccessLayer.Common;
using HappyTrip.Model.Entities.AirTravel;
using System.Data;
using HappyTrip.Model.Entities.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace HappyTrip.DataAccessLayer.AirTravel
{
	/// <summary>
	/// Class to represent the database related activities  
	/// with respect to schedule operations for fetch,add,update
	/// </summary>
	class ScheduleDAO : DAO, IScheduleDAO
	{
		Database db;

		#region Making the constructor public
		public ScheduleDAO()
		{

		}
		#endregion

		#region Method to get the schedules from the database
		/// <summary>
		/// Gets the schedules from the database
		/// </summary>
		/// <returns>Returns the list of schedules from the database<Schedule></returns>
		public List<Model.Entities.AirTravel.Schedule> GetSchedules()
		{
			List<Schedule> schedules = new List<Schedule>();

			try
			{
				using (IDataReader reader = GetDatabaseConnection().ExecuteReader("getScheduleFlight"))
				{

					while (reader.Read())
					{
						Schedule schedule = new Schedule();

						schedule.ID = long.Parse(reader["ScheduleId"].ToString());

						Airline airline = new Airline();
						airline.Id = int.Parse(reader["AirlineId"].ToString());
						airline.Name = reader["AirlineName"].ToString();

						Flight flight = new Flight();
						flight.ID = long.Parse(reader["FlightId"].ToString());
						flight.AirlineForFlight = airline;
						flight.Name = reader["FlightName"].ToString();

						schedule.FlightInfo = flight;

						City fromCity = new City();
						fromCity.CityId = long.Parse(reader["FromId"].ToString());
						fromCity.Name = reader["FromCity"].ToString();

						City toCity = new City();
						toCity.CityId = long.Parse(reader["ToId"].ToString());
						toCity.Name = reader["ToCity"].ToString();

						Route route = new Route();
						route.ID = long.Parse(reader["RouteId"].ToString());
						route.FromCity = fromCity;
						route.ToCity = toCity;

						route.DistanceInKms = long.Parse(reader["DistanceInKms"].ToString());
						schedule.RouteInfo = route;

                        DateTime dtime = Convert.ToDateTime(reader["DepartureTime"]);
                        TimeSpan sp1 = new TimeSpan(dtime.Hour, dtime.Minute, dtime.Second);
                        schedule.DepartureTime = sp1;

                        DateTime atime = Convert.ToDateTime(reader["ArrivalTime"]);
                        TimeSpan sp2 = new TimeSpan(atime.Hour, atime.Minute, atime.Second);
                        schedule.ArrivalTime = sp2;

						schedule.DurationInMins = int.Parse(reader["DurationInMins"].ToString());
						schedule.IsActive = bool.Parse(reader["Status"].ToString());

						using (IDataReader reader2 = GetDatabaseConnection().ExecuteReader("getScheduleFlightCost", schedule.ID))
						{
							try
							{
								while (reader2.Read())
								{
									FlightCost classCost = new FlightCost();
									int classid = int.Parse(reader2["ClassId"].ToString());
									classCost.Class = (TravelClass)classid;
									classCost.CostPerTicket = int.Parse(reader2["CostPerTicket"].ToString());
									schedule.AddFlightCost(classCost);
								}
							}
							catch (Exception ex)
							{
								throw ex;
							}
						}
						schedules.Add(schedule);
					}

				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new ScheduleDAOException("Unable to get schedules");
			}
			catch (Exception)
			{
				throw new ScheduleDAOException("Unable to get schedules");
			}

			return schedules;
		}
		#endregion

		#region Method to get the route id for a schedule from the database
		/// <summary>
		/// Gets the route id for a schedule from the database
		/// </summary>
		/// <parameter name="ScheduleInfo"></parameter>
		/// <returns>Returns the route id for a given schedule</returns>
		public int GetRouteID(Model.Entities.AirTravel.Schedule ScheduleInfo)
		{
			try
			{
				db = GetDatabaseConnection();
				int RouteId = 0;
				using (IDataReader Reader = db.ExecuteReader("getRouteId", ScheduleInfo.RouteInfo.FromCity.Name, ScheduleInfo.RouteInfo.ToCity.Name))
				{
					while (Reader.Read())
					{
						RouteId = int.Parse(Reader["RouteId"].ToString());
					}

					return RouteId;
				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new ScheduleDAOException("Unable to get route id");
			}
			catch (Exception)
			{
				throw new ScheduleDAOException("Unable to get route id");
			}
		}
		#endregion

		#region Method to add the schedule for the database
		/// <summary>
		/// Add the schedule for the database
		/// </summary>
		/// <parameter name="scheduleInfo"></parameter>
		/// <returns>Returns the number of rows affected by the insert</returns>
		public int AddSchedule(Model.Entities.AirTravel.Schedule scheduleInfo)
		{
            int numberOfRows = 0;
			try
			{
				long c = 0;
				using (IDataReader reader = GetDatabaseConnection().ExecuteReader("InsertSchedule", scheduleInfo.FlightInfo.ID, scheduleInfo.RouteInfo.ID, scheduleInfo.DepartureTime, scheduleInfo.ArrivalTime, scheduleInfo.DurationInMins, scheduleInfo.IsActive))
				{
					if (reader.Read())
					{
						c = long.Parse(reader[0].ToString());
                        numberOfRows++;
					}

					foreach (FlightCost item in scheduleInfo.GetFlightCosts())
					{
						int ClassId = (int)item.Class;
						string query = "insert into FlightCosts(ScheduleID,ClassID,CostPerTicket) values(" + c + "," + ClassId + "," + item.CostPerTicket + ")";
                        numberOfRows += GetDatabaseConnection().ExecuteNonQuery(CommandType.Text, query);
					}
				}
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new ScheduleDAOException("Unable to add schedule");
			}
			catch (Exception)
			{
				throw new ScheduleDAOException("Unable to add schedule");
			}
			return numberOfRows;
		}
		#endregion

		#region Method to update the existing schedule for the database
		/// <summary>
		/// Update the existing schedule for the database
		/// </summary>
		/// <parameter name="scheduleInfo"></parameter>
		/// <returns>Returns the status of the update</returns>
		public bool UpdateSchedule(Model.Entities.AirTravel.Schedule scheduleInfo)
		{
            bool isUpdated = false;
			try
			{
				db = GetDatabaseConnection();
				db.ExecuteNonQuery("UpdateSchedule", scheduleInfo.ID, scheduleInfo.FlightInfo.ID, scheduleInfo.RouteInfo.ID, scheduleInfo.DepartureTime, scheduleInfo.ArrivalTime, scheduleInfo.DurationInMins, scheduleInfo.IsActive);
                isUpdated = true;
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new ScheduleDAOException("Unable to update schedule");
			}
			catch (Exception)
			{
				throw new ScheduleDAOException("Unable to update schedule");
			}

            return isUpdated;
		}
		#endregion

		#region Method to update the existing flight cost for the specific schedule id for the database
		/// <summary>
		/// Update the existing flight cost for the specific schedule id for the database
		/// </summary>
		/// <parameter name="flightCostInfo"></parameter>
		/// <parameter name="scheduleInfo"></parameter>
		/// <returns>Returns the status of the update</returns>
		public bool UpdateScheduleFlightCost(Schedule scheduleInfo, FlightCost flightCostInfo)
		{
            bool isUpdated = false;
			try
			{
				db = GetDatabaseConnection();
				db.ExecuteNonQuery("UpdateFlightCost", scheduleInfo.ID, flightCostInfo.Class, flightCostInfo.CostPerTicket);
                isUpdated = true;
			}
			catch (Common.ConnectToDatabaseException)
			{
				throw new ScheduleDAOException("Unable to update schedule flight cost");
			}
			catch (Exception)
			{
				throw new ScheduleDAOException("Unable to update schedule flight cost");
			}

            return isUpdated;
		}
		#endregion

		#region Method to get the schedule details for a given schedule id from the database
		/// <summary>
		/// Get the schedule details for a given schedule id from the database
		/// </summary>
		/// <parameter name="scheduleId"></parameter>
		/// <returns>A Schedule for a given schedule id<Schedule></returns>
		public Model.Entities.AirTravel.Schedule GetSchedule(int scheduleId)
		{
            Schedule schedule = null;
			try
			{
				using (IDataReader reader = GetDatabaseConnection().ExecuteReader("getScheduleDetails_BasedID", scheduleId))
				{
                    schedule = new Schedule();

					while (reader.Read())
					{
                        schedule.ID = long.Parse(reader["ScheduleId"].ToString());

						Airline airline = new Airline();
						airline.Id = int.Parse(reader["AirlineId"].ToString());
						airline.Name = reader["AirlineName"].ToString();

						Flight flight = new Flight();
						flight.ID = long.Parse(reader["FlightId"].ToString());
						flight.AirlineForFlight = airline;
						flight.Name = reader["FlightName"].ToString();

                        schedule.FlightInfo = flight;

						City fromCity = new City();
						fromCity.CityId = long.Parse(reader["FromId"].ToString());
						fromCity.Name = reader["FromCity"].ToString();

						City toCity = new City();
						toCity.CityId = long.Parse(reader["ToId"].ToString());
						toCity.Name = reader["ToCity"].ToString();

						Route route = new Route();
						route.ID = long.Parse(reader["RouteId"].ToString());
						route.FromCity = fromCity;
						route.ToCity = toCity;
						route.DistanceInKms = long.Parse(reader["DistanceInKms"].ToString());
                        schedule.RouteInfo = route;
                        DateTime dtime = Convert.ToDateTime(reader["DepartureTime"]);
                        TimeSpan sp1 = new TimeSpan(dtime.Hour, dtime.Minute, dtime.Second);

                        DateTime atime = Convert.ToDateTime(reader["ArrivalTime"]);
                        TimeSpan sp2 = new TimeSpan(atime.Hour, atime.Minute, atime.Second);
                        schedule.DurationInMins = int.Parse(reader["DurationInMins"].ToString());
                        schedule.IsActive = bool.Parse(reader["Status"].ToString());

						using (IDataReader reader2 = GetDatabaseConnection().ExecuteReader("getScheduleFlightCost", schedule.ID))
						{
							try
							{
								while (reader2.Read())
								{
									FlightCost classCost = new FlightCost();
									int classid = int.Parse(reader2["ClassId"].ToString());
									classCost.Class = (TravelClass)classid;
									classCost.CostPerTicket = int.Parse(reader2["CostPerTicket"].ToString());
                                    schedule.AddFlightCost(classCost);
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
				throw new ScheduleDAOException("Unable to get the schedule details");
			}
			catch (Exception)
			{
				throw new ScheduleDAOException("Unable to get the schedule details");
			}
			return schedule;
		}
		#endregion

	}
}
