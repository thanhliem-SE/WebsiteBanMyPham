package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "BlankControllerAdmin")
@RequestMapping("/admin")
public class BlankController {
	@GetMapping("/blank_page")
	public String blankPage(Model model) {
		return "admin/blank";
	}
}
