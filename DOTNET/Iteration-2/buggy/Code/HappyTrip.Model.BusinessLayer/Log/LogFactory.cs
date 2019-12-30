using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Reflection;
using System.Web;
using HappyTripEventLogger;
using HappyTrip.Model.Entities.Log;
using HappyTripFileLogger;
using HappyTripEmailLogger;
using HappyTripXmlLogger;

namespace HappyTrip.Model.BusinessLayer.Log
{
	public class LogFactory
	{
		public static ILogger Create(string loggerType)
		{
			ILogger logger = null;

			switch (loggerType)
			{
				case "event":
					logger = new EventLogger();
					break;
				case "file":
					logger = new FileLogger();
					break;
				case "email":
					logger = new EmailLogger();
					break;
				case "xml":
					logger = new XmlLogger();
					break;
			}

			return logger;

		}
	}
}
