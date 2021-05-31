package com.spring.mypham.controller.ADMIN;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICE.NhanVienService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.SERVICEImpl.NhanVienServiceImpl;
import com.spring.mypham.models.NhanVien;

@Controller(value = "QLAdminControllerAdmin")
@RequestMapping("/admin")
public class QuanLyAdminController {
	private static final NhanVienService nhanVienService = new NhanVienServiceImpl();
	@GetMapping("/quanlyadmin")
	public String managerAdmin(Model model,HttpSession session) {
		if(session.getAttribute("usernameAdmin")==null)
			return "redirect:quantricp";
		
		showDanhSachAdmin(model);
		
		return "admin/quanlyadmin";
	}
	public void showDanhSachAdmin(Model model){
		ArrayList<NhanVien> listNV = nhanVienService.getAllNhanVien();
		model.addAttribute("listNV", listNV);
		
	}
}
