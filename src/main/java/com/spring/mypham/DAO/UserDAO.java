package com.spring.mypham.DAO;

import java.util.ArrayList;
import java.util.List;

import com.spring.mypham.models.User;

public interface UserDAO {
	public User getLoginInfoByUsername(String username);

	public void saveUser(User user);

	void resetPassword(User user);

	public Boolean checkLoginInfo(User userLogin,String roleName) ;
	
	public User getNguoiDung(int id);
	public List<User> getListNguoiDung();

	public List<String> getUserRoles(String username);
}
