%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	porudzbinaID: payload.porudzbinaID,
	proizvodID: payload.proizvodID,
	kolicina: payload.kolicina as :number,
	nabavnaCena: payload.nabavnaCena as :number
})