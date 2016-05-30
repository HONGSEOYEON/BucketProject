package com.kosta.bucket.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.bucket.entity.KeepBucket;
import com.kosta.bucket.service.KeepBucketService;

@Controller
@RequestMapping("/keepBucket")
public class KeepBucketController {

	@Autowired
	private KeepBucketService keepBucketService;
	
	@RequestMapping("/regist.do")
	public String regist(KeepBucket keepBucket, HttpSession session){
		keepBucketService.registKeepBucket(keepBucket);
		return "";
	}
}
