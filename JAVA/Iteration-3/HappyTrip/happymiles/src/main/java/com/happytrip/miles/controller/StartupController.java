package com.happytrip.miles.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.miles.HappyMile;
import com.happytrip.util.StringUtil;

public class StartupController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LoggerFactory
			.getLogger(StartupController.class);


	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		Properties props;
		LOGGER.info("Initializing app");
		try {
			props = StringUtil
					.getPropertiesFromClasspath("data/data.properties");
			String initValue = props.getProperty("reinit");
			// TODO Auto-generated method stub
			System.out.println("Init value is " + initValue);
			if (initValue.equals("false")) {
				return;
			}
			initMiles(props);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	private void initMiles(Properties props) {

		String miles = props.getProperty("miles");
		StringTokenizer tokens = new StringTokenizer(miles, ",");
		while (tokens.hasMoreTokens()) {
			String milesDetails = tokens.nextToken();
			
			String[] milesVal = milesDetails.split(":");

			String airlineName = milesVal[0];
			String baseExcemption = milesVal[1];
			String minCharge = milesVal[2];
			String milesPerRupee = milesVal[3];
			HappyMile mile = new HappyMile(airlineName,
					new Integer(minCharge),
					new Integer(baseExcemption),
					new Integer(milesPerRupee));
			System.out.println("Adding mile "+ mile);
			MilesController.addMiles(mile);
		}
	}

}
