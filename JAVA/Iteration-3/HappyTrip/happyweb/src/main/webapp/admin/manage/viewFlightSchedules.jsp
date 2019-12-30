<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to Happytrip</title>
<link rel="stylesheet" href="<c:url value="/css/main.css"/>"></link>
<link rel="stylesheet"
	href="<c:url value="/css/flight_seats.css"/>"></link>


</head>
<body class="TwentyEighty Flights Results">
	<jsp:include page="/include/adminHeader.jsp" />
	<div id="Wrapper">
		<div class="Container">
			<div id="ContentFrame" class="clearfix">

				<!--  end of search params div -->


				<div class="Left">
					<div class="col">

						<img src="<c:url value="/images/trips.jpg"/>" alt="" />
						<!--  end of search tools div -->
					</div>
					<!--  end of col div -->
				</div>
				<!--  end of left div -->

				<div class="Right clearfix">
					<div class="col clearfix">

						<!-- start of universal display form -->
						<form id="cityform" action="" name="cityform" method="get">
							<!-- TMPL_VAR book-it-inputs -->



							<!-- Round trip deals section ends -->
							<!-- show deals ends -->

							<!-- Fare displays begin -->



							<div id="universalDiv" class="universal">



								<div class="sector" id="return_div" style="width:90%">
									<div class="sector_info">

										<h2>All the flights scheduled today.</h2>
									</div>

									<div id="return">
										<table>
											<colgroup>
												<col width="11">
												<col width="11%">
												<col width="10%">
												<col width="7%">
												<col width="5%">
												<col width="11%">
												<col width="11%">
												<col width="11%">
												<col width="11%">
												<col width="11%">
											</colgroup>
											<thead>
												<tr>
													<th>Airline Name</th>
													<th>Flight Name</th>
													<th>Route</th>
													<th>Departure Time</th>
													<th>Arrival Time</th>
													<th>Flight Name</th>
													<th>Capacity in economy class</th>
													<th>Capacity in business class</th>
													<th>Seats available in economy class</th>
													<th>Seats available in business class</th>
												</tr>
											</thead>
											<c:forEach items="${flights}" var="flight"
												varStatus="status">
												<tbody
													class="<c:out value="${status.count % 2 eq 0 ? 'selected': ''}"/>">
													<tr>
														<td>
															${flight.airlineName }
														</td>
														<td>
															${flight.flightName }
														</td>
														<td>
															${flight.fromCity } to
															${flight.toCity }
														</td>
														<td>
															${flight.departureTime }
														</td>
														<td>
															${flight.arrivalTime }
														</td>
														<td>
															${flight.flightName }
														</td>
														<td>
															${flight.economyCapacity }
														</td>
														<td>
															${flight.businessCapacity }
														</td>
														<td>
															${flight.economyAvailable }
														</td>
														<td>
															${flight.businessAvailable }
														</td>
													</tr>
												</tbody>
											</c:forEach>
											
										</table>
									</div>
								</div>

							</div>

							<!-- end of universal div -->
						</form>
						<!-- end of universal display form -->
					</div>
					<!--  end of col clearfix div -->
				</div>
				<!--  end of right clearfix div -->

			</div>
			<!--  end of content frame div -->
		</div>
	</div>
	<!--  end of wrapper div -->
	<jsp:include page="/include/footer.jsp" />
</body>
</html>