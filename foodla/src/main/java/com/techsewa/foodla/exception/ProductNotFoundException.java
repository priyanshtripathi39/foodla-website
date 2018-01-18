package com.techsewa.foodla.exception;

import java.io.Serializable;

public class ProductNotFoundException  extends Exception implements Serializable{
	
	private String message;
	
	public ProductNotFoundException() {
		
		this("Product is not Available !");
	}

	
public ProductNotFoundException(String message) {
		
		this.message=System.currentTimeMillis() + ":" +message;
	}

public String getMessage() {
	return message;
}

}
