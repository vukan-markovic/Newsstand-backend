select * from it20g2016.trafika.Proizvod where (#[message.inboundProperties.'http.query.params'.nazivProizvoda] is null or 
nazivProizvoda=#[message.inboundProperties.'http.query.params'.nazivProizvoda])
and (#[message.inboundProperties.'http.query.params'.cena] is null or 
cena=#[message.inboundProperties.'http.query.params'.cena]) and 
(#[message.inboundProperties.'http.query.params'.tipPakovanja] is null or 
tipPakovanja=#[message.inboundProperties.'http.query.params'.tipPakovanja]) and 
(#[message.inboundProperties.'http.query.params'.velicinaPakovanja] is null or 
velicinaPakovanja=#[message.inboundProperties.'http.query.params'.velicinaPakovanja]) and 
(#[message.inboundProperties.'http.query.params'.barKod] is null or 
barKod=#[message.inboundProperties.'http.query.params'.barKod]) and 
(#[message.inboundProperties.'http.query.params'.masa] is null or 
masa=#[message.inboundProperties.'http.query.params'.masa]) and 
(#[message.inboundProperties.'http.query.params'.proizvodjacID] is null or 
proizvodjacID=#[message.inboundProperties.'http.query.params'.proizvodjacID]) and 
(#[message.inboundProperties.'http.query.params'.vrstaProizvodaID] is null or 
vrstaProizvodaID=#[message.inboundProperties.'http.query.params'.vrstaProizvodaID]);