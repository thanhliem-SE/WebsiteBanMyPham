package com.spring.mypham.SERVICE;

import java.util.Map;

import com.spring.mypham.models.HoaDon;

public interface HoaDonService {
	Map<HoaDon, String> getListHoaDonByUsername(String username);
}
