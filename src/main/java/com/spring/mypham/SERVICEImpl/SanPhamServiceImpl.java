package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.DAOImpl.SanPhamDAOImpl;
import com.spring.mypham.SERVICE.SanPhamService;
import com.spring.mypham.models.SanPham;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	@Autowired
	private SanPhamDAO sanPhamDAO;

	public SanPhamServiceImpl() {
		sanPhamDAO = new SanPhamDAOImpl();
	}

	@Transactional
	@Override
	public void saveSanPham(SanPham sp) {
		sanPhamDAO.saveSanPham(sp);
	}

	@Override
	public void deleteSanPham(Long id) {
		sanPhamDAO.deleteSanPham(id);
	}
	@Transactional
	@Override
	public SanPham getSanPham(Long id) {
		return sanPhamDAO.getSanPham(id);
	}

	@Override
	public List<SanPham> getListSanPham() {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPham();
	}

	@Override
	public List<SanPham> getListSanPhamTheoPage(int page, List<SanPham> list) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoPage(page, list);
	}

	@Override
	public List<SanPham> getListSanPhamTheoGia(int dinhMuc) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoGia(dinhMuc);
	}

	@Override
	public List<SanPham> getListSanPhamTheoDanhMuc(int maDanhMuc) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoDanhMuc(maDanhMuc);
	}

	@Override
	public List<SanPham> getListSanPhamTheoNCC(String ncc) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoNCC(ncc);
	}

	@Override
	public List<SanPham> getListSanPhamTheoTen(String tenSanPham) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoTen(tenSanPham);
	}

	@Override
	public List<SanPham> getListSanPhamTheoTrangThai(int trangThai) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoTrangThai(trangThai);
	}

	@Override
	public int getPageCountSanPham(List<SanPham> sanPhams) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getPageCountSanPham(sanPhams);
	}

	@Override
	public SanPham getSanPhamByID(long maSanPham) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getSanPhamByID(maSanPham);
	}
	
	@Override
	public List<String> getHinhAnhById(long maSanPham){
		return sanPhamDAO.getHinhAnhById(maSanPham);
	}

}
