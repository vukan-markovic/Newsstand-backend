%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	racunID: payload.racunID,
	vremeIzdavanja: payload.vremeIzdavanja as :string,
	mestoIzdavanja: payload.mestoIzdavanja as :string,
	iznos: payload.iznos as :number,
	kolicina: payload.kolicina as :number,
	proizvodID: payload.proizvodID as :number,
	active: payload.active as :number
})