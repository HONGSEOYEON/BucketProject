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
	public int registUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User searchUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modifyUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeUser(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}
}
