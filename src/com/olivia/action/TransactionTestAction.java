package com.olivia.action;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.olivia.dao.UserDao;
import com.olivia.model.User;

@Transactional
public class TransactionTestAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	private UserDao userDao;
	
	@SuppressWarnings("unused")
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public String test() throws Exception {
		System.out.println("***begin***");
		
		userDao.addUser(new User("aaa","aaa"));
		System.out.println("****added aaa****");
		
		if(true)
			throw new Exception("Break");
		
		return null;
	}


	public UserDao getUserDao() {
		return userDao;
	}


	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
