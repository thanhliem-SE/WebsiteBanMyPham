package com.spring.mypham.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.DanhGiaService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.DanhGiaServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.SERVICEImpl.UserServiceImpl;
import com.spring.mypham.models.DanhGia;
import com.spring.mypham.models.SanPham;
import com.spring.mypham.models.User;

@Controller
public class ProductDetailsController {
	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	private static final DanhGiaService danhGiaService = new DanhGiaServiceImpl();

	@RequestMapping("/product-details")
	public String trangChu(Model model, @RequestParam(value = "maSanPham", defaultValue = "1") long maSanPham) {
		model.addAttribute("sanPham", sanPhamService.getSanPhamByID(maSanPham));
		model.addAttribute("imgs", sanPhamService.getHinhAnhById(maSanPham));
		model.addAttribute("sanPhams", sanPhamService.getListSanPhamTheoPage(1, sanPhamService.getListSanPham()));
		model.addAttribute("listReview", danhGiaService.getListDanhGiaBySanPham(maSanPham));
		return "user/product-details";
	}

	@PostMapping("/addReview")
	public String addReview(Model model, DanhGia danhGia, long maSanPham, HttpSession session) {
		if (session.getAttribute("username") == null)
			return "user/product-details";

//		String username = session.getAttribute("username").toString();
//		User user = new UserServiceImpl().getLoginInfoByUsername(username);
//		if (!danhGiaService.checkQuyenDanhGia(username, maSanPham))
//			return "user/product-details";

		danhGia.setSanPham(sanPhamService.getSanPhamByID(maSanPham));
		danhGiaService.addDanhGia(danhGia);

		return "redirect:product-details";
	}
}
