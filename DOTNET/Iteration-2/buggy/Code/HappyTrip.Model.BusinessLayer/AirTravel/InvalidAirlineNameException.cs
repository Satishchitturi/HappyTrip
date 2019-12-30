using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    class InvalidAirlineNameException : ApplicationException
    {
        public InvalidAirlineNameException(string Message)
            : base(Message)
        {
            
        }
    }
}
