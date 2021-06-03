package com.spring.mypham.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.DanhMucServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.SanPham;

@Controller(value = "TrangChuController")
public class TrangChuController {

	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	private static final DanhMucService danhMucService = new DanhMucServiceImpl();


	@RequestMapping(value = { "/trangchu", "/" })
	public String trangChu(Model model) {
		List<SanPham> sanPhams = sanPhamService.getListSanPhamTheoPage(1, sanPhamService.getListSanPham());
		model.addAttribute("sanPhams", sanPhams);
		model.addAttribute("danhMucs", danhMucService.getListDanhMuc());
		return "user/index";
	}
}
