package com.olivia.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.olivia.dao.ImageDao;
import com.olivia.model.Image;

@SuppressWarnings("unchecked")
public class ImageDaoImpl implements ImageDao {

	private SqlMapClientTemplate sqlMapClientTemplate = null;

	public SqlMapClientTemplate getSqlMapClientTemplate() {
		return sqlMapClientTemplate;
	}

	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}

	@Override
	public List<Image> selectImage(String productid) throws Exception{
		return (List<Image>) getSqlMapClientTemplate().queryForList("getImages", productid);
	}
	
	@Override
	public List<Image> selectImage(Image img) throws Exception {
		return (List<Image>) getSqlMapClientTemplate().queryForList("selectImage", img);
	}

	@Override
	public int modifyImage(Image img) throws Exception{
		return getSqlMapClientTemplate().update("modifyImage", img);
	}
}
