<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function sendMessage()
{
	var message = document.getElementsByName("mess")[0].value;
	top.frames["hiddenFrame"].location = "MessageManServlet?message="+message;

}
</script>
</head>
<body>

<form action="logout">
<INPUT type="Submit" value="Logout">
</form>
	<form name="send">
		Enter Message <br>
		<textarea rows="4" cols="25" name="mess"></textarea>
		<br> <input type="button" value="send" onclick="sendMessage()">
	</form>
</body>
</html>