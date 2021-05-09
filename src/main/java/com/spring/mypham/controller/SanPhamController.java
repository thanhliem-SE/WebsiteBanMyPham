package com.spring.mypham.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mypham.dao.SanPhamDao;
import com.spring.mypham.models.SanPham;

@Controller
public class SanPhamController {

//	@Autowired
//	private SanPhamDao sanPhamDao;
//
//	@RequestMapping("/index")
//	public String showMyIndex(Model model) {
//		sanPhamDao = new SanPhamDao();
//		List<SanPham> list = sanPhamDao.getListSanPham();
//
//		model.addAttribute("listSanPhamMoi", list);
//		return "index";
//	}

	@RequestMapping("/index")
	public String showMyIndex() {
		return "index";
	}
}
