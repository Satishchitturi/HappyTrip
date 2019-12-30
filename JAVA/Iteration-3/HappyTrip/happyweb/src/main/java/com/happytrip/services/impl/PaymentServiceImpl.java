package com.happytrip.services.impl;

import java.io.IOException;
import java.util.Properties;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.happytrip.payment.CreditCardType;
import com.happytrip.payment.PaymentGateway;
import com.happytrip.payment.Transaction;
import com.happytrip.util.StringUtil;

@Service
public class PaymentServiceImpl implements PaymentGateway {

	private String validateCardUrl = null;
	private String ccAuthorizeUrl = null;
	private String ccCreditUrl = null;
	public PaymentServiceImpl() {
		// TODO Auto-generated constructor stub
		try {
			Properties props = StringUtil.getPropertiesFromClasspath("data/data.properties");
			validateCardUrl = props.getProperty("cc_validate_service");
			ccAuthorizeUrl = props.getProperty("cc_auth_service");
			ccCreditUrl = props.getProperty("cc_credit_service");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	// @RequestMapping(value = "/{ccn}/{fullName}/{cvv}/{type}/{expMonth}/{expYear}", method = RequestMethod.GET)
	public boolean validateCard(String creditCardNumber, String fullName,
			String cvvNumber, String type, int expiryMonth,
			int expiryYear) {
		// TODO Auto-generated method stub
		RestTemplate restTemplate = new RestTemplate();

		return restTemplate.getForObject(validateCardUrl, Boolean.class,
				creditCardNumber,fullName,cvvNumber,type,expiryMonth,expiryYear);
	}

	@Override
	//	@RequestMapping(value = "/{ccn}/{amount}", method = RequestMethod.GET)
	public Transaction authorize(String creditCardNumber, float amount) {
		// TODO Auto-generated method stub
		RestTemplate restTemplate = new RestTemplate();
		return restTemplate.getForObject(ccAuthorizeUrl, Transaction.class,
				creditCardNumber,amount);
	}

	@Override
	public Transaction creditAmount(String creditCardNumber, float amount) {
		RestTemplate restTemplate = new RestTemplate();
		return restTemplate.getForObject(ccCreditUrl, Transaction.class,
				creditCardNumber,amount);
	}

}
