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
where prodavacID=#[message.inboundProperties.'http.uri.params'.ID]
if @@rowcount=0
insert into it20g2016.trafika.Prodavac (prodavacID, ime, prezime, pol, datumRodjenja, adresaStanovanja, telefon, JMBG, datumZaposlenja, strucnaSprema) values (#[message.inboundProperties.'http.uri.params'.ID], #[payload.ime], #[payload.prezime], #[payload.pol], #[payload.datumRodjenja], #[payload.adresaStanovanja], #[payload.telefon], #[payload.JMBG], #[payload.datumZaposlenja], #[payload.strucnaSprema]);