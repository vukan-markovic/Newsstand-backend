update it20g2016.trafika.VrstaProizvoda
set nazivVrsteProizvoda=#[payload.nazivVrsteProizvoda],
opisVrsteProizvoda=#[payload.opisVrsteProizvoda]
where vrstaProizvodaID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.VrstaProizvoda (nazivVrsteProizvoda, opisVrsteProizvoda) values (#[payload.nazivVrsteProizvoda], #[payload.opisVrsteProizvoda]);