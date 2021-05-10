package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.GioHang;

public interface GioHangDAO {
	public void insertGioHang(GioHang gioHang);
	public GioHang getGioHang(Long id);
	public List<GioHang> getListGioHang();
}
