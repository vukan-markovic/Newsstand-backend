package com.mulesoft.training;

public class StavkaPorudzbine implements java.io.Serializable, Comparable<StavkaPorudzbine> {
	private static final long serialVersionUID = 5652428569906834393L;
	int porudzbinaID;
	int proizvodID;
	int kolicina;
	double nabavnaCena;
	int active;

	public StavkaPorudzbine(int porudzbinaID, int proizvodID, int kolicina, double nabavnaCena, int active) {
		this.porudzbinaID = porudzbinaID;
		this.proizvodID = proizvodID;
		this.kolicina = kolicina;
		this.nabavnaCena = nabavnaCena;
		this.active = active;
	}

	public int getPorudzbinaID() {
		return porudzbinaID;
	}

	public void setPorudzbinaID(int porudzbinaID) {
		this.porudzbinaID = porudzbinaID;
	}

	public int getProizvodID() {
		return proizvodID;
	}

	public void setProizvodID(int proizvodID) {
		this.proizvodID = proizvodID;
	}

	public int getKolicina() {
		return kolicina;
	}

	public void setKolicina(int kolicina) {
		this.kolicina = kolicina;
	}
	
	public double getNabavnaCena() {
		return nabavnaCena;
	}

	public void setNabavnaCena(double nabavnaCena) {
		this.nabavnaCena = nabavnaCena;
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
	public int compareTo(StavkaPorudzbine otherStavkaPorudzbine) {
		return Integer.compare(this.getProizvodID(), otherStavkaPorudzbine.getProizvodID()) & Integer.compare(this.getPorudzbinaID(), otherStavkaPorudzbine.getPorudzbinaID());
	}
}