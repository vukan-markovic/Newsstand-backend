update it20g2016.trafika.Menadzer
set adresaKancelarije=#[payload.adresaKancelarije],
brojKancelarije=#[payload.brojKancelarije]
where menadzerID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Menadzer (menadzerID, adresaKancelarije, brojKancelarije) values (#[message.inboundProperties.'http.uri.params'.ID], #[payload.adresaKancelarije], #[payload.brojKancelarije]);