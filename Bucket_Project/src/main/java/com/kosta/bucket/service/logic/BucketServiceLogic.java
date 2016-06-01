package com.kosta.bucket.service.logic;

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
		return bucketDao.retrieveBucketByContents(contents);
	}

	@Override
	public List<Bucket> searchBucketByTitle(String title) {
		return bucketDao.retrieveBucketByTitle(title);
	}

	@Override
	public List<Bucket> searchAllBucket() {
		return bucketDao.retrieveAllBucket();
	}

	@Override
	public int searchRecomNum(String bucketId) {
		return bucketDao.retrieveRecomNum(bucketId);
	}

	@Override
	public List<Bucket> searchBucketBestRecom() {
		return bucketDao.retrieveBucketBestRecom();
	}

	@Override
	public Bucket searchBucket(String bucketId) {
		return bucketDao.retrieveBucket(bucketId);
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
		return bucketDao.createComment(comment);
	}

	@Override
	public int removeComment(String commentId) {
		return bucketDao.deleteComment(commentId);
	}

	@Override
	public List<Comment> searchBucketComment(String bucketId) {
		return bucketDao.retrieveBucketComment(bucketId);
	}


	@Override
	public List<Bucket> searchAccusedAllBucket() {
		return bucketDao.retrieveAccusedAllBucket();
	}

	@Override
	public List<Bucket> searchMyBucket(String userId) {
		return bucketDao.retrieveMyBucket(userId);
	}

}
