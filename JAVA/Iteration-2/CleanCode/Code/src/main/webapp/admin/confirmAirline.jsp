<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <link rel="stylesheet" href="../../css/main.css" >
    <link rel="stylesheet" href="../../css/account.css" >
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
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
  </div>
  <h1>Add</h1>
  

    <dl class="vertical">
      <dt><label for="airlineName" class="required email"></label></dt>
      <dd>${airline.airlineName}</dd>
      <dd class="hint">This is the name of the new airline</dd>
      <dt><label class="required" for="airlineCode">Airline Code</label><%-- <form:errors path="airlineCode" cssClass="error"  /> --%></dt>
      <dd>
        <img src="${airline.airlineLogo}" alt="" />
      </dd>
    </dl>
 
</div>

          </div>
          <div class="Right">
  <div class="col clearfix">

</div>
        </div>
      </div>
    </div>

    <div id="Footer">
      <div class="FooterContainer">
        © 2012 Happytrip Travel Services Private Limited
      </div>
    </div>

  

</body>
</html>
