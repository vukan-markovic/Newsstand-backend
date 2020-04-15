%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	proizvodID: payload.proizvodID,
	cena: payload.cena as :number,
	sifra: payload.sifra as :string,
	naziv: payload.naziv as :string,
	active: payload.active as :number
})