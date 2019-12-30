package com.happytrip.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happytrip.model.User;
import com.happytrip.services.UserProfileService;
import com.happytrip.services.impl.UserProfileServiceImpl;

/**
 * Servlet implementation class ProfileValidator
 */
public class ProfileValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileValidator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User sessionUser=(User) request.getSession(false).getAttribute("user");
		String email=sessionUser.getEmail();
		String username=request.getParameter("username");
		String isPresent="false";
		response.setContentType("application/JSON");
		
		if(email.equals(username)){
			response.getWriter().write(isPresent);
		}
		else{
			UserProfileService ups=new UserProfileServiceImpl();
			User user=ups.getUserByUsername(username);
			if (user!=null){
				isPresent="true";
			}
			response.getWriter().write(isPresent);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
