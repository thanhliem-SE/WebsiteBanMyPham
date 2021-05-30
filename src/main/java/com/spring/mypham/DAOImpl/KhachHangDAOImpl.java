package com.spring.mypham.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mypham.DAO.KhachHangDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.DiaChi;
import com.spring.mypham.models.KhachHang;
import com.spring.mypham.models.SanPham;
import com.spring.mypham.models.User;

@Repository
public class KhachHangDAOImpl implements KhachHangDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	public KhachHangDAOImpl() {
		// TODO Auto-generated constructor stub
		this.sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}

	@Override
	public KhachHang getKhachHangByUsername(String username) {
		KhachHang kh = new KhachHang();
		DiaChi diaChi = new DiaChi();
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select maKhachHang,email,soDienThoai,tenKhachHang,KhachHang.username, users.password, enabled,soCMND,ghiChu,phuong,quan,thanhPho,soNha from KhachHang INNER JOIN users ON KhachHang.username = users.username where KhachHang.username like ?";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).setParameter(1, username).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				kh.setMaKhachHang(Long.parseLong(obj[0].toString()));
				kh.setEmail(obj[1].toString());
				kh.setSoDienThoai(obj[2].toString());
				kh.setTenKhachHang(obj[3].toString());
				
				User user = new User();
				user.setUsername(obj[4].toString());
				user.setPassword(obj[5].toString());
				if(obj[6].toString().equalsIgnoreCase("True"))
					user.setEnabled(true);
				else user.setEnabled(false);
				if(obj[7]!=null)
					kh.setSoCMND(obj[7].toString());
				if(obj[8]!=null)
					diaChi.setGhiChu(obj[8].toString());
				if(obj[9]!=null)
					diaChi.setPhuong(obj[9].toString());
				if(obj[10]!=null) {
					diaChi.setQuan(obj[10].toString());
					System.out.println("QUan: "+diaChi.getQuan());
				}
				else System.out.println("Quan is Null");
					
				if(obj[11]!=null)
					diaChi.setThanhPho(obj[11].toString());
				if(obj[12]!=null)
					diaChi.setSoNha(obj[12].toString());
				kh.setDiaChi(diaChi);
				kh.setUser(user);
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return kh;
	}
	@Override
	public void saveKhachHang(KhachHang khachHang) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		currentSession.saveOrUpdate(khachHang);
		tr.commit();
	}
	@Override
	public void deleteKhachHangByUserName(String username) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
		try {
			String sql = "delete KhachHang where username like ?";
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
	
	
	@Override
	public void updateKhachHang(KhachHang khachHang) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaction tr = currentSession.beginTransaction();
//		System.out.println("Make: "+khachHang.toString());
//		System.out.println("Make: "+khachHang.getDiaChi().toString());
		try {
			String sql = "update KhachHang set tenKhachHang=?,soDienThoai=?,email=?,phuong=?,quan=?,thanhPho=?,soNha=?,ghiChu=?,soCMND=? where username like ?";
			currentSession.createNativeQuery(sql)
				.setParameter(1, khachHang.getTenKhachHang())
				.setParameter(2, khachHang.getSoDienThoai())
				.setParameter(3, khachHang.getEmail())
				.setParameter(4, khachHang.getDiaChi().getPhuong())
				.setParameter(5, khachHang.getDiaChi().getQuan())
				.setParameter(6, khachHang.getDiaChi().getThanhPho())
				.setParameter(10, khachHang.getUser().getUsername())
				.setParameter(7, khachHang.getDiaChi().getSoNha())
				.setParameter(8, khachHang.getDiaChi().getGhiChu())
				.setParameter(9, khachHang.getSoCMND())
				.executeUpdate();
			tr.commit();
			System.out.println("Update Thanh COng");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Update Khong Thanh COng");
		}
	}
	
	
	
	@Override
	public String isExistKhachhang(KhachHang khachHang) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select email,soDienThoai,username from KhachHang";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				
				String email = obj[0].toString();
				String soDienThoai = obj[1].toString();
				String username = obj[2].toString();
				if(khachHang.getUser().getUsername().equals(username)) {
					return "Username Exist";
				}
				if(khachHang.getEmail().equals(email)) {
					return "Email Exist";
				}
				if(khachHang.getSoDienThoai().equals(soDienThoai)) {
					return "Phone Exist";
				}
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//KhachHang moi (Hop le)
		return "Ready";
	}
	@Override
	public ArrayList<KhachHang> getAllKhachHang() {
		ArrayList<KhachHang> listKH = new ArrayList<KhachHang>();
		
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select kh.tenKhachHang, kh.email, kh.soDienThoai, u.username, kh.thanhPho from users u JOIN KhachHang kh ON u.username = kh.username";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).getResultList();
			for (Object arrayObj : objs) {
				Object[] obj = (Object[]) arrayObj;
				KhachHang kh = new KhachHang();
				User user = new User();
				DiaChi dc = new DiaChi();
				if(obj[0]!=null)
					kh.setTenKhachHang(obj[0].toString());
				else kh.setTenKhachHang("Chýa có");
				if(obj[1]!=null)
					kh.setEmail(obj[1].toString());
				else kh.setEmail("Chýa có");
				if(obj[2]!=null)
					kh.setSoDienThoai(obj[2].toString());
				else kh.setSoDienThoai("Chýa có");
				user.setUsername(obj[3].toString());
				if(obj[4]!=null)
					dc.setThanhPho(obj[4].toString());
				else dc.setThanhPho("Chýa có");
				kh.setUser(user);
				kh.setDiaChi(dc);
				listKH.add(kh);
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listKH;
	}
	
	
}
