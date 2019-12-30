using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using HappyTrip.Model.BusinessLayer.AirTravel;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.Model.Entities.Common;

namespace HappyTripWebApp.Admin
{
    public partial class RouteUI : System.Web.UI.Page
    {
		

        private void BindData()
        {
            try
            {
				IRouteManager routeManager = (IRouteManager)BusinessObjectManager.GetRouteManager();
				DataTable dt = new DataTable();
				List<Route> routes = routeManager.GetRoutes();

				dt.Columns.Add("RouteId", typeof(long));
				dt.Columns.Add("FromCityName", typeof(string));
				dt.Columns.Add("ToCityName", typeof(string));
				dt.Columns.Add("DistanceInKms", typeof(decimal));
				dt.Columns.Add("status", typeof(bool));

				foreach (Route r in routes)
				{
					DataRow rw = dt.NewRow();
					rw["RouteId"] = r.ID;
					rw["FromCityName"] = r.FromCity.Name;
					rw["ToCityName"] = r.ToCity.Name;
					rw["DistanceInKms"] = r.DistanceInKms;
					rw["status"] = r.IsActive;

					dt.Rows.Add(rw);
				}

				GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (RouteManagerException ex)
            {
                throw ex;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            e.Cancel = true;
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];

            if (((TextBox)(row.Cells[3].Controls[0])).Text.Length == 0)
            {
                lblError.Text = "Distance in Kms Can't be Empty";
                ((TextBox)(row.Cells[3].Controls[0])).Focus();
            }
            else
            {
                try
                {
					IRouteManager routeManager = (IRouteManager)BusinessObjectManager.GetRouteManager();
                    Route route = new Route();
                    route.ID = long.Parse((row.Cells[0].Text));
                    route.DistanceInKms = long.Parse(((TextBox)(row.Cells[3].Controls[0])).Text);
                    route.IsActive = ((CheckBox)(row.Cells[4].Controls[0])).Checked;

					routeManager.UpdateRoute(route);

                    e.Cancel = true;
                    GridView1.EditIndex = -1;
                    BindData();

                    lblError.Text = "Route Updated";
                }
                catch (RouteManagerException ex)
                {
                    throw ex;
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
        }
    }
}