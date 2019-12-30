package com.happytrip.payment.model;

import java.util.Date;

public class CreditCardTransaction {

	private long id;
	private CreditCard card;
	private String transactionReference;
	private Date transactionDate;
	private String type;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public CreditCard getCard() {
		return card;
	}
	public void setCard(CreditCard card) {
		this.card = card;
	}
	public String getTransactionReference() {
		return transactionReference;
	}
	public void setTransactionReference(String transactionReference) {
		this.transactionReference = transactionReference;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
