package com.spring.mypham.controller.ADMIN;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICEImpl.DanhMucServiceImpl;
import com.spring.mypham.models.DanhMuc;

@Controller(value = "QLDMAdminControllerAdmin")
@RequestMapping("/admin")
public class QuanLyDanhMucController {

	private final static DanhMucService danhMucService = new DanhMucServiceImpl();

	@GetMapping("/quanlydanhmuc")
	public String managerAdmin(Model model, HttpSession session) {
//		if(session.getAttribute("usernameAdmin")==null)
//			return "redirect:quantricp";
		List<DanhMuc> list = danhMucService.getListDanhMuc();
		model.addAttribute("listDM", list);
		return "admin/quanlydanhmuc";
	}

	@PostMapping("/themDanhMuc")
	public String themDanhMuc(Model model, DanhMuc danhMuc) {
		System.out.println(danhMuc.getMaDanhMuc());
		danhMucService.saveDanhMuc(danhMuc);
		return "redirect:quanlydanhmuc";
	}

	@GetMapping("/deleteDanhMuc")
	public String xoaDanhMuc(Model model, @RequestParam long maDanhMuc) {
		danhMucService.deleteDanhMuc(maDanhMuc);
		return "redirect:quanlydanhmuc";
	}
	

}