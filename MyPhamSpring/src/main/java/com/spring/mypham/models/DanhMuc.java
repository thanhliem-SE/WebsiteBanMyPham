package com.spring.mypham.models;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Nationalized;

@Entity
public class DanhMuc implements Serializable {
	/**
		 * 
		 */
	private static final long serialVersionUID = 5395265311436580697L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maDanhMuc;
	@Nationalized
	private String tenDanhMuc;
	
	@OneToMany(mappedBy = "danhMuc")
	private Set<SanPham> sanPham;

	public long getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(long maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}

	@Override
	public String toString() {
		return "DanhMuc []";
	}

}
