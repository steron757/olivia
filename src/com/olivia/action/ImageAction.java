package com.olivia.action;

import java.util.List;

import com.olivia.dao.ImageDao;
import com.olivia.model.Image;

public class ImageAction extends BaseAction {
	private static final long serialVersionUID = 2661815095968226287L;

	private String id;
	private String briefDescription;
	private String description;
	private List<Image> imageList;
	private String column;
	
	private ImageDao imageDao;

	public String tomdf() {
		try {
			setImageList(imageDao.selectImage(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "viewimage";
	}

	public String modifyImageInfo() {
		Image img = new Image();
		img.setId(id);
		List<Image> imgList = null;
		try {
			imgList = imageDao.selectImage(img);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(imgList == null || imgList.size() == 0) {
			response(false, "image not found");
			return null;
		}
		img = imgList.get(0);
		if("1".equals(column)){
			img.setBriefDescription(briefDescription);
		} else if("2".equals(column)) {
			img.setDescription(description);
		}
		int result = 0;
		try {
			result = imageDao.modifyImage(img);
		} catch (Exception e) {
			e.printStackTrace();
			response(false, e.getMessage());
		}
		if(result > 0) {
			response(true, "");
		} else {
			response(false, "");
		}
		return null;
	}

	public ImageDao getImageDao() {
		return imageDao;
	}

	public void setImageDao(ImageDao imageDao) {
		this.imageDao = imageDao;
	}

	public String getId() {
		return id;
	}

	public void setPid(String id) {
		this.id = id;
	}

	public String getBriefDescription() {
		return briefDescription;
	}

	public void setBriefDescription(String briefDescription) {
		this.briefDescription = briefDescription;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Image> getImageList() {
		return imageList;
	}

	public void setImageList(List<Image> imageList) {
		this.imageList = imageList;
	}

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

}
