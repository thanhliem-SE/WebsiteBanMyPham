package com.spring.mypham.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class NhaCungCap {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Nationalized
	private String tenNCC;

	@Nationalized
	@Lob
	private String thongTinNCC;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTenNCC() {
		return tenNCC;
	}

	public void setTenNCC(String tenNCC) {
		this.tenNCC = tenNCC;
	}

	public String getThongTinNCC() {
		return thongTinNCC;
	}

	public void setThongTinNCC(String thongTinNCC) {
		this.thongTinNCC = thongTinNCC;
	}

}
