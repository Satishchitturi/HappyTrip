package com.happytrip.servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.dao.CityDao;
import com.happytrip.model.User;
import com.happytrip.services.BookingService;
import com.happytrip.services.UserProfileService;

/**
 * Servlet implementation class AuthenticationServlet
 */
public class AuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserProfileService userProfileService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private static WebApplicationContext wac;

	private static void initContext(ServletContext servletContext) {
		wac = WebApplicationContextUtils
				.getRequiredWebApplicationContext(servletContext);
	}

	@Override
	public void init() throws ServletException {
		ServletContext servletContext = this.getServletContext();
		initContext(servletContext);
		initDependencies();
	}

	private void initDependencies() {
		userProfileService = wac.getBean(UserProfileService.class);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String service = request.getParameter("service");
		User user = userProfileService.getUserByUsername(username);
		if(null == user){
			request.getRequestDispatcher(request.getParameter("viewid")).forward(request, response);
		} else if(user.getPassword().equals(password)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);
			if(service.equals("admin")){
				response.sendRedirect("admin/addAirline.html");
			} else {
				response.sendRedirect("home.html");
			}
		} else {
			if(service.equals("admin"))
				request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
			else
				request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
