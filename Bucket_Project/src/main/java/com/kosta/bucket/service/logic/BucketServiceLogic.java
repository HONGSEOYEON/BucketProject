package com.kosta.bucket.service.logic;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.bucket.dao.BucketDao;
import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;
import com.kosta.bucket.service.BucketService;

@Service
public class BucketServiceLogic implements BucketService {

	@Autowired
	private BucketDao bucketDao;
	
	@Override
	public int modifyBucket(Bucket bucket) {
		return bucketDao.updateBucket(bucket);
	}

	@Override
	public int removeBucket(String bucketId) {
		return bucketDao.deleteBucket(bucketId);
	}

	@Override
	public int registBucket(Bucket bucket) {
		return bucketDao.createBucket(bucket);
	}

	@Override
	public List<Bucket> searchBucketByContents(String contents) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> searchBucketByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> searchAllBucket() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int searchRecomNum(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Bucket> searchBucketBestRecom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Bucket searchBucket(String bucketId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registRecommand(String bucketId) {
		return bucketDao.createRecommand(bucketId);
	}

	@Override
	public int registAccuse(String bucketId) {
		return bucketDao.createAccuse(bucketId);
	}

	@Override
	public int registComment(Comment comment) {
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		comment.setRegistDate(today);
		int result = bucketDao.createComment(comment);
		return result;
	}

	@Override
	public int removeComment(String commentId) {
		 int result = bucketDao.deleteComment(commentId);
		return result;
	}

	@Override
	public List<Comment> searchBucketComment(String bucketId) {
		return bucketDao.retrieveBucketComment(bucketId);
	}

	@Override
	public int removeAccusedBucket(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Bucket> searchAccusedAllBucket() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> searchMyBucket(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
