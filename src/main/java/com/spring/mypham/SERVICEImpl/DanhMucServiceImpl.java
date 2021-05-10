package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.DanhMucDAO;
import com.spring.mypham.SERVICE.DanhMucService;
import com.spring.mypham.models.DanhMuc;

@Service
public class DanhMucServiceImpl implements DanhMucService{
	@Autowired
	private DanhMucDAO danhMucDao;
	
	@Transactional
	@Override
	public List<DanhMuc> getListDanhMuc() {
		return danhMucDao.getListDanhMuc();
	}

	@Transactional
	@Override
	public void saveDanhMuc(DanhMuc danhMuc) {
		danhMucDao.saveDanhMuc(danhMuc);
	}

	@Transactional
	@Override
	public void deleteDanhMuc(Long id) {
		danhMucDao.deleteDanhMuc(id);	
	}

	@Transactional
	@Override
	public DanhMuc getDanhMuc(Long id) {
		return danhMucDao.getDanhMuc(id);
	}

	@Transactional
	@Override
	public DanhMuc getDanhMuc(String tenDanhMuc) {
		return danhMucDao.getDanhMuc(tenDanhMuc);
	}


}
