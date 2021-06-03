package com.spring.mypham.SERVICEImpl;

import java.util.List;

import com.spring.mypham.DAO.DanhGiaDAO;
import com.spring.mypham.DAOImpl.DanhGiaDAOImpl;
import com.spring.mypham.SERVICE.DanhGiaService;
import com.spring.mypham.models.DanhGia;

public class DanhGiaServiceImpl implements DanhGiaService{
	
	private final static DanhGiaDAO dao = new DanhGiaDAOImpl();

	@Override
	public List<DanhGia> getListDanhGiaBySanPham(long maSanPham) {
		// TODO Auto-generated method stub
		return dao.getListDanhGiaBySanPham(maSanPham);
	}

	@Override
	public Boolean checkQuyenDanhGia(String username, long maSanPham) {
		// TODO Auto-generated method stub
		return dao.checkQuyenDanhGia(username, maSanPham);
	}

	@Override
	public List<DanhGia> getListDanhGia() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addDanhGia(DanhGia danhGia) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DanhGia getDanhGia(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteDanhGia() {
		// TODO Auto-generated method stub
		
	}

}
