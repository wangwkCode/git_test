package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.User;



@Controller
@RequestMapping("/test1")
public class FirstController {

	@RequestMapping("/s") 
	public String showUser() throws ClassNotFoundException {
		return "ok";
	}
	
	
}
