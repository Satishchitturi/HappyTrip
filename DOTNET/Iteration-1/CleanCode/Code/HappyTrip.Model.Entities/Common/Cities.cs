using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace HappyTrip.Model.Entities.Common
{
    /// <summary>
    /// Class to represent the custom collection to hold cities
    /// </summary>
    public class Cities : IEnumerable<City>, IComparer<City>
    {
        /// <summary>
        /// Field - List of City inside the custom collection
        /// </summary>
        private List<City> cities = new List<City>();

        /// <summary>
        /// Property to get the count of cities collection
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Enumerates through the list of cities and returns each city
        /// </summary>
        /// <returns></returns>
        public IEnumerator<City> GetEnumerator()
        {
            return cities.GetEnumerator();
        }

        #region IEnumerable Members

        /// <summary>
        /// Method to support foreach loop to iterate through cities
        /// </summary>
        /// <returns></returns>
        IEnumerator IEnumerable.GetEnumerator()
        {
            return cities.GetEnumerator();
        }

        #endregion

        /// <summary>
        /// Method to add city into the collection
        /// </summary>
        /// <param name="c"></param>
        public void Add(City c)
        {
            cities.Add(c);
        }

        /// <summary>
        /// Method to sort the cities collection
        /// </summary>
        public void Sort()
        {
            cities.Sort(this);
        }

        /// <summary>
        /// Indexer - If we need to iterate through the custom collection
        /// using for loop
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public City this[int index]
        {
            get
            {
                return cities[index];
            }
        }

        #region IComparer<City> Members

        /// <summary>
        /// Method to compare and sort 2 cities
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public int Compare(City x, City y)
        {
            return x.Name.CompareTo(y.Name);
        }

        #endregion

        
    }
}
