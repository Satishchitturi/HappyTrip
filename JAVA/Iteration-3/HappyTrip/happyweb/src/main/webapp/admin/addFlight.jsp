<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/account.css">
<style>
th {
	text-align: center;
}

td input {
	width: 50px;
}
</style>
		<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript"
			src="../js/jquery-ui-1.8.16.custom.min.js"></script>

		<script type="text/javascript">
			if (!String.prototype.trim) {
				String.prototype.trim = function() {
					return this.replace(/^\s+|\s+$/g, '');
				};
			}

			function checkForm() {
				$("#airlineName_required").hide();
				$("#flightName_required").hide();
				$("#flightName_sizelimit").hide();
				$("#economy_business_required").hide();
				$("#economy_business_type").hide();

				var airlineName = $("#airlineName").val();
				if (airlineName==null || airlineName.trim() == "") {
					$("#airlineName_required").show();
					noError = false;
				}
				var noError = true;
				var flightName = $("#flightName").val();
				if (flightName.trim() == "") {
					$("#flightName_required").show();
					noError = false;
				} else {
					if (flightName.length > 255) {
						$("#flightName_sizelimit").show();
						noError = false;
					}
				}
				var economySelected = $("#EconomySelect")[0].checked;
				var businessSelected = $("#BusinessSelect")[0].checked;
				if (!economySelected && !businessSelected) {
					$("#economy_business_required").show();
					noError = false;
				}
				var economyCapacity = $("#EconomyCapacity").val();
				var businessCapacity = $("#BusinessCapacity").val();

				if (economySelected && (!isNumeric(economyCapacity)
						|| (economyCapacity<1 || economyCapacity>200))) {
					$("#economy_business_type").show();
					noError = false;
				}
				if (businessSelected && (!isNumeric(businessCapacity)
						|| (businessCapacity<1 || businessCapacity>50))) {
					$("#economy_business_type").show();
					noError = false;
				}
				return noError;
			}

			function isNumeric(num) {
				if (num.trim() == "") {
					return false;
				}
				return !isNaN(num);
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
						<h1>Add Flight</h1>
						<form method="get" action="addFlight">


							<dl class="vertical">
								<dt>
										<span class="error" style="display: none"
											id="airlineName_required">Airline name is required</span>
								</dt>
								<dt>
									<label for="airlineName" class="required email">Airline
										name *</label>
								</dt>
								<dd>
									<select name="airlineCode" id="airlineName"
										class="required email" title="The airline name of the flight">
										<c:forEach items="${airlines}" var="airline">
											<option value="${airline.airlineCode}">${airline.airlineName}</option>
										</c:forEach>
									</select>
								</dd>
								<dt>
									<p>
										<span class="error" style="display: none"
											id="flightName_required">Flight name is required</span>
									</p>
									<p>
										<span class="error" style="display: none"
											id="flightName_sizelimit">Flight name should be
											maximum 255 characters in length</span>
									</p>
								</dt>
								<dt>
									<label for="flightName" class="required email">Flight
										name *</label>
								</dt>
								<dd>
									<input name="flightName" type="text" id="flightName"
										class="required email" title="The name of the flight" />
								</dd>
								<dd class="hint">This is the name of the new flight</dd>
								<br />
								<dt>
									<p>
										<span class="error" style="display: none"
											id="economy_business_required">Please provide seats
											capacity for at least one of the classes</span>
									</p>
									<p>
										<span class="error" style="display: none"
											id="economy_business_type">Please ensure seat capacity
											is numeric and within limits</span>
									</p>
								</dt>
								<table cellpadding="7">
									<tr>
										<th>Class</th>
										<th>Seats</th>
									</tr>
									<tr>
										<td><input type="checkbox" id="EconomySelect"
											name="class_Economy" value="Economy" /> Economy (max 200)</td>
										<td><input type="text" id="EconomyCapacity"
											name="seats_Economy" /></td>
									</tr>
									<tr>
										<td><input type="checkbox" id="BusinessSelect"
											name="class_Business" value="Business" /> Business (max 50)</td>
										<td><input type="text" id="BusinessCapacity"
											name="seats_Business" /></td>
									</tr>
									<%-- <c:forEach items="${classes}" var="flightClass">
										<tr>
											<td><input type="checkbox"
												id="${flightClass.classType}Select"
												name="class_${flightClass.classType}"
												value="${flightClass.classType}" />
												${flightClass.classType}</td>
											<td><input type="text"
												id="${flightClass.classType}Capacity"
												name="seats_${flightClass.classType}" /></td>
										</tr>
									</c:forEach> --%>
									<!--       	<tr> -->
									<!--       		<td> -->
									<!--       			<input type="checkbox" name="class_business" value="Business" /> Business -->
									<!--       		</td> -->
									<!--       		<td> -->
									<!--       			<input type="text" name="seats_business"/> -->
									<!--       		</td> -->
									<!--       	</tr> -->
								</table>
								<dd class="submit">
									<button type="submit" id="signInButton" class="primary"
										onclick="return checkForm();">Add</button>
									<img src="/images/animations/spinner.gif" id="wait_spinner"
										style="display: none">
								</dd>
							</dl>
						</form>
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
