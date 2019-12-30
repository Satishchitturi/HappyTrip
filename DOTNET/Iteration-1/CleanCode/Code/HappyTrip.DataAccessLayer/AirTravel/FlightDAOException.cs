﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.DataAccessLayer.Common
{
    /// <summary>
    /// Class to represent an exception which can occur while performing flight related database operations
    /// </summary>
	public class FlightDAOException : ApplicationException
	{
		/// <summary>
        /// Default Constructor
        /// </summary>
        public FlightDAOException()
        {

        }

        /// <summary>
        /// Parameterized Constructor - Which takes a message
        /// </summary>
        /// <param name="message"></param>
        public FlightDAOException(string message) : base(message)
        {

        }

        /// <summary>
        /// Parameterized Constructor - Which takes a message and then inner exception
        /// </summary>
        /// <param name="message"></param>
        /// <param name="ex"></param>
        public FlightDAOException(string message, Exception ex)
            : base(message, ex)
        {

        }
	}
}
