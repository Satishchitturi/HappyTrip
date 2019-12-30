using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    class InvalidRouteException : ApplicationException
    {
        public InvalidRouteException(string Message)
            : base(Message)
        {

        }
    }
}
