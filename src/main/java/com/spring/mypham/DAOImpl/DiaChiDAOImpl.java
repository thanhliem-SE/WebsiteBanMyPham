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
import com.spring.mypham.DAO.DiaChiDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.DiaChi;


@Repository
public class DiaChiDAOImpl implements DiaChiDAO {
	@Autowired
	private static final SessionFactory sessionFactory = MySessionFactory.getInstance().getSessionFactory();

	@Override
	public DiaChi getPhuong(String phuong) {
		Session currentSession = sessionFactory.getCurrentSession();
		DiaChi diaChi=currentSession.get(DiaChi.class, phuong);
		return diaChi;
	}

	@Override
	public DiaChi getQuan(String quan) {
		Session currentSession = sessionFactory.getCurrentSession();
		DiaChi diaChi=currentSession.get(DiaChi.class, quan);
		return diaChi;
	}

	@Override
	public DiaChi getThanhPho(String thanhpho) {
		Session currentSession = sessionFactory.getCurrentSession();
		DiaChi diaChi=currentSession.get(DiaChi.class, thanhpho);
		return diaChi;
	}

}
