package com.spring.mypham.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.spring.mypham.models.SanPham;

public class SanPhamDao {
	private SessionFactory sessionFactory;

	public SanPhamDao() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}

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

	public Set<String> getHinhAnhById(long maSanPham) {
		Set<String> rs = new HashSet<String>();
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
