package com.spring.mypham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {
	@RequestMapping("/login")
	public String trangChu(Model model) {
		return "user/login";
	}
}
