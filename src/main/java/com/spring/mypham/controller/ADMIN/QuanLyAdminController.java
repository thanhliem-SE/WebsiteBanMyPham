package com.spring.mypham.controller.ADMIN;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICE.NhanVienService;
import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.SERVICEImpl.NhanVienServiceImpl;
import com.spring.mypham.SERVICEImpl.UserServiceImpl;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.NhanVien;
import com.spring.mypham.models.Role;
import com.spring.mypham.models.User;

@Controller(value = "QLAdminControllerAdmin")
@RequestMapping("/admin")
public class QuanLyAdminController {
	private static final NhanVienService nhanVienService = new NhanVienServiceImpl();
	private static final UserService userService = new UserServiceImpl();
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
	@Transactional
	@RequestMapping(value = "/registerNhanVien",method = RequestMethod.POST)
	public String register(Model model, @ModelAttribute("user") User user,@ModelAttribute("nhanVien") NhanVien nhanVien,String password2, HttpSession session, String btnThemNV) {
//		System.out.println(user.toString());
//		System.out.println(khachHang.toString());
//		System.out.println("PW2: "+password2);
		nhanVien.setUser(user);
		if (user != null && user.getUsername() != null & user.getPassword() != null && nhanVien != null && nhanVien.getTenNhanVien() != null && nhanVien.getSoDienThoai() != null && nhanVien.getEmail()!=null && password2.equals(user.getPassword())) {
			String rs = nhanVienService.isExistNhanVien(nhanVien);
			if(rs.equalsIgnoreCase("Ready")) {
				user.setEnabled(true);
				userService.saveUser(user);
				
				nhanVien.setUser(user);
				nhanVienService.saveNhanVien(nhanVien);
				
				//session.setAttribute("username", user.getUsername());
				if(btnThemNV.equalsIgnoreCase("btnThemNV"))
					return "redirect:quanlyadmin";
				return "redirect:trangchu";
			}
			else System.out.println(rs);
		}
		return "redirect:quanlyadmin";

	}
	@RequestMapping(value = "/updateNhanVien",method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("nhanVien") NhanVien nhanVien, HttpSession session, String btnCapNhat) {
		//System.out.println("Make -1: "+user.toString());
		String username = btnCapNhat;
		User user = new User();
		user.setUsername(username);
		nhanVien.setUser(user);
		
		nhanVienService.updateNhanVien(nhanVien);
		return "redirect:quanlyadmin";
	}
	@Transactional
	@RequestMapping(value = "/deleteNV",method = RequestMethod.GET)
	public String deleteKH(Model model,@RequestParam String username) {
		nhanVienService.deleteNhanVienByUserName(username);
		return "redirect:quanlyadmin";

	}
}
