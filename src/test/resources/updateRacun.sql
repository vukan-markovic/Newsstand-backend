update it20g2016.trafika.Racun
set vremeIzdavanja=#[payload.vremeIzdavanja],
mestoIzdavanja=#[payload.mestoIzdavanja],
nazivProdavnice=#[payload.nazivProdavnice],
nacinPlacanja=#[payload.nacinPlacanja],
brojRacuna=#[payload.brojRacuna],
tipRacuna=#[payload.tipRacuna],
prodavacID=#[payload.prodavacID]
where racunID=#[message.inboundProperties.'http.uri.params'.ID];