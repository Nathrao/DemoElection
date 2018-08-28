package com.dreamworth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dreamworth.dao.UserDAO;
import com.dreamworth.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	public UserDAO getDao() {
		return dao;
	}

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	
	public String addUser(User user) {
		String msg = null;
		msg = dao.addUser(user);
		return msg;
	}

}
