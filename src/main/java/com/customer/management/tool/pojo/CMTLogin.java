/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.customer.management.tool.pojo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 *
 * @author amittal
 */
@Component
public class CMTLogin {

    private String username;
    private String password;
    private String role;

    /*@Autowired   
    public CMTLogin(@Value("preeti") String username, @Value("preeti") String password, @Value("ADMIN") String role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }*/

     
    public CMTLogin( String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }
  
   
    public CMTLogin() {
		super();
	}




	/**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

}
