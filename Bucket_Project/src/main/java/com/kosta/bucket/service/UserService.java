package com.kosta.bucket.service;

import com.kosta.bucket.entity.User;

public interface UserService {
	
	//회원 로그인
	public void loginUser(User user);
	//회원 가입
	public void joinUser(User user);
	//회원 탈퇴
	public void removeUser(String userId);
	//회원정보 수정
	public void modifyUser(User user);
	//신고된 회원 조회
	public User searchAccusedUser(String userId);
}
