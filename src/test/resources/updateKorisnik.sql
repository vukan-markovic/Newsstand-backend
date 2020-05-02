update it20g2016.trafika.Korisnik
set email=#[payload.email],
lozinka=#[payload.lozinka],
uloga=#[payload.uloga]
where korisnikID=#[message.inboundProperties.'http.uri.params'.ID];