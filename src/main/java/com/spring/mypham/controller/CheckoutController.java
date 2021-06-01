package com.spring.mypham.controller;

import java.math.BigInteger;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mypham.DAO.HoaDonDAO;
import com.spring.mypham.SERVICE.HoaDonService;
import com.spring.mypham.SERVICE.LineItemService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICE.ThanhToanService;
import com.spring.mypham.models.CartItem;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.LineItem;
import com.spring.mypham.models.SanPham;
import com.spring.mypham.models.ThanhToan;

@Controller
@RequestMapping("/checkout")
public class CheckoutController {
	@Autowired
	private HoaDonService hoaDonService;
	@Autowired
	private ThanhToanService thanhToanService;
	@Autowired
	private LineItemService lineItemService;
	@Autowired
	private SanPhamService sanPhamService;
	@GetMapping("")
	private String trangChu(Model model, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<CartItem> cart=(List<CartItem>) session.getAttribute("cart");
		List<ThanhToan> listThanhToans= thanhToanService.getListThanhToan();
		if(cart == null) {
			session.setAttribute("statuscart", "Vui lòng chọn sản phẩm vào giỏ hàng");
			return "redirect:/cart/";
		} else {
			if(cart.size()<=0) {
				session.setAttribute("statuscart", "Vui lòng chọn sản phẩm vào giỏ hàng");
				return "redirect:/cart/";
			}
			else {
				model.addAttribute("hoaDon",new HoaDon());
				model.addAttribute("listThanhToans",listThanhToans);
				model.addAttribute("cart",cart);
				try {
					model.addAttribute("quantity",cart.size());
				} catch (Exception e) {
					// TODO: handle exception
				}
				return "user/checkout";
			}
		}
		
	}
	
	@PostMapping("/themHoaDon")
	private String themHoaDon(@ModelAttribute("hoaDon") HoaDon hoaDon, @RequestParam("maThanhToan") long maThanhToan, HttpSession session, DiaChi diaChi) {
		/*
		 * List<CartItem> cart=(List<CartItem>) session.getAttribute("cart"); LocalDate
		 * localDate = LocalDate.now(); double tongTien=(double)
		 * session.getAttribute("price"); ThanhToan tt=
		 * thanhToanService.getThanhToan(maThanhToan); hoaDon.setThanhToan(tt);
		 * hoaDon.setTrangThaiHoaDon("Thành công");
		 * hoaDon.setNgayGiao(localDate.plusDays(5)); hoaDon.setTongTien(tongTien);
		 * hoaDon.setNgayLap(localDate); ((HoaDonDAO) hoaDonService).saveHoaDon(hoaDon);
		 * 
		 * for (CartItem cartItem : cart) { LineItem item=new
		 * LineItem(cartItem.getSoLuong(),cartItem.getSoLuong()*cartItem.getSp().
		 * getDonGia(),hoaDon,cartItem.getSp()); lineItemService.saveLineItem(item); }
		 * return "user/xacnhan";
		 */

		@SuppressWarnings("unchecked")
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		hoaDon.setDiaChi(diaChi);
		LocalDate localDate = LocalDate.now();
		double tongtien = (double) session.getAttribute("price");

		ThanhToan thanhToan = thanhToanService.getThanhToan(maThanhToan);
		hoaDon.setThanhToan(thanhToan);
		hoaDon.setTongTien(tongtien);
		
		hoaDon.setTrangThaiHoaDon("Thành công");
		
		hoaDon.setNgayLap(localDate);
		hoaDon.setNgayGiao(localDate.plusDays(5));
		System.out.println(tongtien);
		System.out.println(localDate);
		
		System.out.println(diaChi);
		
		hoaDonService.saveHoaDon(hoaDon);
		for (CartItem cartItem : cart) {

//			System.out.println(cartItem.getSp().getTenSanPham());
//			System.out.println(cartItem.getSoLuong());
//			System.out.println(cartItem.getSp().getDonGia());
//			LineItem item = new LineItem(cartItem.getSoLuong(),hoaDon, cartItem.getSp());
//			lineItemService.saveLineItem(item);
			SanPham updateQuantity = cartItem.getSp();
			int quantity = 0;
			quantity = cartItem.getSp().getSoLuongTon() - cartItem.getSoLuong();
			updateQuantity.setSoLuongTon(quantity);
			sanPhamService.saveSanPham(updateQuantity);
		}
		return "/user/xacnhan";
	}

}
