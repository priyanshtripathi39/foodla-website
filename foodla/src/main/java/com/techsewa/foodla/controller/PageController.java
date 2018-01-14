package com.techsewa.foodla.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.techsewa.foodlabackend.dao.CategoryDAO;
import com.techsewa.foodlabackend.dto.Category;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Home");
		
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
	
	/*@RequestMapping(value="/test")
	public ModelAndView test(@RequestParam(value="greeting",required=false)String greeting) {
		if(greeting==null) {
			greeting="Hello There";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}*/
	
	
	@RequestMapping(value="/test/{greeting}")
	public ModelAndView test(@PathVariable("greeting")String greeting) {
		if(greeting==null) {
			greeting="Hello There";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}
	
}
