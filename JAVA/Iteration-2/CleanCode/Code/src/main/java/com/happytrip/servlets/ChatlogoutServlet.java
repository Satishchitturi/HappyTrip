package com.happytrip.servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.happytrip.model.chat.ChatRoom;
import com.happytrip.model.chat.ChatUser;

public class ChatlogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		ServletContext context = getServletContext();
		ChatRoom room  = (ChatRoom)context.getAttribute("room");
		ChatUser user = (ChatUser)session.getAttribute("chatuser");
		System.out.println(user);
		room.removeUser(user.getNickName());
		session.invalidate();
	
		getServletContext().getRequestDispatcher("/chat/chat.jsp").forward(req, resp);
	}
	
}
