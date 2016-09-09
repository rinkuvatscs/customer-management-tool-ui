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
import com.customer.management.util.CMTUtil;

@Controller
public class CMTController {

	@Autowired
	CMTUtil cmtUtil;
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String login(ModelMap model)
	{
	
		model.addAttribute("command", new CMTLogin("", "", "ADMIN"));
		Map<String,String> roles = cmtUtil.getAllRoles();
		
		
		model.addAttribute("roleList", roles);
		return "login";
	}
	
	/*@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(@ModelAttribute("command") CMTLogin cmtLogin ,Model model)
	{
	  Map<String,String> roles = cmtUtil.getAllRoles();		
		model.addAttribute("roleList", roles);
		return "login";
	}
	
	

	@RequestMapping("/")
	public ModelAndView  show()
	{
		 return new ModelAndView("redirect:login");
		
	}*/
	
	
	  @RequestMapping(value = "/home", method=RequestMethod.GET)
      public String home() {
          return "home";
      }
	  
	  
	  @RequestMapping(value="/",method=RequestMethod.GET)
		public String welcome(Map<String, Object> model) {
			model.put("message", "Hello Spring Boot with Tiles");
			return "welcome";
		}

}
