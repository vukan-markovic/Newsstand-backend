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
where proizvodID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Proizvod (nazivProizvoda, opisProizvoda, cena, tipPakovanja, velicinaPakovanja, barKod, masa, raspolozivaKolicina, proizvodjacID, vrstaProizvodaID) values (#[payload.nazivProizvoda], #[payload.opisProizvoda], #[payload.cena], #[payload.tipPakovanja], #[payload.velicinaPakovanja], #[payload.barKod], #[payload.masa], #[payload.raspolozivaKolicina], #[payload.proizvodjacID], #[payload.vrstaProizvodaID]);