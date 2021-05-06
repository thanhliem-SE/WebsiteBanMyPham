package com.spring.mypham.models;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Set;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class HoaDon implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3798406537340082050L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maHoaDon;
	private LocalDate ngayLap;
	private LocalDate ngayGiao;
	@Nationalized
	private String trangThaiHoaDon;

	private double tongTien;
	private String sdtNhanHang;
	
	@OneToOne
	@JoinColumn(name = "maThanhToan")
	private ThanhToan thanhToan;
	
	@Embedded
	private DiaChi diaChi;
	
	@OneToMany(mappedBy = "hoaDon")
	private Set<LineItem> lineItem;
	
	

	public ThanhToan getThanhToan() {
		return thanhToan;
	}

	public void setThanhToan(ThanhToan thanhToan) {
		this.thanhToan = thanhToan;
	}

	public long getMaHoaDon() {
		return maHoaDon;
	}

	public void setMaHoaDon(long maHoaDon) {
		this.maHoaDon = maHoaDon;
	}

	public LocalDate getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(LocalDate ngayLap) {
		this.ngayLap = ngayLap;
	}

	public LocalDate getNgayGiao() {
		return ngayGiao;
	}

	public void setNgayGiao(LocalDate ngayGiao) {
		this.ngayGiao = ngayGiao;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public String getSdtNhanHang() {
		return sdtNhanHang;
	}

	public void setSdtNhanHang(String sdtNhanHang) {
		this.sdtNhanHang = sdtNhanHang;
	}

	public HoaDon() {
		super();
	}

}
