package com.kosta.bucket.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.service.BucketService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private BucketService bucketService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView("/main/main");
		List<Bucket> List1 = bucketService.searchBucketBestRecom();
		List<Bucket> List2 = bucketService.searchAllBucket();
		modelAndView.addObject("bucket1", List1);
		modelAndView.addObject("bucket2", List2);
		return modelAndView;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home2() {
		ModelAndView modelAndView = new ModelAndView("/main/main");
		List<Bucket> List1 = bucketService.searchBucketBestRecom();
		List<Bucket> List2 = bucketService.searchAllBucket();
		modelAndView.addObject("bucket1", List1);
		modelAndView.addObject("bucket2", List2);
		return modelAndView;
	}
}
