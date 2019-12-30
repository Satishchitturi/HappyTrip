<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Confirm Booking</title>
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/flight_seats.css" />
<script type="text/javascript" src="<c:url value="/js/jquery-1.7.1.min.js"/>"></script>
<style>
.detailRow {
	font-family: arial, helvetica, verdana, sans-serif;
	font-size: 14px;
	color: #333;
}

.marginText {
	margin: 15px 0 15px 0;
}
</style>
<script type="text/javascript">
	function validateForm(){
		cleanErrors();
		var result = validateCardNumber() && validateName() && validateCvv() && validateExpiryDate();
		return result;
	}
	
	function cleanErrors(){
		$("div[name='errorField']").each(function(){
			$(this).html("");
		});
	}
	
	function validateCardNumber(){
		var cardNumber = $("#cardNumber").val();
		var confirmCard = $("#confirmcreditcardNum").val();
		var isnum = /^\d+$/.test(cardNumber);
		if(!isnum){
			$("#cardNumberError").html("Card number must have numbers only");
			return false;
		}
		if(cardNumber.length < 16){
			$("#cardNumberError").html("Card number must be 16 digits");
			return false;
		}
		if(confirmCard.length < 16){
			$("#confirmcreditcardNumError").html("Card number must be 16 digits");
			return false;
		}
		if(cardNumber != confirmCard){
			$("#confirmcreditcardNumError").html("Card number doesn't match");
			return false;
		}
		return true;
	}
	
	function validateName(){
		var name = $("#cardHolderName").val();
		if(isBlank(name)){
			$("#cardHolderNameError").html("Name can not be empty");
			return false;
		}
		return true;
	}
	
	function isBlank(str) {
	    return (!str || /^\s*$/.test(str));
	}
	
	function validateCvv(){
		var cvv = $("#cvvNumber").val();
		var isnum = /^\d+$/.test(cvv);
		if(!isnum){
			$("#cvvNumberError").html("CVV must be a number");
			return false;
		}
		if(cvv.length != 3){
			$("#cvvNumberError").html("CVV must have 3 digits");
			return false;
		}
		return true;
	}
	
	function validateExpiryDate(){
		var exYear = $("expiryYear").val();
		var exMonth = $("expiryMonth").val();
		var date = new Date();
		if(exYear < date.getFullYear()){
			$("#expiryYearError").html("Card already expired");
			return false;
		}
		if(exYear == date.getFullYear() && exMonth < date.getMonth()){
			$("#expiryMonthError").html("Card already expired");
			return false;
		}
		return true;
	}
</script>
</head>
<body class="TwentyEighty Flights Results">
	<jsp:include page="/include/header.jsp" />
	<div id="Wrapper">
		<div class="Container">
			<div id="ContentFrame" class="clearfix">




				<div id="ModifySearchWrapper">
					<div id="SearchParams">
						<div id="SPRow">
							<div id="mod_link_wrapper">
								<!-- <a href="javascript: void(0);"
										title="Click here to make a new search" id="mod_link"
										class="toggle_closed">Modify your search</a> -->
							</div>
							<ul class="inline">
								<li class="no_border">E - Ticket</li>
							</ul>





							<div id="SalesUpsell">
								<div class="clearfix" id="SUWrapper">


									Prefer booking over the phone? <span class="channel phone">Call
										080123456789 <span class="weak">local call from any
											phone</span>
									</span>






								</div>
							</div>


						</div>
					</div>

				</div>

				<!--  end of search params div -->


				<div class="Left">
					<div class="col">

						<img src="../images/trips.jpg" alt="" />
						<!--  end of search tools div -->
					</div>
					<!--  end of col div -->
				</div>
				<!--  end of left div -->

				<div class="Right clearfix">
					<div class="col clearfix">










						<!-- TMPL_VAR book-it-inputs -->



						<!-- Round trip deals section ends -->
						<!-- show deals ends -->

						<!-- Fare displays begin -->


						<!--  end of selection info div -->
						<div id="Notification" style="display: none">
							<span id="content"><span>Showing round trip
									specials.</span> <a href="javascript: void(0)">Back to all flights
									»</a></span>
						</div>



						<div id="update_note" class="UpdateMessage">
							<span>Updating Results...</span>
						</div>

						<div id="universalDiv" class="universal">

							<form:form method="post" action="confirmBooking.html"
								commandName="CreditCard" id="travellerDetails"
								errorblkid="TravellerBlockError" onsubmit="return validateForm()">
								<table>
									<tr>
										<td>Enter credit card Number:</td>
										<td><input type="text" name="cardNumber" id="cardNumber"></input></td>
										<td><div name="errorField" class="error" id="cardNumberError"></div></td>
									</tr>
									<tr>
										<td>Confirm credit card Number:</td>
										<td><input type="text" name="confirmcreditcardNum" id="confirmcreditcardNum"></input></td>
										<td><div name="errorField" class="error" id="confirmcreditcardNumError"></div></td>
									</tr>
									<tr>
										<td>Provide the CVV number:</td>
										<td><input type="text" name="cvvNumber" id="cvvNumber"></input></td>
										<td><div name="errorField" class="error" id="cvvNumberError"></div></td>
									</tr>
									<tr>
										<td>Select the Credit Card Type:</td>
										<td><select name="creditCardType" id="creditCardType">
												<option value="VISA">Visa</option>
												<option value="MASTERCARD">Mastercard</option>
										</select></td>
										<td><div name="errorField" class="error" id="creditCardTypeError"></div></td>
									</tr>
									<tr>
										<td>Card holder name:</td>
										<td><input type="text" name="cardHolderName" id="cardHolderName"></input></td>
										<td><div name="errorField" class="error" id="cardHolderNameError"></div></td>
									</tr>
									<tr>
										<td>Credit Card Expire Month:</td>
										<td><select name="expiryMonth" id="expiryMonth">
												<option value="1">Jan</option>
												<option value="2">Feb</option>
												<option value="3">Mar</option>
												<option value="4">Apr</option>
												<option value="5">May</option>
												<option value="6">Jun</option>
												<option value="7">Jul</option>
												<option value="8">Aug</option>
												<option value="9">Sep</option>
												<option value="10">Oct</option>
												<option value="11">Nov</option>
												<option value="12">Dec</option>
										</select></td>
										<td><div name="errorField" class="error" id="expiryMonthError"></div></td>
									</tr>
									<tr>
										<td>Credit Card Expire Year:</td>
										<td><select name="expiryYear" id="expiryYear">
												<option value="2013">2013</option>
												<option value="2014">2014</option>
												<option value="2015">2015</option>
												<option value="2016">2016</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
												<option value="2020">2020</option>
												<option value="2021">2021</option>
												<option value="2022">2022</option>
												<option value="2023">2023</option>
										</select></td>
										<td><div name="errorField" class="error" id="expiryYearError"></div></td>
									</tr>
									<tr>
										<td>Total Payment:</td>
										<td>${totalCost}</td>
									</tr>
									<tr>
										<td><input type="submit" value="Submit"></input></td>
									</tr>
								</table>
							</form:form>

						</div>
						<!-- end of universal div -->

						<!-- end of universal display form -->
					</div>
					<!--  end of col clearfix div -->
				</div>
				<!--  end of right clearfix div -->

			</div>
			<!--  end of content frame div -->
		</div>
	</div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>