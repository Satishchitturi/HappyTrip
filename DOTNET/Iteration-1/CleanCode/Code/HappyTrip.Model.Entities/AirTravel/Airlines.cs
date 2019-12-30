using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace HappyTrip.Model.Entities.AirTravel
{
    /// <summary>
    /// Class to represent the custom collection to hold airlines
    /// </summary>
    public class Airlines : IEnumerable<Airline>, IComparer<Airline>
    {
        /// <summary>
        /// Field - List of Airline inside the custom collection
        /// </summary>
        private List<Airline> airlines = new List<Airline>();

        /// <summary>
        /// Property to get the count of Airlines collection
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Enumerates through the list of Airlines and returns each Airline
        /// </summary>
        /// <returns></returns>
        public IEnumerator<Airline> GetEnumerator()
        {
            return airlines.GetEnumerator();
        }

        #region IEnumerable Members

        /// <summary>
        /// Method to support foreach loop to iterate through Airlines
        /// </summary>
        /// <returns></returns>
        IEnumerator IEnumerable.GetEnumerator()
        {
            return airlines.GetEnumerator();
        }

        #endregion

        /// <summary>
        /// Method to add Airline into the collection
        /// </summary>
        /// <param name="c"></param>
        public void Add(Airline c)
        {
            airlines.Add(c);
        }

        /// <summary>
        /// Method to sort the Airlines collection
        /// </summary>
        public void Sort()
        {
            airlines.Sort(this);
        }

        /// <summary>
        /// Indexer - If we need to iterate through the custom collection
        /// using for loop
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public Airline this[int index]
        {
            get
            {
                return airlines[index];
            }
        }

        #region IComparer<Airline> Members

        /// <summary>
        /// Method to compare and sort 2 Airlines
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public int Compare(Airline x, Airline y)
        {
            return x.Name.CompareTo(y.Name);
        }

        #endregion
    }
}
