package com.spring.mypham.controller.ADMIN;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICE.NhaCungCapService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.DanhMucServiceImpl;
import com.spring.mypham.SERVICEImpl.NhaCungCapServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.SanPham;

@Controller(value = "QLSPControllerAdmin")
@RequestMapping("/admin")
public class QuanLySanPhamController {

	private static final SanPhamService sanPhamService = new SanPhamServiceImpl();
	private static final DanhMucService danhMucService = new DanhMucServiceImpl();
	private static final NhaCungCapService nhaCungCapService = new NhaCungCapServiceImpl();

	@GetMapping("/quanlysanpham")
	public String managerAdmin(Model model, @RequestParam(name = "page", defaultValue = "1") int page, HttpSession session) {
//		if (session.getAttribute("usernameAdmin") == null)
//			return "redirect:quantricp";
		List<SanPham> list = sanPhamService.getListSanPham();
		model.addAttribute("pageCount", sanPhamService.getPageCountSanPham(list));
		model.addAttribute("listSP", sanPhamService.getListSanPhamTheoPage(page, list));
		model.addAttribute("listDanhMuc", danhMucService.getListDanhMuc());
		model.addAttribute("listNhaCungCap", nhaCungCapService.getListNhaCungCap());
		nextOrPreviosPage(model, page);
		System.out.println(sanPhamService.getPageCountSanPham(list));
		return "admin/quanlysanpham";
	}

	private void nextOrPreviosPage(Model model, int page) {
		// System.out.println(page);
		int previosPage, nextPage;

		previosPage = (page > 1) ? page - 1 : page;
		nextPage = page + 1;

		model.addAttribute("previosPage", previosPage);
		model.addAttribute("nextPage", nextPage);
	}

	@PostMapping("/addSanPham")
	public String addSanPham(Model model, SanPham sanPham, Long maNhaCungCap, Long maDanhMuc, MultipartFile[] files,
			HttpServletRequest request) {
		sanPham.setNhaCungCap(nhaCungCapService.getNhaCungCap(maNhaCungCap));
		sanPham.setDanhMuc(danhMucService.getDanhMuc(maDanhMuc));

		// Save hinh anh
		List<String> photos = new ArrayList<String>();
		for (MultipartFile file : files) {
			String fileName = saveImage(file, request);
			System.out.println("filename:" + fileName);
			photos.add(fileName);
		}
		sanPham.setHinhAnh(photos);

		sanPhamService.saveSanPham(sanPham);
		return "redirect:quanlysanpham";
	}

	@RequestMapping("/deleteSanPham")
	public String deleteSanPham(Model model, @RequestParam long id) {
		sanPhamService.deleteSanPham(id);
		return "redirect:quanlysanpham";
	}

	private String saveImage(MultipartFile multipartFile, HttpServletRequest request) {
		try {
			byte[] bytes = multipartFile.getBytes();
			String rootDirectory = request.getSession().getServletContext().getRealPath("").split("Server")[0];
			Path path = Paths.get(rootDirectory + "WebsiteBanMyPham\\src\\main\\webapp\\resources\\user\\img\\"
					+ multipartFile.getOriginalFilename());
			Files.write(path, bytes);
			System.out.println("path: " + rootDirectory);
			return multipartFile.getOriginalFilename();
		} catch (IOException e) {
			return null;
		}
	}

	@PostMapping("/updateSanPham")
	public String updateSanPham(Model model, SanPham sanPham, Long maNhaCungCap, Long maDanhMuc, MultipartFile[] files,
			HttpServletRequest request) {
		System.out.println("SanPham:" + sanPham);
		System.out.println("maNhaCC" + maNhaCungCap);
		sanPham.setNhaCungCap(nhaCungCapService.getNhaCungCap(maNhaCungCap));
		sanPham.setDanhMuc(danhMucService.getDanhMuc(maDanhMuc));
		if (files == null)
			sanPham.setHinhAnh(sanPhamService.getHinhAnhById(sanPham.getMaSanPham()));
		else {
			List<String> photos = new ArrayList<String>();
			for (MultipartFile file : files) {
				String fileName = saveImage(file, request);
				System.out.println("filename:" + fileName);
				photos.add(fileName);
			}
			sanPham.setHinhAnh(photos);
		}
		sanPhamService.saveSanPham(sanPham);
		return "redirect:quanlysanpham";
	}
}
