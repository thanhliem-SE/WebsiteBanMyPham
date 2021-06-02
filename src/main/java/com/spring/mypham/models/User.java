package com.spring.mypham.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6766789070876192525L;
	/**
	 * 
	 */
	@Id
	private String username;
	private String password;
	private boolean enabled;

	@ManyToMany(cascade=CascadeType.MERGE)
    @JoinTable(
       name="user_role",
       joinColumns={@JoinColumn(name="USER_ID", referencedColumnName="username")},
       inverseJoinColumns={@JoinColumn(name="ROLE_ID", referencedColumnName="ID")})
    private List<Role> roles;
//	@OneToMany(mappedBy = "user")
//	private List<Authority> authority;
	
	@OneToOne(mappedBy = "user")
	private NhanVien nhanVien;

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

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



	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", enabled=" + enabled + ", roles=" + roles
				+ ", nhanVien=" + nhanVien + ", khachHang=" + khachHang + "]";
	}

	
	
	

}
