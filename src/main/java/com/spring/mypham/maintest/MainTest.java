package com.spring.mypham.maintest;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import com.spring.mypham.DAOImpl.DanhMucImpl;
import com.spring.mypham.SERVICE.HoaDonService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.HoaDonServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.HoaDon;

public class MainTest {
	public static void main(String[] args) {
		
		SanPhamService sanPhamService = new SanPhamServiceImpl();
		sanPhamService.getListSanPham().forEach(s->{
			System.out.println("Hinh anh: " + s.getHinhAnh().size());
		});
		
//		KhachHangService hangService = new KhachHangServiceImpl();
//		
//		KhachHang kh = new KhachHang();
//		DiaChi dc = new DiaChi();
//		dc.setPhuong("Phường 2");
//		dc.setQuan("Quận 3");
//		dc.setThanhPho("Hồ Chí Minh");
//		User user = new User();
//		user.setUsername("hung123");
//		user.setPassword("123");
//		user.setEnabled(true);
//		kh.setDiaChi(dc);
//		kh.setSoDienThoai("0987134334");
//		kh.setTenKhachHang("Trần Đình Hùng");
//		kh.setEmail("hungbo123@gmail.com");
//		kh.setUser(user);
//		
//		System.out.println(kh.getDiaChi().toString());
		//hangService.updateKhachHang(kh);
		
		
		
//		UserService userService = new UserServiceImpl();
//		User user =new User();
//		user.setUsername("liem2n");
//		user.setPassword("123");
//		
//		userService.resetPassword(user);
		
		
//		HoaDonService donService = new HoaDonServiceImpl();
//		
//		Map<HoaDon,String> map1 = new HashMap<>();
//		HoaDon hd = new HoaDon();
//		hd.setMaHoaDon(1);
//		hd.setTongTien(134000);
//		String a = "abc";
//		map1.put(hd, a);
		
//		Map<HoaDon,String> map = donService.getListHoaDonByUsername("hung123");
//		Set<HoaDon> keySet = map.keySet();
//        for (HoaDon key : keySet) {
//            System.out.println(key.toString() + " - " + map.get(key));
//        }
	}
}
