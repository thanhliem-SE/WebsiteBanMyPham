package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.models.SanPham;

@Service
public class SanPhamServiceImpl implements SanPhamService{
	@Autowired
	private SanPhamDAO sanPhamDAO;
	
	@Transactional
	@Override
	public void saveSanPham(SanPham sp) {
		sanPhamDAO.saveSanPham(sp);
	}

	@Override
	public void deleteSanPham(Long id) {
		sanPhamDAO.deleteSanPham(id);
	}

	@Override
	public SanPham getSanPham(Long id) {
		return sanPhamDAO.getDienThoai(id);
	}

	@Override
	public List<SanPham> getListSanPham() {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPham();
	}

}
