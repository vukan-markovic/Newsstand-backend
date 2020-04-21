%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	porudzbinaID: payload.porudzbinaID,
  	datumPorucivanja: payload.datumPorucivanja as :string,
  	datumIsporuke: payload.datumIsporuke as :string, 
  	ukupanIznosPorudzbine: payload.ukupanIznosPorudzbine as :number, 
  	statusPorudzbine: payload.statusPorudzbine as :string, 
  	dobavljacID: payload.dobavljacID as :number,
  	menadzerID: payload.menadzerID as :number,
  	prodavacID: payload.prodavacID as :number
})