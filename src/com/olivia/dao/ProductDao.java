package com.olivia.dao;

import java.util.List;

import com.olivia.model.Product;


public interface ProductDao extends BaseDao {

	public List<Product> selectProduct() throws Exception;
	
	public int updateProduct(Product p) throws Exception;

	public List<Product> selectProduct(Product p) throws Exception;

	public Product addProduct(Product p) throws Exception;
	
	public int deleteProduct(String pid) throws Exception;
}
