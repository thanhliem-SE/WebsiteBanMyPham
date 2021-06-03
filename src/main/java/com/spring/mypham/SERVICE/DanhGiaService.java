package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.DanhGia;

public interface DanhGiaService {
	public List<DanhGia> getListDanhGiaBySanPham(long maSanPham);

	public Boolean checkQuyenDanhGia(String username, long maSanPham);

	public List<DanhGia> getListDanhGia();

	public void addDanhGia(DanhGia danhGia);

	public DanhGia getDanhGia(Long id);

	public void deleteDanhGia();
}
