package com.spring.mypham.maintest;

import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.DAOImpl.SanPhamDAOImpl;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.SERVICEImpl.SanPhamServiceImpl;

public class MainTest {
	public static void main(String[] args) {
		SanPhamService dao = new SanPhamServiceImpl();
		dao.getListSanPham().forEach((s)->{
			System.out.println(s.getPathFirstImg());
		});
	}
}
