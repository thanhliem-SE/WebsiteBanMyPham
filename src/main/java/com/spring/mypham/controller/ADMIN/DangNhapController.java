package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller(value = "DangNhapController")
public class DangNhapController {

	
	@GetMapping("/showFormLogin")
	public String showMyLoginPage() {
		return "admin/login-form";
		
	}
	
}
