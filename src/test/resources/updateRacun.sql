update it20g2016.trafika.Racun
set vremeIzdavanja=#[payload.vremeIzdavanja],
mestoIzdavanja=#[payload.mestoIzdavanja],
nazivProdavnice=#[payload.nazivProdavnice],
nacinPlacanja=#[payload.nacinPlacanja],
brojRacuna=#[payload.brojRacuna],
tipRacuna=#[payload.tipRacuna],
prodavacID=#[payload.prodavacID]
where racunID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Racun (vremeIzdavanja, mestoIzdavanja, nazivProdavnice, nacinPlacanja, brojRacuna, tipRacuna, prodavacID) values (#[payload.vremeIzdavanja], #[payload.mestoIzdavanja], #[payload.nazivProdavnice], #[payload.nacinPlacanja], #[payload.brojRacuna], #[payload.tipRacuna], #[payload.prodavacID]);