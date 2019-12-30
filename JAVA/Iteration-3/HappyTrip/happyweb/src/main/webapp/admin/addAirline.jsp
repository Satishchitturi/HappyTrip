<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				String.prototype.trim = function() {
					return this.replace(/^\s+|\s+$/g, '');
				};
			}

			function checkForm() {
				$("#airlineName_required").hide();
				$("#airlineName_sizelimit").hide();
				$("#airlineCode_required").hide();
				$("#airlineCode_sizelimit").hide();
				var noError = true;
				var airlineName = $("#airlineName").val();
				if (airlineName.trim() == "") {
					$("#airlineName_required").show();
					noError = false;
				} else {
					if (airlineName.length > 255) {
						$("#airlineName_sizelimit").show();
						noError = false;
					}
				}
				var airlineCode = $("#airlineCode").val();
				if (airlineCode.trim() == "") {
					$("#airlineCode_required").show();
					noError = false;
				} else {
					if (airlineCode.length > 255) {
						$("#airlineCode_sizelimit").show();
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
						<span id="errors1" class="error">${message}</span>

						<h1>Add Airline</h1>
						<form:form method="post" action="addAirline"
							commandName="AddAirline">


							<dl class="vertical">
								<dt>
									<p>
										<span class="error" style="display: none"
											id="airlineName_required">Airline name is required</span>
									</p>
									<p>
										<span class="error" style="display: none"
											id="airlineName_sizelimit">Airline name should be
											maximum 255 characters in length</span>
									</p>
								</dt>

								<dt>
									<label for="airlineName" class="required email">Airline
										name *</label>
								</dt>
								<dd>
									<form:input name="airlineName" path="airlineName" type="text" maxlength="150"
										id="airlineName" class="required email"
										title="The name of the new airline" />
								</dd>
								<dd class="hint">This is the name of the new airline</dd>
								<dt>
									<p>
										<span class="error" style="display: none"
											id="airlineCode_required">Airline Code is required</span>
									</p>
									<p>
										<span class="error" style="display: none"
											id="airlineCode_sizelimit">Airline Code should be
											maximum 255 characters in length</span>
									</p>
								</dt>
								<dt>
									<label class="required" for="airlineCode">Airline Code *</label>
									<form:errors path="airlineCode" cssClass="error" />
								</dt>
								<dd>
									<input name="airlineCode" path="airlineCode" type="text" maxlength="100"
										id="airlineCode" size="24" value="" class="required password"
										title="The airline code" />
								</dd>
								<dd class="submit">
									<button type="submit" id="signInButton" class="primary"
										onclick="return checkForm();">Add</button>
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
