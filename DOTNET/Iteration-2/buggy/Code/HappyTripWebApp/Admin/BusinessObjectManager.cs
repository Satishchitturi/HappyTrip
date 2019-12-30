using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HappyTrip.Model.BusinessLayer.AirTravel;

namespace HappyTripWebApp.Admin
{
	static class BusinessObjectManager
	{
		public static ICityManager GetCityManager()
		{
			return (ICityManager)AirTravelManagerFactory.Create("City");
		}

		public static IRouteManager GetRouteManager()
		{
			return (IRouteManager)AirTravelManagerFactory.Create("Route");
		}
	}
}