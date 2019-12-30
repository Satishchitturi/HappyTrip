using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.Entities.Logs
{
    /// <summary>
    /// Class to hold the log message details
    /// </summary>
    [Serializable]
    public class LogMessage
    {
        #region Properties of the class

        public string Message { get; set; }
        public string ClassName { get; set; }
        public string MethodName { get; set; }
        public DateTime MessageDateTime { get; set; }
        public String ExceptionType { get; set; }

        #endregion
    }
}
