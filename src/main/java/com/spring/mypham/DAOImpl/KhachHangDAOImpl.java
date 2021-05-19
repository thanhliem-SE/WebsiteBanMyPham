package com.spring.mypham.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mypham.DAO.KhachHangDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.User;

@Repository
public class KhachHangDAOImpl implements KhachHangDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	public KhachHangDAOImpl() {
		// TODO Auto-generated constructor stub
		this.sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}
	@Transactional
	@Override
	public void saveKhachHang(KhachHang khachHang) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		currentSession.saveOrUpdate(khachHang);
		tr.commit();
	}
	
	@Transactional
	@Override
	public String isExistKhachhang(KhachHang khachHang) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select email,soDienThoai,username from KhachHang";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				
				String email = obj[0].toString();
				String soDienThoai = obj[1].toString();
				String username = obj[2].toString();
				if(khachHang.getUser().getUsername().equals(username)) {
					return "Username Exist";
				}
				if(khachHang.getEmail().equals(email)) {
					return "Email Exist";
				}
				if(khachHang.getSoDienThoai().equals(soDienThoai)) {
					return "Phone Exist";
				}
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//KhachHang moi (Hop le)
		return "Ready";
	}
	
	
}
