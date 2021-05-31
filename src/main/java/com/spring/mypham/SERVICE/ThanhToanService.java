package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.ThanhToan;

public interface ThanhToanService {
	public ThanhToan getThanhToan(Long id);
	public List<ThanhToan> getListThanhToan();
}
