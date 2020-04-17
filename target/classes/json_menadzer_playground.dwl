%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	menadzerID: payload.menadzerID,
  	adresaKancelarije: payload.adresaKancelarije as :string,
  	brojKancelarije: payload.brojKancelarije as :string
})