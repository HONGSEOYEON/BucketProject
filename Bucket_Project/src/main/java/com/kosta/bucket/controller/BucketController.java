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

	public ModelAndView modifyBucket(Bucket bucket) {

	}

	public ModelAndView removeBucket(String bucketId) {

	}

	public ModelAndView registBucket(Bucket bucket) {

	}

	public ModelAndView searchBucket(String bucketId) {

	}

	public ModelAndView searchAccusedAllBucket() {

	}

	public ModelAndView registRecommand(String bucketId) {

	}

	public ModelAndView registAccuse(String bucketId) {

	}

	public ModelAndView registComment(Comment comment) {

	}

	public ModelAndView removeComment(String commentId) {

	}

	public ModelAndView removeAccusedBucket(String bucketId) {

	}

	public ModelAndView showModifyBucket(String bucketId) {

	}

	public ModelAndView showDetailBucket(String bucketId) {

	}

	public ModelAndView showMyBucketList(String userId) {

	}

}
