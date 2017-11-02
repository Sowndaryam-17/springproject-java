package com.flat.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.flat.entity.Flat;
import com.flat.entity.Info;
import com.flat.entity.User;
import com.flat.service.FlatService;
import com.flat.service.InfoService;



@Controller
public class FlatController {
	@Autowired
	FlatService flatService;
	
	@Autowired
	InfoService infoService;
	
	
	
	
	@RequestMapping (value="addflat.do",method=RequestMethod.GET)
	public String addFlat(@ModelAttribute("flat")Flat flat,ModelMap model)
	{
		flatService.addFlat(flat);
		
		//model.addAttribute("status","Successfully Added...");
		model.addAttribute("flat",flat);
		return "flat";

		
	}
	
	
	

	@RequestMapping (value="view.do",method=RequestMethod.GET)
	public ModelAndView viewFlat(@ModelAttribute("flat")Flat flat,ModelMap model)
	{
		System.out.println(flat.getSellerId());
		 List<Flat> flt=flatService.viewFlat(flat);
		 System.out.println(flt.size());
		 for(int i=0; i<flt.size();i++){
			 System.out.println(flt.get(i).getCity());
			 
		 }
		
		model.addAttribute("flt",flt);
		model.addAttribute("showGrid", "Y");
		return new ModelAndView("flat", model);
		

		
	}
	
	
	@RequestMapping(value = "/viewflat.do", method = RequestMethod.GET)
	public ModelAndView viewflat(@ModelAttribute("flat")Flat flat,ModelMap model) {
		Flat list1 = flatService.viewFlatDetails(flat);
		model.addAttribute("list1", list1);
		model.addAttribute("showGrid", "Z");
		return new ModelAndView("flat", model);

	}
	
	 @RequestMapping(value = "/updateflat.do", method = RequestMethod.GET)
		public String updateFlatDetails(
				@ModelAttribute("Flatflat") Flat flat,ModelMap model) {
		 
		 flatService.updateFlatDetails(flat);
		System.out.println(flat.getSellerId());
		 model.addAttribute("list1", flat);	
		 
		 model.addAttribute("show", "S");
			return "flat";

		}
	 
	 @RequestMapping(value = "/viewflatdetails.do", method = RequestMethod.GET)
		public ModelAndView viewflatdetails(@ModelAttribute("flat")Flat flat,ModelMap model) {
		 System.out.println("aaaaaa");
			List< Flat> viewflatdetails = flatService.viewFlatCity(flat);
			model.addAttribute("viewflatdetails", viewflatdetails);
			//model.addAttribute("showGrid", "Z");
			return new ModelAndView("login", "command", new Flat());

		}

		/* @RequestMapping(value = "/retriveflat.do", method = RequestMethod.GET)
		public ModelAndView retriveFlatInfo(@ModelAttribute("flat")Flat flat,ModelMap model) {
			 System.out.println("inside contr  "+flat.getFlatNumber());
			 //System.out.println("aaa");
			 ArrayList<Flat>  view = flatService.retriveFlatInfo(flat);
			// System.out.println(view.getApartmentName());
			 
			 
			 System.out.println("apart"+view.get(0).getApartmentName());
			 System.out.println("num"+view.get(0).getFlatNumber());
			model.addAttribute("view123", view);
			//model.addAttribute("showGrid", "Z");
			return new ModelAndView("login2", model);

		}*/
	 
	/* @RequestMapping(value="/retriveflat.do",method=RequestMethod.GET)
	 public String retriveFlatInfo(@ModelAttribute Flat flat,ModelMap model){
		 
		 Flat flatIn=flatService.retriveInfo(flat);
		 model.addAttribute("flatIn",flatIn);
		return "login";
	 }
	 */
	/* 	 
	@RequestMapping(value="retriveflat.do",method = RequestMethod.GET)
	public ModelAndView  retriveFlatDetails(@ModelAttribute("flat")Flat flat,ModelMap model){
		Flat list = flatService.retriveFlatDetails(flat);
		model.addAttribute("list",list);
		return new ModelAndView("login","command",new Flat());
		
	}
		
	
	*/
	 
	 @RequestMapping(value="retriveflat.do",method = RequestMethod.GET)
		public ModelAndView  retriveFlatDetails(@ModelAttribute("flat")Flat flat,ModelMap model){
		 
		 //System.out.println("fgdfgdfggdfgdfgdggdfggbla bla"+flat.getFlatNumber());
		 
		 
		 List<Flat> list = flatService.retriveFlatDetails(flat);
		//	System.out.println("flat " +flat.getFlatNumber());
		 System.out.println(list.size());
		 for(int i=0;i<list.size();i++){
		 
			System.out.println("list " +list.get(i).getFlatNumber());
			System.out.println("list " +list.get(i).getApartmentName());
			
		 }
			model.addAttribute("list",list);
			return new ModelAndView("login2","command",new Flat());
			
		}
	
	 
	 
	 @RequestMapping(value = "/viewCustomer.do", method = RequestMethod.GET)
		public ModelAndView viewCustomer(@ModelAttribute("flat")Flat flat,ModelMap model) {
		 
		 List<Info> sellerdetails = infoService.ViewcustomerDetails(flat.getSellerId());
		/*	Flat list1 = infoService.ViewcustomerDetails(int sellerId);*/
		 
		 System.out.println(sellerdetails.get(0).getApartmentName());
			model.addAttribute("sellerdetails",  sellerdetails);
			model.addAttribute("show3", "M");
			return new ModelAndView("flat", model);

		}
		
	 
	 
	 
	
}
