package com.mulesoft.training;

public class ResetPassword implements java.io.Serializable, Comparable<ResetPassword> {
	private static final long serialVersionUID = 5652428569906834393L;
	String email;

	public ResetPassword(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(ResetPassword otherResetPassword) {
		return 0;
	}
}