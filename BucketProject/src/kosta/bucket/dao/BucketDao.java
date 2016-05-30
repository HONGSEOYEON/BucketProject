package kosta.bucket.dao;

import java.util.List;

import kosta.bucket.entity.Bucket;
import kosta.bucket.entity.Comment;

public interface BucketDao {
	
	// 이미지후기 관련
	//이미지 후기 수정
	public int updateBucket(Bucket bucket);
	//이미지 후기 삭제
	public int deleteBucket(String bucketId);
	//이미지 후기 저장
	public int createBucket(Bucket bucket);
	//내용으로 이미지 후기 검색
	public List<Bucket> retrieveBucketByContents(String contents);
	//제목으로 이미지 후기 검색
	public List<Bucket> retrieveBucketByTitle(String title);
	//전체 이미지 후기 검색
	public List<Bucket> retrieveAllBucket();
	//이미지 후기의 추천수 가져오기
	public int retrieveRecomNum(String bucketId);
	//추천수 순 이미지 후기 검색
	public List<Bucket> retrieveBucketBestRecom();
	//이미지 후기 상세 페이지
	public Bucket retrieveBucket(String bucketId);
	//추천하기
	public int createRecommand(String bucketId);
	//신고하기
	public int createAccuse(String bucketId);
	
	// 댓글 관련
	//댓글 저장
	public int createComment(Comment comment);
	//댓글 삭제
	public int deleteComment(String commentId);
	
	
	// 신고 관련
	//신고된 후기 삭제
	public int deleteAccusedBucket(String bucketId);
	
	//내가 쓴 이미지 후기 조회
	public List<Bucket> retrieveMyBucket(String userId);
}
