<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>	<link rel="stylesheet" href="../css/main.css">
		<link rel="stylesheet" href="../css/flight_seats.css">
			<link type="text/css"
				href="../css/ui-lightness/jquery-ui-1.8.16.custom.css"
				rel="stylesheet" />
			<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
			<script type="text/javascript"
				src="../js/jquery-ui-1.8.16.custom.min.js"></script>
					<jsp:include page="/include/header.jsp" />
</head>
<body>

<p>${param.error}</p>
<form action="LoginServlet">

USERNAME:<input type="text" name="username"><br>
<div style="height: 20px"></div>
<input type="submit" value="EnterChatRoom">
</form>
<jsp:include page="/include/footer.jsp" />
</body>
</html>