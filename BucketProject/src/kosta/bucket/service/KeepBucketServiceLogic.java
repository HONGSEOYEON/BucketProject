package kosta.bucket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.bucket.dao.KeepBucketDao;
import kosta.bucket.entity.KeepBucket;

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
