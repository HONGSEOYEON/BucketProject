package com.kosta.bucket.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;
import com.kosta.bucket.entity.KeepBucket;
import com.kosta.bucket.entity.User;
import com.kosta.bucket.service.BucketService;
import com.kosta.bucket.service.KeepBucketService;

@Controller
public class BucketController {

	@Autowired
	private BucketService bucketService;
	
	@Autowired
	private KeepBucketService keepbucketService;
	
	
	// 이미지 후기 등록페이지 출력
	@RequestMapping(value = "/registBucket", method = RequestMethod.GET)
	public ModelAndView showRegistBucket(){
		
		ModelAndView mv = new ModelAndView("bucket/registBucket");
		return mv;
	}
	
	//이미지 후기 등록
	@RequestMapping(value = "/registBucket", method = RequestMethod.POST)
	public String registBucket(Bucket bucket, HttpServletRequest req, @RequestParam("file")MultipartFile file) {
		
		if (!file.isEmpty()){
			try {
				byte[] bytes=file.getBytes();
				// rootPath는 /Bucket_Project/src/main/webapp/WEB-INF/resources를 의미
				String rootPath = req.getSession().getServletContext().getRealPath("/");  
			    String attachPath = "resources/img/";
				// 파일 이름을 받아온다.
				String fileName = file.getOriginalFilename();
				// 회원들의 중복이름의 파일 업로드 문제를 방지하기 위해 파일 이름 변환
                String originalFileExtension = fileName.substring(fileName.lastIndexOf("."));
                String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
				
				// 변환한 파일 이름을 버킷 객체에 저장
				bucket.setImage(storedFileName);
				
				//저장하고자 하는 경로 지정
				File dir = new File(rootPath+attachPath);
				if(!dir.exists()){
					//없으면 만든다.
					dir.mkdirs();
				}
				
				//파일의 절대경로 지정
				File saveFile = new File(rootPath+attachPath+storedFileName);
				
				BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(saveFile));
				//파일을 해당경로로 저장시작
				out.write(bytes);
				out.flush();
				out.close();

			} catch (IOException e) {
				throw new RuntimeException();
			}
		}
		
		//작성일시 가져오기
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		bucket.setRegistDate(today);
		System.out.println(bucket.getAddress());
		//이미지 후기 등록
		bucketService.registBucket(bucket);
		
