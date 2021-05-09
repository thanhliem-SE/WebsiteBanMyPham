package com.spring.mypham.init;

import java.util.List;

import com.spring.mypham.dao.SanPhamDao;
import com.spring.mypham.models.SanPham;

public class MainTest {
	public static void main(String[] args) {
//		MySessionFactory.getInstance().getSessionFactory();
		
		List<SanPham> rs = new SanPhamDao().getListSanPham();
		for(SanPham s: rs)
			System.out.println(s.getHinhAnh().size());
		
	}
}
