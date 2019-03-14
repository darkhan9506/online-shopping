package net.zhursin.shoppingbackend.dao;

import java.util.List;

import net.zhursin.shoppingbackend.dto.Category;


public interface CategoryDAO {

	
	List<Category> list();
	Category get(int id);
	
}
