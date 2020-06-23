select lozinka, verifikovan, korisnikID from it20g2016.trafika.Korisnik 
where email=#[payload.email];