package com.spring.mypham.models;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class SanPham implements Serializable {

	private static final long serialVersionUID = 41506777562134742L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maSanPham;
	@Nationalized
	private String tenSanPham;

	@OneToOne
	@JoinColumn(name = "maNhaCungCap")
	private NhaCungCap NhaCungCap;

	private double donGia;
	private int hanSuDung;
	@Nationalized
	private String donViTinh;
	private int soLuongTon;
	private double thue;
	@Nationalized
	@Lob
	private String thanhPhan;
	@Nationalized
	@Lob
	private String congDung;

	private double giamGia;

	@ElementCollection(fetch = FetchType.EAGER)
	@CollectionTable(name = "HinhAnh", joinColumns = @JoinColumn(name = "maSanPham"))
	private List<String> hinhAnh;

	@OneToMany(mappedBy = "sanPham",fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Set<LineItem> lineItem;

	@ManyToOne
	@JoinColumn(name = "maDanhMuc")
	private DanhMuc danhMuc;

	@OneToOne
	@JoinColumn(name = "maNhanVien")
	private NhanVien nhanVien;

	public void setNhaCungCap(NhaCungCap nhaCungCap) {
		NhaCungCap = nhaCungCap;
	}

	public NhaCungCap getNhaCungCap() {
		return NhaCungCap;
	}

	public double getGiamGia() {
		return giamGia;
	}

	public void setGiamGia(double giamGia) {
		this.giamGia = giamGia;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public DanhMuc getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}

	public long getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(long maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public double getDonGia() {
		return donGia;
	}

	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}

	public int getHanSuDung() {
		return hanSuDung;
	}

	public void setHanSuDung(int hanSuDung) {
		this.hanSuDung = hanSuDung;
	}

	public String getDonViTinh() {
		return donViTinh;
	}

	public void setDonViTinh(String donViTinh) {
		this.donViTinh = donViTinh;
	}

	public int getSoLuongTon() {
		return soLuongTon;
	}

	public void setSoLuongTon(int soLuongTon) {
		this.soLuongTon = soLuongTon;
	}

	public double getThue() {
		return thue;
	}

	public void setThue(double thue) {
		this.thue = thue;
	}

	public String getThanhPhan() {
		return thanhPhan;
	}

	public void setThanhPhan(String thanhPhan) {
		this.thanhPhan = thanhPhan;
	}

	public String getCongDung() {
		return congDung;
	}

	public void setCongDung(String congDung) {
		this.congDung = congDung;
	}

	public List<String> getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(List<String> hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public SanPham() {
		super();
	}

	public String getPathFirstImg() {
		return getHinhAnh().get(0);
	}

	@Override
	public String toString() {
		return "SanPham [maSanPham=" + maSanPham + ", tenSanPham=" + tenSanPham + ", NhaCungCap=" + NhaCungCap
				+ ", donGia=" + donGia + ", hanSuDung=" + hanSuDung + ", donViTinh=" + donViTinh + ", soLuongTon="
				+ soLuongTon + ", thue=" + thue + ", thanhPhan=" + thanhPhan + ", congDung=" + congDung + ", giamGia="
				+ giamGia + ", hinhAnh=" + hinhAnh + ", lineItem=" + lineItem + ", danhMuc=" + danhMuc + ", nhanVien="
				+ nhanVien + "]";
	}

}
