package com.qsingwu.paper.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {

	/**
	 * @return
	 */
	@RequestMapping("/login")
    public String index() {
        return "login";
    }
	
	/**
	 * @return
	 */
	@RequestMapping("/loginProcess")
    public String loginProcess(@RequestParam(value="userName") String username,
            @RequestParam(value="password") String password,ModelMap map,HttpSession session) {
	    
			if("mdcservice".equals(username) && "123456".equals(password)){
    	        session.setAttribute("username", username);
    	        return "redirect:vm";
    	    }
    	    else{
    	        map.addAttribute("errormsg", "name or pwd wrong!");
    	        return "login";
    	    }
    }
	
	/**
	 * @return
	 */
	@RequestMapping("/logout")
    public String logout(HttpSession session) {
	    session.removeAttribute("username");
        return "login";
    }
}
