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
	
	

	public HoaDon(long maHoaDon, LocalDate ngayLap, LocalDate ngayGiao, String trangThaiHoaDon, double tongTien,
			String sdtNhanHang, ThanhToan thanhToan, DiaChi diaChi, Set<LineItem> lineItem) {
		super();
		this.maHoaDon = maHoaDon;
		this.ngayLap = ngayLap;
		this.ngayGiao = ngayGiao;
		this.trangThaiHoaDon = trangThaiHoaDon;
		this.tongTien = tongTien;
		this.sdtNhanHang = sdtNhanHang;
		this.thanhToan = thanhToan;
		this.diaChi = diaChi;
		this.lineItem = lineItem;
	}
	


	public String getTrangThaiHoaDon() {
		return trangThaiHoaDon;
	}



	public void setTrangThaiHoaDon(String trangThaiHoaDon) {
		this.trangThaiHoaDon = trangThaiHoaDon;
	}



	public DiaChi getDiaChi() {
		return diaChi;
	}



	public void setDiaChi(DiaChi diaChi) {
		this.diaChi = diaChi;
	}



	public Set<LineItem> getLineItem() {
		return lineItem;
	}



	public void setLineItem(Set<LineItem> lineItem) {
		this.lineItem = lineItem;
	}



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



	@Override
	public String toString() {
		return "HoaDon [maHoaDon=" + maHoaDon + ", ngayLap=" + ngayLap + ", ngayGiao=" + ngayGiao + ", trangThaiHoaDon="
				+ trangThaiHoaDon + ", tongTien=" + tongTien + ", sdtNhanHang=" + sdtNhanHang + ", thanhToan="
				+ thanhToan + ", diaChi=" + diaChi + ", lineItem=" + lineItem + "]";
	}
	

}
