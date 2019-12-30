<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="../css/main.css"></link>
<link rel="stylesheet" href="../css/account.css"></link>
<link type="text/css"
	href="../css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet"></link>
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="../js/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#departureDate").datepicker({
			showOn : "button",
			buttonImage : "../css/ui-lightness/images/calendar.gif",
			buttonImageOnly : true,
			minDate : 0
		});
		$("#arrivalDate").datepicker({
			showOn : "button",
			buttonImage : "../css/ui-lightness/images/calendar.gif",
			buttonImageOnly : true,
			minDate : 0
		});
	});
</script>

<script type="text/javascript">
//Source: http://stackoverflow.com/questions/497790
var dates = {
    convert:function(d) {
        // Converts the date in d to a date-object. The input can be:
        //   a date object: returned without modification
        //  an array      : Interpreted as [year,month,day]. NOTE: month is 0-11.
        //   a number     : Interpreted as number of milliseconds
        //                  since 1 Jan 1970 (a timestamp) 
        //   a string     : Any format supported by the javascript engine, like
        //                  "YYYY/MM/DD", "MM/DD/YYYY", "Jan 31 2009" etc.
        //  an object     : Interpreted as an object with year, month and date
        //                  attributes.  **NOTE** month is 0-11.
        return (
            d.constructor === Date ? d :
            d.constructor === Array ? new Date(d[0],d[1],d[2]) :
            d.constructor === Number ? new Date(d) :
            d.constructor === String ? new Date(d) :
            typeof d === "object" ? new Date(d.year,d.month,d.date) :
            NaN
        );
    },
    compare:function(a,b) {
        // Compare two dates (could be of any type supported by the convert
        // function above) and returns:
        //  -1 : if a < b
        //   0 : if a = b
        //   1 : if a > b
        // NaN : if a or b is an illegal date
        // NOTE: The code inside isFinite does an assignment (=).
        return (
            isFinite(a=this.convert(a).valueOf()) &&
            isFinite(b=this.convert(b).valueOf()) ?
            (a>b)-(a<b) :
            NaN
        );
    },
    inRange:function(d,start,end) {
        // Checks if date in d is between dates in start and end.
        // Returns a boolean or NaN:
        //    true  : if d is between start and end (inclusive)
        //    false : if d is before start or after end
        //    NaN   : if one or more of the dates is illegal.
        // NOTE: The code inside isFinite does an assignment (=).
       return (
            isFinite(d=this.convert(d).valueOf()) &&
            isFinite(start=this.convert(start).valueOf()) &&
            isFinite(end=this.convert(end).valueOf()) ?
            start <= d && d <= end :
            NaN
        );
    }
}
	if (!String.prototype.trim) {
		String.prototype.trim = function() {
			return this.replace(/^\s+|\s+$/g, '');
		};
	}

	function checkForm() {
		$("#distance_required").hide();
		$("#time_difference").hide();
		$("#date_required").hide();
		$("#economy_cost_required").hide();
		$("#business_cost_required").hide();
		var noError = true;
		var distance = $("#distance").val();
		if (distance.trim() == "" || distance.trim() <= 0) {
			$("#distance_required").show();
			noError = false;
		} else {
			if (!isNumeric(distance)) {
				$("#distance_required").show();
				noError = false;
			}
		}
		var date = $("#departureDate").val();
		var arrivalDate = $("#arrivalDate").val();
		if (date.trim() == "" || arrivalDate.trim()== "") {
			$("#date_required").show();
			noError = false;
		} 
		
		var departureObj= new Date(date);
		var arrivalDateObj = new Date(arrivalDate);
		
		var departureTime = $("#departureTime").val();
		var arrivalTime = $("#arrivalTime").val();
		
		if(arrivalDateObj<departureObj){
			$("#time_difference").show();
			noError = false;
		}else{
			if(!(arrivalDateObj>departureObj) && (departureTime>=arrivalTime)){
				$("#time_difference").show();
				noError = false;
			}
		}
		
		var economyCost = $("#classEconomy").val();
		var businessCost = $("#classBusiness").val();
		
		if (economyCost.trim() == "" || economyCost.trim() <= 0) {
			$("#economy_cost_required").show();
			noError = false;
		} else {
			if (!isNumeric(economyCost)) {
				$("#economy_cost_required").show();
				noError = false;
			}
		}
		
		/* if (businessCost.trim() == "" || businessCost.trim() <= 0) {
			$("#business_cost_required").show();
			noError = false;
		} else {
			if (!isNumeric(businessCost)) {
				$("#business_cost_required").show();
				noError = false;
			}
		}
		return noError;
 */	}
	
	function isNumeric(num) {
		if (num.trim() == "") {
			return false;
		}
		return !isNaN(num)
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
						<span id="errors1" class="error">${message}</span>
						<h1>Schedule a flight</h1>
						<form:form method="post" action="scheduleFlight"
							commandName="AddSchedule">


							<dl class="vertical">
								<dt>
									<label for="flight" class="required">Choose a Flight *</label>
								</dt>
								<dd>
									<form:select name="flight"
										path="scheduledFlight.flight.flightId" type="text" id="flight"
										class="required" title="The flight to be assigned">
										<c:forEach items="${ flights }" var="flight">
											<form:option value="${flight.flightId}"
												label="${flight.flightName}"></form:option>
										</c:forEach>
									</form:select>
								</dd>
								<dd class="hint">This is the plane to be flown</dd>
								<dt>
									<label class="required" for="route">Route *</label>
								</dt>
								<dd>
									<form:select name="route" path="scheduledFlight.route.routeId"
										type="text" id="route" class="required"
										title="The city pair between which the flight will fly">
										<c:forEach items="${ routes }" var="route">
											<form:option value="${route.routeId}"
												label="${route.fromCity.cityName} (${route.fromCity.state.stateName}) - ${route.toCity.cityName} (${route.toCity.state.stateName})"></form:option>
										</c:forEach>
									</form:select>
								</dd>
								<dd class="hint">The city pair between which the flight
									will fly</dd>
								<dt>
									<p>
										<span class="error" style="display: none"
											id="distance_required">Distance should be greater than 0</span>
									</p>
								</dt>
									
								<dt>
									<label for="distance" class="required">Distance *</label>
								</dt>
								<dd>
									<form:input name="distance"
										path="scheduledFlight.distanceInKms" type="text" id="distance"
										class="required email" title="The distance in Km" />
									Kms
								</dd>
								<dt>
									<p>
										<span class="error" style="display: none"
											id="date_required">Departure and Arrival Date are required</span>
									</p>
									<p>
										<span class="error" style="display: none"
											id="time_difference">Arrival time should be after the departure</span>
									</p>
								</dt>
																
								<dt>
									<label for="departureDate" class="required">Departure
										Date *</label>
								</dt>
								<dd>
									<form:input class="datePicker required" type="text"
										path="scheduledFlight.scheduledFlightDate"
										name="departureDate" title="Departure date" id="departureDate"
										size="10" placeholder="Departure Date" readonly="true"/>
								</dd>
								<dt>
									<label for="departureTime" class="required">Departure
										time *</label>
								</dt>
								<dd>
									<form:select name="departureTime"
										path="scheduledFlight.departureTime" type="text"
										id="departureTime" class="required email"
										title="The departure time">
										<form:option value="0000">00:00</form:option>
										<form:option value="0100">01:00</form:option>
										<form:option value="0200">02:00</form:option>
										<form:option value="0300">03:00</form:option>
										<form:option value="0400">04:00</form:option>
										<form:option value="0500">05:00</form:option>
										<form:option value="0600">06:00</form:option>
										<form:option value="0700">07:00</form:option>
										<form:option value="0800">08:00</form:option>
										<form:option value="0900">09:00</form:option>
										<form:option value="1000">10:00</form:option>
										<form:option value="1100">11:00</form:option>
										<form:option value="1200">12:00</form:option>
										<form:option value="1300">13:00</form:option>
										<form:option value="1400">14:00</form:option>
										<form:option value="1500">15:00</form:option>
										<form:option value="1600">16:00</form:option>
										<form:option value="1700">17:00</form:option>
										<form:option value="1800">18:00</form:option>
										<form:option value="1900">19:00</form:option>
										<form:option value="2000">20:00</form:option>
										<form:option value="2100">21:00</form:option>
										<form:option value="2200">22:00</form:option>
										<form:option value="2300">23:00</form:option>
									</form:select>
									hrs
								</dd>
								<dt>
									<label for="departureDate" class="required">Arrival
										Date *</label>
								</dt>
								<dd>
									<form:input class="datePicker required" type="text"
										path="scheduledFlight.scheduledFlightArrivalDate"
										name="departureDate" title="Arrival date" id="arrivalDate"
										size="10" placeholder="Arrival Date" readonly="true"/>
								</dd>
								<dt>
									<label for="arrivalTime" class="required">Arrival time *</label>
								</dt>
								<dd>
									<form:select name="arrivalTime"
										path="scheduledFlight.arrivalTime" type="text"
										id="arrivalTime" class="required email"
										title="The arrival time">
										<form:option value="0000">00:00</form:option>
										<form:option value="0100">01:00</form:option>
										<form:option value="0200">02:00</form:option>
										<form:option value="0300">03:00</form:option>
										<form:option value="0400">04:00</form:option>
										<form:option value="0500">05:00</form:option>
										<form:option value="0600">06:00</form:option>
										<form:option value="0700">07:00</form:option>
										<form:option value="0800">08:00</form:option>
										<form:option value="0900">09:00</form:option>
										<form:option value="1000">10:00</form:option>
										<form:option value="1100">11:00</form:option>
										<form:option value="1200">12:00</form:option>
										<form:option value="1300">13:00</form:option>
										<form:option value="1400">14:00</form:option>
										<form:option value="1500">15:00</form:option>
										<form:option value="1600">16:00</form:option>
										<form:option value="1700">17:00</form:option>
										<form:option value="1800">18:00</form:option>
										<form:option value="1900">19:00</form:option>
										<form:option value="2000">20:00</form:option>
										<form:option value="2100">21:00</form:option>
										<form:option value="2200">22:00</form:option>
										<form:option value="2300">23:00</form:option>
									</form:select>
									hrs
								</dd>

								<dt>
									<p>
										<span class="error" style="display: none"
											id="economy_cost_required">Please provide a valid cost for the Economy seats</span>
									</p>
									<p>
										<!-- <span class="error" style="display: none"
											id="business_cost_required">Please provide a valid cost for the Business seats</span> -->
									</p>
								</dt>

								<c:forEach items="${ classes }" var="classItem"
									varStatus="status" begin="0">
									<dt>
										<label for="class${classItem.classType }" class="required">Cost
											of ${classItem.classType } Class</label>
									</dt>
									<dd>
										<form:input
											path="ticketCosts[${status.count -1 }].costPerTicket"
											type="text" id="class${classItem.classType }"
											class="required email" title="The cost per ticket for ${classItem.classType } class" />
										Rupees
									</dd>
									<form:input type="hidden"
										path="ticketCosts[${status.count-1 }].flightClass.classId"
										value="${classItem.classId }" />
								</c:forEach>

								<dd class="submit">
									<button type="submit" id="signInButton" class="primary" onclick="return checkForm();">Add</button>
									<img src="../images/animations/spinner.gif" id="wait_spinner"
										style="display: none">
								</dd>
							</dl>
						</form:form>
					</div>


				</div>
				<div class="Right">
					<div class="col clearfix">
						<img src="../images/suitcase.png" height="500" width="500"
							style="margin-left: 40px;">
					</div>
				</div>
			</div>
		</div>

		<div id="Footer">
			<div class="FooterContainer">© 2012 Happytrip Travel Services
				Private Limited</div>
		</div>
</body>
</html>
