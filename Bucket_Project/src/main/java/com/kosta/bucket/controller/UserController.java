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
	
	public ModelAndView loginUser(User user){
		return null;
	}
	public ModelAndView logoutUser(User user) {
		return null;
	}
	public ModelAndView joinUser(User user) {
		return null;
	}
	public ModelAndView removeUser(String userId) {
		return null;
	}
	public ModelAndView modifyUser(User user) {
		return null;
	}
	public ModelAndView showModifyPage(){
		return null;
	}
	public ModelAndView showLoginPage() {
		return null;
	}
	public ModelAndView showJoinPage() {
		return null;
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
