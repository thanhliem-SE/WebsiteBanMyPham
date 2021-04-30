package models;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class ThanhToan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3140849385937063952L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maThanhToan;

	private LocalDate ngayThanhToan;
	private double tongTien;
	@Nationalized
	private String ghiChu;
	
	@OneToOne(mappedBy = "thanhToan")
	private HoaDon hoaDon;

	public long getMaThanhToan() {
		return maThanhToan;
	}

	public void setMaThanhToan(long maThanhToan) {
		this.maThanhToan = maThanhToan;
	}

	public LocalDate getNgayThanhToan() {
		return ngayThanhToan;
	}

	public void setNgayThanhToan(LocalDate ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public ThanhToan() {
		super();
	}

}
