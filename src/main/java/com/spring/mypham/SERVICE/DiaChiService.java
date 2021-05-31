package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.DiaChi;

public interface DiaChiService {
	public DiaChi getPhuong(String phuong);
	public DiaChi getQuan(String quan);
	public DiaChi getThanhPho(String thanhpho);
}
