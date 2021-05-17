package com.spring.mypham.DAOImpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.models.SanPham;

@Repository
public class SanPhamDAOImpl implements SanPhamDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public SanPhamDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory(); 
	}
	
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
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				SanPham s = new SanPham();
				s.setMaSanPham(Integer.parseInt(obj[0].toString()));
				s.setCongDung(obj[1].toString());
				s.setDonGia(Double.parseDouble(obj[2].toString()));
				s.setDonViTinh(obj[3].toString());
				s.setHanSuDung(Integer.parseInt(obj[4].toString()));
				s.setNhaCungCap(obj[5].toString());
				s.setSoLuongTon(Integer.parseInt(obj[6].toString()));
				s.setTenSanPham(obj[7].toString());
				s.setThanhPhan(obj[8].toString());
				s.setThue(Double.parseDouble(obj[9].toString()));
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
				rs.add(s);
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public List<String> getHinhAnhById(long maSanPham) {
		List<String> rs = new ArrayList<String>();
		Session session = sessionFactory.getCurrentSession();
		try {
			String sql = "Select hinhanh from sanpham s join hinhanh h on s.masanpham = h.masanpham where s.maSanPham = "
					+ maSanPham;
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object obj : objs) {
				rs.add(obj.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
}
