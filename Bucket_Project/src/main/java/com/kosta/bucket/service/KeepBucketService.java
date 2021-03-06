package com.kosta.bucket.service;

import java.util.List;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.KeepBucket;

public interface KeepBucketService {

	// 후기 담아두기
	public int registKeepBucket(KeepBucket keepBucket);

	// 담아둔 이미지 후기 목록 불러오기
	public List<Bucket> searchKeepBucketList(String userId);

	// 담아둔 후기 삭제하기
	public int removeKeepBucket(KeepBucket keepBucket);
	
	// 담아둔 특정 이미지 후기 불러오기
	public Bucket searchKeepBucket(KeepBucket keepBucket);
}
