update it20g2016.trafika.Proizvodjac
set nazivProizvodjaca=#[payload.nazivProizvodjaca],
kontaktProizvodjaca=#[payload.kontaktProizvodjaca],
adresaProizvodjaca=#[payload.adresaProizvodjaca]
where proizvodjacID=#[message.inboundProperties.'http.uri.params'.ID];