package com.kosta.bucket.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.service.BucketService;

@Controller
@RequestMapping("/bucket")
public class BucketController {

	@Autowired
	private BucketService bucketService;
	
	@RequestMapping("/create.do")
	public String create(Bucket bucket, HttpSession session){
		bucketService.registBucket(bucket);
		return "";
	}
}
