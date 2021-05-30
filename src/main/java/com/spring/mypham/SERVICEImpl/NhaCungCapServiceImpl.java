package com.spring.mypham.SERVICEImpl;

import java.util.List;

import com.spring.mypham.DAO.NhaCungCapDAO;
import com.spring.mypham.DAOImpl.NhaCungCapDAOImpl;
import com.spring.mypham.SERVICE.NhaCungCapService;
import com.spring.mypham.models.NhaCungCap;

public class NhaCungCapServiceImpl implements NhaCungCapService{
	private static final NhaCungCapDAO dao = new NhaCungCapDAOImpl();
	@Override
	public void saveNhaCungCap(NhaCungCap nhaCungCap) {
		dao.saveNhaCungCap(nhaCungCap);
	}

	@Override
	public void deleteNhaCungCap(Long id) {
dao.deleteNhaCungCap(id);		
	}

	@Override
	public NhaCungCap getNhaCungCap(Long id) {
		return dao.getNhaCungCap(id);
	}

	@Override
	public List<NhaCungCap> getListNhaCungCap() {
		return dao.getListNhaCungCap();
	}
	
}
