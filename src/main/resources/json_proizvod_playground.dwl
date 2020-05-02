%dw 1.0
%output application/json
---
payload map ((payload) -> {
	proizvodID: payload.proizvodID,
	nazivProizvoda: payload.nazivProizvoda,
	(opisProizvoda: payload.opisProizvoda) when payload.opisProizvoda != null,
	cena: payload.cena,
	(tipPakovanja: payload.tipPakovanja) when payload.tipPakovanja != null,
	(velicinaPakovanja: payload.velicinaPakovanja) when payload.velicinaPakovanja != null,
	barKod: payload.barKod,
	(masa: payload.masa) when payload.masa != null,
	raspolozivaKolicina: payload.raspolozivaKolicina,
	proizvodjacID: payload.proizvodjacID,
	vrstaProizvodaID: payload.vrstaProizvodaID
})