using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Logs;

namespace HappyTrip.Model.BusinessLayer.Logs
{
    /// <summary>
    /// Interface to represent Logging of exception messages
    /// </summary>
    interface ILogger
    {
        /// <summary>
        /// Method to write to log
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        bool WriteToLog(LogMessage message);
    }
}
