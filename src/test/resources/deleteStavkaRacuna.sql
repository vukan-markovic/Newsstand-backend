delete from it20g2016.trafika.StavkaRacuna where racunID=#[message.inboundProperties.'http.uri.params'.racunID] and
proizvodID=#[message.inboundProperties.'http.uri.params'.proizvodID];;