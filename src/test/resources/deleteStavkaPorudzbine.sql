delete from it20g2016.trafika.StavkaPorudzbine where porudzbinaID=#[message.inboundProperties.'http.uri.params'.porudzbinaID] and 
proizvodID=#[message.inboundProperties.'http.uri.params'.proizvodID];