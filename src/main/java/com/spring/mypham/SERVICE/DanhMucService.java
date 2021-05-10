package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.DanhMuc;

public interface DanhMucService {
	public DanhMuc getDanhMuc(String tenDanhMuc);
	public List<DanhMuc> getListDanhMuc();
	public void saveDanhMuc(DanhMuc danhMuc);
	public void deleteDanhMuc(Long id);
	public DanhMuc getDanhMuc(Long id);
}
