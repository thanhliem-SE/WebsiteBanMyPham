package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.GioHang;

public interface GioHangService {
	public void insertGioHang(GioHang gioHang);
	public GioHang getGioHang(Long id);
	public List<GioHang> getListGioHang();
}
