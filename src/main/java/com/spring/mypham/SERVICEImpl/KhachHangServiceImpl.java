package com.spring.mypham.SERVICEImpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mypham.DAO.KhachHangDAO;
import com.spring.mypham.DAOImpl.KhachHangDAOImpl;
import com.spring.mypham.SERVICE.KhachHangService;
import com.spring.mypham.models.KhachHang;
@Service
public class KhachHangServiceImpl implements KhachHangService {
	@Autowired
	KhachHangDAO khachHangDAO;
	
	public KhachHangServiceImpl() {
		// TODO Auto-generated constructor stub
		this.khachHangDAO = new KhachHangDAOImpl();
	}
	
	public void saveKhachHang(KhachHang khachHang) {
		this.khachHangDAO.saveKhachHang(khachHang);
	}
	public String isExistKhachHang(KhachHang khachHang) {
		return khachHangDAO.isExistKhachhang(khachHang);
	}

	@Override
	public void updateKhachHang(KhachHang khachHang) {
		this.khachHangDAO.updateKhachHang(khachHang);
		
	}

	@Override
	public KhachHang getKhachHangByUsername(String username) {
		// TODO Auto-generated method stub
		return this.khachHangDAO.getKhachHangByUsername(username);
	}

	@Override
	public ArrayList<KhachHang> getAllKhachHang() {
		// TODO Auto-generated method stub
		return khachHangDAO.getAllKhachHang();
	}

	@Override
	public void deleteKhachHangByUserName(String username) {
		// TODO Auto-generated method stub
		khachHangDAO.deleteKhachHangByUserName(username);
	}
}
