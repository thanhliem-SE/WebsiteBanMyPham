package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "ErrorControllerAdmin")
@RequestMapping("/admin")
public class Error500Controller {
	@GetMapping("/error")
	public String managerUser(Model model) {
		return "admin/error500";
	}
}
