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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeBucket(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int registBucket(Bucket bucket) {
		// TODO Auto-generated method stub
		return 0;
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int registAccuse(String bucketId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int registComment(Comment comment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeComment(String commentId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Comment> searchBucketComment(String bucketId) {
		// TODO Auto-generated method stub
		return null;
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
