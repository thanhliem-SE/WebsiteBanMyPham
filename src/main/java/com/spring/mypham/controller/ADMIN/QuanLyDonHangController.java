package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "QLDHControllerAdmin")
@RequestMapping("/admin")
public class QuanLyDonHangController {
	@GetMapping("/quanlydonhang")
	public String managerAdmin(Model model) {
		return "admin/quanlydonhang";
	}
}
