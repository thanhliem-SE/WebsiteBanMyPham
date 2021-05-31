package com.spring.mypham.controller.ADMIN;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "TrangChuControllerAdmin")
public class TrangChuController {
	@RequestMapping("/admin")
	public String trangChu(Model model,HttpSession session) {
		if(session.getAttribute("usernameAdmin")==null)
			return "redirect:quantricp";
		return "admin/index";
	}
}
