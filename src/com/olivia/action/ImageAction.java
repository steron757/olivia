package com.olivia.action;

import java.io.File;
import java.util.List;

import com.olivia.dao.ImageDao;
import com.olivia.model.Image;
import com.olivia.util.StringUtil;

public class ImageAction extends BaseAction {
	private static final long serialVersionUID = 2661815095968226287L;

	private String id;
	private String pid;
	private String briefDescription;
	private String description;
	private List<Image> imageList;
	private String column;
	
	private ImageDao imageDao;

	public String tomdf() {
		try {
			setImageList(imageDao.selectImage(pid));
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
	
	public String deleteImage(){
		if(StringUtil.isEmpty(id)){
			response(false, "id is null");
			return null;
		}
		String[] idList = id.split(",");
		for(String t : idList) {
			Image img = new Image();
			img.setId(t);
			List<Image> tmp;
			try {
				tmp = imageDao.selectImage(img);
				if(tmp.size() > 0){
					img = tmp.get(0);
				}
				//Delete records
				int result = imageDao.deleteImage(t);
				if(result > 0){
					response(true, "");
					return null;
				}
			} catch (Exception e) {
				response(false, e.getMessage());
				e.printStackTrace();
				return null;
			}
			//Delete images
			String path = request.getSession().getServletContext().getRealPath("") + "\\" + img.getPath();
			File file = new File(path);
			boolean filedelete = false;
			if (file.exists()){
				filedelete = file.delete();
			}
			System.out.println("File delete result: " + filedelete);
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

	public void setId(String id) {
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

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

}
