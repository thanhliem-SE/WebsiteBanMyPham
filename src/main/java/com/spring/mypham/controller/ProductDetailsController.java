package com.spring.mypham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;

@Controller
public class ProductDetailsController {
	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();

	@RequestMapping("/product-details")
	public String trangChu(Model model, @RequestParam(value = "maSanPham", defaultValue = "1") long maSanPham) {
		model.addAttribute("sanPham", sanPhamService.getSanPhamByID(maSanPham));
		model.addAttribute("imgs", sanPhamService.getHinhAnhById(maSanPham));
		model.addAttribute("sanPhams", sanPhamService.getListSanPhamTheoPage(1, sanPhamService.getListSanPham()));
		return "user/product-details";
	}
}
