package com.spring.mypham.SERVICE;

import java.util.List;
import java.util.Map;

import com.spring.mypham.models.HoaDon;

public interface HoaDonService {
	public Map<HoaDon,String> getListHoaDonByUsername(String username);
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(Long id);
	public List<HoaDon> getListHoaDon();
}
