package com.kosta.bucket.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FileController {
	
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
