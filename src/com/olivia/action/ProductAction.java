package com.olivia.action;

import java.util.List;

import com.olivia.dao.ImageDao;
import com.olivia.dao.ProductDao;
import com.olivia.model.Image;
import com.olivia.model.Product;

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
	private ImageDao imageDao;

	/** ²úÆ·ID */
	private String pid;
	private String title;
	private String description;
	
	public String productDetail() {
		try {
			setImageList(imageDao.selectImage(pid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("index", "2");
		return SUCCESS;
	}

	public String modifyProductInfo(){
		Product p = new Product();
		p.setId(pid);
		List<Product> pList = null;
		try {
			pList = productDao.selectProduct(p);
		} catch (Exception e) {
			response(false, e.getMessage());
			e.printStackTrace();
		}
		if(pList == null || pList.size() == 0){
			response(false,"Product not exists");
			return null;
		}
		p = pList.get(0);
		p.setTitle(title);
		p.setIntroduction(description);
		int result = 0;
		try {
			result = productDao.updateProduct(p);
		} catch (Exception e) {
			response(false, e.getMessage());
			e.printStackTrace();
			return null;
		}
		if(result > 0)
			response(true, "");
		else
			response(false,"");
		return null;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ImageDao getImageDao() {
		return imageDao;
	}

	public void setImageDao(ImageDao imageDao) {
		this.imageDao = imageDao;
	}
}
