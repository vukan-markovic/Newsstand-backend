package com.mulesoft.training;

public class Password implements java.io.Serializable, Comparable<Password> {
	private static final long serialVersionUID = 5652428569906834793L;
	String lozinka;

	public Password(String lozinka) {
		this.lozinka = lozinka;
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
	public int compareTo(Password otherPassword) {
		return 0;
	}
}