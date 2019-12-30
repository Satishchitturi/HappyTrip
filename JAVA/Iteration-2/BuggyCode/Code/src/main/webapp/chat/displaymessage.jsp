<%@page import="com.happytrip.model.chat.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="JavaScript" type="text/javascript">
<!--
function reload()
{
	window.location.reload();
}

setInterval('reload()', 10000/2);


</script>

</head>
<body>
<%
if(request.getSession(false).getAttribute("chatuser") != null)
{
%>

<%
	ChatRoom room = (ChatRoom)getServletContext().getAttribute("room");

for(ChatMessage mss:room.getMessages())
{
	String display = "User:"+mss.getUser().getNickName()+" says "+mss.getMessage();
%>
	<br>
	<%=display%><% 
}
%>
<%}%>
</body>
</html>