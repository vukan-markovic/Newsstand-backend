%dw 1.0
%output application/json
---
payload map ((payload) -> {
	porudzbinaID: payload.porudzbinaID,
	proizvodID: payload.proizvodID,
	kolicina: payload.kolicina,
	(nabavnaCena: payload.nabavnaCena) when payload.nabavnaCena != null
})