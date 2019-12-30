using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HappyTrip.Model.Entities.Transaction;
using HappyTrip.Model.BusinessLayer;
using HappyTrip.Model.Entities.AirTravel;
using HappyTrip.Model.BusinessLayer.Transaction;


namespace HappyTripWebApp
{
    public partial class Payment_Screen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["travelbooking"] != null)
            {
                lblHeaderDateSeparator.Visible = false;
                TravelBooking travelbooking = (TravelBooking)Session["travelbooking"];
                FlightBooking bookingoneway = (FlightBooking)travelbooking.GetBookingForTravel(TravelDirection.OneWay);

                lblHeaderFromCity.Text = ((SearchInfo)Session["SearchInfo"]).FromCity.Name;
                lblHeaderToCity.Text = ((SearchInfo)Session["SearchInfo"]).ToCity.Name;
                lblAdults.Text = bookingoneway.NoOfSeats.ToString() + " Seats";

                lblHeaderDepart.Text = bookingoneway.DateOfJourney.ToString("ddd, dd MMM, yyyy");

                if (travelbooking.IsReturnAvailable())
                {
                    lblHeaderDateSeparator.Visible = true;
                    FlightBooking bookingreturn = (FlightBooking)travelbooking.GetBookingForTravel(TravelDirection.Return);
                    lblHeaderReturn.Text = bookingreturn.DateOfJourney.ToString("ddd, dd MMM, yyyy");
                }
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                int CardExpiryYear = Convert.ToInt16(ddlccExpirationYear.SelectedItem.Value);
                int CardExpiryMonth = Convert.ToInt16(ddlccExpirationMonth.SelectedItem.Value);

                TravelBooking travelbooking = (TravelBooking)Session["travelbooking"];

                //Calling the Parameterized Constructor
                //This is done once the class variables are set to private set 
                //and a paramterized constructor is introduced 
                //Using VS - Effectively - CR - STYCBG09.03
                Card _card = new Card(txtCard_no.Text, txtcard_holder.Text, CardExpiryMonth, CardExpiryYear, txtCvv.Text);

                IBookingManager _bookingManager = BookingManagerFactory.GetInstance().Create();

                TravelBooking travelbookingresult = new TravelBooking();

                travelbookingresult = _bookingManager.ProcessAirTravelBooking(travelbooking, _card);

                Session["travelbooking"] = travelbookingresult;
                Response.Redirect("~/booking/Payment_Success.aspx");
            }
            catch (Exception ex)
            {
                lblUnSuccessful.Visible = true;
                lblUnSuccessful.Text = ex.Message;
            }
            
        }
    }
}