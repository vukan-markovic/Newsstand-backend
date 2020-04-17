package com.mulesoft.training;

import java.sql.Date;

public class Izvestaj implements java.io.Serializable, Comparable<Izvestaj> {
	private static final long serialVersionUID = 5652428569906834393L;
	int izvestajID;
	double promet;
	int brojKupovina;
	Date datumOd;
	Date datumDo;
	int menadzerID;

	public Izvestaj(int izvestajID, double promet, int brojKupovina, Date datumOd, Date datumDo, int menadzerID) {
		this.izvestajID = izvestajID;
		this.promet = promet;
		this.brojKupovina = brojKupovina;
		this.datumOd = datumOd;
		this.datumDo = datumDo;
		this.menadzerID = menadzerID;
	}

	public int getIzvestajID() {
		return izvestajID;
	}

	public void setIzvestajID(int izvestajID) {
		this.izvestajID = izvestajID;
	}

	public double getPromet() {
		return promet;
	}

	public void setPromet(double promet) {
		this.promet = promet;
	}

	public int getBrojKupovina() {
		return brojKupovina;
	}

	public void setBrojKupovina(int brojKupovina) {
		this.brojKupovina = brojKupovina;
	}

	public Date getDatumOd() {
		return datumOd;
	}

	public void setDatumOd(Date datumOd) {
		this.datumOd = datumOd;
	}

	public Date getDatumDo() {
		return datumDo;
	}

	public void setDatumDo(Date datumDo) {
		this.datumDo = datumDo;
	}

	public int getMenadzerID() {
		return menadzerID;
	}

	public void setMenadzerID(int menadzerID) {
		this.menadzerID = menadzerID;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int compareTo(Izvestaj otherIzvestaj) {
		return Integer.compare(this.getIzvestajID(), otherIzvestaj.getIzvestajID());
	}
}