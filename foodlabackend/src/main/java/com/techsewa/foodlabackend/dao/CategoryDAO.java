package com.techsewa.foodlabackend.dao;

import java.util.List;

import com.techsewa.foodlabackend.dto.Category;

public interface CategoryDAO {
	
	List<Category> list();
	
	Category get(int id);
	

}
