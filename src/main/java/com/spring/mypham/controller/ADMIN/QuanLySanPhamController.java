package com.spring.mypham.controller.ADMIN;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.SanPham;

@Controller(value = "QLSPControllerAdmin")
@RequestMapping("/admin")
public class QuanLySanPhamController {
	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	
	@GetMapping("/quanlysanpham")
	public String managerAdmin(Model model, @RequestParam(name = "page", defaultValue = "1")int page) {
		List<SanPham> list = sanPhamService.getListSanPham();
		model.addAttribute("pageCount", sanPhamService.getPageCountSanPham(list));
		model.addAttribute("listSP", sanPhamService.getListSanPhamTheoPage(page, list));
		nextOrPreviosPage(model, page);
		System.out.println( sanPhamService.getPageCountSanPham(list));
		return "admin/quanlysanpham";
	}
	
	private void nextOrPreviosPage(Model model, int page) {
		//System.out.println(page);
		int previosPage, nextPage;
		
		previosPage = (page>1) ? page-1 : page;
		nextPage = page + 1;
		
		model.addAttribute("previosPage", previosPage);
		model.addAttribute("nextPage", nextPage);
	}
}
