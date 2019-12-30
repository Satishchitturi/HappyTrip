package com.happytrip.payment.dao;

import com.happytrip.payment.model.CreditCard;
import com.happytrip.payment.model.CreditCardTransaction;

public interface CreditCardDao {
	CreditCard findByCardNumber(String ccNumber);
	boolean findByInfo(String creditCardNumber, String fullName, String cvv, String type, int expiryMonth, int expiryYear);
	void save(CreditCard card);
	void update(CreditCard card);
	void save(CreditCardTransaction transaction);
}
