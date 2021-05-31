package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.ThanhToan;

public interface ThanhToanDAO {
	public List<ThanhToan> getListThanhToan();

	public ThanhToan getThanhToan(long id);
}
