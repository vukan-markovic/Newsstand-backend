%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	proizvodID: payload.proizvodID,
	cena: payload.cena as :number,
  	izvestajID: payload.izvestajID,
  	promet: payload.promet as :number,
  	brojKupovina: payload.brojKupovina as :integer,
  	datumOd: payload.datumOd as :date-only,
  	datumDo: payload.datumDo as :date-only,
  	menadzerID: payload.menadzerID as :integer
})