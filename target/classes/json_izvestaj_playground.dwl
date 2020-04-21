%dw 1.0
%output application/json
---
payload map ((payload , indexOfPayload) -> {
  	izvestajID: payload.izvestajID,
  	promet: payload.promet as :number,
  	brojKupovina: payload.brojKupovina as :number,
  	datumOd: payload.datumOd as :string,
  	datumDo: payload.datumDo as :string,
  	menadzerID: payload.menadzerID as :number
})