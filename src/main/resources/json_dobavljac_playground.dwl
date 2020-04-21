%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	dobavljacID: payload.dobavljacID,
  	skraceniNaziv: payload.skraceniNaziv as :string,
  	punNaziv: payload.punNaziv as :string, 
  	kontaktDobavljaca: payload.kontaktDobavljaca as :string, 
  	adresaDobavljaca: payload.adresaDobavljaca as :string, 
  	grad: payload.grad as :string,
  	drzava: payload.drzava as :string,
  	postanskiBroj: payload.postanskiBroj as :string,
  	PIB: payload.PIB as :number,
  	kontaktOsoba: payload.kontaktOsoba as :string,
  	brojZiroRacuna: payload.brojZiroRacuna as :string
})