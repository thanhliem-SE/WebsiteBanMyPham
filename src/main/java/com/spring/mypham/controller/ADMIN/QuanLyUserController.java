package com.spring.mypham.controller.ADMIN;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.models.KhachHang;

@Controller(value = "QLUserControllerAdmin")
@RequestMapping("/admin")
public class QuanLyUserController {
	private static final KhachHangService khachHangService = new KhachHangServiceImpl();
	@GetMapping("/quanlyuser")
	public String managerUser(Model model,HttpSession session) {
//		if(session.getAttribute("usernameAdmin")==null)
//			return "redirect:quantricp";
			
		showAllKhachHang(model);
		return "admin/quanlyuser";
	}
	
	public void showAllKhachHang(Model model){
		ArrayList<KhachHang> listKH = khachHangService.getAllKhachHang();
		model.addAttribute("listKH", listKH);
	}
	@Transactional
	@RequestMapping(value = "/deleteKH",method = RequestMethod.GET)
	public String deleteKH(Model model,@RequestParam String username) {
		khachHangService.deleteKhachHangByUserName(username);
		return "redirect:quanlyuser";

	}
}
