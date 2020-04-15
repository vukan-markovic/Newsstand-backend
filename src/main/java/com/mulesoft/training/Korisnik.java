package com.mulesoft.training;

public class Korisnik implements java.io.Serializable, Comparable<Korisnik> {
	private static final long serialVersionUID = 5652428569906834393L;
	int korisnikID;
	String email;
	String lozinka;
	String autentifikacioniToken;
	String uloga;

	public Korisnik(int korisnikID, String email, String lozinka, String autentifikacioniToken, String uloga) {
		this.korisnikID = korisnikID;
		this.email = email;
		this.lozinka = lozinka;
		this.autentifikacioniToken = autentifikacioniToken;
		this.uloga = uloga;
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

	public String getAutentifikacioniToken() {
		return autentifikacioniToken;
	}

	public void setAutentifikacioniToken(String autentifikacioniToken) {
		this.autentifikacioniToken = autentifikacioniToken;
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

	@Override
	public int compareTo(Korisnik otherKorisnik) {
		return Integer.compare(this.getKorisnikID(), otherKorisnik.getKorisnikID());
	}
}