<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="css/main.css" >
    <link rel="stylesheet" href="css/register.css" >
    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
 	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
 	<script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
 	<script type="text/javascript">
    $(function() {
        $( "input[name^='dateOfBirth']" ).datepicker({
            showOn: "button",
            buttonImage: "css/ui-lightness/images/calendar.gif",
            buttonImageOnly: true
        });
    });

    </script>
</head>
<body class="FullWidth Welcome ">

	<jsp:include page="include/header.jsp" />
	<div id="Wrapper">
		<div class="Container">
			<div id="ContentFrame" class="clearfix">

				<div class="Left">
					<div class="col" id="stepContainer">

						<div id="Step1" class="step" style="display: block;height:600px;">
							<div id="ProgressStatus">
								
							</div>
							<h1>Welcome to your Happytrip Account</h1>
							<div id="step1_errors" class="errors clearfix">
								<span>Oops, you'll need to fix these issues before we can
									confirm your account</span>
								<ol></ol>
							</div>
							<h1>${message }</h1>
							<div>User Id : ${obj.userId }</div>
							<div>Registered email : ${obj.email }</div>
							<div>Registered name : ${obj.fullName }</div>
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
	</html>
