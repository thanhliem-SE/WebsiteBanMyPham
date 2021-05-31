package com.spring.mypham.controller.ADMIN;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICE.NhaCungCapService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.DanhMucServiceImpl;
import com.spring.mypham.SERVICEImpl.NhaCungCapServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.NhaCungCap;
import com.spring.mypham.models.SanPham;

@Controller(value = "QLSPControllerAdmin")
@RequestMapping("/admin")
public class QuanLySanPhamController {
	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	private static final DanhMucService danhMucService = new DanhMucServiceImpl();
	private static final NhaCungCapService nhaCungCapService = new NhaCungCapServiceImpl();
	
	@GetMapping("/quanlysanpham")
	public String managerAdmin(Model model, @RequestParam(name = "page", defaultValue = "1")int page) {
		List<SanPham> list = sanPhamService.getListSanPham();
		model.addAttribute("pageCount", sanPhamService.getPageCountSanPham(list));
		model.addAttribute("listSP", sanPhamService.getListSanPhamTheoPage(page, list));
		model.addAttribute("listDanhMuc", danhMucService.getListDanhMuc());
		model.addAttribute("listNhaCungCap", nhaCungCapService.getListNhaCungCap());
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
	
	@PostMapping("/addSanPham")
	public String addSanPham(Model model, SanPham sanPham, Long maNhaCungCap, Long maDanhMuc) {
		sanPham.setNhaCungCap(nhaCungCapService.getNhaCungCap(maNhaCungCap));
		sanPham.setDanhMuc(danhMucService.getDanhMuc(maDanhMuc));
		sanPhamService.saveSanPham(sanPham);
		return "redirect:quanlysanpham";
	}
	
	
	@PostMapping("/editSanPham")
	public String editSanPham(Model model, SanPham sanPham, Long maDanhMuc) {
//		System.out.println("maNhaCC: " + maNhaCC);
//		System.out.println("maDanhMuc: " + maDanhMuc);
//		sanPham.setNhaCungCap(nhaCungCapService.getNhaCungCap(maNhaCungCap));
//		sanPham.setDanhMuc(danhMucService.getDanhMuc(maDanhMuc));
//		sanPhamService.saveSanPham(sanPham);
		return "redirect:quanlysanpham";
	}
	
	@RequestMapping("/deleteSanPham")
	public String deleteSanPham(Model model, @RequestParam long id) {
		sanPhamService.deleteSanPham(id);
		return "redirect:quanlysanpham";
	}
}

