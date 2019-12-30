using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Logs;
using System.IO;
using System.Xml.Serialization;
using System.Web;

namespace HappyTrip.Model.BusinessLayer.Logs
{
    /// <summary>
    /// Class to represent the xml logger
    /// </summary>
    class XMLLogger : ILogger
    {
        /// <summary>
        /// Method to write into an xml log file
        /// </summary>
        /// <param name="message"></param>
        /// <returns>Status of the write method</returns>
        public bool WriteToLog(LogMessage message)
        {
            bool isSuccessful = true;
            StreamWriter sw = null;

            try
            {
                HttpContext httpContext = HttpContext.Current;

                string lf = httpContext.Server.MapPath("~/Log/") + "log.xml";

                sw = new StreamWriter(lf, true);

                StringBuilder sb = new StringBuilder();

                sb.Append("=====HappyTripLog: Start=======\n");
                sb.AppendFormat("Message: {0}\n", message.Message);
                sb.AppendFormat("Class Name: {0}\n", message.ClassName);
                sb.AppendFormat("Method Name: {0}\n", message.MethodName);
                sb.AppendFormat("Time of Log: {0}\n", message.MessageDateTime.ToLongTimeString() + ", " + message.MessageDateTime.ToLongDateString());
                sb.Append("=====HappyTripLog: End=======\n");

                string logMessage = sb.ToString();

                XmlSerializer xmlSerializer = new XmlSerializer(typeof(LogMessage));
                xmlSerializer.Serialize(sw, message);
            }
            catch (Exception)
            {
                isSuccessful = false;
            }
            finally
            {
                sw.Close();
                sw.Dispose();
            }

            return isSuccessful;
        }
    }
}
