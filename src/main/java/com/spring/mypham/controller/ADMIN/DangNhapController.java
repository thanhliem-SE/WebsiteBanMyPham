package com.spring.mypham.controller.ADMIN;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.SERVICEImpl.UserServiceImpl;
import com.spring.mypham.models.User;

@Controller(value = "LoginControllerAdmin")
@RequestMapping("/admin")
public class DangNhapController {	
	UserService userService = new UserServiceImpl();
	@GetMapping("/quantricp")
	public String showMyLoginPage(WebRequest request) {
		request.removeAttribute("usernameAdmin", WebRequest.SCOPE_SESSION);
		return "admin/login-form";
	}
//	@RequestMapping(value = "/login",method = RequestMethod.POST)
//	public String submit(Model model, @ModelAttribute("user") User user, HttpSession session) {
//		if (user != null && user.getUsername() != null & user.getPassword() != null) {
//			///System.out.println("username: "+user.getUsername()+"/ pass: "+user.getPassword());
//			if (userService.checkLoginInfo(user,"ADMIN")) {
//				//model.addAttribute("msg", user.getUsername());
//				session.setAttribute("usernameAdmin", user.getUsername());
//				System.out.println("Mat khau trung khop");
//				return "redirect:quanlyuser";
//			} else {
//				model.addAttribute("error", "Invalid Details");
//				System.out.println("Mat khau khong trung khop");
//				return "redirect:quantricp";
//			}
//		} else {
//			model.addAttribute("error", "Please enter Details");
//			return "redirect:quantricp";
//		}
//	}
}
