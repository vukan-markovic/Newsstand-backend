%dw 1.0
%output application/json
---
payload map ((payload) -> {
	izvestajID: payload.izvestajID,
	(promet: payload.promet) when payload.promet != null,
	(brojKupovina: payload.brojKupovina) when payload.brojKupovina != null,
	datumOd: payload.datumOd,
	datumDo: payload.datumDo,
	menadzerID: payload.menadzerID 
})