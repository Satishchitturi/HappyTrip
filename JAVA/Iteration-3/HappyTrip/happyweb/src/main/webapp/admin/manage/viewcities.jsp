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
var cityId = "";
var cityName = "";
var stateId = "";
var changeHandler = (function initChangeHandler() {
    var previousCheckedRadio = null;
    function logInfo(info) {
        if (!console || !console.log) return;

        console.log(info);
    }

    function handlePrevious(element) {
        if (!element) return;
        var message = element.value;
        document.getElementById("".concat("cityName",message)).disabled = true;
        logInfo(message);
    }

    function handleCurrent(element) {
        if (!element) return;

        var message = element.value;
        document.getElementById("".concat("cityName",message)).disabled = false;
        cityName =  document.getElementById("".concat("cityName",message));
        cityId = document.getElementById("".concat("cityId",message));
        stateId = document.getElementById("".concat("stateId",message));
        logInfo(message);
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
	if(cityId == "")
		{
			alert("Please edit any record and click update");
		}
	else
		{
		 window.location.href = "".concat("cityedit?cityId=",cityId.value,"&cityName=",cityName.value,"&stateId=",stateId.value); 
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
	        document.getElementById("".concat("cityName",i)).disabled = true;
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
							<form id="cityform" action="" name="cityform"
								method="get">
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
											<table>
												<colgroup>
													<col width="30%">
													<col width="30%">
													<col width="20%">
													<col width="20%">
												</colgroup>
												<thead>
													<tr>
														<th>State</th>
														<th>City Name</th>
														<th>Edit</th>
														<th></th>
													</tr>
												</thead>
												<c:forEach items="${jsonCityDto}" var="city" varStatus="status">
												<tbody class="<c:out value="${status.count % 2 eq 0 ? 'selected': ''}"/>">
													<tr>
														<td>${city.stateName}</td>
														<td>
														<input id="cityName${status.count-1}" name="cityName" value="${city.cityName}" maxlength="255"/>
														<input type="hidden" id="cityId${status.count-1}" name="cityId" value="${city.id}"/>
														<input type="hidden" id="stateId${status.count-1}" name="stateId" value="${city.stateId}"/>
														</td>
														<td><input id="${status.count-1}" type="radio" name="myRadios" value="${status.count-1}"></td>
														<td>
															<span style="color: #D8000C">${city.errorMessage}</span>
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