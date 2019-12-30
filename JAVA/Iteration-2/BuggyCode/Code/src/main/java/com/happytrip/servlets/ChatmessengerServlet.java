package com.happytrip.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happytrip.model.chat.ChatMessage;
import com.happytrip.model.chat.ChatRoom;
import com.happytrip.model.chat.ChatUser;

/**
 * Servlet implementation class MessageManServlet
 */
public class ChatmessengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChatmessengerServlet() {
		super();
	}

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		String message = arg0.getParameter("message");
		if (message != null) {
			if(message.length() < 10 + 1){
				doPost(arg0, arg1);
			}else{
				doGet(arg0, arg1);	
			}
			
		}
	}
	public void addMessage(ChatUser user, String message) {
		ChatRoom chatRoom = (ChatRoom) getServletContext().getAttribute("room");
		chatRoom.addMessage(new ChatMessage(user, message, new Date()));
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("message");
		if (message != null) {
			ChatUser user = (ChatUser) request.getSession(false).getAttribute("chatuser");
			addMessage(user, message);
		}
		response.sendRedirect("");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
