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
	
	public ModelAndView loginUser(User user) {
		
	}
	public ModelAndView logoutUser(User user) {
		
	}
	public ModelAndView joinUser(User user) {
		
	}
	public ModelAndView removeUser(String userId) {
		
	}
	public ModelAndView modifyUser(User user) {
		
	}
	public ModelAndView showModifyPage() {
		
	}
	public ModelAndView showLoginPage() {
		
	}
	public ModelAndView showJoinPage() {
		
	}
}