		//등록이 끝난 후 메인 페이지로 이동
		return "redirect:/";
	}
	
	// 이미지 후기 수정페이지 출력
	@RequestMapping(value = "/modifyBucket", method = RequestMethod.GET)
	public ModelAndView showModifyBucket(String bucketId){
		//받아온 버킷아이디로 해당 후기를 가져와 모델&뷰에 저장
		ModelAndView mv = new ModelAndView("bucket/modifyBucket");
		Bucket bucket = bucketService.searchBucket(bucketId);
		mv.addObject("bucket", bucket);
		return mv;
	}
	
	// 이미지 후기 수정
	@RequestMapping(value = "/modifyBucket" , method = RequestMethod.POST)
	public String modifyBucket (Bucket bucket, HttpServletRequest req, @RequestParam("file")MultipartFile file){

		if (!file.isEmpty()){
			try {
				byte[] bytes=file.getBytes();
				// rootPath는 /Bucket_Project/src/main/webapp/WEB-INF/resources를 의미
				String rootPath = req.getSession().getServletContext().getRealPath("/");  
			    String attachPath = "resources/img/";
				// 파일 이름을 받아온다.
				String fileName = file.getOriginalFilename();
				// 회원들의 중복이름의 파일 업로드 문제를 방지하기 위해 파일 이름 변환
                String originalFileExtension = fileName.substring(fileName.lastIndexOf("."));
                String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
                
                // 변환한 파일 이름을 버킷 객체에 저장
				bucket.setImage(storedFileName);
				
				//저장하고자 하는 경로 지정
				File dir = new File(rootPath+attachPath);
				if(!dir.exists()){
					//없으면 만든다.
					dir.mkdirs();
				}
				
				//파일의 절대경로 지정
				File saveFile = new File(rootPath+attachPath+storedFileName);
				
				BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(saveFile));
				//파일을 해당경로로 저장시작
				out.write(bytes);
				out.flush();
				out.close();

			} catch (IOException e) {
				throw new RuntimeException();
			}
		}
		//수정 시각은 저장하지 않는다.
		//이미지 후기 수정
		bucketService.modifyBucket(bucket);
		return "redirect:detailBucket?bucketId=" + bucket.getBucketId();
	}
	
	// 이미지 후기 삭제
	@RequestMapping("/removeBucket")
	public String removeBucket(String bucketId) {
		//버킷 아이디를 받아와 삭제 작업 실행
		bucketService.removeBucket(bucketId);
		//수행 후 메인 페이지로 이동
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/searchBucket", method = RequestMethod.POST)
	public ModelAndView searchBucket(@Param("word") String word) {
		ModelAndView modelAndView = new ModelAndView("/main/main");
		List<Bucket> List1 = bucketService.searchBucketByContents(word);
		modelAndView.addObject("bucket2", List1);
		return modelAndView;
	}
	
	@RequestMapping("/accusedAllBucket")
	public ModelAndView searchAccusedAllBucket(){
		List<Bucket> accusedBucketList = bucketService.searchAccusedAllBucket();
		ModelAndView mav = new ModelAndView("user/managerPage");
		mav.addObject("accusedBucketList", accusedBucketList);
		return mav;
	}
	
	@RequestMapping("/recommand")
	public String registRecommand(String bucketId, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(session == null || session.getAttribute("loginedUser") == null) {
			return "redirect:login";
		}
		User user = (User)session.getAttribute("loginedUser");
		bucketService.registRecommand(bucketId);
		return "redirect:detailBucket?bucketId=" +bucketId ;
	}
	@RequestMapping("/accuse")
	public String registAccuse(String bucketId, HttpServletRequest req) {
	HttpSession session = req.getSession();
		if(session == null || session.getAttribute("loginedUser") == null) {
			return "redirect:login";
		}
		User user = (User)session.getAttribute("loginedUser");
		bucketService.registAccuse(bucketId);
		return "redirect:detailBucket?bucketId=" + bucketId;
	}
	 
	// 댓글 등록
	@RequestMapping("/commentRegist")
	public String registComment (Comment comment) {
		Date today = new Date(Calendar.getInstance().getTimeInMillis());
		comment.setRegistDate(today);
		 int registered = bucketService.registComment(comment);
		 if(registered!=0) {
			 return "redirect:detailBucket?bucketId=" + comment.getBucketId();
		 }
		 return "/WEB-INF/views/bucket/detailBucket.jsp";
	}
	
	// 댓글 삭제
	@RequestMapping("/commentRemove")
	public String removeComment (@RequestParam("commentId") String commentId, @RequestParam("bucketId") String bucketId, HttpServletRequest req) {
		int removed = bucketService.removeComment(commentId);
		if(removed!=0) {
			return "redirect:detailBucket?bucketId=" + bucketId;
		}
		return "/WEB-INF/views/bucket/detailBucket.jsp";
	}
	 
	public ModelAndView removeAccusedBucket (String bucketId){
		return null;
	}
	
	// 상세 페이지 
	@RequestMapping(value="/detailBucket")
	public ModelAndView showDetailBucket(String bucketId, HttpServletRequest req) {
		// 세션 아이디 가져오기
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("loginedUser");
		
		if(session.getAttribute("loginedUser") == null) {
			return new ModelAndView("redirect:showPageLogin");
	}
		
		
		//담은 것인지 확인
		KeepBucket keepbucket = new KeepBucket(bucketId, user.getUserId());
		 Bucket keep = keepbucketService.searchKeepBucket(keepbucket);
		
		// 댓글 조회
		List<Comment> comments= bucketService.searchBucketComment(bucketId);
		ModelAndView modelAndView = new ModelAndView("bucket/detailBucket");
		modelAndView.addObject("user", user);
		
		Bucket bucket = bucketService.searchBucket(bucketId);
		modelAndView.addObject("comments", comments);
		modelAndView.addObject("bucket", bucket);
		modelAndView.addObject("keep", keep);
		
		//추천수
		modelAndView.addObject("recomNum", bucket.getRecomNum());
		return modelAndView;
	}
	
	
	@RequestMapping("/myBucket")
	public ModelAndView showMyBucketList(HttpSession session){
		User loginedUser = (User) session.getAttribute("loginedUser");
		List<Bucket> myBuckets = bucketService.searchMyBucket(loginedUser.getUserId());
		ModelAndView mav = new ModelAndView("main/myBucket");
		mav.addObject("myBuckets", myBuckets);
		return mav;
	}
	
	
}

		
		
		
		
		
		
		
