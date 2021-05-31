package com.spring.mypham.SERVICEImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mypham.DAO.ThanhToanDAO;
import com.spring.mypham.DAOImpl.ThanhToanDAOImpl;
import com.spring.mypham.SERVICE.ThanhToanService;
import com.spring.mypham.models.ThanhToan;

@Service
public class ThanhToanServiceImpl implements ThanhToanService{
	@Autowired
	private ThanhToanDAO thanhToanDAO;
	
	public ThanhToanServiceImpl() {
		thanhToanDAO = new ThanhToanDAOImpl() ;
	}
	
	@Transactional
	@Override
	public ThanhToan getThanhToan(Long id) {
		return thanhToanDAO.getThanhToan(id);
	}
	@Transactional
	@Override
	public List<ThanhToan> getListThanhToan() {
		return thanhToanDAO.getListThanhToan();
	}

}
