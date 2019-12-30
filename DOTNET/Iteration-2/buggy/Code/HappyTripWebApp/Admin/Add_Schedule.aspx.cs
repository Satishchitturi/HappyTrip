using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyTrip.Model.BusinessLayer.AirTravel;
using HappyTrip.Model.Entities.Common;
using HappyTrip.Model.Entities.AirTravel;
using System.Data;

namespace HappyTripWebApp.Admin
{
    public partial class Add_Schedule : System.Web.UI.Page
    {
        int total = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();                   
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }

        private void clear()
        {
            dpFromCity.Items.Clear();
            dpToCity.Items.Clear();
            dpAirlineName.Items.Clear();
            dpFlightName.Items.Clear();
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
            DropDownList4.Items.Clear();
            DropDownList5.Items.Clear();

            DropDownList1.Items.Add("None");
            DropDownList4.Items.Add("None");
            for (int i = 1; i <= 24; i++)
            {
                DropDownList1.Items.Add(i.ToString());
                DropDownList4.Items.Add(i.ToString());
            }
            DropDownList1.DataBind();
            DropDownList4.DataBind();

            DropDownList2.Items.Add("None");
            DropDownList5.Items.Add("None");
            for (int i = 0; i <= 59; i++)
            {
                DropDownList2.Items.Add(i.ToString());
                DropDownList5.Items.Add(i.ToString());
            }
            DropDownList2.DataBind();
            DropDownList5.DataBind();
            
            txtDuration.Enabled = false;

            txtDuration.Text = "";
            chkStatus.Checked = false;
			ICityManager cityManager = (ICityManager)AirTravelManagerFactory.Create("City");
            try
            {
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
            catch (CityManagerException e)
            {
                lblError.Text = e.Message;
            }


			IAirLineManager airlineManager = (IAirLineManager)AirTravelManagerFactory.Create("Airline");
            try
            {
				List<Airline> airlines = airlineManager.GetAirLines();

                dpAirlineName.Items.Add("None");
                foreach (Airline c in airlines)
                {
                    ListItem item = new ListItem(c.Name, c.Id.ToString());
                    dpAirlineName.Items.Add(item);
                }
                dpAirlineName.DataBind();
            }
            catch (AirlineManagerException e)
            {
                lblError.Text = e.Message;
            }
           
            var travelClassvalues = Enum.GetValues(typeof(TravelClass)).Cast<TravelClass>();
            Repeater1.DataSource = travelClassvalues;
            Repeater1.DataBind();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
			IScheduleManager scheduleManager = (IScheduleManager)AirTravelManagerFactory.Create("Schedule");

            Schedule schedule = new Schedule();

            Route route = new Route();

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
            else if (dpAirlineName.Text.Equals("None") == true)
            {
                lblError.Text = "Select Airline Name";
                dpAirlineName.Focus();
            }
            else if (dpFlightName.Text.Equals("None") == true)
            {
                lblError.Text = "Select Flight Name";
                dpFlightName.Focus();
            }
            else if (DropDownList1.Text.Equals("None") == true)
            {
                lblError.Text = "Select Departure Hours";
                DropDownList1.Focus();
            }
            else if (DropDownList2.Text.Equals("None") == true)
            {
                lblError.Text = "Select Departure Minutes";
                DropDownList2.Focus();
            }
            else if (DropDownList4.Text.Equals("None") == true)
            {
                lblError.Text = "Select Arrival Hours";
                DropDownList4.Focus();
            }
            else if (DropDownList5.Text.Equals("None") == true)
            {
                lblError.Text = "Select Arrival Minutes";
                DropDownList5.Focus();
            }
            else
            {
                City fromcity = new City();
                fromcity.CityId = long.Parse(dpFromCity.SelectedItem.Value);
                fromcity.Name = dpFromCity.SelectedItem.Text;
                route.FromCity = fromcity;

                City tocity = new City();
                tocity.CityId = long.Parse(dpToCity.SelectedItem.Value);
                tocity.Name = dpToCity.SelectedItem.Text;
                route.ToCity = tocity;

                schedule.RouteInfo = route;
                int routeID = scheduleManager.GetRouteID(schedule);
                schedule.RouteInfo.ID = routeID;
				if (routeID == 0)
                {
                    lblError.Text = "Select the Existing Route";
                    dpFromCity.Focus();
                }
                else
                {

                    TimeSpan t1 = TimeSpan.Parse(DropDownList4.SelectedItem.ToString() + ":" + DropDownList5.SelectedItem.ToString());
                    TimeSpan t2 = TimeSpan.Parse(DropDownList1.SelectedItem.ToString() + ":" + DropDownList2.SelectedItem.ToString());
                    total = int.Parse((t1 - t2).TotalMinutes.ToString());
                    txtDuration.Text = total.ToString();

                    Flight flight = new Flight();
                    flight.ID = long.Parse(dpFlightName.SelectedItem.Value);
                    flight.Name = dpFlightName.SelectedItem.Text;

                    schedule.RouteInfo = route;
                    schedule.FlightInfo = flight;
                    schedule.DepartureTime = TimeSpan.Parse(DropDownList1.SelectedItem.ToString() + ":" + DropDownList2.SelectedItem.ToString());
                    schedule.ArrivalTime = TimeSpan.Parse(DropDownList4.SelectedItem.ToString() + ":" + DropDownList5.SelectedItem.ToString());
                    schedule.DurationInMins = total;
                    schedule.IsActive = chkStatus.Checked;

                    foreach (RepeaterItem item in Repeater1.Items)
                    {
                        Label lblclassname = (Label)item.FindControl("ClassName");
                        TextBox txtcost = (TextBox)item.FindControl("txtCostPerTicket");

                        if (txtcost.Text.Length == 0)
                        {
                            lblError.Text = "Flight Cost Can't be Empty";
                            txtcost.Focus();
                            break;
                        }
                        else
                        {

                            if (txtcost != null || lblclassname != null)
                            {
                                string classname = lblclassname.Text;
                                string val = txtcost.Text;

                                FlightCost fc = new FlightCost();
                                fc.Class = (TravelClass)Enum.Parse(typeof(TravelClass), classname);
                                fc.CostPerTicket = decimal.Parse(txtcost.Text);

                                schedule.AddFlightCost(fc);
                            }
                        }
                    }

                    try
                    {
                        scheduleManager.AddSchedule(schedule);
                        lblError.Text = "Schedule Added Successfully";
                    }
                    catch (ScheduleManagerException ex)
                    {
                        lblError.Text = ex.Message;
                    }
                }
            }
        }

        protected void dpAirlineName_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dpAirlineName.Text.Equals("None") == false)
            {
                dpFlightName.Items.Clear();
				IFlightManager flightManager = (IFlightManager)AirTravelManagerFactory.Create("Flight");
                try
                {
					List<Flight> flightlist = flightManager.GetFlightsForAirLine(int.Parse(dpAirlineName.SelectedValue));

                    dpFlightName.Items.Add("None");
                    foreach (Flight c in flightlist)
                    {
                        ListItem item = new ListItem(c.Name, c.ID.ToString());
                        dpFlightName.Items.Add(item);
                    }
                    dpFlightName.DataBind();
                }
                catch (FlightManagerException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }
    }
}