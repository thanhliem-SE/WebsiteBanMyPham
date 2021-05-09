package com.spring.mypham.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3668102614215435784L;
	/**
	 * 
	 */
	@Id
	private String username;
	private String password;
	private boolean enabled;

	@OneToMany(mappedBy = "user")
	private List<Authority> authority;

	@OneToOne(mappedBy = "user")
	private NhanVien nhanVien;

	@OneToOne(mappedBy = "user")
	private KhachHang khachHang;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public User() {
		super();
	}

}
