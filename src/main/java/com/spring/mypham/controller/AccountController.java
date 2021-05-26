package com.spring.mypham.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.SERVICEImpl.UserServiceImpl;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.User;

@Controller
public class AccountController {
	private static final KhachHangService khachHangService = new KhachHangServiceImpl();
	private static final UserService userService = new UserServiceImpl();
	@RequestMapping("/account")
	public String trangChu(Model model,HttpSession session) {
		//System.out.println("Mask:" +session.getAttribute("username").toString());
		showKhachHang(model,session.getAttribute("username").toString());
		return "user/account";
	}
	@RequestMapping(value = "/updateAccount",method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("khachHang") KhachHang khachHang,@ModelAttribute("diaChi") DiaChi diaChi, HttpSession session) {
		KhachHang kh = khachHangService.getKhachHangByUsername(session.getAttribute("username").toString());
		
		khachHang.setUser(kh.getUser());
		khachHang.setDiaChi(diaChi);
		khachHang.setMaKhachHang(kh.getMaKhachHang());
//		System.out.println("Make1: "+khachHang.toString());
//		System.out.println("Make2: "+khachHang.getDiaChi().toString());
		khachHangService.updateKhachHang(khachHang);
		return "redirect:account";
	}
	@RequestMapping(value = "/resetPassword",method = RequestMethod.POST)
	public String resetPass(Model model,@ModelAttribute("old_password") String old_password,@ModelAttribute("new_password") String new_password,@ModelAttribute("confirm_password") String confirm_password, HttpSession session) {
		//KhachHang kh = khachHangService.getKhachHangByUsername(session.getAttribute("username").toString());
		String userName = session.getAttribute("username").toString();
		//System.out.println("userName: "+userName);
		String correct_password = userService.getLoginInfoByUsername(userName).getPassword();
		//System.out.println("correct_password: "+correct_password);
		
		if(old_password.equals(correct_password)) {
			//System.out.println("marks 1");
			if(new_password.equals(confirm_password)) {
				//System.out.println("marks 2");
				User user = new User();
				user.setUsername(userName);
				user.setPassword(new_password);
				userService.resetPassword(user);
				System.out.println("Reset PW thanh cong");
				
			}else {
				//System.out.println("new password khong trung khop voi confirm password");
			}
		}
		else {
			//System.out.println("password nhap vao khong dung");
		}
		
		return "redirect:account";
	}
	
	
	
	private void showKhachHang(Model model,String username) {
		KhachHang kh = khachHangService.getKhachHangByUsername(username);
	//	System.out.println(kh.toString());
		model.addAttribute("khachHang", kh);
		model.addAttribute("diaChi",kh.getDiaChi());
	}
}
