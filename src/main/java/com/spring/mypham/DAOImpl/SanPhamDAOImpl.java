package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.models.SanPham;

@Repository
public class SanPhamDAOImpl implements SanPhamDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void saveSanPham(SanPham sanPham) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(sanPham);
	}
	
	@Transactional
	@Override
	public void deleteSanPham(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		SanPham sanPham = currentSession.get(SanPham.class, id);
		currentSession.delete(sanPham);
	}

	@Override
	public SanPham getDienThoai(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		SanPham sanPham = currentSession.get(SanPham.class, id);
		return sanPham;
	}

	@Override
	public List<SanPham> getListSanPham() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SanPham> theQuery = currentSession.createQuery("from SanPham", SanPham.class);
		List<SanPham> list = theQuery.getResultList();
		return list;
	}
	
}
