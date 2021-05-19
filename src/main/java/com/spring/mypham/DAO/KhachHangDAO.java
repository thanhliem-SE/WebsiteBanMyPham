package com.spring.mypham.DAO;

import com.spring.mypham.models.KhachHang;

public interface KhachHangDAO {

	void saveKhachHang(KhachHang khachHang);

	String isExistKhachhang(KhachHang khachHang);
	
}
