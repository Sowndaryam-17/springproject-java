package com.flat.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;








import org.springframework.web.servlet.ModelAndView;

import com.flat.entity.Info;
import com.flat.entity.User;
import com.flat.service.InfoService;
import com.flat.service.UserService;

@Controller
public class InfoController {
	@Autowired
	InfoService infoService;
	
	@Autowired
	UserService userService;
		
	
	@RequestMapping (value="addViewDetails.do",method=RequestMethod.GET)
	public ModelAndView addViewDetails(@ModelAttribute("info")Info info,ModelMap model)
	{
	/*int store=*/	infoService.add(info);
	/*if(store==1){
		List<User> sellerdetails = userService.getSellerDetails(info.getSellerId());
		//int sellerid = info.getSellerId();
	
		model.addAttribute("sellerdetails", sellerdetails);
		return new ModelAndView("login2", model);
		
	}*/
	List<User> sellerdetails = userService.getSellerDetails(info.getSellerId());
		//int sellerid = info.getSellerId();
	
		model.addAttribute("sellerdetails", sellerdetails);
		
		return new ModelAndView("login2", model);
		
	}
	
	
	

}
	