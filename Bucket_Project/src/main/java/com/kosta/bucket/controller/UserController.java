package com.kosta.bucket.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.BucketService;
import com.kosta.bucket.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private BucketService bucketService;

	@RequestMapping("/login")
	public ModelAndView loginUser(HttpServletRequest req, HttpSession session) {

		String id = (String) req.getParameter("loginId");
		User loginedUser = userService.searchUser(id);
		
		if (loginedUser != null && loginedUser.getPassword().equals(req.getParameter("password"))) {
			
			session.setAttribute("loginedUser", loginedUser);
			
			ModelAndView model = new ModelAndView("redirect:/");
			return model;
		}
		
		throw new RuntimeException("로그인 정보가 일치하지 않습니다.");
	}

	@RequestMapping("/logout")
	public ModelAndView logoutUser(User user, HttpSession session) {

		session.invalidate();

		return new ModelAndView("redirect:/");
	}

	@RequestMapping("/join")
	public ModelAndView joinUser(User user, HttpServletRequest req) {
		
		user.setUserId((String) req.getParameter("userId"));
		user.setEmail((String) req.getParameter("email"));
		user.setPassword((String) req.getParameter("password"));
		user.setUserName((String) req.getParameter("name"));
		user.setIsManager((String) req.getParameter("isManager"));

		userService.registUser(user);

		return new ModelAndView("/user/login");
	}

	@RequestMapping("/drop")
	public ModelAndView removeUser(String userId, HttpSession session) {

//		String managerId = (String) session.getAttribute("userId");
		User manager = userService.searchUser("kim");
		if("Y".equals(manager.getIsManager())) {
			userService.removeUser(userId);
			return new ModelAndView("redirect:/accusedAllBucket");
		} else {
			userService.removeUser(userId);
			session.invalidate();
			return new ModelAndView("redirect:/");
		}
	}

	@RequestMapping("/modify")
	public ModelAndView modifyUser(User user, HttpSession session, HttpServletRequest req) {

		user.setUserId(req.getParameter("userId"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setUserName(req.getParameter("name"));

		userService.modifyUser(user);

		User loginedUser = userService.searchUser(user.getUserId());

		session.setAttribute("loginedUser", loginedUser);

		return new ModelAndView("redirect:/");
	}

	@RequestMapping("showPageModify")
	public ModelAndView showModifyPage(HttpSession session) {

		User user = (User) session.getAttribute("loginedUser");
		
		return new ModelAndView("user/modifyUser").addObject("beforeUser", user);
	}

	@RequestMapping("showPageLogin")
	public ModelAndView showLoginPage() {

		return new ModelAndView("/user/login");
	}

	@RequestMapping("showPageJoin")
	public ModelAndView showJoinPage() {

		return new ModelAndView("/user/join");
	}
	
	@RequestMapping("/checkId")
	public @ResponseBody String checkId(String loginId) {
		boolean result = userService.checkId(loginId);
		
		if(result) {
			return "true";
		}
		
		return "false";
	}
}
