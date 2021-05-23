package com.spring.mypham.DAOImpl;

import java.util.ArrayList;
import java.util.List;

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
		Transaction tr = session.getTransaction();
		if(!tr.isActive())
			tr.begin();
		try {
			String sql = "Select hinhanh from sanpham s join hinhanh h on s.masanpham = h.masanpham where s.maSanPham = "
					+ maSanPham;
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object obj : objs) {
				rs.add(obj.toString());
			}
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public List<SanPham> getListSanPhamTheoPage(int page, List<SanPham> list) {
		int position = (page-1)*6;
		int end = position + 6;
		
		List<SanPham> sanPhams = new ArrayList<SanPham>();
		
		while(position < end && list.size() > position) {
			sanPhams.add(list.get(position));
			position++;
		}
		
		return sanPhams;
	}

	@Override
	public int getPageCountSanPham(List<SanPham> sanPhams) {
		if (sanPhams.size() % 6 == 0)
			return sanPhams.size() / 6;
		return ((int) (sanPhams.size() / 6)) + 1;
	}


	@Override
	@SuppressWarnings("unchecked")
	public List<SanPham> getListSanPhamTheoGia(int dinhMuc) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		String sql = "";
		try {
			if(dinhMuc==1)
				sql = "select * from SanPham Where donGia < 1000000";
			else if(dinhMuc==2)
				sql = "select * from SanPham Where donGia >= 1000000 And donGia <= 3000000";
			else 
				sql = "select * from SanPham Where donGia > 3000000";
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

	@Override
	public List<SanPham> getListSanPhamTheoDanhMuc(int maDanhMuc) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where maDanhMuc = " + maDanhMuc;
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

	@Override
	public List<SanPham> getListSanPhamTheoNCC(String ncc) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where NhaCungCap = N'" + ncc + "'" ;
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

	@Override
	public List<SanPham> getListSanPhamTheoTen(String tenSanPham) {
		List<SanPham> rs = new ArrayList<SanPham>();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from SanPham Where tenSanPham Like N'%" + tenSanPham + "%'" ;
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
			String sql = "select * from SanPham Where maSanPham = '" + maSanPham + "'" ;
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
		return rs.get(0);
	}
}
