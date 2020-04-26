package com.mulesoft.training;

public class StavkaRacuna implements java.io.Serializable, Comparable<StavkaRacuna> {
	private static final long serialVersionUID = 5652428569906834393L;
	int racunID;
	int proizvodID;
	int kolicinaProizvoda;
	double prodajnaCena;

	public StavkaRacuna(int racunID, int proizvodID, int kolicinaProizvoda, double prodajnaCena) {
		super();
		this.racunID = racunID;
		this.proizvodID = proizvodID;
		this.kolicinaProizvoda = kolicinaProizvoda;
		this.prodajnaCena = prodajnaCena;
	}

	public int getRacunID() {
		return racunID;
	}

	public void setRacunID(int racunID) {
		this.racunID = racunID;
	}

	public int getProizvodID() {
		return proizvodID;
	}

	public void setProizvodID(int proizvodID) {
		this.proizvodID = proizvodID;
	}

	public int getKolicinaProizvoda() {
		return kolicinaProizvoda;
	}

	public void setKolicinaProizvoda(int kolicinaProizvoda) {
		this.kolicinaProizvoda = kolicinaProizvoda;
	}

	public double getProdajnaCena() {
		return prodajnaCena;
	}

	public void setProdajnaCena(double prodajnaCena) {
		this.prodajnaCena = prodajnaCena;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(StavkaRacuna otherStavkaRacuna) {
		return Integer.compare(this.racunID, otherStavkaRacuna.racunID)
				& Integer.compare(this.getProizvodID(), otherStavkaRacuna.getProizvodID());
	}
}