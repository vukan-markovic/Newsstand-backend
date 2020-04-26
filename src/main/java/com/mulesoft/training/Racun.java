package com.mulesoft.training;

import java.sql.Date;

public class Racun implements java.io.Serializable, Comparable<Racun> {
	private static final long serialVersionUID = 3915482165745124970L;
	int racunID;
	Date vremeIzdavanja;
	String mestoIzdavanja;
	double ukupanIznosRacuna;
	String nazivProdavnice;
	String nacinPlacanja;
	String brojRacuna;
	String tipRacuna;
	int prodavacID;

	public Racun(int racunID, Date vremeIzdavanja, String mestoIzdavanja, double ukupanIznosRacuna,
			String nazivProdavnice, String nacinPlacanja, String brojRacuna, String tipRacuna, int prodavacID) {
		this.racunID = racunID;
		this.vremeIzdavanja = vremeIzdavanja;
		this.mestoIzdavanja = mestoIzdavanja;
		this.ukupanIznosRacuna = ukupanIznosRacuna;
		this.nazivProdavnice = nazivProdavnice;
		this.nacinPlacanja = nacinPlacanja;
		this.brojRacuna = brojRacuna;
		this.tipRacuna = tipRacuna;
		this.prodavacID = prodavacID;
	}

	public int getRacunID() {
		return racunID;
	}

	public void setRacunID(int racunID) {
		this.racunID = racunID;
	}

	public Date getVremeIzdavanja() {
		return vremeIzdavanja;
	}

	public void setVremeIzdavanja(Date vremeIzdavanja) {
		this.vremeIzdavanja = vremeIzdavanja;
	}

	public String getMestoIzdavanja() {
		return mestoIzdavanja;
	}

	public void setMestoIzdavanja(String mestoIzdavanja) {
		this.mestoIzdavanja = mestoIzdavanja;
	}

	public double getUkupanIznosRacuna() {
		return ukupanIznosRacuna;
	}

	public void setUkupanIznosRacuna(double ukupanIznosRacuna) {
		this.ukupanIznosRacuna = ukupanIznosRacuna;
	}

	public String getNazivProdavnice() {
		return nazivProdavnice;
	}

	public void setNazivProdavnice(String nazivProdavnice) {
		this.nazivProdavnice = nazivProdavnice;
	}

	public String getNacinPlacanja() {
		return nacinPlacanja;
	}

	public void setNacinPlacanja(String nacinPlacanja) {
		this.nacinPlacanja = nacinPlacanja;
	}

	public String getBrojRacuna() {
		return brojRacuna;
	}

	public void setBrojRacuna(String brojRacuna) {
		this.brojRacuna = brojRacuna;
	}

	public String getTipRacuna() {
		return tipRacuna;
	}

	public void setTipRacuna(String tipRacuna) {
		this.tipRacuna = tipRacuna;
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
	public int compareTo(Racun otherRacun) {
		return Integer.compare(this.getRacunID(), otherRacun.getRacunID());
	}
}