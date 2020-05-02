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
where dobavljacID=#[message.inboundProperties.'http.uri.params'.ID];