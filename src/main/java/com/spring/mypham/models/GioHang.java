package com.spring.mypham.models;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class GioHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7249463200073023192L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maGioHang;
	private LocalDate ngayTao;

	@OneToOne
	@JoinColumn(name = "maKhachHang")
	private KhachHang khachHang;
	
	@OneToMany(mappedBy = "gioHang")
	private List<LineItem> lineItem;

	public long getMaGioHang() {
		return maGioHang;
	}

	public void setMaGioHang(long maGioHang) {
		this.maGioHang = maGioHang;
	}

	public LocalDate getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(LocalDate ngayTao) {
		this.ngayTao = ngayTao;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	@Override
	public String toString() {
		return "GioHang []";
	}

}
