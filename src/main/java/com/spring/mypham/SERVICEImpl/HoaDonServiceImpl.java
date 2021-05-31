package com.spring.mypham.SERVICEImpl;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mypham.DAO.HoaDonDAO;
import com.spring.mypham.DAOImpl.HoaDonDAOImpl;
import com.spring.mypham.SERVICE.HoaDonService;
import com.spring.mypham.models.HoaDon;
@Service
public class HoaDonServiceImpl implements HoaDonService{
	@Autowired
	HoaDonDAO hoaDonDao;
		
	public HoaDonServiceImpl() {
		super();
		this.hoaDonDao = new HoaDonDAOImpl();
	}

	@Override
	public Map<HoaDon, String> getListHoaDonByUsername(String username) {
		// TODO Auto-generated method stub
		return hoaDonDao.getListHoaDonByUsername(username);
	}
	@Transactional
	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		// TODO Auto-generated method stub
		hoaDonDao.saveHoaDon(hoaDon);
	}

	@Transactional
	@Override
	public HoaDon getHoaDon(Long id) {
		// TODO Auto-generated method stub
		return hoaDonDao.getHoaDon(id);
	}

	@Transactional
	@Override
	public List<HoaDon> getListHoaDon() {
		// TODO Auto-generated method stub
		return hoaDonDao.getListHoaDon();
	}

	
}
