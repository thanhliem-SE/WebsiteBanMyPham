package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.SanPham;

public interface SanPhamService {
	public void saveSanPham(SanPham dt);

	public void deleteSanPham(Long id);

	public SanPham getSanPham(Long id);

	public List<SanPham> getListSanPham();

	public List<SanPham> getListSanPhamTheoPage(int page, List<SanPham> list);

	public List<SanPham> getListSanPhamTheoGia(int dinhMuc);

	public List<SanPham> getListSanPhamTheoDanhMuc(int maDanhMuc);

	public List<SanPham> getListSanPhamTheoNCC(String ncc);

	public List<SanPham> getListSanPhamTheoTen(String tenSanPham);

	public List<SanPham> getListSanPhamTheoTrangThai(int trangThai);

	public int getPageCountSanPham(List<SanPham> sanPhams);
}
