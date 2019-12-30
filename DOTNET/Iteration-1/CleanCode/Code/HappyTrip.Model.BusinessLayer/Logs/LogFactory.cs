using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Logs;

namespace HappyTrip.Model.BusinessLayer.Logs
{
    /// <summary>
    /// Class to construct the logger from the different types of loggers available
    /// </summary>
    class LogFactory
    {
        /// <summary>
        /// Property - Instance of the LogFactory
        /// </summary>
        public static LogFactory Instance { get; set; }

        /// <summary>
        /// Static Constructor - To instantiate the LoggerFactory
        /// </summary>
        static LogFactory()
        {
            Instance = new LogFactory();
        }

        /// <summary>
        /// Private Constructor
        /// </summary>
        private LogFactory()
        {

        }

        /// <summary>
        /// Method to create a logger to log exceptions
        /// </summary>
        /// <param name="loggers"></param>
        /// <returns></returns>
        public ILogger Create(Loggers loggers)
        {
            ILogger logger = null;

            switch (loggers)
            {
                case Loggers.Email: logger = new EmailLogger();
                    break;
                case Loggers.Event: logger = new EventLogger();
                    break;
                case Loggers.File: logger = new FileLogger();
                    break;
                case Loggers.XML: logger = new XMLLogger();
                    break;
            }

            return logger;
        }
    }
}
