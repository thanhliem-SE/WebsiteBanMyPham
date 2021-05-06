package com.spring.mypham.init;

import com.spring.mypham.dao.MySessionFactorys;

public class MainTest {
	public static void main(String[] args) {
		MySessionFactorys.getInstance().getSessionFactory();
	}
}
