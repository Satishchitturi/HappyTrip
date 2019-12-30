using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.Entities.Hotel
{
	public class SearchResult
	{
		List<Hotel> Hotels = new List<Hotel>();

		public void AddHotel(Hotel NewHotel)
		{
            Hotels.Add(NewHotel);
		}

		public List<Hotel> GetHotels()
		{
            return Hotels;
		}
	}
}
