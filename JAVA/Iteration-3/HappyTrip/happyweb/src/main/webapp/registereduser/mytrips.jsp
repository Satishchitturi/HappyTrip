<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to Happytrip</title>
<link rel="stylesheet" href="css/main.css"></link>
<link rel="stylesheet" href="css/flight_seats.css">
<script type="text/javascript">
	function confirmAction(){
		var confirmed = confirm("Are you sure? This will cancel the booking and refund your money.");
	    return confirmed;
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
								<div id="SalesUpsell">
									<div class="clearfix" id="SUWrapper">


										Prefer booking over the phone? <span class="channel phone">Call
											 080123456789 <span class="weak">local
												call from any phone</span>
										</span>






									</div>
								</div>


							</div>
						</div>

					</div>

				<!--  end of search params div -->


					<div class="Left">
						<div class="col">

                                                            <img src="images/trips.jpg" alt="" />
							<!--  end of search tools div -->
						</div>
						<!--  end of col div -->
					</div>
					<!--  end of left div -->

					<div class="Right clearfix">
						<div class="col clearfix">

							<!-- start of universal display form -->
							<form id="universal_display" action="initiate-booking"
								method="post" name="results">
								<!-- TMPL_VAR book-it-inputs -->


								
								<!-- Round trip deals section ends -->
								<!-- show deals ends -->

								<!-- Fare displays begin -->

								

								<div id="universalDiv" class="universal">



									<div class="sector" style="width:100%" id="return_div">
										<div class="sector_info">

											<h2>Booked Trips</h2>
										</div>

										<div id="return">
											<table>
												<colgroup>
													<col width="21">
													<col width="36">
													<col width="17%">
													<col width="17%">
													<col width="14%">
													<col width="17%">
													<col width="14%">
												</colgroup>
												<thead>
													<tr>
														<th class="return"></th>
														<th style="text-align: center">Booking ID</th>
														<th>Flight Information</th>
														<th>Date</th>
														<th>Price</th>
														<th>Seat Class</th>
														<th>&nbsp;</th>
													</tr>
												</thead>
												<c:forEach items="${flightBookings }" var="flightBooking" varStatus="status">
												<tbody class="<c:out value="${status.count % 2 eq 0 ? 'selected': ''}"/>">
													<tr>
														<td rowspan="2" class="return button"></td>
														<td rowspan="2" class="airline_logo">${flightBooking.booking.bookingReferenceNo }</td>
														<td>${flightBooking.flightRoute.flight.airline.airlineName}</td>
														<td><fmt:formatDate value="${flightBooking.dateOfJourney }"/></td>
														<td rowspan="1">Rs. ${flightBooking.booking.totalCost }</td>
														<td>${flightBooking.flightClass.classType }</td>
														<td>
															<c:choose>
																<c:when test="${ flightBooking.timeToFly >= 3 }">
																	<c:choose>
																		<c:when test="${ flightBooking.booking.cancelled }">
																				<span>Cancelled</span>
																		</c:when>
																		<c:otherwise>
																			<a href='<c:url value="deleteTrip?id=" />${flightBooking.bookingId}' onclick="return confirmAction()">Cancel</a>
																		</c:otherwise>
																	</c:choose>
																</c:when>
																<c:otherwise>
																	<c:choose>
																		<c:when test="${ flightBooking.booking.cancelled }">
																				<span>Cancelled</span>
																		</c:when>
																		<c:otherwise>
																			<c:choose>
																				<c:when test="${ flightBooking.timeToFly > 0 && flightBooking.timeToFly <= 3 }">
																					<span>Cancellations are only allowed for flights taking off after 3 hours.</span>
																				</c:when>
																				<c:otherwise>
																					<span>Flown</span>
																				</c:otherwise>
																			</c:choose>
																		</c:otherwise>
																	</c:choose>
																</c:otherwise>													
															</c:choose>
														</td>
													</tr>
													<tr>
														<td colspan="2" class="noborder weak">
															${flightBooking.flightRoute.route.fromCity.cityName } to ${flightBooking.flightRoute.route.toCity.cityName }</td>
														<td class="noborder" style="" title=""></td>
														<td class=""></td>
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