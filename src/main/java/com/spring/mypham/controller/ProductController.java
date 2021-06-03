package com.spring.mypham.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.DanhMucServiceImpl;
import com.spring.mypham.SERVICEImpl.NhaCungCapServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.SanPham;

@Controller
public class ProductController {
	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	private static final DanhMucService danhMucService = new DanhMucServiceImpl();
	private static final NhaCungCapServiceImpl nhaCungCapService = new NhaCungCapServiceImpl();

	@RequestMapping("/product")
	public String trangChu(Model model, @RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "dinhMuc", defaultValue = "0") int dinhMuc,
			@RequestParam(value = "maDanhMuc", defaultValue = "0") int maDanhMuc,
			@RequestParam(value = "nhaCC", defaultValue = "null") String nhaCC,
			@RequestParam(value = "tenSP", defaultValue = "null") String tenSP,
			@RequestParam(value = "trangthai", defaultValue = "0") int trangthai) {

		if (dinhMuc == 0 && maDanhMuc == 0 && nhaCC.equals("null") && tenSP.equals("null") && trangthai == 0)
			showListSanPham(model, page);
		else if (maDanhMuc != 0)
			showListSanPhaTheoDanhMuc(model, maDanhMuc, page);

		else if (nhaCC != null)
			showListSanPhamTheoNhaCC(model, nhaCC, page);

		else if (dinhMuc != 0)
			showListSanPhamTheoDinhMuc(model, dinhMuc, page);

		else if (tenSP != null)
			showListSanPhamTheoTen(model, tenSP, page);

		nextOrPreviosPage(model, page);

		model.addAttribute("listDanhMuc", danhMucService.getListDanhMuc());
		model.addAttribute("listNhaCungCap", nhaCungCapService.getListNhaCungCap());

		return "user/product";
	}

	private void nextOrPreviosPage(Model model, int page) {
		System.out.println(page);
		int previosPage, nextPage;

		previosPage = (page > 1) ? page - 1 : page;
		nextPage = page + 1;

		model.addAttribute("previosPage", previosPage);
		model.addAttribute("nextPage", nextPage);
	}

	private void showListSanPhamTheoTen(Model model, String tenSP, int page) {
		List<SanPham> sanPhams = sanPhamService.getListSanPhamTheoTen(tenSP);
		model.addAttribute("sanPhams", sanPhams);

	}

	private void showListSanPhamTheoDinhMuc(Model model, int dinhMuc, int page) {
		List<SanPham> sanPhams = sanPhamService.getListSanPhamTheoGia(dinhMuc);
		model.addAttribute("sanPhams", sanPhams);

	}

	private void showListSanPhamTheoNhaCC(Model model, String nhaCC, int page) {
		List<SanPham> sanPhams = sanPhamService.getListSanPhamTheoNCC(nhaCC);
		model.addAttribute("sanPhams", sanPhams);

	}

	private void showListSanPhaTheoDanhMuc(Model model, int maDanhMuc, int page) {
		List<SanPham> sanPhams = sanPhamService.getListSanPhamTheoDanhMuc(maDanhMuc);
		model.addAttribute("sanPhams", sanPhams);
	}

	public void showListSanPham(Model model, int page) {
		List<SanPham> sanPhams = sanPhamService.getListSanPham();
		model.addAttribute("countPage", sanPhamService.getPageCountSanPham(sanPhams));
		model.addAttribute("sanPhams", sanPhamService.getListSanPhamTheoPage(page, 6));
	}
}