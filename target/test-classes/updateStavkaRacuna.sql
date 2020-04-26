update it20g2016.trafika.StavkaRacuna
set racunID=#[payload.racunID],
proizvodID=#[payload.proizvodID],
kolicinaProizvoda=#[payload.kolicinaProizvoda]
where racunID=#[message.inboundProperties.'http.uri.params'.racunID] and 
proizvodID=#[message.inboundProperties.'http.uri.params'.proizvodID];
if @@rowcount=0
insert into it20g2016.trafika.StavkaRacuna (racunID, proizvodID, kolicinaProizvoda) values (#[message.inboundProperties.'http.uri.params'.racunID], #[message.inboundProperties.'http.uri.params'.proizvodID], #[payload.kolicinaProizvoda]);