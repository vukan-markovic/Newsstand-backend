%dw 1.0
%output application/java
---
{
    korisnikID: payload.korisnikID,
  	email: payload.email,
  	lozinka: encrypt(payload.lozinka),
  	autentifikacioniToken: payload.autentifikacioniToken,
  	uloga: payload.uloga
} 