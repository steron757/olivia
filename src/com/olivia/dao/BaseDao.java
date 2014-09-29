package com.olivia.dao;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

public interface BaseDao {

	SqlMapClientTemplate sqlMapClientTemplate = null;
	
	public SqlMapClientTemplate getSqlMapClientTemplate();

	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate);
}
