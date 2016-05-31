package com.kosta.bucket.controller;

import java.util.List;

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
	 
	// 댓글 등록
	@RequestMapping("/commentRegist")
	public String registComment (Comment comment) {
		 int registered = bucketService.registComment(comment);
		 if(registered!=0) {
			 return "redirect:detailBuket";
		 }
		 return "/WEB-INF/views/bucket/detailBucket.jsp";
	}
	
	// 댓글 삭제
	@RequestMapping("/commentRemove")
	public String removeComment (String commentId) {
		int removed = bucketService.removeComment(commentId);
		if(removed!=0) {
			return "redirect:detailBuket";
		}
		return "/WEB-INF/views/bucket/detailBucket.jsp";
	}
	 
	public ModelAndView removeAccusedBucket (String bucketId){
		return null;
	}
	 
	public ModelAndView showModifyBucket(String bucketId){
		return null;
	}
	
	@RequestMapping("/detailBuket")
	public ModelAndView showDetailBucket(String bucketId) {
		
		// 댓글 조회
		List<Comment> comments= bucketService.searchBucketComment(bucketId);
		ModelAndView modelAndView = new ModelAndView("detailBucket");
		modelAndView.addObject("comments", comments);
		return modelAndView;
	}
	public ModelAndView showMyBucketList(String userId){
		return null;
	}
	
	
}
