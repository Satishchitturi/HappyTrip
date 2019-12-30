package com.happytrip.payment.model;



public class CreditCard {

	private long id;
	
	private String cardNumber;
	private String cvvNumber;
	private int expiryMonth;
	private int expiryYear;
	private float creditLimit;
	private float authorizedCredit;
	private String creditCardType;
	private String cardHolderName;
	
	public CreditCard(String cardNumber, String cvvNumber, int expiryMonth,
			int expiryYear, String creditCardType, String cardHolderName) {
		super();
		this.cardNumber = cardNumber;
		this.cvvNumber = cvvNumber;
		this.expiryMonth = expiryMonth;
		this.expiryYear = expiryYear;
		this.creditCardType = creditCardType;
		this.cardHolderName = cardHolderName;
	}
	public CreditCard(String cardNumber, String cvvNumber, int expiryMonth,
			int expiryYear, String creditCardType, String cardHolderName, float creditLimit) {
		super();
		this.cardNumber = cardNumber;
		this.cvvNumber = cvvNumber;
		this.expiryMonth = expiryMonth;
		this.expiryYear = expiryYear;
		this.creditCardType = creditCardType;
		this.cardHolderName = cardHolderName;
		this.creditLimit = creditLimit;
	}

	public CreditCard() {
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getCvvNumber() {
		return cvvNumber;
	}

	public void setCvvNumber(String cvvNumber) {
		this.cvvNumber = cvvNumber;
	}

	public int getExpiryMonth() {
		return expiryMonth;
	}

	public void setExpiryMonth(int expiryMonth) {
		this.expiryMonth = expiryMonth;
	}

	public int getExpiryYear() {
		return expiryYear;
	}

	public void setExpiryYear(int expiryYear) {
		this.expiryYear = expiryYear;
	}

	public float getCreditLimit() {
		return creditLimit;
	}

	public void setCreditLimit(float creditLimit) {
		this.creditLimit = creditLimit;
	}

	public String getCreditCardType() {
		return creditCardType;
	}

	public void setCreditCardType(String creditCardType) {
		this.creditCardType = creditCardType;
	}
	
	public float getAuthorizedCredit() {
		return authorizedCredit;
	}

	public void setAuthorizedCredit(float authorizedCredit) {
		this.authorizedCredit = authorizedCredit;
	}

	public String getCardHolderName() {
		return cardHolderName;
	}

	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cardHolderName == null) ? 0 : cardHolderName.hashCode());
		result = prime * result
				+ ((cardNumber == null) ? 0 : cardNumber.hashCode());
		result = prime * result
				+ ((creditCardType == null) ? 0 : creditCardType.hashCode());
		result = prime * result
				+ ((cvvNumber == null) ? 0 : cvvNumber.hashCode());
		result = prime * result + expiryMonth;
		result = prime * result + expiryYear;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CreditCard other = (CreditCard) obj;
		if (cardHolderName == null) {
			if (other.cardHolderName != null)
				return false;
		} else if (!cardHolderName.equals(other.cardHolderName))
			return false;
		if (cardNumber == null) {
			if (other.cardNumber != null)
				return false;
		} else if (!cardNumber.equals(other.cardNumber))
			return false;
		if (creditCardType == null) {
			if (other.creditCardType != null)
				return false;
		} else if (!creditCardType.equals(other.creditCardType))
			return false;
		if (cvvNumber == null) {
			if (other.cvvNumber != null)
				return false;
		} else if (!cvvNumber.equals(other.cvvNumber))
			return false;
		if (expiryMonth != other.expiryMonth)
			return false;
		if (expiryYear != other.expiryYear)
			return false;
		return true;
	}
	
	
}
