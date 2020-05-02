update it20g2016.trafika.Prodavac
set ime=#[payload.ime],
prezime=#[payload.prezime],
pol=#[payload.pol],
datumRodjenja=#[payload.datumRodjenja],
adresaStanovanja=#[payload.adresaStanovanja],
telefon=#[payload.telefon],
JMBG=#[payload.JMBG],
datumZaposlenja=#[payload.datumZaposlenja],
strucnaSprema=#[payload.strucnaSprema]
where prodavacID=#[message.inboundProperties.'http.uri.params'.ID];