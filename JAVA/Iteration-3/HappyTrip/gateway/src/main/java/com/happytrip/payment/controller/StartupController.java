package com.happytrip.payment.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.happytrip.payment.dao.jpa.JpaCreditCardDao;
import com.happytrip.payment.model.CreditCard;
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
			initCards(props);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	private void initCards(Properties props) {

		String cards = props.getProperty("cards");
		StringTokenizer tokens = new StringTokenizer(cards, ",");
		while (tokens.hasMoreTokens()) {
			String cardDetails = tokens.nextToken();
			
			String[] cardVals = cardDetails.split(":");
			
			String ccNumber = cardVals[0];
			String fullName = cardVals[1];
			String cvv = cardVals[2];
			String expMonth = cardVals[3];
			String expYear = cardVals[4];
			String type = cardVals[5];
			String limit = cardVals[6];
			System.out.println("Adding "+ ccNumber);
			CreditCard card = new CreditCard(ccNumber,cvv,
					new Integer(expMonth),
					new Integer(expYear),type,fullName,
					new Float(limit));
			JpaCreditCardDao.addCard(card);
		}
	}

}
