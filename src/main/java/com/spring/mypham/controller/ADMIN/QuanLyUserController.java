package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "QLUserControllerAdmin")
@RequestMapping("/admin")
public class QuanLyUserController {
	@GetMapping("/quanlyuser")
	public String managerUser(Model model) {
		return "admin/quanlyuser";
	}
}
