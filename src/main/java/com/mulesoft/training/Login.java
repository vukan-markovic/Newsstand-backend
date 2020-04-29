package com.mulesoft.training;

public class Login implements java.io.Serializable, Comparable<Login> {
	private static final long serialVersionUID = 5652428569906834393L;
	String email;
	String lozinka;

	public Login(String email, String lozinka) {
		this.email = email;
		this.lozinka = lozinka;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLozinka() {
		return lozinka;
	}

	public void setLozinka(String lozinka) {
		this.lozinka = lozinka;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Login otherKorisnik) {
		return 0;
	}
}