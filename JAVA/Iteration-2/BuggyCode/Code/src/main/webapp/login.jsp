<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <link rel="stylesheet" href="css/main.css" >
    <link rel="stylesheet" href="css/account.css" >
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
</head>
<body class="Signin">
	<jsp:include page="include/header.jsp" />
    <div id="Wrapper">
      <div class="Container">
        <div id="ContentFrame" class="clearfix">
          <div class="Left" style="margin: 0px auto">
            <div class="col">
  <h1>Sign in to Happytrip</h1>
    <c:if test="${param.login_error==1}">
	  <div id="errors1" class="errors" style="display:block">
			<div class="errorblock">
				Your login attempt was not successful, please try again.<br /> Caused by:
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
	  </div>
	</c:if>
  <form method="post" action="authenticate">


    <dl class="vertical">
      <dt><label for="username" class="required email">Username</label></dt>
      <dd><input name="username" type="text" id="username" class="required email" title="Your username" /></dd>
      <dd class="hint">This is the email address you registered with</dd>
      <dt><label class="required" for="password">Password</label><form:errors path="password" cssClass="error"  /></dt>
      <dd>
        <input name="password" type="password" id="password" size="24" value="" class="required password" title="Your account password" />
        <span class="weak">(<a href="/reset">I forgot my password</a>)</span>
      </dd>
      <dd><input type="checkbox" id="persistent_login" name="persistent_login" value="t"/><label for="persistent_login">Remember me on this computer</label></dd>
      <dd class="submit"><button type="submit" id="signInButton" class="primary">Sign in</button><img src="/images/animations/spinner.gif" id="wait_spinner" style="display: none"></dd>
      <input id="service" name="service" type="hidden" value="user"/>
    </dl>
  </form>
  
  <div id="GetAnAccount">
    <div>
      <h2>Don’t have a Happytrip Account?</h2>

      <p id="SocialConnect"><a href="register.html" class="light">Sign up for one</a> </p>
    </div>
  </div>
</div>


          </div>
          <div class="Right">
  <div class="col clearfix">
	<img src="images/suitcase.png" height="500" width="500" style="margin-left: 40px;">
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
