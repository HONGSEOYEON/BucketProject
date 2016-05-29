package kosta.bucket.service;

import java.util.List;

import kosta.bucket.entity.Bucket;
import kosta.bucket.entity.Comment;

public interface BucketService {
	
	//이미지 후기 저장
	public void registBucket(Bucket bucket);
	//이미지 후기 검색
	public Bucket searchBucket(Bucket bucket);
	//이미지 후기 수정
	public void modifyBucket(Bucket bucket);
	//이미지 후기 삭제
	public void removeBucket(String BucketId);
	
	
	//댓글 저장
	public void registComment(Comment comment);
	//댓글 삭제
	public void removeComment(String commentId);
	
	
	//신고된 이미지 후기 삭제
	public void removeAccusedBucket(String bucketId);
	
	
	//후기 상세 페이지
	public Bucket showDetailBucket(Bucket bucket);
	//나의 이미지 후기 목록
	public List<Bucket> showMyBucketList(String userId);
}
