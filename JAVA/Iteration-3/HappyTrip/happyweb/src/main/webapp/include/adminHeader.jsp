<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Insert title here</title>
</head>
<body>
	<div id="Header">
		<!-- TMPL_CALL global-nav -->

		<ul class="inline" id="global">
			<sec:authorize access="isAuthenticated()">
				<li>Welcome <sec:authentication property="principal.username" />
				</li>
				<li><a class="forceHttps"
					href='<c:url value="/logout" />' rel="nofollow">Sign
						Out</a>
				</li>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<li><a class="forceHttps" href="login.html" rel="nofollow">Sign
						in</a>
				</li>
			</sec:authorize>
		</ul>

		<div class="LogoContainer">
			<a class="forceHttp" href="<c:url value="/admin/addAirline.html"/>" title="Add a new airline"><img
				src="<c:url value="/images/logo.png"/>"
				alt="Happytrip: India's Favourite Flights and Hotels Booking Agency">
			</a>
		</div>
		<div id="Tabs">
			<ul id="MainTabs" class="inline">
				<li><a href="<c:url value="/admin/addCity"/>"
					class="Rail forceHttp" title="Add City">Add City</a>
				</li>
				<li><a href="<c:url value="/admin/addAirline.html"/>"
					class="Rail forceHttp" title="Add a new airline">Add
						Airline</a>
				</li>
				<li><a href="<c:url value="/admin/addFlight.html"/>"
					class="Rail forceHttp" title="Add a new flight">Add flight</a>
				</li>
				<li><a href="<c:url value="/admin/addRoute.html"/>"
					class="Rail forceHttp" title="Add Route">Add Route</a>
				</li>
				<li><a href="<c:url value="/admin/scheduleFlight.html"/>"
					class="Rail forceHttp" title="Schedule a flight">Schedule
						Flight</a>
				</li>
				<li><a href="<c:url value="/admin/manage/airlines.html"/>"
					class="Rail forceHttp" title="View or edit airlines">View/Edit Airline</a>
				</li>
				<li><a href="<c:url value="/admin/manage/cities.html"/>"
					class="Rail forceHttp" title="View or edit cities">View/Edit City</a>
				</li>
				<li><a href="<c:url value="/admin/manage/scheduleFlights.html"/>"
					class="Rail forceHttp" title="View inventory of flights">View Flight Inventory</a>
				</li>
				<%-- <li><a href="<c:url value="/admin/reports.html"/>"
					class="Rail forceHttp" title="Schedule a flight">Generate Reports</a>
				</li> --%>
			</ul>
		</div>

	</div>

</body>
