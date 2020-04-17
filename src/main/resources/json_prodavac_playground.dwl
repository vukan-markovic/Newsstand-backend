%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	prodavacID: payload.prodavacID,
  	ime: payload.prodavacID as :string,
  	prezime: payload.prodavacID as :string, 
  	pol: payload.prodavacID as :string,
  	datumRodjenja: payload.prodavacID as :date-only,
  	adresaStanovanja: payload.prodavacID as :string,
  	telefon: payload.prodavacID as :string,
  	JMBG: payload.prodavacID as :string,
  	datumZaposlenja: payload.prodavacID as :date-only,
  	strucnaSprema: payload.prodavacID as :string
})