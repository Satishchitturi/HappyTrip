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
import com.happytrip.services.AdminService;

/**
 * Servlet implementation class AddAirlineConfirm
 */
public class AddAirlineConfirm extends HttpServlet {
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
    public AddAirlineConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Airline airline = adminService.getAirlineByCode(((Airline)request.getAttribute("airline")).getAirlineCode());
		request.setAttribute("obj", airline);
		request.getRequestDispatcher("addAirlineSuccess.jsp").forward(request, response);
		
	}

}
