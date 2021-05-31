package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.NhaCungCapDAO;
import com.spring.mypham.models.NhaCungCap;

public class NhaCungCapDAOImpl implements NhaCungCapDAO {
	@Autowired
	private static final SessionFactory sessionFactory = MySessionFactory.getInstance().getSessionFactory();

	@Transactional
	@Override
	public void saveNhaCungCap(NhaCungCap nhaCungCap) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			currentSession.saveOrUpdate(nhaCungCap);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public void deleteNhaCungCap(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			NhaCungCap nhaCungCap = currentSession.get(NhaCungCap.class, id);
			currentSession.delete(nhaCungCap);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public NhaCungCap getNhaCungCap(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			NhaCungCap nhaCungCap = currentSession.get(NhaCungCap.class, id);
			tr.commit();
			return nhaCungCap;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Transactional
	@Override
	public List<NhaCungCap> getListNhaCungCap() {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		List<NhaCungCap> NhaCungCaps = null;
		try {
			Query<NhaCungCap> theQuery = currentSession.createQuery("from NhaCungCap", NhaCungCap.class);
			NhaCungCaps = theQuery.getResultList();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return NhaCungCaps;
	}

}
