package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.SanPham;

public interface SanPhamDAO {
	public void saveSanPham(SanPham sanPham);
	public void deleteSanPham(Long id);
	public SanPham getDienThoai(Long id);
	public List<SanPham> getListSanPham();
}
