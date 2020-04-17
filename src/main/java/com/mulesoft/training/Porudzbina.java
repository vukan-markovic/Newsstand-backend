package com.mulesoft.training;

import java.sql.Date;

public class Porudzbina implements java.io.Serializable, Comparable<Porudzbina> {
	private static final long serialVersionUID = 5652428569906834393L;
	int porudzbinaID;
	Date datumPorucivanja;
	Date datumIsporuke;
	double ukupanIznosPorudzbine;
	String statusPorudzbine;
	int dobavljacID;
	int menadzerID;
	int prodavacID;
	
	public Porudzbina(int porudzbinaID, Date datumPorucivanja, Date datumIsporuke, double ukupanIznosPorudzbine,
			String statusPorudzbine, int dobavljacID, int menadzerID, int prodavacID) {
		this.porudzbinaID = porudzbinaID;
		this.datumPorucivanja = datumPorucivanja;
		this.datumIsporuke = datumIsporuke;
		this.ukupanIznosPorudzbine = ukupanIznosPorudzbine;
		this.statusPorudzbine = statusPorudzbine;
		this.dobavljacID = dobavljacID;
		this.menadzerID = menadzerID;
		this.prodavacID = prodavacID;
	}

	public int getPorudzbinaID() {
		return porudzbinaID;
	}

	public void setPorudzbinaID(int porudzbinaID) {
		this.porudzbinaID = porudzbinaID;
	}

	public Date getDatumPorucivanja() {
		return datumPorucivanja;
	}

	public void setDatumPorucivanja(Date datumPorucivanja) {
		this.datumPorucivanja = datumPorucivanja;
	}

	public Date getDatumIsporuke() {
		return datumIsporuke;
	}

	public void setDatumIsporuke(Date datumIsporuke) {
		this.datumIsporuke = datumIsporuke;
	}

	public double getUkupanIznosPorudzbine() {
		return ukupanIznosPorudzbine;
	}

	public void setUkupanIznosPorudzbine(double ukupanIznosPorudzbine) {
		this.ukupanIznosPorudzbine = ukupanIznosPorudzbine;
	}

	public String getStatusPorudzbine() {
		return statusPorudzbine;
	}

	public void setStatusPorudzbine(String statusPorudzbine) {
		this.statusPorudzbine = statusPorudzbine;
	}

	public int getDobavljacID() {
		return dobavljacID;
	}

	public void setDobavljacID(int dobavljacID) {
		this.dobavljacID = dobavljacID;
	}

	public int getMenadzerID() {
		return menadzerID;
	}

	public void setMenadzerID(int menadzerID) {
		this.menadzerID = menadzerID;
	}

	public int getProdavacID() {
		return prodavacID;
	}

	public void setProdavacID(int prodavacID) {
		this.prodavacID = prodavacID;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Porudzbina otherPorudzbina) {
		return Integer.compare(this.getPorudzbinaID(), otherPorudzbina.getPorudzbinaID());
	}
}