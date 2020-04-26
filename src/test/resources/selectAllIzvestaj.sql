select * from it20g2016.trafika.Izvestaj where (#[message.inboundProperties.'http.query.params'.promet] is null or 
promet=#[message.inboundProperties.'http.query.params'.promet])
and (#[message.inboundProperties.'http.query.params'.brojKupovina] is null or 
brojKupovina=#[message.inboundProperties.'http.query.params'.brojKupovina])
and (#[message.inboundProperties.'http.query.params'.datumOd] is null or 
datumOd=#[message.inboundProperties.'http.query.params'.datumOd])
and (#[message.inboundProperties.'http.query.params'.datumDo] is null or 
datumDo=#[message.inboundProperties.'http.query.params'.datumDo])
and (#[message.inboundProperties.'http.query.params'.menadzerID] is null or 
menadzerID=#[message.inboundProperties.'http.query.params'.menadzerID]);