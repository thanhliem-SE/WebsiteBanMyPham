package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.DanhMucDAO;
import com.spring.mypham.DAO.DiaChiDAO;
import com.spring.mypham.DAOImpl.DanhMucImpl;
import com.spring.mypham.DAOImpl.DiaChiDAOImpl;
import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.SERVICE.DiaChiService;
import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.DiaChi;

@Service
public class DiaChiServiceImpl implements DiaChiService{
	@Autowired
	private static final DiaChiDAO diaChiDAO =  new DiaChiDAOImpl();

	@Override
	public DiaChi getPhuong(String phuong) {
		// TODO Auto-generated method stub
		return diaChiDAO.getPhuong(phuong);
	}

	@Override
	public DiaChi getQuan(String quan) {
		// TODO Auto-generated method stub
		return diaChiDAO.getPhuong(quan);
	}

	@Override
	public DiaChi getThanhPho(String thanhpho) {
		// TODO Auto-generated method stub
		return diaChiDAO.getPhuong(thanhpho);
	}
	



}
