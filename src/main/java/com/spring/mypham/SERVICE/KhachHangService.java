package com.spring.mypham.SERVICE;

import java.util.ArrayList;

import com.spring.mypham.models.KhachHang;

public interface KhachHangService {
	public void saveKhachHang(KhachHang khachHang) ;
	public String isExistKhachHang(KhachHang khachHang) ;
	public void updateKhachHang(KhachHang khachHang) ;
	public KhachHang getKhachHangByUsername(String username);
	void deleteKhachHangByUserName(String username);
	ArrayList<KhachHang> getAllKhachHang();
}
