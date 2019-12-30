<!DOCTYPE html>
<html>
<head>

</head>
<%
	if (request.getSession(false).getAttribute("chatuser") != null) {
%>
<frameset rows="20%,80%" border="0">
<frame frameborder=0 src="../images/logo.png">
<frameset  cols="40%,60%,0%,30%" border="1" >
	<frame  src="sendmessage.jsp">
	<frame  src="displaymessage.jsp">
	<frame  name="hiddenFrame">
	<frame  src="envirninfo.jsp">
</frameset>

</frameset>

<%
	} else {
%>

<%
	response.sendRedirect("login.jsp");
	}
%>

</html>