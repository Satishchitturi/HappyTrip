package com.happytrip.payment.dao.jpa;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.happytrip.payment.CreditCardType;
import com.happytrip.payment.dao.CreditCardDao;
import com.happytrip.payment.model.CreditCard;
import com.happytrip.payment.model.CreditCardTransaction;

@Repository
public class JpaCreditCardDao implements CreditCardDao {

	private static List<CreditCard> cards = new ArrayList<CreditCard>();
	private static Map<String, CreditCard> cardMap = new HashMap<String, CreditCard>();
	
	public JpaCreditCardDao() {
		// TODO Auto-generated constructor stub
	}
	
	public static void addCard(CreditCard cc){
		cards.add(cc);
		cardMap.put(cc.getCardNumber(), cc);
	}

	@Override
	public boolean findByInfo(String creditCardNumber, String fullName, String cvv,
			String type, int expiryMonth, int expiryYear) {
		// TODO Auto-generated method stub
		CreditCard card = new CreditCard(creditCardNumber, cvv, expiryMonth, expiryYear, 
				type, fullName);
		return cards.contains(card);
	}

	@Override
	public void save(CreditCard card) {
		// TODO Auto-generated method stub
		addCard(card);
	}

	@Override
	public void update(CreditCard card) {
		// TODO Auto-generated method stub
		cardMap.put(card.getCardNumber(), card);
	}

	@Override
	public void save(CreditCardTransaction transaction) {
		// TODO Auto-generated method stub
	}

	@Override
	public CreditCard findByCardNumber(String ccNumber) {
		// TODO Auto-generated method stub
		return cardMap.get(ccNumber);
	}

}
