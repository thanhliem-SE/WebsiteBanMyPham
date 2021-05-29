package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.DanhMucDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.DanhMuc;


@Repository
public class DanhMucImpl implements DanhMucDAO {
	@Autowired
	private static final SessionFactory sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	
	@Transactional
	@Override
	public void saveDanhMuc(DanhMuc danhMuc) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			currentSession.saveOrUpdate(danhMuc);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public void deleteDanhMuc(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			DanhMuc danhMuc=currentSession.get(DanhMuc.class, id);
			currentSession.delete(danhMuc);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public DanhMuc getDanhMuc(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		DanhMuc danhMuc=currentSession.get(DanhMuc.class, id);
		return danhMuc;
	}

	@Transactional
	@Override
	public List<DanhMuc> getListDanhMuc() {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		List<DanhMuc> danhMucs = null;
		try {
			Query<DanhMuc> theQuery = currentSession.createQuery("from DanhMuc", DanhMuc.class);
			danhMucs = theQuery.getResultList();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return danhMucs;
	}

	@Transactional
	@Override
	public DanhMuc getDanhMuc(String tenDanhMuc) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<DanhMuc> theQuery = currentSession.createQuery("from DanhMuc where name=:x", DanhMuc.class);
		theQuery.setParameter("x", tenDanhMuc);
		DanhMuc danhMuc = null;
		try {
			danhMuc = theQuery.getSingleResult();
		} catch (Exception e) {
			danhMuc = null;
		}

		return danhMuc;
	}

}
