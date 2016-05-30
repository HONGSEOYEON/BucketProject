package com.kosta.bucket.dao.mapper;

import java.util.List;

import com.kosta.bucket.entity.Bucket;

public interface KeepBucketDaoMapper {

	//버킷 담아두기
	public int createKeepBucket(String bucketId);
	
	//담아둔 버킷목록 불러오기
	public List<Bucket> retrieveKeepBucketList(String userId);
	
	//담아둔 버킷 삭제하기
	public int deleteKeepBucket(String bucketId);
}
