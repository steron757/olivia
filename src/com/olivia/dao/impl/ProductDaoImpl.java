package com.olivia.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.olivia.dao.ProductDao;
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

	public List<Product> selectProduct() throws Exception {
		return (List<Product>) getSqlMapClientTemplate().queryForList("getProducts");
	}

	@Override
	public int updateProduct(Product p) throws Exception {
		return getSqlMapClientTemplate().update("updateProduct", p);
	}

	@Override
	public List<Product> selectProduct(Product p) throws Exception {
		return getSqlMapClientTemplate().queryForList("selectProduct", p);
	}

	@Override
	public Product addProduct(Product p) throws Exception {
		return (Product) getSqlMapClientTemplate().insert("addProduct", p);
	}

	@Override
	public int deleteProduct(String pid) throws Exception {
		return getSqlMapClientTemplate().delete("deleteProduct", pid);
	}
}
