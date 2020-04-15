package com.mulesoft.training;

public class Proizvod implements java.io.Serializable, Comparable<Proizvod> {
	private static final long serialVersionUID = 5652428569906834393L;
	int proizvodID;
	String nazivProizvoda;
	String opisProizvoda;
	double cena;
	String tipPakovanja;
	String velicinaPakovanja;
	String barKod;
	double masa;
	int raspolozivaKolicina;
	int proizvodjacID;
	int vrstaProizvodaID;
	int active;

	public Proizvod(int proizvodID, String nazivProizvoda, String opisProizvoda, double cena, String tipPakovanja,
			String velicinaPakovanja, String barKod, double masa, int raspolozivaKolicina, int proizvodjacID,
			int vrstaProizvodaID, int active) {
		this.proizvodID = proizvodID;
		this.nazivProizvoda = nazivProizvoda;
		this.opisProizvoda = opisProizvoda;
		this.cena = cena;
		this.tipPakovanja = tipPakovanja;
		this.velicinaPakovanja = velicinaPakovanja;
		this.barKod = barKod;
		this.masa = masa;
		this.raspolozivaKolicina = raspolozivaKolicina;
		this.proizvodjacID = proizvodjacID;
		this.vrstaProizvodaID = vrstaProizvodaID;
		this.active = active;
	}

	public int getProizvodID() {
		return proizvodID;
	}

	public void setProizvodID(int proizvodID) {
		this.proizvodID = proizvodID;
	}

	public String getNazivProizvoda() {
		return nazivProizvoda;
	}

	public void setNazivProizvoda(String nazivProizvoda) {
		this.nazivProizvoda = nazivProizvoda;
	}

	public String getOpisProizvoda() {
		return opisProizvoda;
	}

	public void setOpisProizvoda(String opisProizvoda) {
		this.opisProizvoda = opisProizvoda;
	}

	public double getCena() {
		return cena;
	}

	public void setCena(double cena) {
		this.cena = cena;
	}

	public String getTipPakovanja() {
		return tipPakovanja;
	}

	public void setTipPakovanja(String tipPakovanja) {
		this.tipPakovanja = tipPakovanja;
	}

	public String getVelicinaPakovanja() {
		return velicinaPakovanja;
	}

	public void setVelicinaPakovanja(String velicinaPakovanja) {
		this.velicinaPakovanja = velicinaPakovanja;
	}

	public String getBarKod() {
		return barKod;
	}

	public void setBarKod(String barKod) {
		this.barKod = barKod;
	}

	public double getMasa() {
		return masa;
	}

	public void setMasa(double masa) {
		this.masa = masa;
	}

	public int getRaspolozivaKolicina() {
		return raspolozivaKolicina;
	}

	public void setRaspolozivaKolicina(int raspolozivaKolicina) {
		this.raspolozivaKolicina = raspolozivaKolicina;
	}

	public int getProizvodjacID() {
		return proizvodjacID;
	}

	public void setProizvodjacID(int proizvodjacID) {
		this.proizvodjacID = proizvodjacID;
	}

	public int getVrstaProizvodaID() {
		return vrstaProizvodaID;
	}

	public void setVrstaProizvodaID(int vrstaProizvodaID) {
		this.vrstaProizvodaID = vrstaProizvodaID;
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
	public int compareTo(Proizvod otherProizvod) {
		return Integer.compare(this.getProizvodID(), otherProizvod.getProizvodID());
	}
}