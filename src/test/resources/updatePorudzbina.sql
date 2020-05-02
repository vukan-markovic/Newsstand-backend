update it20g2016.trafika.Porudzbina
set datumPorucivanja=#[payload.datumPorucivanja],
datumIsporuke=#[payload.datumIsporuke],
statusPorudzbine=#[payload.statusPorudzbine],
dobavljacID=#[payload.dobavljacID],
menadzerID=#[payload.menadzerID],
prodavacID=#[payload.prodavacID]
where porudzbinaID=#[message.inboundProperties.'http.uri.params'.ID];