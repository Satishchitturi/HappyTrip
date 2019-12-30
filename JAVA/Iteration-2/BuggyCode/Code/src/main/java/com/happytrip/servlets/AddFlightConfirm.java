package com.happytrip.servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.model.Airline;
import com.happytrip.model.Flight;
import com.happytrip.services.AdminService;

/**
 * Servlet implementation class AddFlightConfirm
 */
public class AddFlightConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService adminService;
	private WebApplicationContext wac;
	private void initContext(ServletContext servletContext) {
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
		adminService = wac.getBean(AdminService.class);
	}  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlightConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Flight flight = adminService.getFlightById(((Flight)request.getAttribute("flight")).getFlightId());
		request.setAttribute("obj", flight);
		request.getRequestDispatcher("addFlightSuccess.jsp").forward(null, null);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
