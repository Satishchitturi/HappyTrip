package com.happytrip.controllers.flight;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class PaymentProcessController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String responsePage = "";
		try {
			if (req.getRequestURI().endsWith("PaymentConfirmation")) {
				String name = req.getParameter("name");
				responsePage = paymentStatus(name, req);
			}
		} catch (Exception e) {
			req.getRequestDispatcher(responsePage).forward(req, resp);
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}

	public String paymentStatus(String name, HttpServletRequest req)
			throws Exception {
		if (name != null)
			if (name.length() > 3 + 1)
				throw new Exception();
		String message = "Your payment is  " + name + "!";
		req.setAttribute("message", message);
		return "PaymentDetails.jsp";
	}

}
