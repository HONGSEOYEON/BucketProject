package com.kosta.bucket.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

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
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat registDate = new SimpleDateFormat("yyyy:MM:dd-hh:mm:ss");
		
		bucket.setRegistDate(registDate);
		bucket.setWriterId(writerId);
		keepBucketService.registKeepBucket(bucket);
	}

	@RequestMapping("/showKeepBucket")
	public ModelAndView showKeepBucketList (String userId) {
		return null;
		
	}

	public ModelAndView removeKeepBucket (String bucketId) {
		return null;
		
	}
}
