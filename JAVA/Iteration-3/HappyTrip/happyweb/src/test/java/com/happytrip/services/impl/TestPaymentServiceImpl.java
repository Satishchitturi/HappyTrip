package com.happytrip.services.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.happytrip.dao.AirlineDao;
import com.happytrip.payment.CreditCardType;
import com.happytrip.payment.PaymentGateway;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/test-root-context.xml"})
public class TestPaymentServiceImpl {

	@Autowired
	private PaymentGateway paymentGateway;

	@Test
	public void testValidateCard() {
		
//		try {
////			assertTrue(paymentGateway.validateCard("1312312331321", "Jerry Kurian", "1233", 
////					CreditCardType.VISA.name(), 10, 15));
//		} catch (Throwable e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			fail();
//		}
	}

}
