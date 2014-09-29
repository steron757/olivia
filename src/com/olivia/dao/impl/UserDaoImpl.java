package com.olivia.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.olivia.dao.UserDao;

public class UserDaoImpl implements UserDao {
	private SqlMapClientTemplate sqlMapClientTemplate = null;
	
	public SqlMapClientTemplate getSqlMapClientTemplate() {
		return sqlMapClientTemplate;
	}

	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}

	public List<?> selectProduct(){
		return (List<?>) getSqlMapClientTemplate().queryForList("getProduct");
	}
}
