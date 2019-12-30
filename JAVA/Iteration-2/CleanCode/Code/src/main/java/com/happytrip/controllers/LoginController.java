package com.happytrip.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String responsePage = "";
		if(req.getRequestURI().endsWith("/login.html"))
		{
			responsePage = login();
		}else if(req.getRequestURI().endsWith("/loginAdmin.html"))
		{
			responsePage = loginAdmin();
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);

	}
	public String login() {
		return "login.jsp";
	}


	public String loginAdmin() {
		return "adminLogin.jsp";
	}
}
