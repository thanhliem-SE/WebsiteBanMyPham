package com.spring.mypham.SERVICEImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mypham.DAO.UserDAO;
import com.spring.mypham.DAOImpl.UserDAOImpl;
import com.spring.mypham.SERVICE.UserService;
import com.spring.mypham.models.SanPham;
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
	public Boolean checkLoginInfo(User userLogin) {
		// TODO Auto-generated method stub
		return userDao.checkLoginInfo(userLogin);
	}

}
