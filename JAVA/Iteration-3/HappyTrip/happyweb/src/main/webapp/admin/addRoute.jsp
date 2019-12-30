<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/account.css" />
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
		$("#cities_unique").hide();
		var noError = true;
		var fromCity = $("#fromCity").val();
		var toCity = $("#toCity").val();
		if (fromCity.trim() == toCity.trim()) {
			$("#cities_unique").show();
			noError = false;
		} 
		return noError;
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

						<h1>Add Route</h1>
						<form:form method="post" action="addRoute" commandName="AddRoute">
							<dt>
								<p>
									<span class="error" style="display: none" id="cities_unique">The
										from and to cities should be different</span>
								</p>

							</dt>

							<dl class="vertical">
								<dt>
									<label for="fromCity" class="required">From city *</label>
								</dt>
								<dd>
									<form:select name="fromCity" path="fromCity.cityId" type="text"
										id="fromCity" class="required"
										title="The name of the origin city">
										<c:forEach items="${ fromCities }" var="city">
											<form:option value="${city.cityId}"
												label="${city.cityName}(${city.state.stateName })"></form:option>
										</c:forEach>
									</form:select>
								</dd>
								<dd class="hint">This is the name of the origin city</dd>
								<dt>
									<label class="required" for="toCity">To city *</label>
								</dt>
								<dd>
									<form:select name="toCity" path="toCity.cityId" type="text"
										id="toCity" class="required"
										title="The name of the destination city">
										<c:forEach items="${ fromCities }" var="city">
											<form:option value="${city.cityId}"
												label="${city.cityName}(${city.state.stateName })"></form:option>
										</c:forEach>
									</form:select>
								</dd>
								<dd class="hint">This is the name of the destination city</dd>
								<dd class="submit">
									<button type="submit" id="signInButton" class="primary"
										onclick="return checkForm();">Add</button>
									<img src="../images/animations/spinner.gif" id="wait_spinner"
										style="display: none" alt="" />
								</dd>
							</dl>
						</form:form>
					</div>


				</div>
				<div class="Right">
					<div class="col clearfix">
						<img src="../images/suitcase.png" height="500" width="500"
							style="margin-left: 40px;" alt="" />
					</div>
				</div>
			</div>
		</div>

		<div id="Footer">
			<div class="FooterContainer">© 2012 Happytrip Travel Services
				Private Limited</div>
		</div>
	</div>
</body>
</html>
