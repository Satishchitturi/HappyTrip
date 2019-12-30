using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    class InvalidCityNameException : ApplicationException
    {
        public InvalidCityNameException(string Message)
            : base(Message)
        {

        }
    }
}
