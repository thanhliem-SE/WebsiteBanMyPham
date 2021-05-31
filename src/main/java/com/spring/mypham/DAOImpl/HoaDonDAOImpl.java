package com.spring.mypham.DAOImpl;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mypham.DAO.HoaDonDAO;
import com.spring.mypham.DAO.MySessionFactory;
import com.spring.mypham.models.HoaDon;
import com.spring.mypham.models.ThanhToan;

@Repository
public class HoaDonDAOImpl implements HoaDonDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public HoaDonDAOImpl() {
		sessionFactory = MySessionFactory.getInstance().getSessionFactory();
	}
	
	
	
	@Transactional
	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(hoaDon);
	}

	@Transactional
	@Override
	public HoaDon getHoaDon(Long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		HoaDon hd = currentSession.get(HoaDon.class, id);
		return hd;
	}

	@Transactional
	@Override
	public List<HoaDon> getListHoaDon() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<HoaDon> theQuery = currentSession.createQuery("from HoaDon", HoaDon.class);
		List<HoaDon> hds = theQuery.getResultList();
		return hds;
	}
	@Override
	public Map<HoaDon,String> getListHoaDonByUsername(String username) {
		Map<HoaDon,String> map  = new HashMap<>();
		
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();

		try {
			String sql = "select hd.maHoaDon,hd.ngayLap,string_agg(sp.tenSanPham+' *'+convert(nvarchar(10),li.soLuong)+' '+sp.donViTinh+CHAR(13)+CHAR(10), ',') tenCacSanPham,SUM(li.thanhTien),hd.trangThaiHoaDon from HoaDon hd join LineItem li \r\n"
					+ "ON hd.maHoaDon = li.maHoaDon JOIN GioHang gh ON li.maGioHang = gh.maGioHang JOIN KhachHang kh \r\n"
					+ "ON kh.maKhachHang=gh.maKhachHang JOIN SanPham sp ON li.maSanPham=sp.maSanPham where kh.username like ? \r\n"
					+ "GROUP BY hd.maHoaDon,hd.ngayLap,hd.trangThaiHoaDon";
			@SuppressWarnings("unchecked")
			List<Object> objs = session.createNativeQuery(sql).setParameter(1, username).getResultList();
			for (Object arrayObj : objs) {
				HoaDon hd = new HoaDon();
				String content=new String();
				Object[] obj = (Object[]) arrayObj;
				hd.setMaHoaDon(Long.parseLong(obj[0].toString()));
				hd.setNgayLap(LocalDate.parse(obj[1].toString()));
				content = obj[2].toString();
				hd.setTongTien(Double.parseDouble(obj[3].toString()));
				hd.setTrangThaiHoaDon(obj[4].toString());
				map.put(hd, content);
			}

			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return map;
	}

}
