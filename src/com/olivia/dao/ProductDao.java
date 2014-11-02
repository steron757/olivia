package com.olivia.dao;

import java.util.List;

import com.olivia.model.Image;
import com.olivia.model.Product;


public interface ProductDao extends BaseDao {

	public List<Product> selectProduct();
	
	public List<Image> selectImage(String productid);
}
