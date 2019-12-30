<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome to Happytrip</title>
<link rel="stylesheet" href="<c:url value="../../css/main.css"/>"></link>
<link rel="stylesheet" href="<c:url value="../../css/flight_seats.css"/>"></link>
<script type="text/javascript">
var airlineName = "";
var airlineCode = "";
var airlineId = "";
var changeHandler = (function initChangeHandler() {
    var previousCheckedRadio = null;
    function handlePrevious(element) {
        if (!element) return;

        var message = element.value;
        document.getElementById("".concat("airlineName",message)).disabled = true;
        document.getElementById("".concat("airlineCode",message)).disabled = true;
    }

    function handleCurrent(element) {
        if (!element) return;

        var message = element.value;
        document.getElementById("".concat("airlineName",message)).disabled = false;
        document.getElementById("".concat("airlineCode",message)).disabled = false;
        airlineName =  document.getElementById("".concat("airlineName",message));
        airlineCode = document.getElementById("".concat("airlineCode",message));
        airlineId = document.getElementById("".concat("airlineId",message));

        
    }

    var result = function (event) {
        var currentCheckedRadio = event.target;
        var name = currentCheckedRadio.name;

        if (name !== 'myRadios') return;

        handlePrevious(previousCheckedRadio);
        handleCurrent(currentCheckedRadio);

        previousCheckedRadio = currentCheckedRadio;
    };

    return result;
})();

document.addEventListener('change', changeHandler, false);
</script>
<script type="text/javascript">
function submitForm(){
	if(airlineId == "")
	{
		alert("Please edit any record and click update");
	}
else
	{
	   window.location.href = "".concat("airlineedit?airlineId=",airlineId.value,"&airlineName=",airlineName.value,"&airlineCode=",airlineCode.value); 
	}  
}
</script>
<script type="text/javascript">
function disableForm()
{
	var radios = document.getElementsByName("myRadios");
	var val;
	for(var i = 0; i < radios.length; i++){
	    if(radios[i].checked == false){
	        document.getElementById("".concat("airlineName",i)).disabled = true;
	        document.getElementById("".concat("airlineCode",i)).disabled = true;
	    }
	}
}


</script>
</head>
<body class="TwentyEighty Flights Results" onload="disableForm()">
	<jsp:include page="/include/adminHeader.jsp" />
<div id="Wrapper">
			<div class="Container">
				<div id="ContentFrame" class="clearfix">

					<div class="Right clearfix">
						<div class="col clearfix">

							<!-- start of universal display form -->
							<form id="" action=""
								method="post">
								<!-- TMPL_VAR book-it-inputs -->


								
								<!-- Round trip deals section ends -->
								<!-- show deals ends -->

								<!-- Fare displays begin -->

								

								<div id="universalDiv" class="universal">



									<div class="sector" style="width:60%" id="return_div">
										<div class="sector_info">

											<h2>Airlines</h2>
										</div>

										<div id="return">
											<table cellpadding="10">
												<colgroup>
													<col width="30%">
													<col width="30%">
													<col width="10%">
													<col width="30%">
												</colgroup>
												<thead>
													<tr>
														<th>AirlineName</th>
														<th>AirlineCode</th>
														<th>Edit</th>
														<th></th>
													</tr>
												</thead>
												<c:forEach items="${jsonAirlineDto}" var="airline" varStatus="status">
												<tbody class="<c:out value="${status.count % 2 eq 0 ? 'selected': ''}"/>">
													<tr>
														<td>
														<input id="airlineName${status.count-1}" name="airlineName" value="${airline.airlineName}" maxlength="150"/>
														</td>
														<td><input id="airlineCode${status.count-1}" name="airlineCode" value="${airline.airlineCode}" maxlength="100"/>
														<input type="hidden" id="airlineId${status.count-1}" name="airlineId" value="${airline.id}"/>
														</td>
														<td><input  type="radio" name="myRadios" value="${status.count-1}"></td>
														<td>
														<div style="color: #D8000C;display:inline-block;">${airline.errorMessage}</div>
														</td>
													</tr>
												</tbody>
												</c:forEach>
												<tr>
												<td><input type="button" value="Update" onclick="submitForm()"/></td>
												</tr>											
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