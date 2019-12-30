<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*,com.happytrip.model.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <link rel="stylesheet" href="../css/main.css" ></link>
    <link rel="stylesheet" href="../css/account.css" ></link>
    <link type="text/css" href="../css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" ></link>
 	<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
 	<script type="text/javascript" src="../js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript">
    $(function() {
        $( "#departureDate" ).datepicker({
            showOn: "button",
            buttonImage: "css/ui-lightness/images/calendar.gif",
            buttonImageOnly: true
        });
    });
    </script>
</head>
<body class="Signin">
	<jsp:include page="/include/adminHeader.jsp" />
    <div id="Wrapper">
      <div class="Container">
        <div id="ContentFrame" class="clearfix">
          <div class="Left" style="margin: 0px auto">
            <div class="col">
  <div id="errors1" class="errors">
    <c:if test="${not empty error}">
		<div class="errorblock">
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
  </div>
  <h1>Schedule a flight</h1>
  <form method="post" action="scheduleFlight" >


    <dl class="vertical">
      <dt><label for="flight" class="required">Choose a Flight</label></dt>
      <dd>
      	<select name="flightId"  type="text" id="flight" class="required" title="The flight to be assigned">
      		
      		<%List<Flight> flights = (List<Flight>)request.getAttribute("flights");
      		for(Flight flight : flights)
      		{
      		%>
      			<option value="<%=flight.getFlightId()%>" label="<%=flight.getFlightName()%>"></option>
      		<%}%>
      	</select>
      </dd>
      <dd class="hint">This is the plane to be flown</dd>
      <dt><label class="required" for="route">Route</label></dt>
      <dd>
        <select name="route"  type="text" id="route" class="required" title="The city pair between which the flight will fly">
      		<%List<Route> routes = (List<Route>) request.getAttribute("routes");
      		for(Route route : routes){
      		%>
      			<option value="<%=route.getRouteId()%>" label="<%=route.getFromCity().getCityName() %> - <%=route.getToCity().getCityName() %>"></option>
      		<%} %>
      	</select>
      </dd>
      <dd class="hint">The city pair between which the flight will fly</dd>
      <dt><label for="distance" class="required">Distance</label></dt>
      <dd><input name="distanceKms"  type="text" id="distance" class="required email" title="The distance in Km" />Kms</dd>
      <dt><label for="departureDate" class="required">Departure Date</label></dt>
      <dd><input class="datePicker required" type="text"  name="departureDate" title="Departure date" id="departureDate" size="10" placeholder="Departure Date" /></dd>
      
      <dt><label for="departureTime" class="required">Departure time</label></dt>
      <dd><input name="departureTime"  type="text" id="departureTime" class="required email" title="The departure time" />hrs</dd>
      <dt><label for="arrivalTime" class="required">Arrival time</label></dt>
      <dd><input name="arrivalTime"  type="text" id="arrivalTime" class="required email" title="The arrival time" />hrs</dd>
      
      <%
      List<FlightClass> classes = (List<FlightClass>)request.getSession().getAttribute("classes");
    		  for(FlightClass flightClass : classes){
      %>
      		<dt><label for="class<%=flightClass.getClassType()%>" class="required">Cost of <%=flightClass.getClassType()%> Class</label></dt>
      		<dd><input  name="costPerTicketFor<%=flightClass.getClassType()%>" type="text" id="class<%=flightClass.getClassType()%>" class="required email" title="The arrival time" /> Rupees</dd>
      <%}%>
      <dd class="submit"><button type="submit" id="signInButton" class="primary">Add</button><img src="../images/animations/spinner.gif" id="wait_spinner" style="display: none"></dd>
    </dl>
  </form>
</div>


          </div>
          <div class="Right">
  <div class="col clearfix">
	<img src="../images/suitcase.png" height="500" width="500" style="margin-left: 40px;">
</div>
        </div>
      </div>
    </div>

    <div id="Footer">
      <div class="FooterContainer">
        © 2012 Happytrip Travel Services Private Limited
      </div>
    </div>

  

</body>
</html>
 