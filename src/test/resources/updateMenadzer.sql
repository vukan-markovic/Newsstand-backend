update it20g2016.trafika.Menadzer
set adresaKancelarije=#[payload.adresaKancelarije],
brojKancelarije=#[payload.brojKancelarije]
where menadzerID=#[message.inboundProperties.'http.uri.params'.ID];