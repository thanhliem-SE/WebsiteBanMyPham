package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "NotFoundControllerAdmin")
@RequestMapping("/admin")
public class NotFoundController {
	@GetMapping("/page_404")
	public String notFound(Model model) {
		return "admin/notfound404";
	}
}
