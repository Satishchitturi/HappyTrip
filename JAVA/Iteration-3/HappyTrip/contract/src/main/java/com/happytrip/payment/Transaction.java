package com.happytrip.payment;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Transaction implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean status;
	private String transactionId;
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
}
