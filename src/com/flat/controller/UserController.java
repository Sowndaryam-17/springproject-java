package com.flat.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flat.entity.User;
import com.flat.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping (value="register.do",method=RequestMethod.GET)
	public String addUser(@ModelAttribute("user")User user,ModelMap model)
	{
		userService.add(user);
	/*	int userId = userService.retriveId(user);
		model.addAttribute("Status",userId );*/
		//model.addAttribute("status","Successfully Added...");
		return "index";

		
	}
	
	
	
	
	   @RequestMapping(value ="/login.do",method= RequestMethod.POST)
	   public String login(@ModelAttribute("user") User user ,ModelMap model,HttpServletRequest request){
		   
		   HttpSession session=request.getSession(true);
	 int isValidLogin=userService.userLogin(user);
	 if(isValidLogin==1)
	 {
	 	
	 	 int userId= userService.retriveUserId(user);
	 	System.out.println(userId);
	 	session.setAttribute("Status", userId);
	 
	 // int userId= userService.retriveUserId(user);
	  
	 return "flat";
	 }
	 else if(isValidLogin==2)
		{
		return "admin";
		}
	 else {
	 	
	 	return "index";
	 }
	 	
	 }
	   

	   @RequestMapping(value = "viewSeller.do", method = RequestMethod.GET)
		public ModelAndView viewSellers(
				@ModelAttribute("user") User user,ModelMap model) {
			
			List<User> list = userService.viewSellers(user);
			
			model.addAttribute("list", list);
			
			return new ModelAndView("viewsellers", model);

		}           
	   
	   
	
	   
	   
	   
	  
}
