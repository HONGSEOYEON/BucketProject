package com.kosta.bucket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.kosta.bucket.dao.UserDao;
import com.kosta.bucket.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	private SqlSessionFactory factory;
	
	public UserDaoImpl(){
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}
	
	@Override
	public int createUser(User user) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.insert("insertUser", user);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}

	@Override
	public User retrieveUser(String userId) {
		SqlSession session = factory.openSession();
		User user;
		try {
			user = session.selectOne("retrieveUser", userId);
		} finally {
			session.close();
		}
		return user;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}


}
