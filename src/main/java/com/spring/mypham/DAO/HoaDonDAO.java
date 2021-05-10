package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.HoaDon;

public interface HoaDonDAO {
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(Long id);
	public List<HoaDon> getListHoaDon();
}
