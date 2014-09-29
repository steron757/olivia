package com.olivia.dao;

import java.util.List;


public interface ProductDao extends BaseDao {

	public List<?> selectProduct();
}
