package kosta.bucket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import kosta.bucket.dao.BucketDao;
import kosta.bucket.entity.Bucket;
import kosta.bucket.entity.Comment;

@Repository
public class BucketDaoImpl implements BucketDao {

	private SqlSessionFactory factory;
	
	public BucketDaoImpl(){
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}
	
	@Override
	public int createBucket(Bucket bucket) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.insert("insertBucket", bucket);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}
	
	@Override
	public int updateBucket(Bucket bucket) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBucket(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Override
	public List<Bucket> retrieveBucketByContents(String contents) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> retrieveBucketByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> retrieveAllBucket() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int retrieveRecomNum(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Bucket> retrieveBucketBestRecom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Bucket retrieveBucket(String bucketId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int createComment(Comment comment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteComment(String commentId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAccusedBucket(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Bucket> retrieveMyBucket(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
