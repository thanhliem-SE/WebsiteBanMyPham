package com.spring.mypham.SERVICE;

import java.util.List;

import com.spring.mypham.models.User;

public interface UserService {
	public User getLoginInfoByUsername(String username) ;
	public Boolean checkLoginInfo(User userLogin,String roleName);
	public void saveUser(User user);
	public void resetPassword(User user);
	public User getNguoiDung(int id);
	public List<User> getListNguoiDung();
}
