package com.spring.mypham.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.CartItem;
import com.spring.mypham.models.SanPham;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired
	private SanPhamService sanPhamService;
	@GetMapping("/addtocart/{id}")
	public String addToCart(@PathVariable("id") long maSanPham, Model model, HttpSession session) {

		if (session.getAttribute("cart") == null) {
			List<CartItem> cart = new ArrayList<>();
			SanPham sp = sanPhamService.getSanPham(maSanPham);
			CartItem cartItem = new CartItem(sp, 1);
			cart.add(cartItem);
			session.setAttribute("cart", cart);
			return "redirect:/cart/";
		} else {
			List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
			int index = ktraSanPhamDaTonTai(maSanPham, session);
			if (index == -1) {
				SanPham sp = sanPhamService.getSanPham(maSanPham);
				CartItem cartItem = new CartItem(sp, 1);
				cart.add(cartItem);
				model.addAttribute("sp", sp);
			} else {
				int sl = cart.get(index).getSoLuong() + 1;
				cart.get(index).setSoLuong(sl);
			}

			session.setAttribute("cart", cart);
			session.setAttribute("cartsize", cart.size());
			System.out.println("cart.size() : " + cart.size());
			System.out.println("TRUNG VINH");
		}
		return "redirect:/cart/";
	}

	@GetMapping("/")
	public String addToCart(Model model, HttpSession session) {
		List<SanPham> cart = (List<SanPham>) session.getAttribute("cart");
		if (cart == null) {
			session.setAttribute("tamtinh", 0);
			session.setAttribute("giamgia", 0);
			session.setAttribute("tongtien", 0);
			session.setAttribute("statuscart", "Vui lòng thêm sản phẩm vào giỏ hàng!");
			return "user/cart";
		} else {
			if (cart.size() <= 0) {
				session.setAttribute("tamtinh", 0);
				session.setAttribute("giamgia", 0);
				session.setAttribute("tongtien", 0);
				session.setAttribute("statuscart", "Vui lòng thêm sản phẩm vào giỏ hàng!");
				return "user/cart";
			} else {
				session.setAttribute("statuscart", "");
				updatePrice(session);
				return "user/cart";
			}
		}
	}
	
	public int ktraSanPhamDaTonTai(long id, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getSp().getMaSanPham() == id)
				return i;
		}
		return -1;
	}

	@RequestMapping(value = "/deletecart/{id}")
	public String deleteItemCart(@PathVariable(value = "id") long maSanPham, Model model, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getSp().getMaSanPham() == maSanPham) {
				cart.remove(i);
				break;
			}
		}
		session.setAttribute("cart", cart);
		updatePrice(session);
		session.setAttribute("statuscart", "");
		return "redirect:/cart/";
	}

	public void updatePrice(HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		double giamGia = 0;
		double tamTinh = 0;
		double thue = 0;
		for (CartItem cartItem : cart) {
			tamTinh += cartItem.getSp().getDonGia()* cartItem.getSoLuong();
			giamGia += (tamTinh * cartItem.getSp().getGiamGia()) / 100;
			thue += (tamTinh * cartItem.getSp().getThue()) / 100;
			session.setAttribute("tamtinh", tamTinh);
			session.setAttribute("giamgia", giamGia);
			session.setAttribute("tongtien", tamTinh - giamGia + thue);
		}
	}

	@RequestMapping(value = "/addCartItem/{id}")
	public String addCartItem(@PathVariable(value = "id") long maSanPham, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for (CartItem cartItem : cart) {
			if (cartItem.getSp().getMaSanPham() == maSanPham) {
				int sl = cartItem.getSoLuong() + 1;
				cartItem.setSoLuong(sl);
			}
		}
		return "redirect:/cart/";

	}

	@RequestMapping(value = "/removeCartItem/{id}")
	public String RemoveCartItem(@PathVariable(value = "id") long maSanPham, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for (CartItem cartItem : cart) {
			if (cartItem.getSp().getMaSanPham() == maSanPham) {
				int sl = cartItem.getSoLuong() - 1;
				cartItem.setSoLuong(sl);
				System.out.println("Delete: " + cartItem.getSp().getMaSanPham());
			}
		}
		return "redirect:/cart/";

	}
}
