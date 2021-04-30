package dao;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import models.Authority;
import models.DanhMuc;
import models.DiaChi;
import models.GioHang;
import models.HoaDon;
import models.KhachHang;
import models.LineItem;
import models.LoaiSanPham;
import models.NhanVien;
import models.SanPham;
import models.ThanhToan;
import models.User;

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
