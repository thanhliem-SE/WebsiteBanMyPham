package models;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.Id;
import javax.persistence.Table;

@Embeddable
@Table(name = "authorities")
public class Authority implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 287290469197608239L;
	@Id
	private String username;
	private String authority;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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
