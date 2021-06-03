package com.spring.mypham.DAO;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.spring.mypham.models.DanhGia;
import com.spring.mypham.models.DanhMuc;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.GioHang;
import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.LineItem;
import com.spring.mypham.models.NhaCungCap;
import com.spring.mypham.models.NhanVien;
import com.spring.mypham.models.Role;
import com.spring.mypham.models.SanPham;
import com.spring.mypham.models.ThanhToan;
import com.spring.mypham.models.User;

public class MySessionFactory {

	private static MySessionFactory instance = null;
	private SessionFactory sessionFactory;

	public MySessionFactory() {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		Metadata meta = new MetadataSources(registry)
				.addAnnotatedClass(Role.class)
				.addAnnotatedClass(DanhMuc.class)
				.addAnnotatedClass(DiaChi.class)
				.addAnnotatedClass(GioHang.class)
				.addAnnotatedClass(HoaDon.class)
				.addAnnotatedClass(KhachHang.class)
				.addAnnotatedClass(LineItem.class)
				.addAnnotatedClass(NhanVien.class)
				.addAnnotatedClass(SanPham.class)
				.addAnnotatedClass(ThanhToan.class)
				.addAnnotatedClass(User.class)
				.addAnnotatedClass(NhaCungCap.class)
				.addAnnotatedClass(DanhGia.class)
				.getMetadataBuilder().build();
		sessionFactory = meta.getSessionFactoryBuilder().build();
	}

	public static MySessionFactory getInstance() {
		if (instance == null)
			instance = new MySessionFactory();
		return instance;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
