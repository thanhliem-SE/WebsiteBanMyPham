package com.spring.mypham.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.User;

@Controller
public class AccountController {
	private static final KhachHangService khachHangService = new KhachHangServiceImpl();
	@RequestMapping("/account")
	public String trangChu(Model model,HttpSession session) {
		//System.out.println("Mask:" +session.getAttribute("username").toString());
		showKhachHang(model,session.getAttribute("username").toString());
		return "user/account";
	}
	@RequestMapping(value = "/updateAccount",method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("khachHang") KhachHang khachHang,@ModelAttribute("diaChi") DiaChi diaChi, HttpSession session) {
		System.out.println(diaChi.toString());
		System.out.println(khachHang.toString());
		
		KhachHang kh = khachHangService.getKhachHangByUsername(session.getAttribute("username").toString());
		
		khachHang.setUser(kh.getUser());
		khachHang.setMaKhachHang(kh.getMaKhachHang());
		
		khachHangService.updateKhachHang(khachHang);
		return "redirect:account";
	}
	
	
	
	private void showKhachHang(Model model,String username) {
		KhachHang kh = khachHangService.getKhachHangByUsername(username);
		System.out.println(kh.toString());
		model.addAttribute("khachHang", kh);
	}
}
