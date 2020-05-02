%dw 1.0
%output application/json
---
payload map ((payload) -> {
	vrstaProizvodaID: payload.vrstaProizvodaID,
	nazivVrsteProizvoda: payload.nazivVrsteProizvoda,
	(opisVrsteProizvoda: payload.opisVrsteProizvoda) when payload.opisVrsteProizvoda != null
})