package com.customer.management.util;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
@Component
public class CMTUtil {

	
	public Map<String,String> getAllRoles()
	{
		Map<String,String> roles = new LinkedHashMap<String,String>();
		roles.put("1", "ADMIN");
		roles.put("2", "USER");
		roles.put("3", "CUSTOMER");
		return roles;
		
	}
}
