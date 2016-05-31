package com.kosta.bucket.service;

import java.util.List;

import com.kosta.bucket.entity.Bucket;

public interface KeepBucketService {

	// 후기 담아두기
	public int registKeepBucket(Bucket bucket);

	// 담아둔 이미지 후기 목록 불러오기
	public List<Bucket> searchKeepBucketList(String userId);

	// 담아둔 후기 삭제하기
	public int removeKeepBucket(String bucketId);
}
