package com.spring.mypham.controller.ADMIN;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "ThongKeController")
@RequestMapping("/admin")
public class QuanLyThongKeController {
	@GetMapping("/quanlythongke")
	public String thongKeController(Model model) {
		return "admin/quanlythongke";
	}
}
