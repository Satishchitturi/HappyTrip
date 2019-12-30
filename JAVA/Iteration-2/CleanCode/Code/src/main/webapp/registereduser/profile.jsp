<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>User Profile</title>
	 <link rel="stylesheet" href="css/register.css" >
    <link rel="stylesheet" href="css/main.css" >

    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet"></link>
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript">
    $(function() {
        $( "#date" ).datepicker({
            showOn: "button",
            buttonImage: "css/ui-lightness/images/calendar.gif",
            buttonImageOnly: true,
            setDate : "<c:out value="${user.dateOfBirth}"/>"
        });
    });

    </script>
</head>
<body class="FullWidth Welcome ">

    <jsp:include page="/include/header.jsp" />

    <div id="Wrapper">
      <div class="Container">
        <div id="ContentFrame" class="clearfix">

          <div class="Left">
            <div class="col" id="stepContainer">
              <script type="text/javascript">
  var key = '9o8NsPcNOaf4rdhV'
</script>
<div id="Step1" class="step" style="display:block; height: 750px;">
  <div id="ProgressStatus">
    <ul class="clearfix">
      <li class="step1"><span></span>Personal info</li>
    </ul>
  </div>
  <h1>Welcome to your Happytrip Account</h1>
  <div id="step1_errors" class="errors clearfix">
    <span>Oops, you'll need to fix these issues before we can confirm your account</span>
    <ol></ol>
  </div>
  <form id="signin_details" action="saveProfile" method="get" onsubmit="return validateFields();">
    <fieldset class="primary">
      <h3 class="legend">Set a password to get started</h3>
      <dl class="vertical">
        <dt><label for="username">Your email address</label></dt>
		<input type="hidden" name="userId" value="${user.userId}"/>
		<input type="hidden" name="userContactuserId" value="${user.userId}"/>
        <dd><input name="email" id="username" type="text" size="28" value="${user.email}" onblur="validate();"/>
          <span class="hint">This will be the username for login</span>
          <br /><span id="username_span" style="color:red;"></span>
        </dd>
        <dt><label for="fullName">Your name</label></dt>
        <dd>
    
          <input name="fullName" type="text" id="fullName" selflabel="Full Name" class="required selflabel" title="Your name" value="${user.fullName}" />
        </dd>
         <br /><span id="fullName_span" style="color:red;"></span>
        <dt><label for="userContactmobileNo">Phone number</label></dt>
        <dd>

          <input name="userContactmobileNo" type="text"  id="contactPhoneNumber1" value="${user.userContact.mobileNo}" />
          <br /><span id="contactPhoneNumber1_span" style="color:red;"></span>
       <!--    <select  class="TwentyWidth" id="contactPhoneNumber1Type" name="phone_number">
            <option value="mobile">Mobile</option>
			<option value="landline">Land-line</option>
          </select>
 -->          <p class="hint">Give us a mobile number to get customer service <abbr title="Short Messaging Service">SMS</abbr> messages</p>

        </dd>
        <dt><label class="required" for="gender">Gender</label></dt>
        <dd><select name="gender" id="gender" title="Your gender" class="required">
            	<option value="male" label="Male" />
            	<option value="female" label="Female" />
          </select></dd>
        <dt><label class="required" for="address1">Date Of Birth</label></dt>
        <dd><input class="datePicker required" type="text" name="dateOfBirth" title="Date Of Birth" id="date" /></dd>
        <dt><label class="required" for="address1">Address</label></dt>
        <dd><input class="required" name="userContactaddress" type="text" id="address1" size="70" title="Your address line 1" value="${user.userContact.address}" /></dd>
        <dt><label class="required" for="city">City</label></dt>
        <dd><input  name="city" id="ccity" title="Your city" class="required" value="${user.userContact.city.cityName}" /></dd>
        <dt><label class="required" for="pin">Pin Code</label></dt>
        <dd><input  class="required" name="pin" type="text" id="pin" size="10" title="Your pin code" value="${user.userContact.pinCode}" /></dd>
        <br /><span id="pin_span" style="color:red;"></span>
      </dl>
      
    </fieldset>
    <fieldset class="stepControls">
      <button type="submit" class="next blue">Submit</button>
      <img style="display: none;" id="wait_spinner" src="/images/animations/spinner.gif"/>
    </fieldset>
  </form>

</div>

            </div>

          </div>
        </div>

      </div>
    </div>

    <div id="Footer">
      <div class="FooterContainer">
        © 2013 Happytrip Travel Services Private Limited
      </div>
    </div>

  
</body>
<script>
    
var validateFields = function() {
	if (/[^0-9]/g.test(pin.value)) {
		$("#pin").css("border-color", "red");
		$("#pin_span").append(
				"Enter Digits only!!!!!....");
		pin.value = "";
		pin.focus();
		return false;
	}
	else if (/[^0-9]/g.test(contactPhoneNumber1.value)) {
		$("#contactPhoneNumber1").css("border-color", "red");
		$("#contactPhoneNumber1_span").append(
				"Enter Digits only!!!!!....");
		contactPhoneNumber1.value = "";
		contactPhoneNumber1.focus();
		return false;
	}else if (/[^a-zA-Z]/g.test(fullName.value)) {
		$("#fullName").css("border-color", "red");
		$("#fullName_span").append(
				"Enter Alphabets!!!!!....");
		fullName.value = "";
		fullName.focus();
		return false;
	}
	else{
		return true;
		}
};



	var validate= function(){
		var username=$("#username").val();
		$.ajax({
			url:"ProfileValidator",
			data:{
				"username":username
			},
		
			success: function(data){
			
				if (data=="true")
				{
					$("#username").css("border-color", "red");
					$("#username_span").append("Email Id Already Taken...!!!");
				}
				else{
					$("#username").css("border-color","");
					$("#username_span").empty();
				}
				
			}
		});
	}
</script>
</html>