package com.kosta.bucket.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.service.KeepBucketService;

@Controller
@RequestMapping("/keepBucket")
public class KeepBucketController {

	@Autowired
	private KeepBucketService keepBucketService;

	@RequestMapping("/registerKeepBucket")
	public String registerKeepBucket (HttpSession session, @Param("Bucket") Bucket bucket) {
		String writerId = (String) session.getAttribute("userId");
		Date registDate = new Date(Calendar.getInstance().getTimeInMillis());		
		bucket.setRegistDate(registDate);
		bucket.setWriterId(writerId);
		keepBucketService.registKeepBucket(bucket);
		return "redirect:/keepBucket/showKeepBucket";
	}

	@RequestMapping("/showKeepBucket")
	public ModelAndView showKeepBucketList (String userId) {
		List<Bucket> buckets = keepBucketService.searchKeepBucketList(userId);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("bucketList", buckets);
		return modelAndView;
	}

	public ModelAndView removeKeepBucket (String bucketId) {
		return null;
		
	}
}
