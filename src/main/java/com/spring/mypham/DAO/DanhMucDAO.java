package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.DanhMuc;

public interface DanhMucDAO {
	public DanhMuc getDanhMuc(String tenDanhMuc);
	public void saveDanhMuc(DanhMuc danhMuc);
	public void deleteDanhMuc(Long id);
	public DanhMuc getDanhMuc(Long id);
	public List<DanhMuc> getListDanhMuc();
}
