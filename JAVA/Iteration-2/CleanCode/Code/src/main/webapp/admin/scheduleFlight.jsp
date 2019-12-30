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
    <script type="text/javascript">
$(function() {
	$("#flightName").bind("keypress",function(e){
	if (String.fromCharCode(e.which).match(/[^0-9a-zA-Z-]/g)) {
	return false;
	}
	});
	});

</script>

<script type="text/javascript">
	function validate(name) {
		var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
		if (reg.test(email)) {
			return true;
		} else {
			return false;
		}
	}
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
  <form method="post" action="scheduleFlight" enctype="multipart/form-data" onsubmit="return validateFields();">


    <dl class="vertical">
      <dt><label for="flight" class="required">Choose a Flight</label></dt>
      <dd>
      	<select name="flightId"  type="text" id="flight" class="required" title="The flight to be assigned" >
      		
      		<%-- <%List<Flight> flights = (List<Flight>)request.getAttribute("flights");
      		for(Flight flight : flights)
      		{
      		%>
      			<option value="<%=flight.getFlightId()%>" label="<%=flight.getFlightName()%>"></option>
      		<%}%> --%>
      		
      		<!-- JSTL Code -->
      		<c:forEach var="flights" items="${flights}">
      			<option value="${flights.flightId}" label="${flights.flightName}"></option>
      		</c:forEach>
      		
      		
      	</select>
      </dd>
      <dd class="hint">This is the plane to be flown</dd>
      <dt><label class="required" for="route">Route</label></dt>
      <dd>
        <select name="route"  type="text" id="route" class="required" title="The city pair between which the flight will fly">
      		<%-- <%List<Route> routes = (List<Route>) request.getAttribute("routes");
      		for(Route route : routes){
      		%>
      			<option value="<%=route.getRouteId()%>" label="<%=route.getFromCity().getCityName() %> - <%=route.getToCity().getCityName() %>"></option>
      		<%} %> --%>
      		
      		<!-- JSTL code -->
      		<c:forEach var="routes" items="${routes}">
      			<option value="${routes.routeId}" label="${routes.fromCity.cityName} - ${routes.toCity.cityName}"></option>
      		</c:forEach>
      		
      	</select>
      </dd>
      <dd class="hint">The city pair between which the flight will fly</dd>
      <dt><label for="distance" class="required">Distance</label></dt>
      <dd><input name="distanceKms"  type="text" id="distance" class="required email" title="The distance in Km" />Kms</dd>
       <br /><span id="distance_span" style="color: red;"></span>
      <dt><label for="departureDate" class="required">Departure Date</label></dt>
      <dd><input class="datePicker required" type="text"  name="departureDate" title="Departure date" id="departureDate" size="10" placeholder="Departure Date" onchange="validate();"/>
      	<br /><span id="departureDate_span" style="color:red;"></span>
      </dd>
      
      <dt><label for="departureTime" class="required">Departure time</label></dt>
      <dd><input name="departureTime"  type="text" id="departureTime" class="required email" title="The departure time" />hrs</dd>
      <br /><span id="departureTime_span" style="color: red;"></span>
      <dt><label for="arrivalTime" class="required">Arrival time</label></dt>
      <dd><input name="arrivalTime"  type="text" id="arrivalTime" class="required email" title="The arrival time" />hrs</dd>
      <br /><span id="arrivalTime_span" style="color: red;"></span>
      
      <%-- <%
      List<FlightClass> classes = (List<FlightClass>)request.getSession().getAttribute("classes");
    		  for(FlightClass flightClass : classes){
      %>
      		<dt><label for="class<%=flightClass.getClassType()%>" class="required">Cost of <%=flightClass.getClassType()%> Class</label></dt>
      		<dd><input  name="costPerTicketFor<%=flightClass.getClassType()%>" type="text" id="class<%=flightClass.getClassType()%>" class="required email" title="The arrival time" /> Rupees</dd>
      <%}%> --%>
      
      
      <!-- JSTL code -->
      <c:forEach var="flightclasses" items="${classes}">
      	<dt>
      		<label for="class_${flightclasses.classType}" class="required"> Cost of ${flightclasses.classType} Class</label>
      		
      		
      	</dt>
      	<dd>
      		<input name="costPerTicket${flightclasses.classType}" type="text" id="class${flightclasses.classType}" class="required email" title="The arrival time"/>Rupees
      		<br /><span id="class${flightclasses.classType}_span" style="color: red;"></span>
      		
      		
      	</dd>
      </c:forEach>
      
      
      </dd>
       <dt><label for="airlineImage" class="required email">Schedule Image</label></dt>
      <dd>
        <input name="airlineLogo" type="file" id="airlineImage" size="24" value="" class="required password" title="The airline code"  />
      </dd>
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

<script>

var validateFields = function() {
	if (/[^0-9]/g.test(distance.value)) {
		$("#distance").css("border-color", "red");
		$("#distance_span").append(
				"Enter Digits only!!!!!....");
		distance.value = "";
		distance.focus();
		return false;
	}else if(/[^0-9]/g.test(departureTime.value)) {
		$("#departureTime").css("border-color", "red");
		$("#departureTime_span").append(
				"Enter Digits only!!!!!....");
		departureTime.value = "";
		departureTime.focus();
		return false;
	}else if(/[^0-9]/g.test(arrivalTime.value)) {
		$("#arrivalTime").css("border-color", "red");
		$("#arrivalTime_span").append(
				"Enter Digits only!!!!!....");
		arrivalTime.value = "";
		arrivalTime.focus();
		return false;
	}else if(/[^0-9]/g.test(classEconomy.value)) {
		$("#classEconomy").css("border-color", "red");
		$("#classEconomy_span").append(
				"Enter Digits only!!!!!....");
		classEconomy.value = "";
		classEconomy.focus();
		return false;
	}else if(/[^0-9]/g.test(classBusiness.value)) {
		$("#classBusiness").css("border-color", "red");
		$("#classBusiness_span").append(
				"Enter Digits only!!!!!....");
		classBusiness.value = "";
		classBusiness.focus();
		return false;
	}
	else if(/[^0-9]/g.test(classFirst.value)) {
		$("#classFirst").css("border-color", "red");
		$("#classFirst_span").append(
				"Enter Digits only!!!!!....");
		classFirst.value = "";
		classFirst.focus();
		return false;
	}	
	else{
		return true;
		}
};

var validate= function(){
	var flightId=$("#flight").val();
	var departureDate=$("#departureDate").val();
	
	//alert(flightId);
	$.ajax({
		url:"ScheduleValidator",
		data:{
			"flightId":flightId,
			"departureDate":departureDate
		},
		
		success: function(data){
			if (data=="true"){
				$("#departureDate").css("border-color", "red");
				$("#departureDate_span").append("This Flight is Already Scheduled For This Date...!!!");
			}
			else{
				$("#departureDate").css("border-color", "");
				$("#departureDate_span").empty();
			}
			
		}
	});
}
</script>

</html>
 