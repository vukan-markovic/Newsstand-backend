package com.mulesoft.training;

import java.sql.Date;

public class Prodavac implements java.io.Serializable, Comparable<Prodavac> {
	private static final long serialVersionUID = 5652428569906834393L;
	int prodavacID;
	String ime;
	String prezime;
	String pol; 
	Date datumRodjenja;
	String adresaStanovanja;
	String telefon;
	String JMBG;
	String datumZaposlenja;
	String strucnaSprema;
	
	public Prodavac(int prodavacID, String ime, String prezime, String pol, Date datumRodjenja, String adresaStanovanja,
			String telefon, String jMBG, String datumZaposlenja, String strucnaSprema) {
		this.prodavacID = prodavacID;
		this.ime = ime;
		this.prezime = prezime;
		this.pol = pol;
		this.datumRodjenja = datumRodjenja;
		this.adresaStanovanja = adresaStanovanja;
		this.telefon = telefon;
		JMBG = jMBG;
		this.datumZaposlenja = datumZaposlenja;
		this.strucnaSprema = strucnaSprema;
	}

	public int getProdavacID() {
		return prodavacID;
	}

	public void setProdavacID(int prodavacID) {
		this.prodavacID = prodavacID;
	}

	public String getIme() {
		return ime;
	}

	public void setIme(String ime) {
		this.ime = ime;
	}

	public String getPrezime() {
		return prezime;
	}

	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}

	public String getPol() {
		return pol;
	}

	public void setPol(String pol) {
		this.pol = pol;
	}

	public Date getDatumRodjenja() {
		return datumRodjenja;
	}

	public void setDatumRodjenja(Date datumRodjenja) {
		this.datumRodjenja = datumRodjenja;
	}

	public String getAdresaStanovanja() {
		return adresaStanovanja;
	}

	public void setAdresaStanovanja(String adresaStanovanja) {
		this.adresaStanovanja = adresaStanovanja;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public String getJMBG() {
		return JMBG;
	}

	public void setJMBG(String jMBG) {
		JMBG = jMBG;
	}

	public String getDatumZaposlenja() {
		return datumZaposlenja;
	}

	public void setDatumZaposlenja(String datumZaposlenja) {
		this.datumZaposlenja = datumZaposlenja;
	}

	public String getStrucnaSprema() {
		return strucnaSprema;
	}

	public void setStrucnaSprema(String strucnaSprema) {
		this.strucnaSprema = strucnaSprema;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Prodavac otherProdavac) {
		return Integer.compare(this.getProdavacID(), otherProdavac.getProdavacID());
	}
}