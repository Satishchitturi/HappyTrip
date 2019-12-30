using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace HappyTrip.Model.Entities.AirTravel
{
    /// <summary>
    /// Class to represent the custom collection to hold routes
    /// </summary>
    public class Routes : IEnumerable<Route>, IComparer<Route>
    {
        /// <summary>
        /// Field - List of Route inside the custom collection
        /// </summary>
        private List<Route> routes = new List<Route>();

        /// <summary>
        /// Property to get the count of routes collection
        /// </summary>
        public int Count { get; set; }

        /// <summary>
        /// Enumerates through the list of routes and returns each Route
        /// </summary>
        /// <returns></returns>
        public IEnumerator<Route> GetEnumerator()
        {
            return routes.GetEnumerator();
        }

        #region IEnumerable Members

        /// <summary>
        /// Method to support foreach loop to iterate through routes
        /// </summary>
        /// <returns></returns>
        IEnumerator IEnumerable.GetEnumerator()
        {
            return routes.GetEnumerator();
        }

        #endregion

        /// <summary>
        /// Method to add Route into the collection
        /// </summary>
        /// <param name="c"></param>
        public void Add(Route c)
        {
            routes.Add(c);
        }

        /// <summary>
        /// Method to sort the routes collection
        /// </summary>
        public void Sort()
        {
            routes.Sort(this);
        }

        /// <summary>
        /// Indexer - If we need to iterate through the custom collection
        /// using for loop
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public Route this[int index]
        {
            get
            {
                return routes[index];
            }
        }

        #region IComparer<Route> Members

        /// <summary>
        /// Method to compare and sort 2 routes
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public int Compare(Route x, Route y)
        {
            if (x.DistanceInKms < y.DistanceInKms)
                return -1;
            else if (x.DistanceInKms > y.DistanceInKms)
                return 1;
            else
                return 0;
        }

        #endregion
    }
}
