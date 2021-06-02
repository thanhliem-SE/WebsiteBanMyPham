package com.spring.mypham.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.SERVICEImpl.UserServiceImpl;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.User;

@Controller
public class loginController {
	KhachHangService khachHangService = new KhachHangServiceImpl();
	UserService userService = new UserServiceImpl();
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String init(Model model,WebRequest request) {
		
		//Remove session
		request.removeAttribute("username", WebRequest.SCOPE_SESSION);
		
		model.addAttribute("msg", "Please Enter Your Login Details");
		
		return "user/login";
	}

	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("user") User user, HttpSession session) {
		if (user != null && user.getUsername() != null & user.getPassword() != null) {
			System.out.println("username: "+user.getUsername()+"/ pass: "+user.getPassword());
			if (userService.checkLoginInfo(user,"USER")) {
				//model.addAttribute("msg", user.getUsername());
				session.setAttribute("username"	, user.getUsername());
				System.out.println("Mat khau trung khop");
				return "redirect:trangchu";
			} else {
				model.addAttribute("error", "Invalid Details");
				System.out.println("Mat khau khong trung khop");
				return "user/login";
			}
		} else {
			model.addAttribute("error", "Please enter Details");
			return "user/index";
		}

	}
	@Transactional
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	public String register(Model model, @ModelAttribute("user") User user,@ModelAttribute("khachHang") KhachHang khachHang,String password2, HttpSession session, String btnThemMoi) {
//		System.out.println(user.toString());
//		System.out.println(khachHang.toString());
//		System.out.println("PW2: "+password2);
		String pwHash = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
		khachHang.setUser(user);
		if (user != null && user.getUsername() != null & user.getPassword() != null && khachHang != null && khachHang.getTenKhachHang() != null && khachHang.getSoDienThoai() != null && khachHang.getEmail()!=null && password2.equals(user.getPassword())) {
			String rs = khachHangService.isExistKhachHang(khachHang);
			if(rs.equalsIgnoreCase("Ready")) {
				user.setPassword(pwHash);
				user.setEnabled(true);
				userService.saveUser(user);
				
				
				khachHangService.saveKhachHang(khachHang);
				
				session.setAttribute("username", user.getUsername());
				if(btnThemMoi.equalsIgnoreCase("themKHMoi"))
					return "redirect:admin/quanlyuser";
				return "redirect:trangchu";
			}
			else System.out.println(rs);
		}
		return "redirect:login";

	}

}