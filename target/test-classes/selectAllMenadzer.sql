select * from it20g2016.trafika.Menadzer where (#[message.inboundProperties.'http.query.params'.adresaKancelarije] is null or 
adresaKancelarije=#[message.inboundProperties.'http.query.params'.adresaKancelarije])
and (#[message.inboundProperties.'http.query.params'.brojKancelarije] is null or 
brojKancelarije=#[message.inboundProperties.'http.query.params'.brojKancelarije]);