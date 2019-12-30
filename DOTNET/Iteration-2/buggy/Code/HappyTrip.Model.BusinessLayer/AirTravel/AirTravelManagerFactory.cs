using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.BusinessLayer.AirTravel
{
	public static class AirTravelManagerFactory
	{
		public static IAirTravelManager Create(string manager)
		{
			IAirTravelManager airtravelManager = null;

			switch (manager)
			{
				case "Airline":
					airtravelManager = new AirLineManager();
					break;
				case "City":
					airtravelManager = new CityManager();
					break;
				case "Flight":
					airtravelManager = new FlightManager();
					break;
				case "Route":
					airtravelManager = new RouteManager();
					break;
				case "Schedule":
					airtravelManager = new ScheduleManager();
					break;
			}

			return airtravelManager;
		}
	}
}
