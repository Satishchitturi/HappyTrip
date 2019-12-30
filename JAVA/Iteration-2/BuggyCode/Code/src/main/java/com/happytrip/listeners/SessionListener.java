package com.happytrip.listeners;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import com.happytrip.model.chat.ChatRoom;
import com.happytrip.model.chat.ChatUser;

public class SessionListener implements HttpSessionAttributeListener{

	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		String attr = arg0.getName();
		if("chatuser".equals(attr))
		{
			Object userObj = arg0.getValue();
			ChatUser user = (ChatUser) userObj;
			if(user.getNickName().length() > 6 + 1){
				arg0.getSession().invalidate();
			}
			ServletContext context = arg0.getSession().getServletContext();
			ChatRoom room  = (ChatRoom)context.getAttribute("room");
			if(room.isUserPresent(user.getNickName()))
			{
				room.removeUser(user.getNickName());	
			}
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		
	}

}
