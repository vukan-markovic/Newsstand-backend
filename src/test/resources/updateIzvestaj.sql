update it20g2016.trafika.Izvestaj
set datumOd=#[payload.datumOd],
datumDo=#[payload.datumDo],
menadzerID=#[payload.menadzerID]
where izvestajID=#[message.inboundProperties.'http.uri.params'.ID];