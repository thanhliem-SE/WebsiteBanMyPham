package com.spring.mypham.dao;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.spring.mypham.models.Authority;
import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.GioHang;
import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.LineItem;
import com.spring.mypham.models.LoaiSanPham;
import com.spring.mypham.models.NhanVien;
import com.spring.mypham.models.SanPham;
import com.spring.mypham.models.ThanhToan;
import com.spring.mypham.models.User;

public class MySessionFactorys {

	private static MySessionFactorys instance = null;
	private SessionFactory sessionFactory;

	public MySessionFactorys() {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		Metadata meta = new MetadataSources(registry)
				.addAnnotatedClass(Authority.class)
				.addAnnotatedClass(DanhMuc.class)
				.addAnnotatedClass(DiaChi.class)
				.addAnnotatedClass(GioHang.class)
				.addAnnotatedClass(HoaDon.class)
				.addAnnotatedClass(KhachHang.class)
				.addAnnotatedClass(LineItem.class)
				.addAnnotatedClass(LoaiSanPham.class)
				.addAnnotatedClass(NhanVien.class)
				.addAnnotatedClass(SanPham.class)
				.addAnnotatedClass(ThanhToan.class)
				.addAnnotatedClass(User.class)
				.getMetadataBuilder().build();
		sessionFactory = meta.getSessionFactoryBuilder().build();
	}

	public static MySessionFactorys getInstance() {
		if (instance == null)
			instance = new MySessionFactorys();
		return instance;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
