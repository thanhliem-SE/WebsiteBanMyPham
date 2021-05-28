package com.spring.mypham.DAOImpl;



import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.UserDAO;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.SanPham;
import com.spring.mypham.models.User;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}
	
	@Override
	public void saveUser(User user) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		currentSession.saveOrUpdate(user);
		tr.commit();
	}
	

	@Override
	public User getLoginInfoByUsername(String username) {
		User user = new User();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from users where username like ?";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).setParameter(1, username).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				
				user.setUsername(obj[0].toString());
				if(obj[1].toString().equalsIgnoreCase("true"))
					user.setEnabled(true);
				else user.setEnabled(false);
	
				user.setPassword(obj[2].toString());
				user.toString();
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	@Override
	public void resetPassword(User user) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
//		System.out.println("Make: "+khachHang.toString());
//		System.out.println("Make: "+khachHang.getDiaChi().toString());
		try {
			String sql = "update users set password=? where username like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, user.getPassword())
				.setParameter(2, user.getUsername()).executeUpdate();
			tr.commit();
			System.out.println("reset mat khau Thanh COng");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("reset mat khau Khong Thanh COng");
		}
	}

	@Override
	public Boolean checkLoginInfo(User userLogin) {
		User user = new User();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from users where username like ?";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).setParameter(1, userLogin.getUsername()).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				
				user.setUsername(obj[0].toString());
				if(obj[1].toString().equalsIgnoreCase("true"))
					user.setEnabled(true);
				else user.setEnabled(false);
	
				user.setPassword(obj[2].toString());
				if(userLogin.getUsername().equals(user.getUsername()) && userLogin.getPassword().equals(user.getPassword()) && user.isEnabled()==true) {
					return true;
				}
				
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
}
