package com.kosta.bucket.service;

import java.util.List;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;

public interface BucketService {
	
	// 이미지후기 관련
		//이미지 후기 수정
		public int modifyBucket(Bucket bucket);
		//이미지 후기 삭제
		public int removeBucket(String bucketId);
		//이미지 후기 저장
		public int registBucket(Bucket bucket);
		//내용으로 이미지 후기 검색
		public List<Bucket> searchBucketByContents(String contents);
		//제목으로 이미지 후기 검색
		public List<Bucket> searchBucketByTitle(String title);
		//전체 이미지 후기 검색
		public List<Bucket> searchAllBucket();
		//이미지 후기의 추천수 가져오기
		public int searchRecomNum(String bucketId);
		//추천수 순 이미지 후기 검색
		public List<Bucket> searchBucketBestRecom();
		//이미지 후기 상세 페이지
		public Bucket searchBucket(String bucketId);
		//추천하기
		public int registRecommand(String bucketId);
		//신고하기
		public int registAccuse(String bucketId);
		
		// 댓글 관련
		//댓글 저장
		public int registComment(Comment comment);
		//댓글 삭제
		public int removeComment(String commentId);
		// 댓글 조회
		public List<Comment> searchBucketComment(String bucketId);
		
		
		// 신고 관련
		//신고된 후기 삭제
		public int removeAccusedBucket(String bucketId);
		//신고된 후기 전체 조회
		public List<Bucket> searchAccusedAllBucket();
		
		//내가 쓴 이미지 후기 조회
		public List<Bucket> searchMyBucket(String userId);
}
