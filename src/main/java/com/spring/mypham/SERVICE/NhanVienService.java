package com.spring.mypham.SERVICE;

import java.util.ArrayList;

import com.spring.mypham.models.NhanVien;

public interface NhanVienService {
	void saveNhanVien(NhanVien nv);
	public ArrayList<NhanVien> getAllNhanVien() ;
}
