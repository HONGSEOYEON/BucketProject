package com.kosta.bucket.service;

import com.kosta.bucket.entity.User;

public interface UserService {

	// 회원 가입
	public int registUser(User user);

	// 회원 조회
	public User searchUser(String userId);

	// 회원 정보 수정
	public int modifyUser(User user);

	// 회원 탈퇴
	public int removeUser(String userId);
}
