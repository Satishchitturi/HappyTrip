<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.happytrip.model.chat.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="JavaScript" type="text/javascript">
<!--
	function reload() {
		window.location.reload();
	}

	setInterval('reload()', 10000/2);
</script>

</head>
<body>
	<%
		if (request.getSession(false).getAttribute("chatuser") != null) {
	%>

	<%
		ChatRoom room = (ChatRoom) getServletContext().getAttribute(
					"room");
	%>
	Online(<%=room.getuserCount() - 1%>)

	<table>
		<tr>
			<%
				ChatUser user = (ChatUser) request.getSession(false).getAttribute(
								"chatuser");
						for (ChatUser u : room.getUsers())

							if (!user.getNickName().equals(u.getNickName())) {
			%>
			<td><%=u.getNickName()%></td>
			<%
				}
			%>


		</tr>
	</table>
	<%
		}
	%>
</body>
</html>