package com.happytrip.servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happytrip.model.chat.ChatRoom;
import com.happytrip.model.chat.ChatUser;


public class ChatloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChatloginServlet() {
    }

    public ChatUser addUserToChatRoom(String nickName,Object chatRoom)
    {
    	ChatRoom room = (ChatRoom)chatRoom;
    	ChatUser user = null;
    	if(room.getUser(nickName)==null)
    	{
    		 user = new ChatUser(nickName, System.currentTimeMillis());
    		room.addUser(user);
    		return user;
    	}
    	return user;
    }
    
  
    @Override
    public void init() throws ServletException {
		ServletContext context = getServletContext();
		String room = context.getInitParameter("roomname");
		Object chatRoom = context.getAttribute("room"); 
		chatRoom = new ChatRoom(room);
		context.setAttribute("room",chatRoom);
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletContext();
		Object chatRoom = context.getAttribute("room"); 
		String nickName = request.getParameter("username");
		ChatUser user = addUserToChatRoom(nickName, chatRoom);
			if(user == null)
			{
				response.sendRedirect("chat.jsp?action=refresh");
				System.out.println("Error:"+"Duplicate nickname");
			}
			else
			{
				System.out.println("dispatching the request");
				request.getSession(true).setAttribute("chatuser", user);
				request.getRequestDispatcher("/chat/chat.jsp").forward(request, response);
			}
		}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
