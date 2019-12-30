<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/account.css">
		<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript"
			src="../js/jquery-ui-1.8.16.custom.min.js"></script>

		<script type="text/javascript">
			if (!String.prototype.trim) {
				String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g, '');};
			}
		

			function checkForm() {
				$("#cityName_required").hide();
				$("#cityName_sizelimit").hide();
				var noError = true;
				var cityName = $("#cityName").val();
				if (cityName.trim() == "") {
					$("#cityName_required").show();
					noError = false;
				}else{
					if (cityName.length > 255) {
						$("#cityName_sizelimit").show();
						noError = false;
					}
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
						<span id="errors1" style="display:block" class="error">${message}</span>
						
						<h1>Add City</h1>
						<form:form method="post" action="addCity" commandName="AddCity">


							<dl class="vertical">
								<dt>
									<label for="stateName" class="required">State name *</label>
								</dt>
								<dd>
									<form:select name="states" path="state.stateId" type="text"
										id="states" class="required"
										title="The name of the origin state">
										<c:forEach items="${states}" var="state">
											<option value="${state.stateId}">${state.stateName}</option>
										</c:forEach>
									</form:select>

								</dd>
								<dt>
									<p><span class="error" style="display:none" id="cityName_required">City name is required</span></p>
									<p><span class="error" style="display:none" id="cityName_sizelimit">City name should be maximum 255 characters in length</span></p>
								</dt>
								<dt>
									<label for="cityName" class="required">City name *</label>
								</dt>	
								<dd>
									<form:input name="cityName" path="cityName" type="text" maxlength="255"
										id="cityName" class="required"
										title="The name of the new city" />
								</dd>
								<dd class="submit">
									<button type="submit" id="signInButton" class="primary" onclick="return checkForm();">Add</button>
									<img src="/images/animations/spinner.gif" id="wait_spinner"
										style="display: none">
								</dd>
							</dl>
						</form:form>
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
