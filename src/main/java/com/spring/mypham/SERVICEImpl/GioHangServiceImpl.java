package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.GioHangDAO;
import com.spring.mypham.SERVICE.GioHangService;
import com.spring.mypham.models.GioHang;

@Service
public class GioHangServiceImpl implements GioHangService{
	@Autowired
	private GioHangDAO gioHangDAO;
	
	@Transactional
	@Override
	public void insertGioHang(GioHang gioHang) {
		gioHangDAO.insertGioHang(gioHang);
	}

	@Override
	public GioHang getGioHang(Long id) {
		return gioHangDAO.getGioHang(id);
	}

	@Override
	public List<GioHang> getListGioHang() {
		return gioHangDAO.getListGioHang();
	}

}
