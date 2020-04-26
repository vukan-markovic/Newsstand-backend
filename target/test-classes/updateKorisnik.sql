update it20g2016.trafika.Korisnik
set email=#[payload.email],
lozinka=#[payload.lozinka],
autentifikacioniToken=#[payload.autentifikacioniToken],
uloga=#[payload.uloga]
where korisnikID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Korisnik (email, lozinka, autentifikacioniToken, uloga) values (#[payload.email], #[payload.lozinka], #[payload.autentifikacioniToken], #[payload.uloga]);