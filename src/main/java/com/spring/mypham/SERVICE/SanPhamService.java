package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.SanPham;

public interface SanPhamService {
	public void saveSanPham(SanPham dt);
	public void deleteSanPham(Long id);
	public SanPham getSanPham(Long id);
	public List<SanPham> getListSanPham();
}
