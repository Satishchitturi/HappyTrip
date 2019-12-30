using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HappyTrip.Model.Entities.Transaction;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;

namespace HappyTrip.DataAccessLayer.Transaction
{
    class HotelBookingDAOImpl : IBookingDAOImpl
    {
        #region IBookingDAOImpl Members

        public string MakeBooking(Booking NewBooking, Database DbConnection)
        {
            //Downcast to flight booking
            NewBooking = (HotelBooking)NewBooking;

            //Write code to store data into database



            return null;
        }

        #endregion
    }
}
