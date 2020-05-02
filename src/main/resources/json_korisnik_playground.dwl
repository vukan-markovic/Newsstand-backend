%dw 1.0
%output application/json
---
payload map ((payload) -> {
	korisnikID: payload.korisnikID,
	email: payload.email,
	lozinka: payload.lozinka,
	uloga: payload.uloga,
	(verifikovan: payload.verifikovan) when payload.verifikovan != null
})