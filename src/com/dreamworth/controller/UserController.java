package com.dreamworth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dreamworth.entity.User;
import com.dreamworth.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}
	
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public String blog(){
		
		
		
		return "blog";
		
	}
	@RequestMapping(value= "/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("user") User user){
		String result=null;
		
		result=service.addUser(user);
		return result;
		
	}

}
