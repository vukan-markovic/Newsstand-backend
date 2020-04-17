package com.mulesoft.training;

public class VrstaProizvoda implements java.io.Serializable, Comparable<VrstaProizvoda> {
	private static final long serialVersionUID = 5652428569906834393L;
	int vrstaProizvodaID;
	String nazivVrsteProizvoda;
	String opisVrsteProizvoda;
	
	public VrstaProizvoda(int vrstaProizvodaID, String nazivVrsteProizvoda, String opisVrsteProizvoda) {
		this.vrstaProizvodaID = vrstaProizvodaID;
		this.nazivVrsteProizvoda = nazivVrsteProizvoda;
		this.opisVrsteProizvoda = opisVrsteProizvoda;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(VrstaProizvoda otherVrstaProizvoda) {
		return Integer.compare(this.getVrstaProizvodaID(), otherVrstaProizvoda.getVrstaProizvodaID());
	}
}