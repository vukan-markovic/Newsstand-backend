package com.mulesoft.training;

public class Menadzer implements java.io.Serializable, Comparable<Menadzer> {
	private static final long serialVersionUID = 5652428569906834393L;
	int menadzerID;
	String adresaKancelarije;
	String brojKancelarije;

	public Menadzer(int menadzerID, String adresaKancelarije, String brojKancelarije) {
		this.menadzerID = menadzerID;
		this.adresaKancelarije = adresaKancelarije;
		this.brojKancelarije = brojKancelarije;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Menadzer otherMenadzer) {
		return Integer.compare(this.getMenadzerID(), otherMenadzer.getMenadzerID());
	}
}