<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*,com.happytrip.model.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/account.css">
		<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
		<style>
th {
	text-align: center;
}

td input {
	width: 50px;
}
</style>
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
									Your login attempt was not successful, try again.<br /> Caused
									: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
								</div>
							</c:if>
						</div>
						<h1>Add</h1>
						<form method="get" action="addFlight"
							enctype="multipart/form-data" onsubmit="return validateFields();">


							<dl class="vertical">
								<dt>
									<label for="airlineName" class="required email">Airline
										name</label>
								</dt>
								<dd>


									<select name="airlineCode" id="airlineName"
										class="required email" title="The name of the new airline">
										<!-- JSTL code -->
										<c:forEach var="airline" items="${airlines}">
											<option value="${airline.airlineCode}">${
												airline.airlineName}</option>

										</c:forEach>

									</select>



								</dd>
								<dt>
									<label for="flightName" class="required email">Flight
										name</label>
								</dt>
								<dd>
									<input name="flightName" type="text" id="flightName"
										class="required email" title="The name of the flight"
										onblur="validateFlightName();" /> <br />
									<span id="flightName_span" style="color: red;"></span>
								</dd>
								<dd class="hint">This is the name of the new flight</dd>
								<br />
								<table cellpadding="7">
									<tr>
										<th>Class</th>
										<th>Seats</th>
									</tr>


									<%-- <%
										List<FlightClass> flightClasses = (List<FlightClass>) request
												.getAttribute("classes");
										for (FlightClass flightClass : flightClasses) {
											%>
									<tr>
										<td><input type="checkbox"
											name="class_<%=flightClass.getClassType()%>"
											value="<%=flightClass.getClassType()%>" /><%=flightClass.getClassType()%></td>
										<td><input type="text"
											name="seats_<%=flightClass.getClassType()%>" /></td>
									</tr>
									<%										}
									%> --%>


									<!-- JSTL code -->

									<c:forEach var="flightclasses" items="${classes}">
										<tr>
											<td><input type="checkbox"
												name="class_${flightclasses.classType}"
												value="${flightclasses.classType}" />${flightclasses.classType}
											</td>
											<td><input type="text"
												name="seats_${flightclasses.classType}" /></td>
										</tr>
									</c:forEach>







									<!--       	<tr> -->
									<!--       		<td> -->
									<!--       			<input type="checkbox" name="class_business" value="Business" /> Business -->
									<!--       		</td> -->
									<!--       		<td> -->
									<!--       			<input type="text" name="seats_business"/> -->
									<!--       		</td> -->
									<!--       	</tr> -->

									<dt>
										<label for="airlineImage" class="required email">Flight
											Image</label>
									</dt>
									<dd>
										<input name="airlineLogo" type="file" id="airlineImage"
											size="24" value="" class="required password"
											title="The airline code" />
									</dd>
								</table>
								<dd class="submit">
									<button type="submit" id="signInButton" class="primary">Add</button>
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

<script>
	var validateFields = function() {
			if (/[^0-9a-zA-Z-]/g.test(flightName.value)) {
				$("#flightName").css("border-color", "red");
				$("#flightName_span").append(
						"Can not contain special characters...!!!");
				flightName.value = "";
				flightName.focus();
				return false;
			}
			else{
		return true;
		}
	};

	var validateFlightName = function() {

		var flightName = $("#flightName").val();

		$.ajax({
			url : "FlightValidator",
			data : {
				"flightName" : flightName
			},

			success : function(data) {
				/* alert(data); */
				if (data == "true") {
					$("#flightName").css("border-color", "red");
					$("#flightName_span").append(
							"Flight Name Already Taken...!!!");
				} else {
					$("#flightName").css("border-color", "");
					$("#flightName_span").empty();
				}

			}
		});
	}
</script>

</html>
