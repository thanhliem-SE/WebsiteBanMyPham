package com.spring.mypham.maintest;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.UserDAO;
import com.spring.mypham.DAOImpl.DanhMucImpl;
import com.spring.mypham.DAOImpl.SanPhamDAOImpl;
import com.spring.mypham.DAOImpl.UserDAOImpl;
import com.spring.mypham.SERVICE.HoaDonService;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.HoaDonServiceImpl;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;
import com.spring.mypham.models.HoaDon;

public class MainTest {
	public static void main(String[] args) {
		
		SanPhamDAOImpl dao = new SanPhamDAOImpl();
		System.out.println(dao.getListSanPhamTheoPage(2, 6).size());
		
////		UserDAO userdao = new UserDAOImpl();
////		
////		List<String> listString = userdao.getUserRoles("binhnn123");
////		for(String i : listString) {
////			System.out.println(i+", ");
//		}
//		MySessionFactory.getInstance().getSessionFactory();
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
