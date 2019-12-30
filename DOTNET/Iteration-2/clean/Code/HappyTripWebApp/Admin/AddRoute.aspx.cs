using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyTrip.Model.BusinessLayer.AirTravel;
using HappyTrip.Model.Entities.Common;
using HappyTrip.Model.Entities.AirTravel;

namespace HappyTripWebApp.Admin
{
    public partial class AddRoute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
					ICityManager cityManager = (ICityManager)BusinessObjectManager.GetCityManager();
                    List<City> cities = cityManager.GetCities();

                    dpFromCity.Items.Add("None");
                    foreach (City c in cities)
                    {
                        ListItem item = new ListItem(c.Name, c.CityId.ToString());
                        dpFromCity.Items.Add(item);
                    }
                    dpFromCity.DataBind();

                    dpToCity.Items.Add("None");
                    foreach (City c in cities)
                    {
                        ListItem item = new ListItem(c.Name, c.CityId.ToString());
                        dpToCity.Items.Add(item);
                    }
                    dpToCity.DataBind();
                }
                catch (CityManagerException ex)
                {
                    throw ex;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (dpFromCity.Text.Equals("None") == true)
            {
                lblError.Text = "Select From City";
                dpFromCity.Focus();
            }
            else if (dpToCity.Text.Equals("None") == true)
            {
                lblError.Text = "Select To City";
                dpToCity.Focus();
            }
            else if (dpFromCity.SelectedItem.Text.Equals(dpToCity.SelectedItem.Text))
            {
                lblError.Text = "From City & To City Cannot be Same";
                dpFromCity.Focus();
            }
            else if (txtDistance.Text.Length == 0)
            {
                lblError.Text = "Enter the Distance between Routes";
                txtDistance.Focus();
            }
            else
            {
                try
                {
                    Route route = new Route();
					IRouteManager routeManager = (IRouteManager)BusinessObjectManager.GetRouteManager();
                    City fromcity = new City();
                    fromcity.CityId = long.Parse(dpFromCity.SelectedItem.Value);
                    fromcity.Name = dpFromCity.SelectedItem.Text;
                    route.FromCity = fromcity;

                    City tocity = new City();
                    tocity.CityId = long.Parse(dpToCity.SelectedItem.Value);
                    tocity.Name = dpToCity.SelectedItem.Text;
                    route.ToCity = tocity;

                    if (routeManager.GetRouteID(route) > 0)
                    {
                        lblError.Text = "Already route exists";
                        dpFromCity.Focus();
                    }
                    else
                    {
                        route.DistanceInKms = double.Parse(txtDistance.Text);
                        route.IsActive = chkActive.Checked;
						routeManager.AddRoute(route);
                        lblError.Text = "Route Added Successfully";
                    }
                }
                catch (RouteManagerException ex)
                {
                    throw ex;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dpFromCity.SelectedIndex = 0;
            dpToCity.SelectedIndex = 0;
            txtDistance.Text = "";
            chkActive.Checked = false;
            lblError.Text = "";
        }
    }
}