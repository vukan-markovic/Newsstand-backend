select * from it20g2016.trafika.StavkaRacuna where (#[message.inboundProperties.'http.query.params'.kolicinaProizvoda] is null or 
kolicinaProizvoda=#[message.inboundProperties.'http.query.params'.kolicinaProizvoda])
and (#[message.inboundProperties.'http.query.params'.prodajnaCena] is null or 
prodajnaCena=#[message.inboundProperties.'http.query.params'.prodajnaCena]);