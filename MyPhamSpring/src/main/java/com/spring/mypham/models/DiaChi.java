package com.spring.mypham.models;

import java.io.Serializable;

import javax.persistence.Embeddable;

import org.hibernate.annotations.Nationalized;

@Embeddable
public class DiaChi implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 22529258293702682L;
	@Nationalized
	private String soNha;
	@Nationalized
	private String phuong;
	@Nationalized
	private String quan;
	@Nationalized
	private String thanhPho;
	@Nationalized
	private String ghiChu;

	public String getSoNha() {
		return soNha;
	}

	public void setSoNha(String soNha) {
		this.soNha = soNha;
	}

	public String getPhuong() {
		return phuong;
	}

	public void setPhuong(String phuong) {
		this.phuong = phuong;
	}

	public String getQuan() {
		return quan;
	}

	public void setQuan(String quan) {
		this.quan = quan;
	}

	public String getThanhPho() {
		return thanhPho;
	}

	public void setThanhPho(String thanhPho) {
		this.thanhPho = thanhPho;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public DiaChi() {
		super();
	}

}
