package com.olivia.action;

import java.util.List;

import com.olivia.dao.ProductDao;
import com.olivia.model.Image;

/**
 * Product action
 * 
 * @author Gang.chen
 *
 */
public class ProductAction extends BaseAction {
	private static final long serialVersionUID = -2078226003856975237L;

	private List<Image> imageList;
	private ProductDao productDao;

	/** ²úÆ·ID */
	private String pid;

	public String productDetail() {
		setImageList(productDao.selectImage(pid));
		request.setAttribute("index", "2");
		return SUCCESS;
	}

	public List<Image> getImageList() {
		return imageList;
	}

	public void setImageList(List<Image> imageList) {
		this.imageList = imageList;
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}
}
