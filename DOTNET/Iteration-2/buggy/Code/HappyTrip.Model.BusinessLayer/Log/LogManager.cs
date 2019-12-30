using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Log;

namespace HappyTrip.Model.BusinessLayer.Log
{
    /// <summary>
    /// Class to represent a manager to manage the activities related to logging of errors
    /// </summary>
	public static class LogManager
	{
        /// <summary>
        /// Writes the log message into a configured logger
        /// </summary>
        /// <param name="message"></param>
		public static void WriteToLog(LogMessage message)
		{
			LogFactory.Create("event").WriteToLog(message);
		}
	}
}
