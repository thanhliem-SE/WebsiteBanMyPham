package com.spring.mypham.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "authorities")
public class Authority implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 287290469197608239L;
	@Id
	@ManyToOne
	@JoinColumn(name = "username")
	private User user;

	private String authority;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public Authority() {
		super();
	}

}
