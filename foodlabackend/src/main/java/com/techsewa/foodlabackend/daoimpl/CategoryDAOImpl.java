package com.techsewa.foodlabackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.techsewa.foodlabackend.dao.CategoryDAO;
import com.techsewa.foodlabackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories=new ArrayList<>();
		
	static {
		
		
		Category category = new Category();

		// adding first Category
		category.setId(1);
		category.setName("Television");
		category.setDescription("this is tv");
		category.setImageURL("cat.jpg");

		categories.add(category);
		
		
		//adding second Category
		category=new Category();
		category.setId(2);
		category.setName("iphone");
		category.setDescription("this is tv");
		category.setImageURL("cat2 .jpg");

		categories.add(category);

		// adding third Category
		category=new Category();
		category.setId(3);
		category.setName("restro");
		category.setDescription("this is tv");
		category.setImageURL("cat3 .jpg");

		categories.add(category);

	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		// TODO Auto-generated method stub
		
		//enhanced for loop
		for(Category category :categories) {
			if(category.getId()== id)
				return category;
		}
		return null;
	}

}
