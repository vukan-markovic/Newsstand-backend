select lozinka, verifikovan from it20g2016.trafika.Korisnik 
where email=#[payload.email];