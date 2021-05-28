package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "SignUpControllerAdmin")
@RequestMapping("/admin")
public class SignUpController {	
	@GetMapping("/signup/new")
	public String showMyLoginPage() {
		return "admin/signup-form";
		
	}
	
}
