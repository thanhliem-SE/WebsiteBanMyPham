package com.spring.mypham.maintest;

import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.DAOImpl.SanPhamDAOImpl;
import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.SERVICEImpl.KhachHangServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.SERVICEImpl.UserServiceImpl;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.User;

public class MainTest {
	public static void main(String[] args) {
//		SanPhamService dao = new SanPhamServiceImpl();
//		dao.getListSanPham().forEach((s)->{
//			System.out.println(s.getPathFirstImg());
//		});
		
		
		KhachHangService hangService = new KhachHangServiceImpl();
		
		KhachHang kh = new KhachHang();
		DiaChi dc = new DiaChi();
		dc.setPhuong("Phường 2");
		dc.setQuan("Quận 3");
		dc.setThanhPho("Hồ Chí Minh");
		User user = new User();
		user.setUsername("hung123");
		user.setPassword("123");
		user.setEnabled(true);
		kh.setDiaChi(dc);
		kh.setSoDienThoai("0987134334");
		kh.setTenKhachHang("Trần Đình Hùng");
		kh.setEmail("hungbo123@gmail.com");
		kh.setUser(user);
		
		System.out.println(kh.getDiaChi().toString());
		//hangService.updateKhachHang(kh);
	}
}
