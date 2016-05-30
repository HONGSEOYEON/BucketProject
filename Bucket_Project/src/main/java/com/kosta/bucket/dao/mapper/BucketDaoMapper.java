package com.kosta.bucket.dao.mapper;

import java.util.List;

import com.kosta.bucket.entity.Bucket;

public interface BucketDaoMapper {

	//버킷 등록
	public int createBucket(Bucket bucket);

	//버킷 수정
	public int updateBucket(Bucket bucket);
	
	//버킷 삭제
	public int deleteBucket(String bucketId);
	
	//제목으로 버킷 검색
	public List<Bucket> retrieveBucketByTitle(String title);

	//내용으로 버킷 검색
	public List<Bucket> retrieveBucketByContents(String contents);
	
	//전체 버킷 검색
	public List<Bucket> retrieveAllBucket();
	
	//
	public int retireveBucketByRecom(String bucketId);
	
	public List<Bucket> retrieveBucketBestRecom();
	
	public Bucket retrieveBucket(String bucketId);
}
