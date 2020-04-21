%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
	vrstaProizvodaID: payload.vrstaProizvodaID,
	nazivVrsteProizvoda: payload.nazivVrsteProizvoda as :string,
	opisVrsteProizvoda: payload.opisVrsteProizvoda as :string
})