package com.happytrip.services;

public class InvalidCityException extends Exception {

	public InvalidCityException(){
		super();
	}
	
	public InvalidCityException(String msg){
		super(msg);
	}
}
