package com.olivia.action;

import com.olivia.dao.UserDao;
import com.olivia.model.Message;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String email;
	private String subject;
	private String content;
	private String time;
	
	private UserDao userDao;
	
	public String login() {
		System.out.println(username + "," + password);
		return SUCCESS;
	}
	
	public String leaveMsg() {
		Message message = new Message();
		message.setName(username);
		message.setEmail(email);
		message.setSubject(subject);
		message.setContent(content);
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
		System.out.println(result);
		request.setAttribute("index", "6");
		return "msg";
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

}
