package com.kosta.bucket.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

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
public class FileUploadController {
	
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
				File saveFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(saveFile));
				
				out.write(bytes);
				out.flush();
				
				return "Success save File";
			} catch (IOException e) {
				return "Fail : " + e.getMessage();
			}
			
		}
		
		return "Fail : Empty File!!";
	}
	
}
