package com.olivia.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

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

	private List<File> img;
	private List<String> imgFileName;
	private List<String> imgContentType;
	
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
			String path = request.getRealPath("") + "\\" + img.getPath();
			File file = new File(path);
			boolean filedelete = false;
			if (file.exists()){
				filedelete = file.delete();
			}
			System.out.println("Image delete result: " + filedelete);
		}
		return null;
	}
	
	public String add() {
		List<String> pathList = uploadCoverImage();
		if(pathList == null){
			response(false, "Upload image failed");
			return "add";
		}
		for(String path : pathList){
			Image img = new Image();
			img.setPath(path);
			img.setProductId(pid);
			try {
				imageDao.addImage(img);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "add";
	}
	
	private List<String> uploadCoverImage() {
		String path = null;
		// 得到工程保存图片的路径
		String root = request.getRealPath("/upload");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");		//上传到当前月份
		String newpath = root + "\\" + sdf.format(new Date());
		File dir = new File(newpath);
		dir.mkdir();
		List<String> newNameList = new ArrayList<String>();		//新文件名
		
		// 循环上传的文件
		try {
			
			for (int i = 0; i < img.size(); i++) {
				InputStream is = new FileInputStream(img.get(i));

				// 得到图片保存的位置(根据root来得到图片保存的路径在tomcat下的该工程里)
				File destFile = null;
				
				String name = this.getImgFileName().get(i);		//改名
				if(name.indexOf(".")<0){
					return null;
				} else {
					name = System.currentTimeMillis() + "." + name.split("\\.")[1];
				}
				
				if(dir.exists()){
					path = "upload/" + sdf.format(new Date());
					destFile = new File(newpath, name);
				} else {
					path = "upload/";
					destFile = new File(root, name);
				}
				newNameList.add(path + "/" +name);
				// 把图片写入到上面设置的路径里
				OutputStream os = null;
				os = new FileOutputStream(destFile);
				byte[] buffer = new byte[400];
				int length = 0;
				while ((length = is.read(buffer)) > 0) {
					os.write(buffer, 0, length);
				}
				is.close();
				os.close();
			}
			imgFileName.clear();
			imgFileName.addAll(newNameList);
		} catch (Exception e) {
			return null;
		}
		return newNameList;
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

	public List<File> getImg() {
		return img;
	}

	public void setImg(List<File> img) {
		this.img = img;
	}

	public List<String> getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(List<String> imgFileName) {
		this.imgFileName = imgFileName;
	}

	public List<String> getImgContentType() {
		return imgContentType;
	}

	public void setImgContentType(List<String> imgContentType) {
		this.imgContentType = imgContentType;
	}

}
