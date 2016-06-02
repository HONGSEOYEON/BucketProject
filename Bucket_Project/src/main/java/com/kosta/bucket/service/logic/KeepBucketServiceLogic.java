package com.kosta.bucket.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.bucket.dao.KeepBucketDao;
import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.KeepBucket;
import com.kosta.bucket.service.KeepBucketService;

@Service
public class KeepBucketServiceLogic implements KeepBucketService {

	@Autowired
	private KeepBucketDao keepBucketDao;

	@Override
	public int registKeepBucket(KeepBucket keepBucket) {
		return keepBucketDao.createKeepBucket(keepBucket);
	}

	@Override
	public List<Bucket> searchKeepBucketList(String userId) {
		return keepBucketDao.retrieveKeepBucketList(userId);
	}

	@Override
	public int removeKeepBucket(KeepBucket keepBucket) {
		return keepBucketDao.deleteKeepBucket(keepBucket);
	}

	@Override
	public Bucket searchKeepBucket(KeepBucket keepBucket) {
		return keepBucketDao.retrieveKeepBucket(keepBucket);
	}
	
	

}
