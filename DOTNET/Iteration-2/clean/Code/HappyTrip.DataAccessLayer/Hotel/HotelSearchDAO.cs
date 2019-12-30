using System;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;

namespace HappyTrip.DataAccessLayer.Hotel
{
	class HotelSearchDAO : DataAccessLayer.Common.DAO, IHotelSearchDAO
	{
		private static HotelSearchDAO searchDAO = new HotelSearchDAO();

		private HotelSearchDAO()
		{
		}

		public static HotelSearchDAO GetInstance()
		{
			return searchDAO;
		}


		#region IHotelSearchDAO Members

        /// <summary>
        /// Gets the search result for hotel search information
        /// </summary>
        /// <param name="hsi"></param>
        /// <returns></returns>
		public Model.Entities.Hotel.SearchResult SearchForHotels(Model.Entities.Hotel.SearchInfo hsi)
		{
			HappyTrip.Model.Entities.Hotel.SearchResult hsr = new HappyTrip.Model.Entities.Hotel.SearchResult();

			Database db = GetDatabaseConnection();


			using (IDataReader reader = db.ExecuteReader("GetHotels", hsi.DesitinationCity.CityId, hsi.CheckInDate, hsi.CheckOutDate, hsi.NoOfPeople, hsi.NoOfRooms))
			{
				try
				{
					while (reader.Read())
					{
						HappyTrip.Model.Entities.Hotel.Hotel h = new HappyTrip.Model.Entities.Hotel.Hotel();
						h.HotelId = Convert.ToInt64(reader["HotelId"]);
						h.HotelName = reader["HotelName"].ToString();
						h.PhotoUrl = reader["PhotoUrl"].ToString();
						h.StarRanking= Convert.ToInt32(reader["StarRanking"]);

						hsr.AddHotel(h);

					}
				}
				catch (Exception e)
				{
					throw e;
				}
			}
			return hsr;
		}

		#endregion
	}
}
