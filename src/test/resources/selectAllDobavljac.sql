select * from it20g2016.trafika.Dobavljac where (#[message.inboundProperties.'http.query.params'.skraceniNaziv] is null or 
skraceniNaziv=#[message.inboundProperties.'http.query.params'.skraceniNaziv])
and (#[message.inboundProperties.'http.query.params'.punNaziv] is null or 
punNaziv=#[message.inboundProperties.'http.query.params'.punNaziv]) and 
(#[message.inboundProperties.'http.query.params'.kontaktDobavljaca] is null or 
kontaktDobavljaca=#[message.inboundProperties.'http.query.params'.kontaktDobavljaca]) and 
(#[message.inboundProperties.'http.query.params'.adresaDobavljaca] is null or 
adresaDobavljaca=#[message.inboundProperties.'http.query.params'.adresaDobavljaca]) and 
(#[message.inboundProperties.'http.query.params'.grad] is null or 
grad=#[message.inboundProperties.'http.query.params'.grad]) and 
(#[message.inboundProperties.'http.query.params'.drzava] is null or 
drzava=#[message.inboundProperties.'http.query.params'.drzava]) and 
(#[message.inboundProperties.'http.query.params'.postanskiBroj] is null or 
postanskiBroj=#[message.inboundProperties.'http.query.params'.postanskiBroj]) and 
(#[message.inboundProperties.'http.query.params'.PIB] is null or 
PIB=#[message.inboundProperties.'http.query.params'.PIB]) and 
(#[message.inboundProperties.'http.query.params'.kontaktOsoba] is null or 
kontaktOsoba=#[message.inboundProperties.'http.query.params'.kontaktOsoba]) and 
(#[message.inboundProperties.'http.query.params'.brojZiroRacuna] is null or 
brojZiroRacuna=#[message.inboundProperties.'http.query.params'.brojZiroRacuna]);