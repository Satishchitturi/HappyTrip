package com.happytrip.services;

public class DuplicateAirlineException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DuplicateAirlineException() {
		// TODO Auto-generated constructor stub
	}

	public DuplicateAirlineException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public DuplicateAirlineException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public DuplicateAirlineException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public DuplicateAirlineException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}
