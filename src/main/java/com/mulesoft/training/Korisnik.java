package com.mulesoft.training;

public class Korisnik implements java.io.Serializable, Comparable<Korisnik> {
	private static final long serialVersionUID = 5652428569906834393L;
	int korisnikID;
	String email;
	String lozinka;
	String uloga;
	boolean verifikovan;

	public Korisnik(int korisnikID, String email, String lozinka, String uloga, boolean verifikovan) {
		this.korisnikID = korisnikID;
		this.email = email;
		this.lozinka = lozinka;
		this.uloga = uloga;
		this.verifikovan = verifikovan;
	}

	public int getKorisnikID() {
		return korisnikID;
	}

	public void setKorisnikID(int korisnikID) {
		this.korisnikID = korisnikID;
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

	public String getUloga() {
		return uloga;
	}

	public void setUloga(String uloga) {
		this.uloga = uloga;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public boolean getVerifikovan() {
		return verifikovan;
	}

	public void setVerifikovan(boolean verifikovan) {
		this.verifikovan = verifikovan;
	}

	@Override
	public int compareTo(Korisnik otherKorisnik) {
		return Integer.compare(this.getKorisnikID(), otherKorisnik.getKorisnikID());
	}
}