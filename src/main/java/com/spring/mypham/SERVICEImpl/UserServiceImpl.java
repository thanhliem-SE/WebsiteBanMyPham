package com.spring.mypham.SERVICEImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.UserDAO;
import com.spring.mypham.DAOImpl.UserDAOImpl;
import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.models.User;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDao;
	
	
	public UserServiceImpl() {
		this.userDao = new UserDAOImpl();
	}
	
	public void saveUser(User user) {
		this.userDao.saveUser(user);
	}
	
	@Override
	public User getLoginInfoByUsername(String username) {
		return userDao.getLoginInfoByUsername(username);
	}




	@Override
	public void resetPassword(User user) {
		// TODO Auto-generated method stub
		this.userDao.resetPassword(user);
	}
	@Override
	public Boolean checkLoginInfo(User userLogin, String roleName) {
		// TODO Auto-generated method stub
		return userDao.checkLoginInfo(userLogin, roleName);
	}
	@Transactional
	@Override
	public User getNguoiDung(int id) {
		// TODO Auto-generated method stub
		return userDao.getNguoiDung(id);
	}
	@Transactional
	@Override
	public List<User> getListNguoiDung() {
		return userDao.getListNguoiDung();
	}

	

}
