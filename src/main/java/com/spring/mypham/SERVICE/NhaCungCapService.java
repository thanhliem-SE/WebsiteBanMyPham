package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.NhaCungCap;

public interface NhaCungCapService {
	public void saveNhaCungCap(NhaCungCap nhaCungCap);

	public void deleteNhaCungCap(Long id);

	public NhaCungCap getNhaCungCap(Long id);

	public List<NhaCungCap> getListNhaCungCap();
}
