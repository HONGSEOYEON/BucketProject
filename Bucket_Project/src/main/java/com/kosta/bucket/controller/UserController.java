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
	
	@RequestMapping("/login")
	public ModelAndView loginUser(User user) {

	}
	
	@RequestMapping("/logout")
	public ModelAndView logoutUser(User user) {
		
	}
	
	@RequestMapping("/join")
	public ModelAndView joinUser(User user) {
		
	}
	
	@RequestMapping("/drop")
	public ModelAndView removeUser(String userId) {
		
	}
	
	@RequestMapping("/modify")
	public ModelAndView modifyUser(User user) {
		
	}
	
	@RequestMapping("/")
	public ModelAndView showModifyPage() {
		
	}
	public ModelAndView showLoginPage() {
		
	}
	public ModelAndView showJoinPage() {
		
	}
}
