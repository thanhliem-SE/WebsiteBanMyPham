package com.spring.mypham.models;

import java.io.Serializable;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class KhachHang implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2682900146649367750L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maKhachHang;

	@Nationalized
	private String tenKhachHang;
	private String soDienThoai;
	private String email;
	private String CMND;
	@Nationalized
	private String gioiTinh;
	private int namSinh;
	@Nationalized
	private String ngheNghiep;

	@OneToOne
	@JoinColumn(name = "username")
	private User user;

	@OneToOne(mappedBy = "khachHang")
	private GioHang gioHang;


	@Embedded
	private DiaChi diaChi;

	public DiaChi getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(DiaChi diaChi) {
		this.diaChi = diaChi;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(long maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCMND() {
		return CMND;
	}

	public void setCMND(String cMND) {
		CMND = cMND;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public int getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(int namSinh) {
		this.namSinh = namSinh;
	}

	public String getNgheNghiep() {
		return ngheNghiep;
	}

	public void setNgheNghiep(String ngheNghiep) {
		this.ngheNghiep = ngheNghiep;
	}

	public KhachHang() {
		super();
	}

	@Override
	public String toString() {
		return "KhachHang [maKhachHang=" + maKhachHang + ", tenKhachHang=" + tenKhachHang + ", soDienThoai="
				+ soDienThoai + ", email=" + email + ", CMND=" + CMND + ", gioiTinh=" + gioiTinh + ", namSinh="
				+ namSinh + ", ngheNghiep=" + ngheNghiep + ", user=" + user + ", gioHang=" + gioHang + ", diaChi="
				+ diaChi + "]";
	}
	

}
