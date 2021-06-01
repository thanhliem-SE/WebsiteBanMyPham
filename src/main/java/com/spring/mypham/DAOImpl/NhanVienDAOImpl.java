package com.spring.mypham.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.DAO.NhanVienDAO;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.NhanVien;
import com.spring.mypham.models.User;
@Repository
public class NhanVienDAOImpl implements NhanVienDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public NhanVienDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}
	@Override
	public void saveNhanVien(NhanVien nv) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		currentSession.saveOrUpdate(nv);
		tr.commit();
		
		
		
	}

	@Override
	public String isExistNhanVien(NhanVien nhanVien) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select email,soDienThoai,username from NhanVien";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				
				String email = obj[0].toString();
				String soDienThoai = obj[1].toString();
				String username = obj[2].toString();
				if(nhanVien.getUser().getUsername().equals(username)) {
					return "Username Exist";
				}
				if(nhanVien.getEmail().equals(email)) {
					return "Email Exist";
				}
				if(nhanVien.getSoDienThoai().equals(soDienThoai)) {
					return "Phone Exist";
				}
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//nhanVien moi (Hop le)
		return "Ready";
	}
	public ArrayList<NhanVien> getAllNhanVien() {
		ArrayList<NhanVien> listNV = new ArrayList<NhanVien>();
		
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select * from NhanVien";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				NhanVien nv = new NhanVien();
				User user = new User();
				DiaChi dc = new DiaChi();
				if(obj[0]!=null)
					nv.setMaNhanVien(Long.parseLong(obj[0].toString()));
				else nv.setMaNhanVien(0);
				if(obj[1]!=null)
					nv.setCMND(obj[1].toString());
				else nv.setCMND("Chưa có");
				if(obj[2]!=null)
					nv.setChucVu(obj[2].toString());
				else nv.setChucVu("Chưa có");
				if(obj[3]!=null)
					nv.setEmail(obj[3].toString());
				else nv.setEmail("Chưa có");
				if(obj[4]!=null)
					nv.setGioiTinh(obj[4].toString());
				else nv.setGioiTinh("Chưa có");
				if(obj[5]!=null)
					nv.setNamSinh(Integer.parseInt(obj[5].toString()));
				else nv.setNamSinh(0);
				if(obj[6]!=null)
					nv.setSoDienThoai(obj[6].toString());
				else nv.setSoDienThoai("Chưa có");
				if(obj[7]!=null)
					nv.setTenNhanVien(obj[7].toString());
				else nv.setTenNhanVien("Chưa có");
				if(obj[8]!=null)
					nv.setTrinhDoHocVan(obj[8].toString());
				else nv.setTrinhDoHocVan("Chưa có");
				if(obj[9]!=null)
					user.setUsername(obj[9].toString());
				else user.setUsername("Chưa có");
				
				nv.setUser(user);
				
				listNV.add(nv);
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listNV;
	}
	@Override
	public void updateNhanVien(NhanVien nhanVien) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
//		System.out.println("Make: "+nhanVien.toString());
//		System.out.println("Make: "+nhanVien.getDiaChi().toString());
		int role=2;
		if(nhanVien.getChucVu().equalsIgnoreCase("ADMIN"))
			role=2;
		if(nhanVien.getChucVu().equalsIgnoreCase("MANAGER"))
			role=3;
		try {
			String sql = "update NhanVien set tenNhanVien=?,soDienThoai=?,email=?,chucVu=?,CMND=?,gioiTinh=?,namSinh=?,trinhDoHocVan=? where username like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, nhanVien.getTenNhanVien())
				.setParameter(2, nhanVien.getSoDienThoai())
				.setParameter(3, nhanVien.getEmail())
				.setParameter(4, nhanVien.getChucVu())
				.setParameter(5, nhanVien.getCMND())
				.setParameter(6, nhanVien.getGioiTinh())
				.setParameter(7, nhanVien.getNamSinh())
				.setParameter(8, nhanVien.getTrinhDoHocVan())
				.setParameter(9, nhanVien.getUser().getUsername())
				.executeUpdate();
			sql = "update user_role set ROLE_ID=? where USER_ID like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, role)
				.setParameter(2, nhanVien.getUser().getUsername())
				.executeUpdate();
			tr.commit();
			System.out.println("Update Thanh COng");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Update Khong Thanh COng");
		}
		
		
		
	}
	public void updateRole(NhanVien nhanVien) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		int role=2;
		if(nhanVien.getChucVu().equalsIgnoreCase("ADMIN"))
			role=2;
		if(nhanVien.getChucVu().equalsIgnoreCase("MANAGER"))
			role=3;
		try {
			String sql = "update user_role set ROLE_ID=? where USER_ID like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, role)
				.setParameter(2, nhanVien.getUser().getUsername())
				.executeUpdate();
			tr.commit();
		} catch (Exception e) {
			// TODO: handle exception
		}
	
	}

	@Override
	public void deleteNhanVienByUserName(String username) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			String sql = "delete user_role where USER_ID like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, username).executeUpdate();
			sql = "delete NhanVien where username like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, username).executeUpdate();
			sql = "delete users where username like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, username).executeUpdate();
			tr.commit();
			System.out.println("Delete Thanh COng");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Delete Khong Thanh COng");
		}
	}

}
