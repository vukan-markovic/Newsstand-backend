update it20g2016.trafika.StavkaPorudzbine
set porudzbinaID=#[payload.porudzbinaID],
proizvodID=#[payload.proizvodID],
kolicina=#[payload.kolicina]
where porudzbinaID=#[message.inboundProperties.'http.uri.params'.porudzbinaID] and proizvodID=#[message.inboundProperties.'http.uri.params'.proizvodID]
if @@rowcount=0
insert into it20g2016.trafika.StavkaPorudzbine (porudzbinaID, proizvodID, kolicina) values (#[payload.porudzbinaID], #[payload.proizvodID], #[payload.kolicina]);