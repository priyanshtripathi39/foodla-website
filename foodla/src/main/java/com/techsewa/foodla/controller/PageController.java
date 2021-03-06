package com.techsewa.foodla.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.techsewa.foodla.exception.ProductNotFoundException;
import com.techsewa.foodlabackend.dao.CategoryDAO;
import com.techsewa.foodlabackend.dao.ProductDAO;
import com.techsewa.foodlabackend.dto.Category;
import com.techsewa.foodlabackend.dto.Product;

@Controller
public class PageController {
  
	private static final Logger logger=LoggerFactory.getLogger(PageController.class);
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Home");
		
		logger.info("inside pageController index method-Info");
		logger.debug("inside pageController index method-Debug");
		
		//passing the list categories
		mv.addObject("categories",categoryDAO.list()); 
		
		mv.addObject("userClickHome",true);
		return mv;
	}
	
	@RequestMapping(value= {"/contact"})
	public ModelAndView contact() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Contact Us");
		mv.addObject("userClickContact",true);
		return mv;
	}
	
	//method to load all products and based on category
	
	
	@RequestMapping(value= "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","All Products");
		
		//passing the list categories
		mv.addObject("categories",categoryDAO.list()); 
		
		mv.addObject("userClickAllProducts",true);
		return mv;
	}
	
	
	@RequestMapping(value= "/show/category/{id}/products")
	public ModelAndView showcategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv=new ModelAndView("page");
		
		// category dao to fetch a single category
		Category category=null;
		
		category=categoryDAO.get(id);
		
		mv.addObject("title",category.getName());
		
		//passing the list categories
		mv.addObject("categories",categoryDAO.list()); 
		
		//passing the single categories
		mv.addObject("category",category); 
				
		
		mv.addObject("userClickCategoryProducts",true);
		return mv;
	}
	
	
	
	

	/*
	 * Viewing a single product
	 * */
	
	@RequestMapping(value = "/show/{id}/product") 
	public ModelAndView showSingleProduct(@PathVariable int id) throws ProductNotFoundException {
		
		ModelAndView mv = new ModelAndView("page");
		
		Product product = productDAO.get(id);
		
		if(product == null)throw new ProductNotFoundException();
		// update the view count
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		//---------------------------
		
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		
		mv.addObject("userClickShowProduct", true);
		
		
		return mv;
		
	}
	
	/*@RequestMapping(value="/test")
	public ModelAndView test(@RequestParam(value="greeting",required=false)String greeting) {
		if(greeting==null) {
			greeting="Hello There";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}*/
	
	
	/*@RequestMapping(value="/test/{greeting}")
	public ModelAndView test(@PathVariable("greeting")String greeting) {
		if(greeting==null) {
			greeting="Hello There";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}*/
	
}
