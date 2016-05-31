package com.kosta.bucket.entity;

public class User {
	private String userId;
	private String password;
	private String userName;
	private String email;
	private String isManager;
	
	public User() {}

	public User(String userId, String password, String userName, String email, String isManager) {
		this.userId = userId;
		this.password = password;
		this.userName = userName;
		this.email = email;
		this.isManager = isManager;
	}

	public String getIsManager() {
		return isManager;
	}
	
	public void setIsManager(String isManager) {
		this.isManager = isManager;
	}
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
