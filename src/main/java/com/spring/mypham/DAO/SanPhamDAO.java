package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.SanPham;

public interface SanPhamDAO {
	public void saveSanPham(SanPham sanPham);
	public void deleteSanPham(Long id);
	public SanPham getSanPham(Long id);
	public List<SanPham> getListSanPham();
	public List<SanPham> getListSanPhamTheoPage(int page, List<SanPham> list);
	/**
	 * 
	 * @param dinhMuc: 1,2,3 tương ứng với dưới 1 tr, từ 1tr đến 3tr, trên 3tr
	 * @return
	 */
	public List<SanPham> getListSanPhamTheoGia(int dinhMuc);
	public List<SanPham> getListSanPhamTheoDanhMuc(int maDanhMuc);
	public List<SanPham> getListSanPhamTheoNCC(String ncc);
	public List<SanPham> getListSanPhamTheoTen(String tenSanPham);
	public List<SanPham> getListSanPhamTheoTrangThai(int trangThai);
	public SanPham getSanPhamByID(long maSanPham);
	public List<String> getHinhAnhById(long maSanPham);
	public List<SanPham> getListSanPhamThongKe(int thang, int nam);
	
	public int getPageCountSanPham(List<SanPham> sanPhams);
}
