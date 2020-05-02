%dw 1.0
%output application/json
---
payload map ((payload) -> {
	racunID: payload.racunID,
	vremeIzdavanja: payload.vremeIzdavanja,
	(mestoIzdavanja: payload.mestoIzdavanja) when payload.mestoIzdavanja != null,
	(ukupanIznosRacuna: payload.ukupanIznosRacuna) when payload.ukupanIznosRacuna != null,
	nazivProdavnice: payload.nazivProdavnice,
	nacinPlacanja: payload.nacinPlacanja,
	brojRacuna: payload.brojRacuna,
	(tipRacuna: payload.tipRacuna) when payload.tipRacuna != null,
	prodavacID: payload.prodavacID
})