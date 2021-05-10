package com.spring.mypham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductDetailsController {
	@RequestMapping("/product-details")
	public String trangChu(Model model) {
		return "user/product-details";
	}
}
