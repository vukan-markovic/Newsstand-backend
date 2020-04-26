update it20g2016.trafika.Proizvodjac
set nazivProizvodjaca=#[payload.nazivProizvodjaca],
kontaktProizvodjaca=#[payload.kontaktProizvodjaca],
adresaProizvodjaca=#[payload.adresaProizvodjaca]
where proizvodjacID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Proizvodjac (nazivProizvodjaca, kontaktProizvodjaca, adresaProizvodjaca) values (#[payload.nazivProizvodjaca], #[payload.kontaktProizvodjaca], #[payload.adresaProizvodjaca]);