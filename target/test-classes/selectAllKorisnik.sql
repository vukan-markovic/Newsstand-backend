select * from it20g2016.trafika.Korisnik where (#[message.inboundProperties.'http.query.params'.email] is null or 
email=#[message.inboundProperties.'http.query.params'.email])
and (#[message.inboundProperties.'http.query.params'.uloga] is null or 
uloga=#[message.inboundProperties.'http.query.params'.uloga]);