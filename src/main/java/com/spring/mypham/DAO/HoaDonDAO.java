package com.spring.mypham.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.LineItem;
import com.spring.mypham.models.User;

public interface HoaDonDAO {
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(Long id);
	public List<HoaDon> getListHoaDon();
	Map<HoaDon, String> getListHoaDonByUsername(String username);
}
