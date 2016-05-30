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
	public void registBucket(Bucket bucket) {
		bucketDao.createBucket(bucket);

	}

	@Override
	public Bucket searchBucket(Bucket bucket) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyBucket(Bucket bucket) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeBucket(String bucketId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void registComment(Comment comment) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeComment(String commentId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeAccusedBucket(String bucketId) {
		// TODO Auto-generated method stub

	}

	@Override
	public Bucket showDetailBucket(Bucket bucket) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bucket> showMyBucketList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registRecommand(String bucketId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void registAccuse(String bucketId) {
		// TODO Auto-generated method stub
		
	}

}
