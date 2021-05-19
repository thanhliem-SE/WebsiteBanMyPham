package com.spring.mypham.SERVICE;

import com.spring.mypham.models.KhachHang;

public interface KhachHangService {
	public void saveKhachHang(KhachHang khachHang) ;
	public String isExistKhachHang(KhachHang khachHang) ;
}
