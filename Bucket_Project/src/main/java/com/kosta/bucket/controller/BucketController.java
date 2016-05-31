package com.kosta.bucket.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.bucket.entity.Bucket;
import com.kosta.bucket.entity.Comment;
import com.kosta.bucket.entity.User;
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
	@RequestMapping("/recommand")
	public String registRecommand(String bucketId, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(session == null || session.getAttribute("loginedUser") == null) {
			return "redirect:login";
		}
		User user = (User)session.getAttribute("loginedUser");
		bucketService.registRecommand(bucketId);
		return "redirect:detailBucket";
	}
	@RequestMapping("/accuse")
	public String registAccuse(String bucketId, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(session == null || session.getAttribute("loginedUser") == null) {
			return "redirect:login";
		}
		User user = (User)session.getAttribute("loginedUser");
		bucketService.registAccuse(bucketId);
		return "redirect:detailBucket";
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
	
	
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody String uploadFileHandler(@RequestParam("name")String name, @RequestParam("file")MultipartFile file) {
		
		if (!file.isEmpty()){
			try {
				byte[] bytes=file.getBytes();
				
				String rootPath = System.getProperty("catalina:home");
				File dir = new File("c:\\" +File.separator+"tmpFiles");
				if(!dir.exists()){
					dir.mkdirs();
				}
				File saveFile = new File(dir.getAbsolutePath() + File.separator + name + ".jpg");
				BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(saveFile));
				
				out.write(bytes);
				out.flush();
				out.close();
				return "Success save File";
			} catch (IOException e) {
				return "Fail : " + e.getMessage();
			}
			
		}
		
		return "Fail : Empty File!!";
	}
	
	@RequestMapping("/filedown")//URL호출
	public void getFile(@RequestParam Map<String,Object> map, HttpServletResponse response) throws Exception {
	     
	    String filePath = (String) map.get("filePath"); //파일 전체경로(파일명도 포함)
	    String oriFileName = (String) map.get("oriFileName"); //파일 원본 경로
	     
	    String docName = URLEncoder.encode(oriFileName,"UTF-8").replaceAll("\\+", "%20"); //한글파일명 깨지지 않도록
	    response.setHeader("Content-Disposition", "attachment;filename=" + docName + ";");
	    response.setContentType("text/plain");
	 
	    File down_file = new File(filePath); //파일 생성
	    FileInputStream fileIn = new FileInputStream(down_file); //파일 읽어오기
	    response.flushBuffer();
	 
	}
}
