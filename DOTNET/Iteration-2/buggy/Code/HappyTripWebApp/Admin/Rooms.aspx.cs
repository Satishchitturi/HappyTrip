using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyTrip.Model.BusinessLayer.Hotel;
using System.Data;
using HappyTrip.Model.Entities.Hotel;

namespace HappyTripWebApp
{
    public partial class Rooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ShowRoomTypesGridView();
            
        }

        private void ShowRoomTypesGridView()
        {
            HotelManager hotelManager = new HotelManager();
            RoomTypesGridView.DataSource = hotelManager.GetRoomTypes();
            RoomTypesGridView.DataBind();
        }

        
      
       
    }
}