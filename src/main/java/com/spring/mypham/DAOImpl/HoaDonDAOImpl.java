package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.HoaDonDAO;
import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.ThanhToan;

@Repository
public class HoaDonDAOImpl implements HoaDonDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(hoaDon);
	}

	@Transactional
	@Override
	public HoaDon getHoaDon(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		HoaDon hd = currentSession.get(HoaDon.class, id);
		return hd;
	}

	@Transactional
	@Override
	public List<HoaDon> getListHoaDon() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<HoaDon> theQuery = currentSession.createQuery("from HoaDon", HoaDon.class);
		List<HoaDon> hds = theQuery.getResultList();
		return hds;
	}

	@Transactional
	@Override
	public List<ThanhToan> getListThanhToan() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		List<ThanhToan> listThanhToans=currentSession.createNativeQuery("select * from ThanhToan", ThanhToan.class).getResultList();
		return listThanhToans;
	}

	@Transactional
	@Override
	public ThanhToan getThanhToan(long id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		ThanhToan thanhToan=currentSession.get(ThanhToan.class, id);
		return thanhToan;
	}

}
