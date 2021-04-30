package models;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class SanPham implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1325615998415874517L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maSanPham;
	@Nationalized
	private String tenSanPham;
	@Nationalized
	private String nhaCungCap;
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

	@ElementCollection
	@CollectionTable(name = "HinhAnh", joinColumns = @JoinColumn(name = "maSanPham"))
	private Set<String> hinhAnh;

	@OneToMany(mappedBy = "sanPham")
	private Set<LineItem> lineItem;

	@ManyToOne
	@JoinColumn(name = "maLoai")
	private LoaiSanPham loaiSanPham;

	@ManyToOne
	@JoinColumn(name = "maDanhMuc")
	private DanhMuc danhMuc;

	@OneToOne
	@JoinColumn(name = "maNhanVien")
	private NhanVien nhanVien;

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

	public LoaiSanPham getLoaiSanPham() {
		return loaiSanPham;
	}

	public void setLoaiSanPham(LoaiSanPham loaiSanPham) {
		this.loaiSanPham = loaiSanPham;
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

	public String getNhaCungCap() {
		return nhaCungCap;
	}

	public void setNhaCungCap(String nhaCungCap) {
		this.nhaCungCap = nhaCungCap;
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

	public Set<String> getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(Set<String> hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public SanPham() {
		super();
	}

}
