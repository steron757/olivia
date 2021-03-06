package com.olivia.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.olivia.dao.ProductDao;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements ServletRequestAware, ServletResponseAware,
		SessionAware, ApplicationAware {

	private static final long serialVersionUID = 1L;

	public HttpServletRequest request;
	public HttpServletResponse response;
	public Map<String, Object> session;
	public Map<String, Object> application;

	private ProductDao productDao;

	public void response(boolean result, String msg) {
		if (result) {
			response.setStatus(HttpServletResponse.SC_ACCEPTED);
		} else {
			response.setStatus(HttpServletResponse.SC_EXPECTATION_FAILED);
		}
		PrintWriter out;
		try {
			out = response.getWriter();
			out.write(msg);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		this.response = arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	@Override
	public void setApplication(Map<String, Object> arg0) {
		this.application = arg0;
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

}
