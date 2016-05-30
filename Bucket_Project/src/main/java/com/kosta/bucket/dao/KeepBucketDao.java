package com.kosta.bucket.dao;

import java.util.List;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.KeepBucket;

public interface KeepBucketDao {
	
	//후기 담아두기
	public int createKeepBucket(KeepBucket keepBucket);
	//담아둔 이미지 후기 목록 불러오기
	public List<Bucket> retrieveKeepBucketList(String userId);
	//담아둔 후기 삭제하기
	public int deleteKeepBucket(String bucketId);
}
