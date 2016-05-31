package com.kosta.bucket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.kosta.bucket.dao.KeepBucketDao;
import com.kosta.bucket.entity.KeepBucket;

@Repository
public class KeepBucketDaoImpl implements KeepBucketDao {

	private SqlSessionFactory factory;
	
	public KeepBucketDaoImpl(){
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}
	@Override
	public int createKeepBucket(KeepBucket keepBucket) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.insert("insertKeepBucket", keepBucket);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}

	@Override
	public List<KeepBucket> retrieveKeepBucketList(String userId) {
		SqlSession session = factory.openSession();
		try {
			List<KeepBucket> buckets = session.selectList("selectAllKeepBucket", userId);
			return buckets;
		} finally {
			session.close();
		}
	}

	@Override
	public int deleteKeepBucket(String bucketId) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.delete("deleteKeepBucket", bucketId);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}

}
