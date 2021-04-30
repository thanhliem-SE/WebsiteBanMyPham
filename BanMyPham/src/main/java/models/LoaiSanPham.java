package models;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Nationalized;

@Entity
public class LoaiSanPham implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1770974546173350890L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maLoai;
	@Nationalized
	private String tenLoai;
	
	@OneToMany(mappedBy = "loaiSanPham")
	private Set<SanPham> sanPham;

	public long getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(long maLoai) {
		this.maLoai = maLoai;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	@Override
	public String toString() {
		return "LoaiSanPham []";
	}

}
