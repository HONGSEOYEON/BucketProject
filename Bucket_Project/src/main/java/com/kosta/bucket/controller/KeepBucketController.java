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
import com.kosta.bucket.service.BucketService;
import com.kosta.bucket.service.KeepBucketService;

@Controller
public class KeepBucketController {

	@Autowired
	private KeepBucketService keepBucketService;

	@Autowired
	private BucketService bucketService;

	@RequestMapping("/registerKeepBucket")
	public String registerKeepBucket(HttpSession session, @RequestParam("bucketId") String bucketId) {
		String userId = (String) session.getAttribute("userId");
		KeepBucket keepBucket = new KeepBucket(bucketId, userId);
		keepBucketService.registKeepBucket(keepBucket);
		return "redirect:showKeepBucket";
	}

	@RequestMapping("/showKeepBucket")
	public ModelAndView showKeepBucketList(/* * String userId , HttpServletRequest* req*/ ) {
		/*
		 * HttpSession session = req.getSession(); User user = (User)
		 * session.getAttribute("loginedUser");
		 */
		List<Bucket> keepBuckets = keepBucketService.searchKeepBucketList("jeong");
		ModelAndView modelAndView = new ModelAndView("/main/bookmarkBucket");
		// modelAndView.addObject("loginedUser", user.getUserId());
		modelAndView.addObject("keepbuckets", keepBuckets);
		return modelAndView;
	}

	@RequestMapping("/deleteKeepBucket")
	public String removeKeepBucket(String bucketId, HttpSession session) {
		String userId = (String) session.getAttribute("hong");
		KeepBucket keepBucket = new KeepBucket("1", userId);
		keepBucketService.removeKeepBucket(keepBucket);
		return "redirect:showKeepBucket";
	}

}
