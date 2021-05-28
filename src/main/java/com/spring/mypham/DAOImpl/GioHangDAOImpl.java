package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.GioHangDAO;
import com.spring.mypham.models.GioHang;

@Repository
public class GioHangDAOImpl implements GioHangDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void insertGioHang(GioHang gioHang) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(gioHang);
	}

	@Transactional
	@Override
	public GioHang getGioHang(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		GioHang gioHang = currentSession.get(GioHang.class, id);
		return gioHang;
	}

	@Transactional
	@Override
	public List<GioHang> getListGioHang() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<GioHang> theQuery = currentSession.createQuery("from GioHang", GioHang.class);
		List<GioHang> gioHangs = theQuery.getResultList();
		return gioHangs;
	}

}
