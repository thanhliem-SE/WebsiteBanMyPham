package com.spring.mypham.controller.ADMIN;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICE.NhaCungCapService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.DanhMucServiceImpl;
import com.spring.mypham.SERVICEImpl.NhaCungCapServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.SanPham;

@Controller(value = "ThongKeController")
@RequestMapping("/admin")
public class QuanLyThongKeController {

	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	
	@GetMapping("/quanlythongke")
	public String thongKeController(Model model, HttpSession session) {
//		if (session.getAttribute("usernameAdmin") == null)
//			return "redirect:quantricp";
		return "admin/quanlythongke";

	}

	@GetMapping("/thongKe")
	public String thongKeController(Model model, int thang, int nam) {
		List<SanPham> list = sanPhamService.getListSanPham();
		model.addAttribute("listSP", sanPhamService.getListSanPhamThongKe(thang, nam));
		return "admin/quanlythongke";
	}

}
