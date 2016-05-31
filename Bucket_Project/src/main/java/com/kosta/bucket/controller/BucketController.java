package com.kosta.bucket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;
import com.kosta.bucket.service.BucketService;

@Controller
@RequestMapping("/bucket")
public class BucketController {

	@Autowired
	private BucketService bucketService;
	
	public ModelAndView modifyBucket (Bucket bucket){
		return null;
	}
	public ModelAndView removeBucket(String bucketId) {
		return null;
	}
	public ModelAndView registBucket(Bucket bucket) {
		return null;
	}
	public ModelAndView searchBucket(String bucketId) {
		return null;
	}
	public ModelAndView searchAccusedAllBucket(){
		return null;
	}

	public ModelAndView registRecommand(String bucketId) {
		return null;
	}
	public ModelAndView registAccuse(String bucketId) {
		return null;
	}
	 
	@RequestMapping("/comment")
	public String registComment (Comment comment) {
		 int registered = bucketService.registComment(comment);
		 if(registered!=0) {
			 return "";
		 }
		 return "";
	}
	public ModelAndView removeComment (String commentId) {
		return null;
	}
	 
	public ModelAndView removeAccusedBucket (String bucketId){
		return null;
	}
	 
	public ModelAndView showModifyBucket(String bucketId){
		return null;
	}
	public ModelAndView showDetailBucket(String bucketId) {
		return null;
	}
	public ModelAndView showMyBucketList(String userId){
		return null;
	}
	
	
}
