select * from it20g2016.trafika.Porudzbina where (#[message.inboundProperties.'http.query.params'.datumPorucivanja] is null or 
datumPorucivanja=#[message.inboundProperties.'http.query.params'.datumPorucivanja])
and (#[message.inboundProperties.'http.query.params'.datumIsporuke] is null or 
datumIsporuke=#[message.inboundProperties.'http.query.params'.datumIsporuke]) and 
(#[message.inboundProperties.'http.query.params'.ukupanIznosPorudzbine] is null or 
ukupanIznosPorudzbine=#[message.inboundProperties.'http.query.params'.ukupanIznosPorudzbine]) and 
(#[message.inboundProperties.'http.query.params'.statusPorudzbine] is null or 
statusPorudzbine=#[message.inboundProperties.'http.query.params'.statusPorudzbine]) and 
(#[message.inboundProperties.'http.query.params'.dobavljacID] is null or 
dobavljacID=#[message.inboundProperties.'http.query.params'.dobavljacID]) and 
(#[message.inboundProperties.'http.query.params'.menadzerID] is null or 
menadzerID=#[message.inboundProperties.'http.query.params'.menadzerID]) and 
(#[message.inboundProperties.'http.query.params'.prodavacID] is null or 
prodavacID=#[message.inboundProperties.'http.query.params'.prodavacID]);