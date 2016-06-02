package com.kosta.bucket.util;

public class BucketException extends Exception {
	
	private static final long serialVersionUID = -8174303714722836344L;

	public BucketException(String message) {
		// 
		super(message, null, false, false); 
	}
	
	public BucketException(Exception exception) {
		//
		super(exception.getClass().getName() + ": " + exception.getMessage(), null, false, false);
	}

}
