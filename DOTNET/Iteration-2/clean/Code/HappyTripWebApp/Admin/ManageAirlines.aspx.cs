using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyTrip.Model.BusinessLayer.AirTravel;


namespace HappyTripWebApp.Admin
{
    public partial class ManageAirlines : System.Web.UI.Page
    {
		protected void sdsAirline_Updated(object sender, SqlDataSourceStatusEventArgs e)
		{
			if (e.Exception != null)
			{
				lblError.Text = "Unable to update Airline with null values";
				e.ExceptionHandled = true;
			}
		}

		protected void grdAirline_PageIndexChanged(object sender, EventArgs e)
		{
			lblError.Text = "";
		}
	}
}