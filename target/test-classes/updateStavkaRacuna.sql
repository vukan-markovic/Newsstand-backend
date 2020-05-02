update it20g2016.trafika.StavkaRacuna
set kolicinaProizvoda=#[payload.kolicinaProizvoda]
where racunID=#[message.inboundProperties.'http.uri.params'.racunID] and 
proizvodID=#[message.inboundProperties.'http.uri.params'.proizvodID];