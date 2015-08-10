package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.User;

@Controller
@RequestMapping("/test2")
public class SecondController {

	
	@RequestMapping("/s2") 
	public String showListString(@RequestBody List<User> userList) throws ClassNotFoundException {
		System.out.println("aaaaaaaaaaaaaa");
		return null;
	}
	@RequestMapping(value = "/ceshi", method = {RequestMethod.POST }) 
	@ResponseBody
	public String set(@RequestBody() List userList,HttpServletRequest request){
		System.out.println(userList.get(0).getClass().getName());
		
		return "";
    }
	
	
	public static void main(String[] args) throws JsonParseException, JsonMappingException, IOException {
		String json = " [{id:1,name:\"zhangsan\"},{id:2,name:\"lisi\"}]";
		ObjectMapper o = new ObjectMapper();
		o.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true); 
		 User[] user = o.readValue(json, User[].class); 
		 for (int i = 0; i < user.length; i++) {
			System.out.println(user[i].getName());
		}
		 
	}
	
	
	@RequestMapping("array")
	public String array(@RequestBody String[] s){
		for (int i = 0; i < s.length; i++) {
			System.out.println(s[i]);
		}
		return "";
	}
	
	
	
}
