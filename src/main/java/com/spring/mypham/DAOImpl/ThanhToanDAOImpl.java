package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.ThanhToanDAO;
import com.spring.mypham.models.ThanhToan;

@Repository
public class ThanhToanDAOImpl implements ThanhToanDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public ThanhToanDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
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
