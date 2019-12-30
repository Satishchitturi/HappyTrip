using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.BusinessLayer.AirTravel
{
    class InvalidFlightNameException : ApplicationException
    {
            public InvalidFlightNameException(string Message)
                : base(Message)
            {

            }
    }
}
