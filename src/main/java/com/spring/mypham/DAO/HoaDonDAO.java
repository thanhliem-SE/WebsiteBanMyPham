package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.ThanhToan;

public interface HoaDonDAO {
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(Long id);
	public List<HoaDon> getListHoaDon();
	public List<ThanhToan> getListThanhToan();
	public ThanhToan getThanhToan(long id);
}
