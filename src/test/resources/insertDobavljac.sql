insert into it20g2016.trafika.Dobavljac (dobavljacID, skraceniNaziv, punNaziv, kontaktDobavljaca, adresaDobavljaca, grad, drzava, postanskiBroj, PIB, kontaktOsoba, brojZiroRacuna) values (#[payload.dobavljacID], #[payload.skraceniNaziv], #[payload.punNaziv], #[payload.kontaktDobavljaca], #[payload.adresaDobavljaca], #[payload.grad], #[payload.drzava], #[payload.postanskiBroj], #[payload.PIB], #[payload.kontaktOsoba], #[payload.brojZiroRacuna]);