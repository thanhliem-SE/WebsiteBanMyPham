package com.spring.mypham.models;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class NhanVien implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3330852624213187299L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maNhanVien;

	@Nationalized
	private String tenNhanVien;
	private String soDienThoai;
	private String email;
	private String CMND;
	@Nationalized
	private String gioiTinh;
	private int namSinh;
	@Nationalized
	private String trinhDoHocVan;
	@Nationalized
	private String chucVu;
	
	@OneToMany(mappedBy = "nhanVien")
	private Set<SanPham> sanPham;

	@OneToOne
	@JoinColumn(name = "username")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(long maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getTenNhanVien() {
		return tenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
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

	public String getTrinhDoHocVan() {
		return trinhDoHocVan;
	}

	public void setTrinhDoHocVan(String trinhDoHocVan) {
		this.trinhDoHocVan = trinhDoHocVan;
	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}

	@Override
	public String toString() {
		return "NhanVien []";
	}

}
