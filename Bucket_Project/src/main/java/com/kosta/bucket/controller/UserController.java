package com.kosta.bucket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
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
			ModelAndView modelAndView = new ModelAndView("/main/main");
			List<Bucket> List1 = bucketService.searchBucketBestRecom();
			List<Bucket> List2 = bucketService.searchAllBucket();
			modelAndView.addObject("bucket1", List1);
			modelAndView.addObject("bucket2", List2);
			return modelAndView;
		}
		
		throw new RuntimeException("로그인 정보가 일치하지 않습니다.");
	}

	@RequestMapping("/logout")
	public ModelAndView logoutUser(User user, HttpSession session) {

		session.invalidate();

		return new ModelAndView("/main/main");
	}

	@RequestMapping("/join")
	public ModelAndView joinUser(User user, HttpServletRequest req) {
		
		user.setUserId((String) req.getParameter("userId"));
		user.setEmail((String) req.getParameter("email"));
		user.setPassword((String) req.getParameter("password"));
		user.setUserName((String) req.getParameter("name"));
		user.setIsManager((String) req.getParameter("isManager"));

		 System.out.println(req.getParameter("userId"));
		 System.out.println(req.getParameter("email"));
		 System.out.println(req.getParameter("password"));
		 System.out.println(req.getParameter("name"));
		 System.out.println(req.getParameter("isManager"));

		userService.registUser(user);

//		return new ModelAndView("/user/login/showPage");
		return new ModelAndView("/user/login");
	}

	@RequestMapping("/drop")
	public ModelAndView removeUser(String userId, HttpSession session) {

		String managerId = (String) session.getAttribute("userId");
		User manager = userService.searchUser(managerId);
		if("Y".equals(manager.getIsManager())) {
			userService.removeUser(userId);
			return new ModelAndView("/user/managerPage");
		} else {
			userService.removeUser(userId);
			session.invalidate();
			return new ModelAndView("/main/main");
		}
	}

	@RequestMapping("/modify")
	public ModelAndView modifyUser(User user, HttpSession session, HttpServletRequest req) {

		user.setUserId(req.getParameter("userId"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setUserName(req.getParameter("name"));

//		System.out.println(req.getParameter("userId"));
//		System.out.println(req.getParameter("email"));
//		System.out.println(req.getParameter("password"));
//		System.out.println(req.getParameter("name"));
		
		userService.modifyUser(user);

		User loginedUser = userService.searchUser(user.getUserId());

		session.setAttribute("loginedUser", loginedUser);

		return new ModelAndView("/main/main").addObject("loginedUser", loginedUser);
	}

	@RequestMapping("showPageModify")
	public ModelAndView showModifyPage(
			HttpSession session/* , HttpServletRequest req */) {

		User user = userService.searchUser((String) session.getAttribute("userId"));

		// req.setAttribute("userId", user.getUserId());
		// req.setAttribute("password", user.getPassword());
		// req.setAttribute("name", user.getUserName());
		// req.setAttribute("email", user.getEmail());

		return new ModelAndView("/user/modifyUser").addObject("beforeUser", user);
	}

	@RequestMapping("showPageLogin")
	public ModelAndView showLoginPage() {

		return new ModelAndView("/user/login");
	}

	@RequestMapping("/showPageJoin")
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
