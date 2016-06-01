package com.kosta.bucket.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.kosta.bucket.dao.BucketDao;
import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;

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
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.update("updateBucket", bucket);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}

	@Override
	public int deleteBucket(String bucketId) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.delete("deleteBucket", bucketId);
			session.commit();
			return result;
		} finally {
			session.close();
		}
	}

	
	@Override
	public List<Bucket> retrieveBucketByContents(String contents) {
		return null;
	}

	@Override
	public List<Bucket> retrieveBucketByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> retrieveAllBucket() {
		SqlSession session = factory.openSession();
		List<Bucket> list = null;
		try {
			list = session.selectList("selectAllBucket");
			return list;
		} finally {
			session.close();
		}
	}

	@Override
	public int retrieveRecomNum(String bucketId) {
		return 0;
	}

	@Override
	public List<Bucket> retrieveBucketBestRecom() {
		SqlSession session = factory.openSession(true);
		try {
			return session.selectList("retrieveBucketBestRecom");
		} finally {
			session.close();
		}
	}

	@Override
	public Bucket retrieveBucket(String bucketId) {
			SqlSession session = factory.openSession();
			Bucket bucket;
			try {
				bucket = session.selectOne("retrieveBucket", bucketId);
				session.commit();
				return bucket;
			} finally {
				session.close();
			}
	}

	@Override
	public int createComment(Comment comment) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.insert("insertComment", comment);
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
	public int deleteComment(String commentId) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.insert("deleteComment", commentId);
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
	public List<Comment> retrieveBucketComment(String bucketId) {
		SqlSession session = factory.openSession();
		try {
			List<Comment> comments = session.selectList("selectBucketComment", bucketId);
			return comments;
		} finally {
			session.close();
		}
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

	@Override
	public int createRecommand(String bucketId) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.update("updateRecommand", bucketId);
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
	public int createAccuse(String bucketId) {
		SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.update("updateAccuse", bucketId);
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
	public List<Bucket> retrieveAccusedAllBucket() {
		SqlSession session = factory.openSession();
		List<Bucket> list = null;
		try {
			list = session.selectList("selectAccusedAllBucket");
			session.commit();
			return list;
		} finally {
			session.close();
		}
	}

}
