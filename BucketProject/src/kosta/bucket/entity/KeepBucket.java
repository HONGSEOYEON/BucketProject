package kosta.bucket.entity;

public class KeepBucket {
	
	private String bucketId;
	private String userId;
	
	
	public KeepBucket() {}

	public KeepBucket(String bucketId, String userId) {
		this.bucketId = bucketId;
		this.userId = userId;
	}

	public String getBucketId() {
		return bucketId;
	}

	public void setBucketId(String bucketId) {
		this.bucketId = bucketId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
}
