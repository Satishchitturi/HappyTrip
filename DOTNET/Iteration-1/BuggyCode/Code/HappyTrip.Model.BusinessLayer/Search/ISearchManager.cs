﻿using System;

namespace HappyTrip.Model.BusinessLayer.Search
{
    /// <summary>
    /// Interface to perform all the operatins related to search activities
    /// </summary>
    public interface ISearchManager
    {
        /// <summary>
        /// Gets the availability of seats for a given travel schedule
        /// </summary>
        /// <param name="scheduleForAvailability"></param>
        /// <param name="numberOfSeats"></param>
        /// <param name="dateOfJourney"></param>
        /// <param name="tClass"></param>
        /// <returns>Returns true if seats are available, else false</returns>
        bool GetAvailabilityForSchedule(HappyTrip.Model.Entities.AirTravel.Schedule ScheduleForAvailability, int NumberOfSeats, DateTime DateOfJourney, HappyTrip.Model.Entities.AirTravel.TravelClass TClass);

        /// <summary>
        /// Gets the cities in the database
        /// </summary>
        /// <exception cref="CitiesNotAvailableException">Thorws exception when cities are not available to be returned</exception>
        /// <returns>List of cities</returns>
        System.Collections.Generic.List<HappyTrip.Model.Entities.Common.City> GetCities();

        /// <summary>
        /// Gets the flight schedules based on the search criteria. 
        /// </summary>
        /// <param name="searchInformation"></param>
        /// <exception cref="InvalidCitiesException">Thorws an exception when cities given are invalid</exception>
        /// <exception cref="InvalidDateException">Thorws an exception when date given in invalid</exception>
        /// <exception cref="FlightsNotAvailableException">Thorws an exception when unable to retrieve flights</exception>
        /// <returns>Returns a search log to the caller</returns>
        HappyTrip.Model.Entities.AirTravel.SearchLog SearchForFlights(HappyTrip.Model.Entities.AirTravel.SearchInfo SearchInformation);
    }
}
