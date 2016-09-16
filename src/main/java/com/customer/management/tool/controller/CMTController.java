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
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(@ModelAttribute("command") CMTLogin cmtLogin ,Model model)
	{
	  Map<String,String> roles = cmtUtil.getAllRoles();		
		model.addAttribute("roleList", roles);
		
		return "login";
	}
	
	@RequestMapping(value="/menu",method = RequestMethod.POST)
	public String menu(@ModelAttribute("command") CMTLogin cmtLogin ,Model model){
		boolean isAuthenicate = true ;
		String responsePage = null ;
		/* Need to get Usename , password and role Here from login.jsp
		Using  Username , password and role just call CMT Rest call for login 
		if login is ok from CMT Rest Call then open menu.jsp otherwise call login.jsp
		 with message
		*/
		//isAuthenicate = CMTRestCall.login(username,password, role);
		if(isAuthenicate) {
		responsePage = "menu" ;
		}else {
			  Map<String,String> roles = cmtUtil.getAllRoles();
			model.addAttribute("roleList", roles);
			responsePage = "login" ;
		}
		
		return responsePage ;
	}

	@RequestMapping("/")
	public ModelAndView  show()
	{
		 return new ModelAndView("redirect:login");
		
	}
	
	
	  @RequestMapping(value = "/adduser", method=RequestMethod.POST)
      public String home() {
          return "adduser";
      }
	  
	  
	/*  @RequestMapping(value="/",method=RequestMethod.GET)
		public String welcome(Map<String, Object> model) {
			model.put("message", "Hello Spring Boot with Tiles");
			return "welcome";
		}
*/
}
