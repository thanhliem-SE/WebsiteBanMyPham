package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "TrangChuControllerAdmin")
public class TrangChuController {
	@RequestMapping("/admin")
	public String trangChu(Model model) {
		return "admin/index";
	}
}
