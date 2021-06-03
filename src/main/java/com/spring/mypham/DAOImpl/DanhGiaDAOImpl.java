package com.spring.mypham.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.DanhGiaDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.DanhGia;
import com.spring.mypham.models.DanhMuc;

public class DanhGiaDAOImpl implements DanhGiaDAO {

	private static final SessionFactory sessionFactory = MySessionFactory.getInstance().getSessionFactory();

	@Override
	public List<DanhGia> getListDanhGia() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addDanhGia(DanhGia danhGia) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			currentSession.saveOrUpdate(danhGia);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public DanhGia getDanhGia(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteDanhGia() {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public List<DanhGia> getListDanhGiaBySanPham(long maSanPham) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		NativeQuery<DanhGia> theQuery = currentSession
				.createNativeQuery("Select * from DanhGia where maSanPham= " + maSanPham, DanhGia.class);
		List<DanhGia> result = null;
		try {
			result = theQuery.getResultList();
			tr.commit();
		} catch (Exception e) {
			result = null;
		}

		return result;
	}

	@Override
	@Transactional
	public Boolean checkQuyenDanhGia(String username, long maSanPham) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		NativeQuery theQuery = currentSession.createNativeQuery(
				"Select kh.maKhachHang From SanPham sp Join LineItem l On sp.maSanPham = l.maSanPham\r\n"
						+ "Join GioHang gh On l.maGioHang = gh.maGioHang Join KhachHang kh ON gh.maKhachHang = kh.maKhachHang\r\n"
						+ "Join users u On kh.username = u.username where l.maSanPham = " + maSanPham
						+ " and kh.username = '" + username + "'");
		if (theQuery.getResultList().size() > 0) {
			tr.commit();
			return true;
		}
		return false;
	}

}
