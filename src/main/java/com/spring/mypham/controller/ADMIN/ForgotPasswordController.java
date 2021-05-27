package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "ForgotPasswordControllerAdmin")
@RequestMapping("/admin")
public class ForgotPasswordController {	
	@GetMapping("/password_resets/new")
	public String showMyFormForgetPassword() {
		return "admin/forgotpassword";
		
	}
	
}
