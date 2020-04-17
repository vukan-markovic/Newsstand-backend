%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	racunID: payload.racunID,
	vremeIzdavanja: payload.vremeIzdavanja as :string,
	mestoIzdavanja: payload.mestoIzdavanja as :string,
	ukupanIznosRacuna: payload.ukupanIznosRacuna as :number,
	nazivProdavnice: payload.nazivProdavnice as :string,
	nacinPlacanja: payload.nacinPlacanja as :string,
	brojRacuna: payload.brojRacuna as :string,
	tipRacuna: payload.tipRacuna as :string,
	prodavacID: payload.prodavacID as :integer
})