%dw 1.0
%output application/json
---
payload map ((payload) -> {
	menadzerID: payload.menadzerID,
	adresaKancelarije: payload.adresaKancelarije,
	(brojKancelarije: payload.brojKancelarije) when payload.brojKancelarije != null
})