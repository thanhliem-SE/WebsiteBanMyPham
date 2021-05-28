package com.spring.mypham.DAO;

import java.util.ArrayList;

import com.spring.mypham.models.User;

public interface UserDAO {
	public User getLoginInfoByUsername(String username);

	public Boolean checkLoginInfo(User user);

	public void saveUser(User user);

	void resetPassword(User user);

}
