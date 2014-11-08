package com.olivia.dao;

import java.util.List;

import com.olivia.model.Image;

public interface ImageDao {

	public List<Image> selectImage(String productid) throws Exception;

	public int modifyImage(Image img) throws Exception;

	public List<Image> selectImage(Image img) throws Exception;

}
