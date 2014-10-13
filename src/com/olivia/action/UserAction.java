package com.olivia.action;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;

	public String login() {
		System.out.println(username + "," + password);
		return SUCCESS;
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

}
