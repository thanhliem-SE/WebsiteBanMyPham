package com.spring.mypham.controller;

import java.math.BigInteger;
import java.time.LocalDate;
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
import com.spring.mypham.models.CartItem;
import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.LineItem;
import com.spring.mypham.models.ThanhToan;

@Controller
@RequestMapping("/checkout")
public class CheckoutController {
	@Autowired
	private HoaDonService hoaDonService;
	
	@Autowired
	private LineItemService lineItemService;
	@GetMapping("")
	private String trangChu(Model model,HttpSession session) {
		List<CartItem> cart=(List<CartItem>) session.getAttribute("cart");
		List<ThanhToan> listThanhToans=((HoaDonDAO) hoaDonService).getListThanhToan();
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
	
	
	@PostMapping("/themHoaDon")
	private String themHoaDon(@ModelAttribute("hoaDon") HoaDon hoaDon,@RequestParam("maThanhToan") long maThanhToan,HttpSession session) {
		List<CartItem> cart=(List<CartItem>) session.getAttribute("cart");
		LocalDate localDate = LocalDate.now();		
		double tongTien=(double) session.getAttribute("sub");
		ThanhToan tt=((HoaDonDAO) hoaDonService).getThanhToan(maThanhToan);
		
		hoaDon.setThanhToan(tt);
		hoaDon.setTrangThaiHoaDon("Thành công");
		hoaDon.setNgayGiao(localDate.plusDays(5));
		hoaDon.setTongTien(tongTien);
		hoaDon.setNgayLap(localDate);
		((HoaDonDAO) hoaDonService).saveHoaDon(hoaDon);
		
		for (CartItem cartItem : cart) {
			LineItem item=new LineItem(cartItem.getSoLuong(),cartItem.getSoLuong()*cartItem.getSp().getDonGia(),hoaDon,cartItem.getSp());
			lineItemService.saveLineItem(item);
		}
		return "user/xacnhan";
	}

}
