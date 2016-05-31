package com.kosta.bucket.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public ModelAndView loginUser(User user, HttpServletRequest req, HttpSession session) {
		
		String id = (String) req.getParameter("loginId");
		user = userService.searchUser(id);
		if (user != null && user.getPassword().equals(req.getParameter("password"))) {

			User loginedUser = userService.searchUser(user.getUserId());
			
			session.setAttribute("userId", loginedUser.getUserId());
			session.setAttribute("password", loginedUser.getPassword());
			session.setAttribute("name", loginedUser.getUserName());
			session.setAttribute("email", loginedUser.getEmail());
			
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
	public ModelAndView joinUser(User user, HttpServletRequest req, HttpSession session) {

		user.setUserId((String) session.getAttribute("userId"));
		user.setEmail((String) session.getAttribute("email"));
		user.setPassword((String) session.getAttribute("password"));
		user.setUserName((String) session.getAttribute("name"));

		if (user.getUserId().equals(userService.searchUser(user.getUserId()).getUserId())) {
			throw new RuntimeException("중복된 아이디 입니다");
		}
		if (user.getEmail().equals(userService.searchUser(user.getUserId()).getEmail())) {
			throw new RuntimeException("중복된 이메일 입니다");
		} else {
			userService.registUser(user);

			return new ModelAndView("/user/login/showPage");
		}
	}

	@RequestMapping("/drop")
	public ModelAndView removeUser(String userId, HttpSession session) {

		// 자의로 탈퇴하는 시퀀스가 없어 맘대로 return 값으로 userId 받아와야 실행되도록 구현하는중..
		userService.removeUser(userId);

//		session.invalidate();

		return new ModelAndView("/main");
	}

	@RequestMapping("/modify")
	public ModelAndView modifyUser(User user, HttpSession session, HttpServletRequest req) {
		
		user.setUserId(req.getParameter("userId"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setUserName(req.getParameter("name"));

		userService.modifyUser(user);

		User loginedUser = userService.searchUser(user.getUserId());

		return new ModelAndView("/main").addObject("loginedUser", loginedUser);
	}

	@RequestMapping("/modify/showPage")
	public ModelAndView showModifyPage(HttpSession session/*, HttpServletRequest req*/) {

		User user = userService.searchUser((String) session.getAttribute("userId"));
		
//		req.setAttribute("userId", user.getUserId());
//		req.setAttribute("password", user.getPassword());
//		req.setAttribute("name", user.getUserName());
//		req.setAttribute("email", user.getEmail());

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
