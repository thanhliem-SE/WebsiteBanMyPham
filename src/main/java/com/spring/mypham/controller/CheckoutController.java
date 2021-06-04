package com.spring.mypham.controller;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		if(cart == null) {
			session.setAttribute("statuscart", "Vui lòng chọn sản phẩm vào giỏ hàng");
			return "redirect:/cart/";
		} else {
			if(cart.size()<=0) {
				session.setAttribute("statuscart", "Vui lòng chọn sản phẩm vào giỏ hàng");
				return "redirect:/cart/";
			}
			else {
				List<ThanhToan> listThanhToans= thanhToanService.getListThanhToan();
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
	private String themHoaDon(@ModelAttribute("hoaDon") HoaDon hoaDon, @RequestParam("maThanhToan") long maThanhToan, HttpSession session, DiaChi diaChi, Model model) {
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
		double tongtien = (double) session.getAttribute("tongtien");
		DecimalFormat format = new DecimalFormat("###,###.## vnđ");
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
		double giamGia = 0;
		double tamTinh = 0;

		String content = "";
		for (CartItem cartItem : cart) {
			
			tamTinh += cartItem.getSp().getDonGia()* cartItem.getSoLuong();
			giamGia += (tamTinh * cartItem.getSp().getGiamGia()) / 100;
			
//			System.out.println(cartItem.getSp().getTenSanPham());
//			System.out.println(cartItem.getSoLuong());
//			System.out.println(cartItem.getSp().getDonGia());
			
			LineItem item = new LineItem(cartItem.getSoLuong(), (tamTinh-giamGia),hoaDon, cartItem.getSp());
			lineItemService.saveLineItem(item);
			SanPham updateQuantity = cartItem.getSp();
			
//			System.out.println(cartItem.getSp().getSoLuongTon());
//			System.out.println(cartItem.getSoLuong());
//			test

			content += cartItem.getSoLuong();
		
			
			int quantity = 0;
			quantity = cartItem.getSp().getSoLuongTon() - cartItem.getSoLuong();
			System.out.println(quantity);
			updateQuantity.setSoLuongTon(quantity);
			sanPhamService.saveSanPham(updateQuantity);
			model.addAttribute("xn", hoaDon);
			session.setAttribute("tensp", cartItem.getSp().getTenSanPham());
			session.setAttribute("sl", cartItem.getSoLuong());
			session.setAttribute("dvt", cartItem.getSp().getDonViTinh());
			session.setAttribute("tamtinh", tamTinh);
			session.setAttribute("thanhtien", tamTinh-giamGia + cartItem.getSp().getThue());
		}
		
	session.setAttribute("nguoiNhan",hoaDon.getTenNhanHang());
	session.setAttribute("sonha",hoaDon.getDiaChi().getSoNha());
	session.setAttribute("phuong",hoaDon.getDiaChi().getPhuong());
	session.setAttribute("quan",hoaDon.getDiaChi().getQuan());
	session.setAttribute("tp",hoaDon.getDiaChi().getThanhPho());
	session.setAttribute("sdt", hoaDon.getSdtNhanHang());
	
//		cart.removeAll(cart);
//		session.setAttribute("cart", cart);
		/*
		 * String thongTinNguoiNhan = "- Họ và tên: Vinh";
		 * 
		 * guiMailChoKhachHang(hoaDon.getEmail(), content, format.format((Double)
		 * session.getAttribute("tongtien")),thongTinNguoiNhan);
		 * System.out.println(format.format((Double) session.getAttribute("tongtien")));
		 */
		cart.removeAll(cart);
		session.setAttribute("cart", cart);
		return "/user/xacnhan";
	}


	/*
	 * private void guiMailChoKhachHang(String email, String content, String
	 * tongtien, String thongTinNguoiNhan) { try { Properties properties =
	 * System.getProperties(); properties.put("mail.smtp.host", "smtp.gmail.com");
	 * properties.put("mail.smtp.port", "465"); properties.put("mail.smtp.auth",
	 * "true"); properties.put("mail.smtp.socketFactory.class",
	 * "javax.net.ssl.SSLSocketFactory");
	 * properties.put("mail.smtp.socketFactory.port", "465"); Session session =
	 * Session.getDefaultInstance(properties, null); session.setDebug(true);
	 * MimeMessage message = new MimeMessage(session); message.setFrom(new
	 * InternetAddress("shopestorea@gmail.com"));
	 * message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
	 * message.setContent("Cảm ơn bạn đã đặt mua sản phẩm tại EStore. \n" +
	 * "Sản phẩm bạn mua gồm: \n" + content + "Tổng tiền: " + tongtien + "\n" +
	 * "Thông tin người nhận:\n" + thongTinNguoiNhan + "Xin chào và hẹn gặp lại\n",
	 * "text/plain; charset=UTF-8"); message.setSubject("ESTORE"); Transport
	 * transport = session.getTransport("smtp"); transport.connect("smtp.gmail.com",
	 * "shopestorea@gmail.com", "Kjiwmc99x+"); transport.sendMessage(message,
	 * message.getAllRecipients());
	 * 
	 * System.out.println("Sending msg"); transport.close(); } catch
	 * (AddressException e) { e.printStackTrace(); } catch (MessagingException e1) {
	 * e1.printStackTrace(); } }
	 */
}
