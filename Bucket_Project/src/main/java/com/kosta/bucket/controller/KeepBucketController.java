package com.kosta.bucket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.KeepBucket;
import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.KeepBucketService;

@Controller
public class KeepBucketController {

	@Autowired
	private KeepBucketService keepBucketService;

	@RequestMapping("/registerKeepBucket")
	public String registerKeepBucket(HttpSession session, @RequestParam("bucketId") String bucketId) {
		User user = (User)session.getAttribute("loginedUser");
		KeepBucket keepBucket = new KeepBucket(bucketId, user.getUserId());
		keepBucketService.registKeepBucket(keepBucket);
		return "redirect:detailBucket?bucketId=" + bucketId;
	}

	@RequestMapping("/showKeepBucket")
	public ModelAndView showKeepBucketList(String userId , HttpServletRequest req) {
		
		 HttpSession session = req.getSession(); 
		 User user = (User)session.getAttribute("loginedUser");
		
		List<Bucket> keepBuckets = keepBucketService.searchKeepBucketList(user.getUserId());
		
		for(Bucket keepBucket : keepBuckets) {
			System.out.println(keepBucket.getTitle());
		}
		
		ModelAndView modelAndView = new ModelAndView("main/bookmarkBucket");
		modelAndView.addObject("user", user);
		modelAndView.addObject("keepbuckets", keepBuckets);
		return modelAndView;
	}

	@RequestMapping("/deleteKeepBucket")
	public String removeKeepBucket(String bucketId, HttpSession session) {
		User user = (User)session.getAttribute("loginedUser");
		KeepBucket keepBucket = new KeepBucket(bucketId, user.getUserId());
		keepBucketService.removeKeepBucket(keepBucket);
		return "redirect:showKeepBucket";
	}

}
