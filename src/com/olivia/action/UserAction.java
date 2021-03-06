package com.olivia.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.olivia.dao.ProductDao;
import com.olivia.dao.UserDao;
import com.olivia.model.Message;
import com.olivia.model.Product;
import com.olivia.model.User;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String email;
	private String subject;
	private String content;
	private String time;
	
	private UserDao userDao;
	private ProductDao productDao;
	
	private List<Product> productList;
	
	public String login() {
		if("".equals(username) && "".equals(password)){
			try {
				productList = productDao.selectProduct();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "productMgr";
		}
		return LOGIN;
	}
	
	public String leaveMsg() {
		Message message = new Message();
		message.setName(username);
		message.setEmail(email);
		message.setSubject(subject);
		message.setContent(content);
		String ip = null;
		if (((HttpServletRequest) request).getHeader("x-forwarded-for") == null) {
			ip = request.getRemoteAddr();
		} else {
			ip = ((HttpServletRequest) request).getHeader("x-forwarded-for");
		}
		message.setIp(ip);
		boolean result = false;
		try {
			result = userDao.addMessage(message);
			if(result){
				addActionMessage("您的留言我们已经收到，感谢您的支持");
			}
		} catch (Exception e) {
			addActionMessage("留言出了点问题：" + e.getMessage());
			e.printStackTrace();
		}
		request.setAttribute("index", "6");
		return "msg";
	}

	public String signup() throws Exception {
		User user = new User();
		user.setName(username);
		user.setPassword(password);
		user.setEmail(email);
		boolean result = userDao.addUser(user);
		if(result)
			this.addActionMessage("注册成功");
		else
			this.addActionMessage("注册失败");
		return "signup";
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
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
