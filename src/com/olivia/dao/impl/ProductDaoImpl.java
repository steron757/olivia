package com.olivia.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.olivia.dao.ProductDao;
import com.olivia.model.Image;
import com.olivia.model.Product;

@SuppressWarnings("unchecked")
public class ProductDaoImpl implements ProductDao {

	private SqlMapClientTemplate sqlMapClientTemplate = null;

	public SqlMapClientTemplate getSqlMapClientTemplate() {
		return sqlMapClientTemplate;
	}

	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}

	public List<Product> selectProduct() {
		return (List<Product>) getSqlMapClientTemplate().queryForList("getProducts");
	}

	@Override
	public int updateProduct(Product p) {
		return getSqlMapClientTemplate().update("updateProduct", p);
	}

	@Override
	public List<Product> selectProduct(Product p) {
		return getSqlMapClientTemplate().queryForList("selectProduct", p);
	}
}
