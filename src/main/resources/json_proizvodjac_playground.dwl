%dw 1.0
%output application/json
---
payload map ((payload) -> {
	proizvodjacID: payload.proizvodjacID,
	nazivProizvodjaca: payload.nazivProizvodjaca,
	(kontaktProizvodjaca: payload.kontaktProizvodjaca) when payload.kontaktProizvodjaca != null,
	(adresaProizvodjaca: payload.adresaProizvodjaca) when payload.adresaProizvodjaca != null
})