package com.mulesoft.training;

public class VrstaProizvoda implements java.io.Serializable, Comparable<VrstaProizvoda> {
	private static final long serialVersionUID = 5652428569906834393L;
	int vrstaProizvodaID;
	String nazivVrsteProizvoda;
	String opisVrsteProizvoda;
	int active;

	public VrstaProizvoda(int vrstaProizvodaID, String nazivVrsteProizvoda, String opisVrsteProizvoda, int active) {
		this.vrstaProizvodaID = vrstaProizvodaID;
		this.nazivVrsteProizvoda = nazivVrsteProizvoda;
		this.opisVrsteProizvoda = opisVrsteProizvoda;
		this.active = active;
	}

	public int getVrstaProizvodaID() {
		return vrstaProizvodaID;
	}

	public void setVrstaProizvodaID(int vrstaProizvodaID) {
		this.vrstaProizvodaID = vrstaProizvodaID;
	}

	public String getNazivVrsteProizvoda() {
		return nazivVrsteProizvoda;
	}

	public void setNazivVrsteProizvoda(String nazivVrsteProizvoda) {
		this.nazivVrsteProizvoda = nazivVrsteProizvoda;
	}

	public String getOpisVrsteProizvoda() {
		return opisVrsteProizvoda;
	}

	public void setOpisVrsteProizvoda(String opisVrsteProizvoda) {
		this.opisVrsteProizvoda = opisVrsteProizvoda;
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
	public int compareTo(VrstaProizvoda otherVrstaProizvoda) {
		return Integer.compare(this.getVrstaProizvodaID(), otherVrstaProizvoda.getVrstaProizvodaID());
	}
}