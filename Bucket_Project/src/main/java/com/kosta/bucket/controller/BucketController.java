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
	
	public ModelAndView modifyBucket(Bucket)
	public ModelAndView removeBucket(bucketId) 
	public ModelAndView registBucket(Bucket) 
	public ModelAndView searchBucket(bucketId) 
	public ModelAndView searchAccusedAllBucket()

	public ModelAndView registRecommand(bucketId) 
	public ModelAndView registAccuse(bucketId) 
	 
	public ModelAndView registComment (Comment) 
	public ModelAndView removeComment (commentId) 
	 
	public ModelAndView removeAccusedBucket (bucketId)
	 
	public ModelAndView showModifyBucket(bucketId)
	public ModelAndView showDetailBucket(bucketId) 
	public ModelAndView showMyBucketList(userId)
	
	
}
