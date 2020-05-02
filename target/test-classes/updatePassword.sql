update it20g2016.trafika.Korisnik
set lozinka=#[payload.lozinka]
where lozinka=#[message.inboundProperties.'http.query.params'.code];