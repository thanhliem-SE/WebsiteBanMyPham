package com.spring.mypham.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.models.CartItem;
import com.spring.mypham.models.SanPham;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired
	private SanPhamService sanPhamService;

	@RequestMapping("/addtocart/{id}")
	public String addToCart(@PathVariable("id") Long maSanPham, Model model, HttpSession session) {
		if (session.getAttribute("cart") == null) {
			List<CartItem> cart = new ArrayList<>();
			SanPham sanPham = sanPhamService.getSanPham(maSanPham);
			CartItem cartItem = new CartItem(sanPham, 1);
			cart.add(cartItem);
			session.setAttribute("cart", cart);
			return "redirect:/cart/";
		} else {
			@SuppressWarnings("unchecked")
			List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
			int index = kiemTraSanPhamDaTonTai(maSanPham, session);
			if (index == -1) {
				SanPham sp = sanPhamService.getSanPham(maSanPham);
				CartItem cartItem = new CartItem(sp, index);
				cart.add(cartItem);
			} else {
				int sl = cart.get(index).getSoLuong() + 1;
				cart.get(index).setSoLuong(sl);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart/";

	}

	@SuppressWarnings("unchecked")
	private int kiemTraSanPhamDaTonTai(Long id, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getSp().getMaSanPham() == 0) {
				return i;
			}
		}
		return -1;
	}

	@GetMapping("/")
	public String addToCart(Model model, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<SanPham> cart = (List<SanPham>) session.getAttribute("cart");
		if (cart == null) {
			session.setAttribute("sub", 0);
			session.setAttribute("price", 0);
			return "user/cart";
		} else {
			if (cart.size() <= 0) {
				return "user/cart";
			} else {
				updatePrice(session);
				return "user/cart";
			}
		}

	}

	@SuppressWarnings("unchecked")
	public void updatePrice(HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		double price = 0;
		double tax = 0;
		for (CartItem cartItem : cart) {
			price += cartItem.getSp().getDonGia() * cartItem.getSoLuong();
			tax += (price * cartItem.getSp().getThue()) / 100;
			session.setAttribute("sub", price + tax);
			session.setAttribute("price", price);
		}
	}

	@SuppressWarnings("unchecked")
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

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/removeCartItem/{id}")
	public String RemoveCartItem(@PathVariable(value = "id") long maSanPham, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for (CartItem cartItem : cart) {
			if (cartItem.getSp().getMaSanPham() == maSanPham) {
				int sl = cartItem.getSoLuong() - 1;
				cartItem.setSoLuong(sl);
			}
		}
		return "redirect:/cart/";

	}

	@SuppressWarnings("unchecked")
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
		return "redirect:/cart/";
	}
}
