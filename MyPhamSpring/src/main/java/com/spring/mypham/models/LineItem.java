package com.spring.mypham.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LineItem implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maLineItem;
	private int soLuong;
	private double thanhTien;

	@ManyToOne
	@JoinColumn(name = "maGioHang")
	private GioHang gioHang;

	@ManyToOne
	@JoinColumn(name = "maHoaDon")
	private HoaDon hoaDon;

	@ManyToOne
	@JoinColumn(name = "maSanPham")
	private SanPham sanPham;

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public HoaDon getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(HoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}

	public GioHang getGioHang() {
		return gioHang;
	}

	public void setGioHang(GioHang gioHang) {
		this.gioHang = gioHang;
	}

	public long getMaLineItem() {
		return maLineItem;
	}

	public void setMaLineItem(long maLineItem) {
		this.maLineItem = maLineItem;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public double getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(double thanhTien) {
		this.thanhTien = thanhTien;
	}

	public LineItem() {
		super();
	}

}
