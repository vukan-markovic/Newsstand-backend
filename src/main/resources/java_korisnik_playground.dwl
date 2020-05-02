%dw 1.0
%output application/java
---
{
	korisnikID: payload.korisnikID,
	email: payload.email,
	lozinka: encrypt(payload.lozinka),
	uloga: payload.uloga,
	verifikovan: payload.verifikovan
} 