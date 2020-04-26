select * from it20g2016.trafika.Racun where (#[message.inboundProperties.'http.query.params'.vremeIzdavanja] is null or 
vremeIzdavanja=#[message.inboundProperties.'http.query.params'.vremeIzdavanja])
and (#[message.inboundProperties.'http.query.params'.mestoIzdavanja] is null or 
mestoIzdavanja=#[message.inboundProperties.'http.query.params'.mestoIzdavanja]) and 
(#[message.inboundProperties.'http.query.params'.ukupanIznosRacuna] is null or 
ukupanIznosRacuna=#[message.inboundProperties.'http.query.params'.ukupanIznosRacuna]) and 
(#[message.inboundProperties.'http.query.params'.nazivProdavnice] is null or 
nazivProdavnice=#[message.inboundProperties.'http.query.params'.nazivProdavnice]) and 
(#[message.inboundProperties.'http.query.params'.nacinPlacanja] is null or 
nacinPlacanja=#[message.inboundProperties.'http.query.params'.nacinPlacanja]) and 
(#[message.inboundProperties.'http.query.params'.brojRacuna] is null or 
brojRacuna=#[message.inboundProperties.'http.query.params'.brojRacuna]) and 
(#[message.inboundProperties.'http.query.params'.tipRacuna] is null or 
tipRacuna=#[message.inboundProperties.'http.query.params'.tipRacuna]) and 
(#[message.inboundProperties.'http.query.params'.prodavacID] is null or 
prodavacID=#[message.inboundProperties.'http.query.params'.prodavacID]);