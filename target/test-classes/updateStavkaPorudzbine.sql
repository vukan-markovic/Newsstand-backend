update it20g2016.trafika.StavkaPorudzbine 
set kolicina=#[payload.kolicina]
where porudzbinaID=#[message.inboundProperties.'http.uri.params'.porudzbinaID] and proizvodID=#[message.inboundProperties.'http.uri.params'.proizvodID];