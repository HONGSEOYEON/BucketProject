package kosta.bucket.dao.mapper;

import java.util.List;

import kosta.bucket.entity.User;

public interface UserDaoMapper {
	//유저 생성
	public int createUser(User user);

	//유저 조회
	public User retrieveUser(String userId);
		
	//유저 정보 수정
	public int updateUser(User user);
		
	//유저 삭제
	public int deleteUser(String userId);
		
	//신고된 회원 조회
	public List<User> retrieveAccuesedUser(String userId);
}
