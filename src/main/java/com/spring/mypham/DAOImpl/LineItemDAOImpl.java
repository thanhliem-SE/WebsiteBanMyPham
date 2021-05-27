package com.spring.mypham.DAOImpl;

import java.util.List;import javax.sound.sampled.Line;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.LineItemDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.LineItem;

@Repository
public class LineItemDAOImpl implements LineItemDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public LineItemDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}

	@Transactional
	@Override
	public void saveLineItem(LineItem item) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(item);
	}

	@Transactional
	@Override
	public void deleteLineItem(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		LineItem item = currentSession.get(LineItem.class, id);
		currentSession.delete(item);
	}

	@Transactional
	@Override
	public LineItem getLineItem(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		LineItem item = currentSession.get(LineItem.class, id);
		return item;
	}

	@Transactional
	@Override
	public List<LineItem> getListLineItem() {
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		Query<LineItem> theQuery = currentSession.createQuery("from LineItem", LineItem.class);
		List<LineItem> list = theQuery.getResultList();
		return list;
	}

}
