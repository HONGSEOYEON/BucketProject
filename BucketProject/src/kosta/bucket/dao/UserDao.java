package kosta.bucket.dao;

import java.util.List;

import kosta.bucket.entity.User;

public interface UserDao {
	
	//회원 가입
	public int createUser(User user);

	//회원 조회
	public User retrieveUser(String userId);
	
	//회원 정보 수정
	public int updateUser(User user);
	
	//회원 탈퇴
	public int deleteUser(String userId);
	
	//신고된 회원 조회
	public List<User> retrieveAccuesedUser(String userId);
}
