update it20g2016.trafika.Dobavljac 
set skraceniNaziv=#[payload.skraceniNaziv], 
punNaziv=#[payload.punNaziv], 
kontaktDobavljaca=#[payload.kontaktDobavljaca], 
adresaDobavljaca=#[payload.adresaDobavljaca], 
grad=#[payload.grad],
drzava=#[payload.drzava], 
postanskiBroj=#[payload.postanskiBroj], 
PIB=#[payload.PIB], 
kontaktOsoba=#[payload.kontaktOsoba], 
brojZiroRacuna=#[payload.brojZiroRacuna]
where dobavljacID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Dobavljac (dobavljacID, skraceniNaziv, punNaziv, kontaktDobavljaca, adresaDobavljaca, grad, drzava, postanskiBroj, PIB, kontaktOsoba, brojZiroRacuna) values (#[message.inboundProperties.'http.uri.params'.ID], #[payload.skraceniNaziv], #[payload.punNaziv], #[payload.kontaktDobavljaca], #[payload.adresaDobavljaca], #[payload.grad], #[payload.drzava], #[payload.postanskiBroj], #[payload.PIB], #[payload.kontaktOsoba], #[payload.brojZiroRacuna]);