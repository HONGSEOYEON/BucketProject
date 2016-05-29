package kosta.bucket.service;

import java.util.List;

import kosta.bucket.entity.KeepBucket;

public interface KeepBucketService {
	
	//이미지 후기 담기
	public void registKeepBucket(KeepBucket keepBucket);
	//담은 이미지 후기 목록
	public List<KeepBucket> showKeepBucketList(String userId);
	//담은 이미지 후기 삭제
	public void removeKeepBucket(String bucketId);
}
