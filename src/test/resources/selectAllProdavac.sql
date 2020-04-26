select * from it20g2016.trafika.Prodavac where (#[message.inboundProperties.'http.query.params'.ime] is null or 
ime=#[message.inboundProperties.'http.query.params'.ime])
and (#[message.inboundProperties.'http.query.params'.prezime] is null or 
prezime=#[message.inboundProperties.'http.query.params'.prezime]) and 
(#[message.inboundProperties.'http.query.params'.pol] is null or 
pol=#[message.inboundProperties.'http.query.params'.pol]) and 
(#[message.inboundProperties.'http.query.params'.datumRodjenja] is null or 
datumRodjenja=#[message.inboundProperties.'http.query.params'.datumRodjenja]) and 
(#[message.inboundProperties.'http.query.params'.adresaStanovanja] is null or 
adresaStanovanja=#[message.inboundProperties.'http.query.params'.adresaStanovanja]) and 
(#[message.inboundProperties.'http.query.params'.telefon] is null or 
telefon=#[message.inboundProperties.'http.query.params'.telefon]) and 
(#[message.inboundProperties.'http.query.params'.JMBG] is null or 
JMBG=#[message.inboundProperties.'http.query.params'.JMBG]) and 
(#[message.inboundProperties.'http.query.params'.datumZaposlenja] is null or 
datumZaposlenja=#[message.inboundProperties.'http.query.params'.datumZaposlenja]) and 
(#[message.inboundProperties.'http.query.params'.strucnaSprema] is null or 
strucnaSprema=#[message.inboundProperties.'http.query.params'.strucnaSprema]);