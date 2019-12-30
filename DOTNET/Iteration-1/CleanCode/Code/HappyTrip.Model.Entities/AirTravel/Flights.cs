using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace HappyTrip.Model.Entities.AirTravel
{
    /// <summary>
    /// Class to represent the custom collection to hold Flights
    /// </summary>
    public class Flights : IEnumerable<Flight>, IComparer<Flight>, ICollection
    {
        /// <summary>
        /// Field - List of Flight inside the custom collection
        /// </summary>
        private List<Flight> flights = new List<Flight>();

        /// <summary>
        /// Enumerates through the list of Flights and returns each Flight
        /// </summary>
        /// <returns></returns>
        public IEnumerator<Flight> GetEnumerator()
        {
            return flights.GetEnumerator();
        }

        #region IEnumerable Members

        /// <summary>
        /// Method to support foreach loop to iterate through Flights
        /// </summary>
        /// <returns></returns>
        IEnumerator IEnumerable.GetEnumerator()
        {
            return flights.GetEnumerator();
        }

        #endregion

        /// <summary>
        /// Method to add Flight into the collection
        /// </summary>
        /// <param name="c"></param>
        public void Add(Flight c)
        {
            flights.Add(c);
        }

        /// <summary>
        /// Method to sort the Flights collection
        /// </summary>
        public void Sort()
        {
            flights.Sort(this);
        }

        /// <summary>
        /// Indexer - If we need to iterate through the custom collection
        /// using for loop
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public Flight this[int index]
        {
            get
            {
                return flights[index];
            }
        }

        #region IComparer<Flight> Members

        /// <summary>
        /// Method to compare and sort 2 Flights
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public int Compare(Flight x, Flight y)
        {
            return x.Name.CompareTo(y.Name);
        }

        #endregion



        #region ICollection Members

        public void CopyTo(Array array, int index)
        {
            throw new NotImplementedException();
        }

        public int Count
        {
            get { return flights.Count; }
        }

        public bool IsSynchronized
        {
            get { throw new NotImplementedException(); }
        }

        public object SyncRoot
        {
            get { throw new NotImplementedException(); }
        }

        #endregion
    }
}
