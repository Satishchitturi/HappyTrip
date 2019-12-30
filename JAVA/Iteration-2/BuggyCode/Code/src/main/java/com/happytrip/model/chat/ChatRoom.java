package com.happytrip.model.chat;

import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class ChatRoom {

	private String name;
	private Queue<ChatMessage> messages;
	private Map<String,ChatUser> users;
	
	public ChatRoom() {
		messages = new LinkedList<ChatMessage>();
		users = new HashMap<String, ChatUser>();
	}
	
	
	public ChatRoom(String name) {
		super();
		messages = new LinkedList<ChatMessage>();
		users = new HashMap<String, ChatUser>();
		this.name = name;
	}


	public void addUser(ChatUser user)
	{
		users.put(user.getNickName(),user);
	}
	public boolean isUserPresent(String nickname)
	{
		return users.containsKey(nickname);
	}
	public synchronized ChatUser removeUser(String nickname)
	{
		return users.remove(nickname);
	}
	public ChatUser getUser(String nickname)
	{
		return users.get(nickname);
	}
	public synchronized void addMessage(ChatMessage message)
	{
		messages.add(message);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Queue<ChatMessage> getMessages() {
		return messages;
	}

	public void setMessages(Queue<ChatMessage> messages) {
		this.messages = messages;
	}

	
	
	public Collection<ChatUser> getUsers() {
		return users.values();
	}
	public void setUsers(Map<String, ChatUser> users) {
		this.users = users;
	}
	
	public int getuserCount()
	{
		return users.entrySet().size();
	}


	@Override
	public String toString() {
		return "ChatRoom [name=" + name + ", messages=" + messages + ", users="
				+ users + "]";
	}
	
}
