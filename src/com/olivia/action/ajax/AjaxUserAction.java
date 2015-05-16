package com.olivia.action.ajax;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.olivia.action.BaseAction;
import com.olivia.dao.UserDao;
import com.olivia.util.CommonUtil;
import com.olivia.util.Constant;

public class AjaxUserAction extends BaseAction {

	private static final long serialVersionUID = -6413809910875726554L;

	private String email;

	private UserDao userDao;

	public String checkEmail() {
		String check = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		Pattern regex = Pattern.compile(check);
		Matcher matcher = regex.matcher(email);
		boolean isMatched = matcher.matches();
		if(!isMatched) {
			CommonUtil.response(response, Constant.FAIL);
			return null;
		}
		boolean isUsed = false;
		try {
			isUsed = getUserDao().checkEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(isUsed);
		if(!isUsed) {
			CommonUtil.response(response, Constant.FAIL);
			return null;
		}
		CommonUtil.response(response, Constant.SUCCESS);
		return null;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
