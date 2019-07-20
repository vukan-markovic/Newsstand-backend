package com.mulesoft.training;

public class Racun implements java.io.Serializable, Comparable<Racun> {
	private static final long serialVersionUID = 3915482165745124970L;
	int racunID;
	String vremeIzdavanja;
	String mestoIzdavanja;
	double iznos;
	int kolicina;
	int proizvodID;
	int active;
	
	public Racun(int racunID, String vremeIzdavanja, String mestoIzdavanja, double iznos, int kolicina, int proizvodID, int active) {
		this.racunID = racunID;
		this.vremeIzdavanja = vremeIzdavanja;
		this.mestoIzdavanja = mestoIzdavanja;
		this.iznos = iznos;
		this.kolicina = kolicina;
		this.proizvodID = proizvodID;
		this.active = active;
	}
	
	public int getRacunID() {
		return racunID;
	}

	public void setRacunID(int racunID) {
		this.racunID = racunID;
	}

	public String getVremeIzdavanja() {
		return vremeIzdavanja;
	}

	public void setVremeIzdavanja(String vremeIzdavanja) {
		this.vremeIzdavanja = vremeIzdavanja;
	}

	public String getMestoIzdavanja() {
		return mestoIzdavanja;
	}

	public void setMestoIzdavanja(String mestoIzdavanja) {
		this.mestoIzdavanja = mestoIzdavanja;
	}

	public double getIznos() {
		return iznos;
	}

	public void setIznos(double iznos) {
		this.iznos = iznos;
	}

	public int getKolicina() {
		return kolicina;
	}

	public void setKolicina(int kolicina) {
		this.kolicina = kolicina;
	}

	public int getProizvodID() {
		return proizvodID;
	}

	public void setProizvodID(int proizvodID) {
		this.proizvodID = proizvodID;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Override
	public int compareTo(Racun otherRacun) {
		return Integer.compare(this.getRacunID(), otherRacun.getRacunID());
	}
}