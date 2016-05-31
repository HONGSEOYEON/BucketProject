package com.kosta.bucket.entity;

import java.sql.Date;

public class Bucket {
	private String bucketId;
	private String title;
	private String image;
	private String contents;
	private String writerId;
	private Date registDate;
	
	private int recomNum;
	private int accuseNum;
	private Comment comment;
	
	public Bucket() {}
	
	public Bucket(String title, String image, String contents, String writerId, Date registDate) {
		this.title = title;
		this.image = image;
		this.contents = contents;
		this.writerId = writerId;
		this.registDate = registDate;
	}
	
	public Bucket(String title, String image, String contents) {
		this.title = title;
		this.image = image;
		this.contents = contents;
	}

	public Bucket(String bucketId, String title, String image, String contents, String writerId, Date registDate,
			int recomNum, int accuseNum, Comment comment) {
		this(title, image, contents, writerId, registDate);
		this.bucketId = bucketId;
		this.recomNum = recomNum;
		this.accuseNum = accuseNum;
		this.comment = comment;
	}

	public String getBucketId() {
		return bucketId;
	}
	public void setBucketId(String bucketId) {
		this.bucketId = bucketId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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
	public int getRecomNum() {
		return recomNum;
	}
	public void setRecomNum(int recomNum) {
		this.recomNum = recomNum;
	}
	public int getAccuseNum() {
		return accuseNum;
	}
	public void setAccuseNum(int accuseNum) {
		this.accuseNum = accuseNum;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	
}
