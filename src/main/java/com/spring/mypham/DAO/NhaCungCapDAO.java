package com.spring.mypham.DAO;

import java.util.List;

import com.spring.mypham.models.NhaCungCap;

public interface NhaCungCapDAO {
	public void saveNhaCungCap(NhaCungCap nhaCungCap);
	public void deleteNhaCungCap(Long id);
	public NhaCungCap getNhaCungCap(Long id);
	public List<NhaCungCap> getListNhaCungCap();
}
