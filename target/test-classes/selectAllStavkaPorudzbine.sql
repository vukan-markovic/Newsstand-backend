select * from it20g2016.trafika.StavkaPorudzbine where (#[message.inboundProperties.'http.query.params'.kolicina] is null or 
kolicina=#[message.inboundProperties.'http.query.params'.kolicina])
and (#[message.inboundProperties.'http.query.params'.nabavnaCena] is null or 
nabavnaCena=#[message.inboundProperties.'http.query.params'.nabavnaCena]);