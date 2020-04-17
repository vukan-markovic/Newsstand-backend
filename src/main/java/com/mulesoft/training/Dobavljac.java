package com.mulesoft.training;

public class Dobavljac implements java.io.Serializable, Comparable<Dobavljac> {
	private static final long serialVersionUID = 5652428569906834393L;
	int dobavljacID;
	String skraceniNaziv;
	String punNaziv;
	String kontaktDobavljaca;
	String adresaDobavljaca;
	String grad;
	String drzava;
	String postanskiBroj;
	int PIB;
	String kontaktOsoba;
	String brojZiroRacuna;
	
	public Dobavljac(int dobavljacID, String skraceniNaziv, String punNaziv, String kontaktDobavljaca,
			String adresaDobavljaca, String grad, String drzava, String postanskiBroj, int pIB, String kontaktOsoba,
			String brojZiroRacuna) {
		this.dobavljacID = dobavljacID;
		this.skraceniNaziv = skraceniNaziv;
		this.punNaziv = punNaziv;
		this.kontaktDobavljaca = kontaktDobavljaca;
		this.adresaDobavljaca = adresaDobavljaca;
		this.grad = grad;
		this.drzava = drzava;
		this.postanskiBroj = postanskiBroj;
		PIB = pIB;
		this.kontaktOsoba = kontaktOsoba;
		this.brojZiroRacuna = brojZiroRacuna;
	}

	public int getDobavljacID() {
		return dobavljacID;
	}

	public void setDobavljacID(int dobavljacID) {
		this.dobavljacID = dobavljacID;
	}

	public String getSkraceniNaziv() {
		return skraceniNaziv;
	}

	public void setSkraceniNaziv(String skraceniNaziv) {
		this.skraceniNaziv = skraceniNaziv;
	}

	public String getPunNaziv() {
		return punNaziv;
	}

	public void setPunNaziv(String punNaziv) {
		this.punNaziv = punNaziv;
	}

	public String getKontaktDobavljaca() {
		return kontaktDobavljaca;
	}

	public void setKontaktDobavljaca(String kontaktDobavljaca) {
		this.kontaktDobavljaca = kontaktDobavljaca;
	}

	public String getAdresaDobavljaca() {
		return adresaDobavljaca;
	}

	public void setAdresaDobavljaca(String adresaDobavljaca) {
		this.adresaDobavljaca = adresaDobavljaca;
	}

	public String getGrad() {
		return grad;
	}

	public void setGrad(String grad) {
		this.grad = grad;
	}

	public String getDrzava() {
		return drzava;
	}

	public void setDrzava(String drzava) {
		this.drzava = drzava;
	}

	public String getPostanskiBroj() {
		return postanskiBroj;
	}

	public void setPostanskiBroj(String postanskiBroj) {
		this.postanskiBroj = postanskiBroj;
	}

	public int getPIB() {
		return PIB;
	}

	public void setPIB(int pIB) {
		PIB = pIB;
	}

	public String getKontaktOsoba() {
		return kontaktOsoba;
	}

	public void setKontaktOsoba(String kontaktOsoba) {
		this.kontaktOsoba = kontaktOsoba;
	}

	public String getBrojZiroRacuna() {
		return brojZiroRacuna;
	}

	public void setBrojZiroRacuna(String brojZiroRacuna) {
		this.brojZiroRacuna = brojZiroRacuna;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Dobavljac otherDobavljac) {
		return Integer.compare(this.getDobavljacID(), otherDobavljac.getDobavljacID());
	}
}