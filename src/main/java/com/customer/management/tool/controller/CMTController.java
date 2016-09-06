package com.customer.management.tool.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.customer.management.tool.pojo.CMTLogin;

@Controller
public class CMTController {

	
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String login(ModelMap model)
	{
	
		model.addAttribute("command", new CMTLogin("", "", "ADMIN"));
		Map<String,String> country = new LinkedHashMap<String,String>();
		country.put("1", "ADMIN");
		country.put("2", "USER");
		country.put("3", "CUSTOMER");
		
		model.addAttribute("roleList", country);
		return "login";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(@ModelAttribute("command") CMTLogin cmtLogin ,Model model)
	{
	
		System.out.println("user is:"+cmtLogin.getUsername());
		System.out.println("role is:"+cmtLogin.getRole());
		Map<String,String> country = new LinkedHashMap<String,String>();
		country.put("1", "ADMIN");
		country.put("2", "USER");
		country.put("3", "CUSTOMER");	
	
		
		model.addAttribute("roleList", country);
		return "login";
	}
	
	

	@RequestMapping("/")
	public ModelAndView  show()
	{
		 return new ModelAndView("redirect:login");
		
	}
}
