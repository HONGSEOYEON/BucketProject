package com.kosta.bucket.service;

import java.util.List;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;

public interface BucketService {
	
	//이미지 후기 저장
	public void registBucket(Bucket bucket);
	//이미지 후기 검색
	public Bucket searchBucket(Bucket bucket);
	//이미지 후기 수정
	public void modifyBucket(Bucket bucket);
	//이미지 후기 삭제
	public void removeBucket(String bucketId);
	//추천하기
	public void registRecommand(String bucketId);
	//신고하기
	public void registAccuse(String bucketId);
	
	//댓글 저장
	public void registComment(Comment comment);
	//댓글 삭제
	public void removeComment(String commentId);
	
	
	//신고된 이미지 후기 삭제
	public void removeAccusedBucket(String bucketId);
	//신고된 후기 전체 조회
	public List<Bucket> searchAccusedAllBucket();
	
	//후기 상세 페이지
	public Bucket showDetailBucket(Bucket bucket);
	//나의 이미지 후기 목록
	public List<Bucket> showMyBucketList(String userId);
}
