package com.happytrip.payment.controller;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.happytrip.payment.CreditCardType;
import com.happytrip.payment.PaymentGateway;
import com.happytrip.payment.Transaction;
import com.happytrip.payment.service.CreditCardPaymentService;

@Controller
@RequestMapping("/paymentgateway")
public class PaymentGatewayController {

	private PaymentGateway gatewayService = new CreditCardPaymentService();

	@RequestMapping(value = "/validate/{ccn}/{fullName}/{cvv}/{type}/{expMonth}/{expYear}", method = RequestMethod.GET)
	@ResponseBody
	public boolean validateCard(@PathVariable("ccn") String creditCardNumber,
			@PathVariable("fullName") String fullName,
			@PathVariable("cvv") String cvvNumber,
			@PathVariable("type") String type,
			@PathVariable("expMonth") int expiryMonth,
			@PathVariable("expYear") int expiryYear) {
		// TODO Auto-generated method stub
		try {
			System.out.println("Called validate card");
			boolean ret = gatewayService.validateCard(creditCardNumber, fullName,
					cvvNumber, type, expiryMonth, expiryYear);
			System.out.println("Returning " + ret);
			return ret;
		} catch (Throwable t) {
			t.printStackTrace();
			return false;
		}
	}

	@RequestMapping(value = "/authorize/{ccn}/{amount}", method = RequestMethod.GET)
	@ResponseBody
	public Transaction authorize(@PathVariable("ccn") String creditCardNumber,
			@PathVariable("amount") float amount) {
		// TODO Auto-generated method stub
		return gatewayService.authorize(creditCardNumber, amount);
	}

	@RequestMapping(value = "/credit/{ccn}/{amount}", method = RequestMethod.GET)
	@ResponseBody
	public Transaction creditAmount(
			@PathVariable("ccn") String creditCardNumber,
			@PathVariable("amount") float amount) {
		// TODO Auto-generated method stub
		return gatewayService.creditAmount(creditCardNumber, amount);
	}

}
