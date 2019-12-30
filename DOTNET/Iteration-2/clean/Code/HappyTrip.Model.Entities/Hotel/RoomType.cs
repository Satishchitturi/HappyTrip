using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HappyTrip.Model.Entities.Hotel
{
	public class RoomType
	{
		public int TypeId { get; set; }
		public string Title { get; set; }
        public string Description { get; set; }
        public string Code { get; set; }
        public bool IsActive { get; set; }

	}
}
