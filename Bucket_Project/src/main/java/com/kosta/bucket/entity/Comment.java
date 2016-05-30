package com.kosta.bucket.entity;

import java.sql.Date;

public class Comment {
	private String commentId;
	private String contents;
	private String bucketId;
	private String writerId;
	private Date registDate;
	
	public Comment() {}
	
	public Comment(String contents, String bucketId, String writerId, Date registDate) {
		this.contents = contents;
		this.bucketId = bucketId;
		this.writerId = writerId;
		this.registDate = registDate;
	}
	
	
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getBucketId() {
		return bucketId;
	}
	public void setBucketId(String bucketId) {
		this.bucketId = bucketId;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
	
}
