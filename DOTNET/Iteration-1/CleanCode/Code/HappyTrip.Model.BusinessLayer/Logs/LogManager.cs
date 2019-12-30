using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Logs;

namespace HappyTrip.Model.BusinessLayer.Logs
{
    /// <summary>
    /// Class to manage the logging of messages
    /// </summary>
    class LogManager
    {
        /// <summary>
        /// Fields of the class - Logger to work with for the manager
        /// </summary>
        ILogger logger = null;

        /// <summary>
        /// Default Constructor
        /// </summary>
        public LogManager()
        {
            logger = LogFactory.Instance.Create(Loggers.Email);
        }

        /// <summary>
        /// Parameterized Constructor - To Accept a Logger to Work With
        /// </summary>
        /// <param name="logger"></param>
        public LogManager(Loggers loggers)
        {
            this.logger = LogFactory.Instance.Create(loggers);
        }

        /// <summary>
        /// Method to write to log
        /// </summary>
        /// <param name="message"></param>
        public void WriteToLog(LogMessage message)
        {
            try
            {
                logger.WriteToLog(message);
            }
            catch (Exception)
            {

            }
        }
    }
}
