package com.spring.mypham.controller.ADMIN;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.NhaCungCapService;
import com.spring.mypham.SERVICEImpl.NhaCungCapServiceImpl;
import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.NhaCungCap;

@Controller(value = "QLNCCControllerAdmin")
@RequestMapping("/admin")
public class QuanLyNhaCungCapController {
	
	private static final NhaCungCapService nhaCungCapService = new NhaCungCapServiceImpl();

	@GetMapping("/quanlynhacungcap")
	public String managerAdmin(Model model) {
		List<NhaCungCap> list = nhaCungCapService.getListNhaCungCap();
		model.addAttribute("listNCC", list);
		return "admin/quanlynhacungcap";
	}

	@PostMapping("/themNhaCungCap")
	public String themDanhMuc(Model model, NhaCungCap nhaCungCap) {
		nhaCungCapService.saveNhaCungCap(nhaCungCap);
		return "redirect:quanlynhacungcap";
	}
	
	@GetMapping("/deleteNhaCungCap")
	public String xoaDanhMuc(Model model, @RequestParam long id) {
		nhaCungCapService.deleteNhaCungCap(id);
		return "redirect:quanlynhacungcap";
	}
}