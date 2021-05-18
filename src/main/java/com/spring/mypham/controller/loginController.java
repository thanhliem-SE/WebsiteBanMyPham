package com.spring.mypham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mypham.models.User;

@Controller
public class loginController {
//	@RequestMapping("/login")
//	public String trangChu(Model model) {
//		return "user/login";
//	}
//	@GetMapping("/showMyLoginPage")
//	public String showMyLoginPage() {
//		return "user/login";
//	}
//	
	@RequestMapping("/login")
	public ModelAndView getLoginPage() {
		return new ModelAndView("user/login", "command", new User());
	}
// 
	@RequestMapping(value = "/authenticateTheUser", method = RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute("user") User user) {
 
		String userName = user.getUsername();
		
		String password = user.getPassword();
		System.out.println(userName);
		System.out.println(password);
		if ("admin".equalsIgnoreCase(userName)
				&& "admin123".equalsIgnoreCase(password)) {
			return new ModelAndView("user/index");
		} else {
			
			return new ModelAndView("user/product");
		}
 
	}
}
