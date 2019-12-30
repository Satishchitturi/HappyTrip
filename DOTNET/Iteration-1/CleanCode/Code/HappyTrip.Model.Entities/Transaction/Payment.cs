using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.Entities.Transaction
{
    /// <summary>
    /// Class to represent payment related information for a transaction
    /// </summary>
    public class Payment
    {
        //Using VS - Effectively - CR - STYCBG09.04
        //Create properties and make them private set
        //Create the parameterized constructor to initialize the values
        #region Properties of the class

        public DateTime PaymentDate { get; private set; }
        public decimal Amount { get; private set; }
        public string ReferenceNo { get; private set; }

        #endregion

        /// <summary>
        /// Parameterized Constructor - To Initialize the data members and properties with private set
        /// </summary>
        /// <param name="paymentDate"></param>
        /// <param name="amount"></param>
        /// <param name="refernceNo"></param>
        public Payment(DateTime paymentDate, decimal amount, string refernceNo)
        {
            this.PaymentDate = paymentDate;
            this.Amount = amount;
            this.ReferenceNo = refernceNo;
        }
    }
}
