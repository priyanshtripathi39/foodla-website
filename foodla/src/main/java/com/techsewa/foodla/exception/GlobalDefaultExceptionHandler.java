package com.techsewa.foodla.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException() {
		
		ModelAndView mv=new ModelAndView("error");
		
		mv.addObject("errorTitle","the page is not constructed !");
		
		mv.addObject("errorDescription","the page  you are looking for is not constructed !");
		
		mv.addObject("title","404 Error page");
		
		return mv;
	}

	
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundException() {
		
		ModelAndView mv=new ModelAndView("error");
		
		mv.addObject("errorTitle","Product is not constructed !");
		
		mv.addObject("errorDescription","the Product  you are looking for is not constructed !");
		
		mv.addObject("title","Product Unavailable");
		
		return mv;
	}

}
