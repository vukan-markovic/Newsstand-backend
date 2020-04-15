package com.mulesoft.training;

public class Menadzer implements java.io.Serializable, Comparable<Menadzer> {
	private static final long serialVersionUID = 5652428569906834393L;
	int menadzerID;
	String adresaKancelarije;
	String brojKancelarije;
	int active;

	public Menadzer(int menadzerID, String adresaKancelarije, String brojKancelarije, int active) {
		super();
		this.menadzerID = menadzerID;
		this.adresaKancelarije = adresaKancelarije;
		this.brojKancelarije = brojKancelarije;
		this.active = active;
	}

	public int getMenadzerID() {
		return menadzerID;
	}

	public void setMenadzerID(int menadzerID) {
		this.menadzerID = menadzerID;
	}

	public String getAdresaKancelarije() {
		return adresaKancelarije;
	}

	public void setAdresaKancelarije(String adresaKancelarije) {
		this.adresaKancelarije = adresaKancelarije;
	}

	public String getBrojKancelarije() {
		return brojKancelarije;
	}

	public void setBrojKancelarije(String brojKancelarije) {
		this.brojKancelarije = brojKancelarije;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Menadzer otherMenadzer) {
		return Integer.compare(this.getMenadzerID(), otherMenadzer.getMenadzerID());
	}
}