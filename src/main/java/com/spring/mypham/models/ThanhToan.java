package com.spring.mypham.models;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Nationalized;

@Entity
public class ThanhToan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3140849385937063952L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maThanhToan;
	private String phuongThucTT;


	public long getMaThanhToan() {
		return maThanhToan;
	}

	public void setMaThanhToan(long maThanhToan) {
		this.maThanhToan = maThanhToan;
	}

	public String getPhuongThucTT() {
		return phuongThucTT;
	}

	public void setPhuongThucTT(String phuongThucTT) {
		this.phuongThucTT = phuongThucTT;
	}

}
