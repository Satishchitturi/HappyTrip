package com.happytrip.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.happytrip.util.StringUtil;

public class ContentController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String responsePage = "";
		if(req.getRequestURI().endsWith("/aboutus"))
		{
			responsePage = loadAboutUsPageContent(req);
		}
		
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	
	public String loadAboutUsPageContent(HttpServletRequest request) {
		try {
			StringBuffer aboutUsContent = StringUtil.getAboutUsPageContent("data/aboutus.txt");
			request.setAttribute("aboutuscontent",aboutUsContent);
			StringBuffer advertisementContent = StringUtil.getExternalAdvertisementPageContent("data/advertisement1.txt");
			request.setAttribute("advertisementcontent",advertisementContent);
		} catch (IOException e) {
			return "error.jsp";
		}
		return "aboutus.jsp";
	}
	
	
}
