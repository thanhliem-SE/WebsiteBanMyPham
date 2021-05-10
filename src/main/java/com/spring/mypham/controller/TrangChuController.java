package com.spring.mypham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "TrangChuController")
public class TrangChuController {
	@RequestMapping("/trangchu")
	public String trangChu(Model model) {
		return "user/index";
	}
}
