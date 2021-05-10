package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.SanPham;

public interface DanhMucDAO {
	public DanhMuc getDanhMuc(String tenDanhMuc);
	public void saveDanhMuc(DanhMuc danhMuc);
	public void deleteDanhMuc(Long id);
	public DanhMuc getDanhMuc(Long id);
	public List<DanhMuc> getListDanhMuc();
}
