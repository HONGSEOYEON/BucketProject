package com.kosta.bucket.service.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.bucket.dao.UserDao;
import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.UserService;

@Service
public class UserServiceLogic implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public void loginUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void joinUser(User user) {
		userDao.createUser(user);

	}

	@Override
	public void removeUser(String userId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public User searchAccusedUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
