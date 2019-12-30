using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Logs;
using System.Web;
using System.Net.Mail;

namespace HappyTrip.Model.BusinessLayer.Logs
{
    /// <summary>
    /// Class to represent the email logger
    /// </summary>
    class EmailLogger : ILogger
    {

        #region ILogger Members
        /// <summary>
        /// Method to email the log message
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        public bool WriteToLog(LogMessage message)
        {
            bool isSuccessful = true;
            HttpContext httpContext = HttpContext.Current;
            StringBuilder sb = new StringBuilder();

            try
            {
                sb.Append("\n\n=====HappyTripLog: Start=======\n");
                sb.AppendFormat("Message: {0}\n", message.Message);
                sb.AppendFormat("Class Name: {0}\n", message.ClassName);
                sb.AppendFormat("Method Name: {0}\n", message.MethodName);
                sb.AppendFormat("Time of Log: {0}\n", message.MessageDateTime.ToLongTimeString() + ", " + message.MessageDateTime.ToLongDateString());
                sb.Append("=====HappyTripLog: End=======\n\n\n");
                sb.Append("PS: This is an auto generated mail. Please DO NOT REPLY to this mail\n");

                string logMessage = sb.ToString();
                string fromAddress = "admin@happytrip.com";
                string toAddress = "kk@pratian.com";
                string smtpAddress = "=dir";

                SmtpClient sc = new SmtpClient();
                if (smtpAddress.Equals("=dir"))
                {
                    sc.PickupDirectoryLocation = httpContext.Server.MapPath("~/Log/");
                    sc.DeliveryMethod = SmtpDeliveryMethod.SpecifiedPickupDirectory;
                }

                MailMessage mm = new MailMessage(fromAddress, toAddress);
                mm.Subject = "Email Log for HappyTrip";
                mm.Body = logMessage;

                sc.Send(mm);
            }
            catch (Exception)
            {
                isSuccessful = false;
            }

            return isSuccessful;
        }

        #endregion
    }
}
