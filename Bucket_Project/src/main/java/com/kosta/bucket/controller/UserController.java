package com.kosta.bucket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
<<<<<<< HEAD
	@RequestMapping("/login")
	public ModelAndView loginUser(User user) {

=======
	public ModelAndView loginUser(User user){
		return null;
>>>>>>> branch 'master' of https://github.com/Cruel0412/BucketProject.git
	}
	
	@RequestMapping("/logout")
	public ModelAndView logoutUser(User user) {
		return null;
	}
	
	@RequestMapping("/join")
	public ModelAndView joinUser(User user) {
		return null;
	}
	
	@RequestMapping("/drop")
	public ModelAndView removeUser(String userId) {
		return null;
	}
	
	@RequestMapping("/modify")
	public ModelAndView modifyUser(User user) {
		return null;
	}
<<<<<<< HEAD
	
	@RequestMapping("/")
	public ModelAndView showModifyPage() {
		
=======
	public ModelAndView showModifyPage(){
		return null;
>>>>>>> branch 'master' of https://github.com/Cruel0412/BucketProject.git
	}
	public ModelAndView showLoginPage() {
		return null;
	}
	public ModelAndView showJoinPage() {
		return null;
	}
}
