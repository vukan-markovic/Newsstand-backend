update it20g2016.trafika.Proizvod
set nazivProizvoda=#[payload.nazivProizvoda],
opisProizvoda=#[payload.opisProizvoda],
cena=#[payload.cena],
tipPakovanja=#[payload.tipPakovanja],
velicinaPakovanja=#[payload.velicinaPakovanja],
barKod=#[payload.barKod],
masa=#[payload.masa],
raspolozivaKolicina=#[payload.raspolozivaKolicina],
proizvodjacID=#[payload.proizvodjacID],
vrstaProizvodaID=#[payload.vrstaProizvodaID]
where proizvodID=#[message.inboundProperties.'http.uri.params'.ID];