using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyTrip.Model.Entities.Common;
using HappyTrip.Model.BusinessLayer.AirTravel;

namespace HappyTripWebApp.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtCrCity.Text.Length == 0)
            {
                lblError.Text = "City Name Can't be Empty";
                txtCrCity.Focus();
            }
            else if (dpStateCity.Text.Equals("None") == true)
            {
                lblError.Text = "Select the State";
                dpStateCity.Focus();
            }
            else
            {
                string CityName = txtCrCity.Text;

                State _state = new State();
                _state.StateId = long.Parse(dpStateCity.SelectedItem.Value); 

                City _city = new City();
                _city.Name = CityName;
                _city.StateInfo = _state;

				ICityManager cityManager = BusinessObjectManager.GetCityManager();

                try
                {
                    if (cityManager.AddCity(_city))
                    {
                        lblError.Text = "City Added Successfully";
                    }
                    else
                    {
                        lblError.Text = "City already exists";
                    }
                }
                
                catch (CityManagerException ex)
                {
                    throw ex;
                }
            }
        }

        public void clear()
        {
            txtCrCity.Text = "";
            lblError.Text = "";
            dpStateCity.Items.Clear();

			ICityManager cityManager = BusinessObjectManager.GetCityManager();
            List<State> stateList = cityManager.GetStates();

            dpStateCity.Items.Add("None");
            foreach (State s in stateList)
            {
                ListItem item = new ListItem(s.Name, s.StateId.ToString());
                dpStateCity.Items.Add(item);
            }
            dpStateCity.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}