package com.marksbook.model;

import javax.persistence.Column;

public class Login {
	@Column(name="email")
    private String email;
	
	@Column(name="password")
    private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}