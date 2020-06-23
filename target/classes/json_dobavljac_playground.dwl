%dw 1.0
%output application/json
---
payload map ((payload) -> {
	dobavljacID: payload.dobavljacID,
	skraceniNaziv: payload.skraceniNaziv,
	(punNaziv: payload.punNaziv) when payload.punNaziv != null,
	kontaktDobavljaca: payload.kontaktDobavljaca,
	adresaDobavljaca: payload.adresaDobavljaca,
	(grad: payload.grad) when payload.grad != null,
	(drzava: payload.drzava) when payload.drzava != null,
	postanskiBroj: payload.postanskiBroj,
	PIB: payload.PIB,
	(kontaktOsoba: payload.kontaktOsoba) when payload.kontaktOsoba != null,
	brojZiroRacuna: payload.brojZiroRacuna
})