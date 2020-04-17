%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	proizvodjacID: payload.proizvodjacID,
  	nazivProizvodjaca: payload.nazivProizvodjaca as :string,
  	kontaktProizvodjaca: payload.kontaktProizvodjaca as :string,
  	adresaProizvodjaca: payload.adresaProizvodjaca as :string
})