package com.spring.mypham.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.SanPhamDAO;
import com.spring.mypham.models.SanPham;

@Repository
public class SanPhamDAOImpl implements SanPhamDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public SanPhamDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}

	@Transactional
	@Override
	public void saveSanPham(SanPham sanPham) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.getTransaction();
		if (!tr.isActive())
			tr = currentSession.beginTransaction();
		try {
			currentSession.saveOrUpdate(sanPham);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public void deleteSanPham(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			SanPham sanPham = currentSession.get(SanPham.class, id);
			currentSession.delete(sanPham);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public SanPham getDienThoai(Long id) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where maSanPham = '" + id + "'";
			NativeQuery<SanPham> theQuery = session.createNativeQuery(sql, SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs.get(0);
	}

	@Override
	public List<SanPham> getListSanPham() {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.getTransaction();
		if (!tr.isActive())
			tr = session.beginTransaction();
		try {
			Query<SanPham> theQuery = session.createQuery("from SanPham", SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return rs;
	}

	public List<String> getHinhAnhById(long maSanPham) {
		List<String> rs = new ArrayList<String>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.getTransaction();
		if (!tr.isActive())
			tr.begin();
		try {
			String sql = "Select hinhanh from sanpham s join hinhanh h on s.masanpham = h.masanpham where s.maSanPham = "
					+ maSanPham;
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			if (objs.size() > 0)
				for (Object obj : objs) {
					rs.add(obj.toString());
				}
			else
				rs.add("img-default.jpg");
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoPage(int page, List<SanPham> list) {
		int position = (page - 1) * 6;
		int end = position + 6;

		List<SanPham> sanPhams = new ArrayList<SanPham>();

		while (position < end && list.size() > position) {
			sanPhams.add(list.get(position));
			position++;
		}

		return sanPhams;
	}

	@Transactional
	@Override
	public int getPageCountSanPham(List<SanPham> sanPhams) {
		if (sanPhams.size() % 6 == 0)
			return sanPhams.size() / 6;
		return ((int) (sanPhams.size() / 6)) + 1;
	}

	@Override
	public List<SanPham> getListSanPhamTheoGia(int dinhMuc) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		String sql = "";
		try {
			if (dinhMuc == 1)
				sql = "select * from SanPham Where donGia < 1000000";
			else if (dinhMuc == 2)
				sql = "select * from SanPham Where donGia >= 1000000 And donGia <= 3000000";
			else
				sql = "select * from SanPham Where donGia > 3000000";
			NativeQuery<SanPham> theQuery = session.createNativeQuery(sql, SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public List<SanPham> getListSanPhamTheoDanhMuc(int maDanhMuc) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where maDanhMuc = " + maDanhMuc;
			NativeQuery<SanPham> theQuery = session.createNativeQuery(sql, SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public List<SanPham> getListSanPhamTheoNCC(String ncc) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "Select * from SanPham maSanPham where maSanPham in\r\n"
					+ "(select maSanPham from SanPham s join NhaCungCap ncc on s.maNhaCungCap = ncc.id Where tenNCC = N'"
					+ ncc + "')";
			NativeQuery<SanPham> theQuery = session.createNativeQuery(sql, SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public List<SanPham> getListSanPhamTheoTen(String tenSanPham) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where tenSanPham Like N'%" + tenSanPham + "%'";
			NativeQuery<SanPham> theQuery = session.createNativeQuery(sql, SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Transactional
	@Override
	public List<SanPham> getListSanPhamTheoTrangThai(int trangThai) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SanPham getSanPhamByID(long maSanPham) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where maSanPham = '" + maSanPham + "'";
			NativeQuery<SanPham> theQuery = session.createNativeQuery(sql, SanPham.class);
			rs = theQuery.getResultList();
			for (SanPham s : rs)
				s.setHinhAnh(getHinhAnhById(s.getMaSanPham()));
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs.get(0);
	}
}
