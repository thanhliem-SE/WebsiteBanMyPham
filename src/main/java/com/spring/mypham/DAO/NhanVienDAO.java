package com.spring.mypham.DAO;

import java.util.ArrayList;

import com.spring.mypham.models.NhanVien;

public interface NhanVienDAO {

	void saveNhanVien(NhanVien nv);
	public ArrayList<NhanVien> getAllNhanVien() ;
}
