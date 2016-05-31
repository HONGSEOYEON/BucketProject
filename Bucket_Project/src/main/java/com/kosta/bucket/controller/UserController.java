package com.kosta.bucket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	public ModelAndView loginUser(User)  
	public ModelAndView logoutUser(User) 
	public ModelAndView joinUser(User) 
	public ModelAndView removeUser(userId) 
	public ModelAndView modifyUser(User) 
	public ModelAndView showModifyPage()
	public ModelAndView showLoginPage() 
	public ModelAndView showJoinPage() 
}
