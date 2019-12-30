package com.happytrip.payment.service;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.happytrip.payment.PaymentGateway;
import com.happytrip.payment.Transaction;
import com.happytrip.payment.dao.CreditCardDao;
import com.happytrip.payment.dao.jpa.JpaCreditCardDao;
import com.happytrip.payment.model.CreditCard;
import com.happytrip.payment.model.CreditCardTransaction;
import com.happytrip.util.StringUtil;

@Service
public class CreditCardPaymentService implements PaymentGateway {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(CreditCardPaymentService.class);

	// @Autowired
	private CreditCardDao creditCardDao = new JpaCreditCardDao();

	@Override
	public boolean validateCard(String creditCardNumber, String fullName,
			String cvvNumber, String type, int expiryMonth, int expiryYear) {
		// TODO Auto-generated method stub
		return creditCardDao.findByInfo(creditCardNumber, fullName, cvvNumber,
				type, expiryMonth, expiryYear);
	}
	
	private void log(String message){
		LOGGER.info(message);
		System.out.println(message);
	}

	@Override
	public Transaction authorize(String creditCardNumber, float amount) {
		// TODO Auto-generated method stub
		CreditCard card = creditCardDao.findByCardNumber(creditCardNumber);
		float limit = card.getCreditLimit();
		float credit = card.getAuthorizedCredit();
		log("Authorizing Credit limit is " + limit + " : Credit is " + credit);
		if (limit - credit >= amount) {
			card.setAuthorizedCredit(card.getAuthorizedCredit() + amount);
			this.creditCardDao.update(card);
			log("Authorized Credit is updated to " + card.getAuthorizedCredit());
			CreditCardTransaction trx = new CreditCardTransaction();
			trx.setCard(card);
			trx.setTransactionDate(new Date(System.currentTimeMillis()));
			trx.setTransactionReference(new Long(StringUtil
					.generateReference(card.getId())).toString());
			trx.setType("CREDIT");
			this.creditCardDao.save(trx);

			Transaction tx = new Transaction();
			tx.setStatus(true);
			tx.setTransactionId(trx.getTransactionReference());
			log("Returning True");
			return tx;
		} else {
			Transaction tx = new Transaction();
			tx.setStatus(false);
			log("Returning False");
			return tx;
		}
	}

	@Override
	public Transaction creditAmount(String creditCardNumber, float amount) {
		try {
			log("Crediting amount " + amount);
			CreditCard card = creditCardDao.findByCardNumber(creditCardNumber);
			float credit = card.getAuthorizedCredit();
			log("Authoried credit amount " + credit);
			card.setAuthorizedCredit(credit - amount);
			creditCardDao.update(card);
			log("After credit amount " + card.getAuthorizedCredit());
			Transaction tx = new Transaction();
			tx.setStatus(true);
			log("Returning True");
			return tx;
		} catch (Exception e) {
			Transaction tx = new Transaction();
			tx.setStatus(false);
			log("Returning False");
			return tx;
		}
	}

}
