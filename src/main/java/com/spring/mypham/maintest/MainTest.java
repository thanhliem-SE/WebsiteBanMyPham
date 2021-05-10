package com.spring.mypham.maintest;

import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.DAOImpl.SanPhamDAOImpl;

public class MainTest {
	public static void main(String[] args) {
		SanPhamDAO dao = new SanPhamDAOImpl();
		dao.getListSanPham().forEach((s)->{
			System.out.println(s.getHinhAnh().size());
		});
	}
}
