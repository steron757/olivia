package com.olivia.dao;

import java.util.List;

import com.olivia.model.Message;
import com.olivia.model.User;


public interface UserDao extends BaseDao {
	
	public List<?> selectProduct();
	
	public boolean insertIP(User user) throws Exception;
	
	public boolean addMessage(Message message) throws Exception;

	public boolean addUser(User user);

	/**
	 * ���Email, trueΪ����
	 * @param email
	 * @return
	 * @throws Exception 
	 */
	public boolean checkEmail(String email) throws Exception;
}
