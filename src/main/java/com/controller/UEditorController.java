package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ue")
public class UEditorController {

	@RequestMapping("show")
	public String showContent(String editor,HttpServletRequest request){
		System.out.println(editor);
		return null;
	}
	@RequestMapping("ss")
	public void ss(){
		System.out.println("ssss");
	}
	
}
