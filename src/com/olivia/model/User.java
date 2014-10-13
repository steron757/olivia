package com.olivia.model;

public class User {

	private String id;
	private String name;
	private String lastLoginTime;
	private String ip;
	private String belongcity;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getBelongcity() {
		return belongcity;
	}

	public void setBelongcity(String belongcity) {
		this.belongcity = belongcity;
	}

}
