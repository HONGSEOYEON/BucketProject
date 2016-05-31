package com.kosta.bucket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.service.KeepBucketService;

@Controller
@RequestMapping("/keepBucket")
public class KeepBucketController {

	@Autowired
	private KeepBucketService keepBucketService;

	public ModelAndView registerKeepBucket (String bucketId) {
		return null;
	}

	public ModelAndView showKeepBucketList (String userId) {
		return null;
		
	}

	public ModelAndView removeKeepBucket (String bucketId) {
		return null;
		
	}
}
