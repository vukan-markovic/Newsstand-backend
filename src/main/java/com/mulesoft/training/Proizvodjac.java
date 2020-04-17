package com.mulesoft.training;

public class Proizvodjac implements java.io.Serializable, Comparable<Proizvodjac> {
	private static final long serialVersionUID = 5652428569906834393L;
	int proizvodjacID;
	String nazivProizvodjaca;
	String kontaktProizvodjaca;
	String adresaProizvodjaca;
	
	public Proizvodjac(int proizvodjacID, String nazivProizvodjaca, String kontaktProizvodjaca,
			String adresaProizvodjaca) {
		this.proizvodjacID = proizvodjacID;
		this.nazivProizvodjaca = nazivProizvodjaca;
		this.kontaktProizvodjaca = kontaktProizvodjaca;
		this.adresaProizvodjaca = adresaProizvodjaca;
	}

	public int getProizvodjacID() {
		return proizvodjacID;
	}

	public void setProizvodjacID(int proizvodjacID) {
		this.proizvodjacID = proizvodjacID;
	}

	public String getNazivProizvodjaca() {
		return nazivProizvodjaca;
	}

	public void setNazivProizvodjaca(String nazivProizvodjaca) {
		this.nazivProizvodjaca = nazivProizvodjaca;
	}

	public String getKontaktProizvodjaca() {
		return kontaktProizvodjaca;
	}

	public void setKontaktProizvodjaca(String kontaktProizvodjaca) {
		this.kontaktProizvodjaca = kontaktProizvodjaca;
	}

	public String getAdresaProizvodjaca() {
		return adresaProizvodjaca;
	}

	public void setAdresaProizvodjaca(String adresaProizvodjaca) {
		this.adresaProizvodjaca = adresaProizvodjaca;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Proizvodjac otherProizvodjac) {
		return Integer.compare(this.getProizvodjacID(), otherProizvodjac.getProizvodjacID());
	}
}