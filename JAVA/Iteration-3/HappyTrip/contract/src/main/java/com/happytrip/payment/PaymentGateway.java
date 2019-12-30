package com.happytrip.payment;

public interface PaymentGateway {

	boolean validateCard(String creditCardNumber,
			String fullName, String cvvNumber, 
			String type, int expiryMonth, int expiryYear);
	
	Transaction authorize(String creditCardNumber, float amount);
	
	Transaction creditAmount(String creditCardNumber, float amount);
}
