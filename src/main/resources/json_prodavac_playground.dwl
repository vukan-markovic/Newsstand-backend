%dw 1.0
%output application/json
---
payload map ((payload) -> {
	prodavacID: payload.prodavacID,
	ime: payload.ime,
	prezime: payload.prezime,
	pol: payload.pol,
	datumRodjenja: payload.datumRodjenja,
	(adresaStanovanja: payload.adresaStanovanja) when payload.adresaStanovanja != null,
	(telefon: payload.telefon) when payload.telefon != null,
	JMBG: payload.JMBG,
	(datumZaposlenja: payload.datumZaposlenja) when payload.datumZaposlenja != null,
	strucnaSprema: payload.strucnaSprema
})