<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*,com.happytrip.model.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/account.css">
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


						<form method="post" action="addRoute" enctype="multipart/form-data">

							<%!List<City> fromCities = null;%>
							<dl class="vertical">
								<dt>
									<label for="fromCity" class="required">From city</label>
								</dt>
								<dd>
									<select name="fromCity" type="text" id="fromCity"
										class="required" title="The name of the origin city">


										<%-- <%
											fromCities = (List<City>) request.getAttribute("fromCities");
											for (City city : fromCities) {
										%>
										<option value="<%=city.getCityName()%>"
											label="<%=city.getCityName()%>"></option>
										<%
											}
										%> --%>
										
										
										<!-- JSTL code -->
										<c:forEach var="fromCities" items="${fromCities}">
											<option value="${fromCities.cityName}"
											label="${fromCities.cityName}"></option>
										</c:forEach>
										
									</select>

								</dd>
								<dd class="hint">This is the name of the origin city</dd>
								<dt>
									<label class="required" for="toCity">To city</label>
								</dt>
								<dd>
									<select name="toCity" type="text" id="toCity" class="required"
										title="The name of the destination city">
										<%-- <%
											for (City city : fromCities) {
										%>
										<option value="<%=city.getCityName()%>"
											label="<%=city.getCityName()%>"></option>
										<%
											}
										%> --%>
										
										
										<!-- JSTL code -->
										
										<c:forEach var="toCities" items="${toCities}">
											<option value="${toCities.cityName}"
											label="${toCities.cityName}"></option>
										</c:forEach>
									</select>

								</dd>
								<dd class="hint">This is the name of the destination city</dd>
								</dd>
								<dt>
									<label for="airlineImage" class="required email">RouteMap</label>
								</dt>
								<dd>
									<input name="airlineLogo" type="file" id="airlineImage"
										size="24" value="" class="required password"
										title="The airline code" />
								</dd>
								<dd class="submit">
									<button type="submit" id="signInButton" class="primary">Add</button>
									<img src="../images/animations/spinner.gif" id="wait_spinner"
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
