package com.kosta.bucket.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.bucket.dao.KeepBucketDao;
import com.kosta.bucket.entity.KeepBucket;
import com.kosta.bucket.service.KeepBucketService;

@Service
public class KeepBucketServiceLogic implements KeepBucketService {

	@Autowired
	private KeepBucketDao keepBucketDao;
	
	@Override
	public void registKeepBucket(KeepBucket keepBucket) {
		keepBucketDao.createKeepBucket(keepBucket);

	}

	@Override
	public List<KeepBucket> showKeepBucketList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeKeepBucket(String bucketId) {
		// TODO Auto-generated method stub

	}

}
