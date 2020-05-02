%dw 1.0
%output application/json
---
payload map ((payload) -> {
	racunID: payload.racunID,
	proizvodID: payload.proizvodID,
	kolicinaProizvoda: payload.kolicinaProizvoda,
	(prodajnaCena: payload.prodajnaCena) when payload.prodajnaCena != null
})