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
	@Transactional
	@Override
	public void deleteSanPham(Long id) {
		sanPhamDAO.deleteSanPham(id);
	}
	@Transactional
	@Override
	public SanPham getSanPham(Long id) {
		return sanPhamDAO.getDienThoai(id);
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPham() {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPham();
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoPage(int page, List<SanPham> list) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoPage(page, list);
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoGia(int dinhMuc) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoGia(dinhMuc);
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoDanhMuc(int maDanhMuc) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoDanhMuc(maDanhMuc);
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoNCC(String ncc) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoNCC(ncc);
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoTen(String tenSanPham) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoTen(tenSanPham);
	}
	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoTrangThai(int trangThai) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getListSanPhamTheoTrangThai(trangThai);
	}
	@Transactional
	@Override
	public int getPageCountSanPham(List<SanPham> sanPhams) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getPageCountSanPham(sanPhams);
	}
	@Transactional
	@Override
	public SanPham getSanPhamByID(long maSanPham) {
		// TODO Auto-generated method stub
		return sanPhamDAO.getSanPhamByID(maSanPham);
	}
	@Transactional
	@Override
	public List<String> getHinhAnhById(long maSanPham){
		return sanPhamDAO.getHinhAnhById(maSanPham);
	}

}
