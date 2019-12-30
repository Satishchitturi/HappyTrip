using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.Entities.Transaction
{
    /// <summary>
    /// Class to represent card information to be processed while making a payment
    /// </summary>
    public class Card
    {
        //Using VS - Effectively - CR - STYCBG09.03
        //Create properties and make them private set
        //Create the parameterized constructor to initialize the values

        #region Properties of the class

        public string CardNo { get; private set; }
        public string Name { get; private set; }
        public int ExpiryMonth { get; private set; }
        public int ExpiryYear { get; private set; }
        public string Cvv2No { get; private set; }

        #endregion

        /// <summary>
        /// Parameterized Constructor - To Initialize the data members and properties with private set
        /// </summary>
        /// <param name="cardNo"></param>
        /// <param name="name"></param>
        /// <param name="expiryMonth"></param>
        /// <param name="expiryYear"></param>
        /// <param name="cvv2No"></param>
        public Card(string cardNo, string name, int expiryMonth, int expiryYear, string cvv2No)
        {
            this.CardNo = cardNo;
            this.Name = name;
            this.ExpiryMonth = expiryMonth;
            this.ExpiryYear = expiryYear;
            this.Cvv2No = cvv2No;
        }

    }
}
