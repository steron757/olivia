package com.olivia.action;

import java.util.List;

import com.olivia.dao.ProductDao;
import com.olivia.model.Product;

/**
 * Navigation Menu Action
 * 
 * @author Gang.chen
 * 
 */
public class NavigateAction extends BaseAction {

	private static final long serialVersionUID = 9183474797419399236L;

	private ProductDao productDao;

	private List<Product> productList;

	public String home() {
		request.setAttribute("index", "1");
		return SUCCESS;
	}

	public String product() {
		try {
			productList = productDao.selectProduct();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("index", "2");
		return SUCCESS;
	}

	public String about() {
		request.setAttribute("index", "3");
		return SUCCESS;
	}

	public String service() {
		request.setAttribute("index", "4");
		return SUCCESS;
	}

	public String blog() {
		request.setAttribute("index", "5");
		return SUCCESS;
	}

	public String contact() {
		request.setAttribute("index", "6");
		return SUCCESS;
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

}
