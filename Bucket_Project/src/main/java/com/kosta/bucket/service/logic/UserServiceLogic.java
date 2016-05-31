package com.kosta.bucket.service.logic;

import org.springframework.beans.factory.annotation.Autowired;

import com.kosta.bucket.dao.KeepBucketDao;
import com.kosta.bucket.dao.UserDao;
import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.BucketService;
import com.kosta.bucket.service.UserService;

public class UserServiceLogic implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public int registUser(User user) {
		return userDao.createUser(user);
	}

	@Override
	public User searchUser(String userId) {
		return userDao.retrieveUser(userId);
	}

	@Override
	public int modifyUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public int removeUser(String userId) {
		return userDao.deleteUser(userId);
	}
}
