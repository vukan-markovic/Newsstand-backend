%dw 1.0
%output application/json
---
payload map ((payload) -> {
	porudzbinaID: payload.porudzbinaID,
	datumPorucivanja: payload.datumPorucivanja,
	(datumIsporuke: payload.datumIsporuke) when payload.datumIsporuke != null,
	(ukupanIznosPorudzbine: payload.ukupanIznosPorudzbine) when payload.ukupanIznosPorudzbine != null,
	statusPorudzbine: payload.statusPorudzbine,
	dobavljacID: payload.dobavljacID,
	menadzerID: payload.menadzerID,
	prodavacID: payload.prodavacID
})