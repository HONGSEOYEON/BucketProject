package com.kosta.bucket.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public ModelAndView loginUser(User user, HttpSession session) {

		user = userService.searchUser((String) session.getAttribute("userId"));
		if (user != null && user.getPassword().equals(session.getAttribute("password"))) {

			User loginedUser = userService.searchUser(user.getUserId());

			return new ModelAndView("/main").addObject("loginedUser", loginedUser);
		}
		throw new RuntimeException("로그인 정보가 일치하지 않습니다.");
	}

	@RequestMapping("/logout")
	public ModelAndView logoutUser(User user, HttpSession session) {
		
		session.invalidate();

		return new ModelAndView("/main");
	}

	@RequestMapping("/join")
	public ModelAndView joinUser(User user, HttpSession session) {
		
		user.setUserId((String) session.getAttribute("userId"));
		user.setEmail((String) session.getAttribute("email"));
		user.setPassword((String) session.getAttribute("password"));
		user.setUserName((String) session.getAttribute("name"));
		
		userService.registUser(user);
		
		return new ModelAndView("/user/login/showPage");
	}

	@RequestMapping("/drop")
	public ModelAndView removeUser(String userId, HttpSession session) {
		
		// 자의로 탈퇴하는 시퀀스가 없어 맘대로 return 값으로 userId 받아와야 실행되도록 구현하는중..
		userService.removeUser(userId);
		
		session.invalidate();
		
		return new ModelAndView("/main");
	}

	@RequestMapping("/modify")
	public ModelAndView modifyUser(User user, HttpSession session) {

		user.setUserId((String) session.getAttribute("userId"));
		user.setEmail((String) session.getAttribute("email"));
		user.setPassword((String) session.getAttribute("password"));
		user.setUserName((String) session.getAttribute("name"));
		
		userService.modifyUser(user);
		
		User loginedUser = userService.searchUser(user.getUserId());
		
		return new ModelAndView("/main").addObject("loginedUser", loginedUser);
	}

	@RequestMapping("/modify/showPage")
	public ModelAndView showModifyPage(HttpSession session) {

		User user = userService.searchUser((String) session.getAttribute("userId"));

		return new ModelAndView("/user/modify").addObject("beforeUser", user);
	}

	@RequestMapping("/login/showPage")
	public ModelAndView showLoginPage() {

		return new ModelAndView("/user/login");
	}

	@RequestMapping("/join/showPage")
	public ModelAndView showJoinPage() {

		return new ModelAndView("/user/join");
	}
}
