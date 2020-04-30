update it20g2016.trafika.Korisnik
set email=#[payload.email],
lozinka=#[payload.lozinka],
uloga=#[payload.uloga]
where korisnikID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Korisnik (email, lozinka, uloga) values (#[payload.email], #[payload.lozinka], #[payload.uloga]);