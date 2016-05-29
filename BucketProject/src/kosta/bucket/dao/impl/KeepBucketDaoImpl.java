package kosta.bucket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import kosta.bucket.dao.KeepBucketDao;
import kosta.bucket.entity.Bucket;
import kosta.bucket.entity.KeepBucket;

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
	public List<Bucket> retrieveKeepBucketList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteKeepBucket(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
