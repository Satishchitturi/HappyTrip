using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.Entities.Transaction
{
    /// <summary>
    /// Class to represent passenger information
    /// </summary>
    public class Passenger
    {
        //Using VS - Effectively - CR - STYCBG09.02
        //Create properties and make them private set
        //Create the parameterized constructor to initialize the values

        #region Properties of the class

        public string Name { get; private set; }
        public char Gender { get; private set; }
        public DateTime DateOfBirth { get; private set; }

        #endregion

        /// <summary>
        /// Parameterized Constructor - To Initialize the data members and properties with private set
        /// </summary>
        /// <param name="name"></param>
        /// <param name="gender"></param>
        /// <param name="dateOfBirth"></param>
        public Passenger(string name, char gender, DateTime dateOfBirth)
        {
            this.Name = name;
            this.Gender = gender;
            this.DateOfBirth = dateOfBirth;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Passenger()
        {

        }
    }
}
