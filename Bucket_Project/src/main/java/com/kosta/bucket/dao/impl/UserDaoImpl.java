package com.kosta.bucket.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.kosta.bucket.dao.UserDao;
import com.kosta.bucket.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

	private SqlSessionFactory factory;

	public UserDaoImpl() {
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}

	@Override
	public int createUser(User user) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.insert("insertUser", user);
			if(result > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public User retrieveUser(String userId) {
		SqlSession session = factory.openSession();
		User user = new User();
		try {
			user = session.selectOne("retrieveUser", userId);
		} finally {
			session.close();
		}
		return user;
	}

	@Override
	public int updateUser(User user) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.update("updateUser", user);
			if(result > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public int deleteUser(String userId) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.delete("deleteUser", userId);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean checkId(String id) {
		SqlSession session = factory.openSession();
		User user = new User();
		try {
			user = session.selectOne("retrieveUser", id);
			if(user!=null){
				return true;
			}
		} finally {
			session.close();
		}
		return false;
	}
}
