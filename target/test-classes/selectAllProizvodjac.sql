select * from it20g2016.trafika.Proizvodjac where (#[message.inboundProperties.'http.query.params'.nazivProizvodjaca] is null or 
nazivProizvodjaca=#[message.inboundProperties.'http.query.params'.nazivProizvodjaca])
and (#[message.inboundProperties.'http.query.params'.kontaktProizvodjaca] is null or 
kontaktProizvodjaca=#[message.inboundProperties.'http.query.params'.kontaktProizvodjaca]) and 
(#[message.inboundProperties.'http.query.params'.adresaProizvodjaca] is null or 
adresaProizvodjaca=#[message.inboundProperties.'http.query.params'.adresaProizvodjaca]);