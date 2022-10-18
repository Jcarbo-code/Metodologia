# Metodologia

INSERT INTO `personal` (`user`, `password`, `tipo`, `nombre`) VALUES
(`ema98`,`1234`,0,`Emanuel`)
(`fran67`,`1234`,0,`Frank`)
(`jacket`,`1234`,0,`Jacquette`)
(`cletus`,`1234`,0,`Cletus`)
(`seymurr`,`1234`,0,`Seymour`)
(`claibyn`,`1234`,0,`Claiborn`)
(`amenier`,`1234`,1,`Annemarie`)
(`eleanor`,`1234`,1,`Eleanor`)
(`farlin`,`1234`,1,`Farlie`)
(`ferdina`,`1234`,0,`Ferdinanda`)

INSERT INTO `secretario` (`user`) VALUES
(`amenier`)
(`eleanor`)
(`farlin`)


INSERT INTO `medica` (`especialidad`,`obra_social`,`personal_user`,`secretario_personal_user`) VALUES
(`Psiquiatría`,`IOMA`,`ema98`,`amenier`)
(`Pediatría`,`OSDE`,`fran67`,`amenier`)
(`Geriatría`,`IOMA`,`jacket`,`eleanor`)
(`Cardiología`,`OSECAC`,`cletus`,`eleanor`)
(`Pediatría`,`AVALANT`,`seymurr`,`eleanor`)
(`Rehabilitación`,`OSDE`,`claibyn`,`farlin`)
(`Cardiología`,`OSDE`,`ferdina`,`farlin`)

INSERT INTO `turnos` (`paciente_dni`,`fecha`,`hora`,`turno`,`medica_personal_user`) VALUES
(41258017,18/10/2022,11:00,`m`,ema98)
(56801956,20/10/2022,13:00,`t`,ema98)
(46817160,20/10/2022,15:50,`t`,fran67)
(48515601,22/10/2022,10:00,`m`,claibyn)
(41258017,29/10/2022,09:30,`m`,jacket)
(61848950,30/10/2022,17:25,`t`,ferdina)
(10000000,30/10/2022,18:00,`t`,fran67)
(51286569,01/11/2022,07:00,`m`,eleanor)
(40186985,12/11/2022,13:20,`t`,claibyn)
(37891880,15/11/2022,08:55,`t`,eleanor)
(48156891,16/11/2022,06:50,`m`,eleanor)
(42681890,18/11/2022,10:10,`m`,amenier)
(18650785,19/11/2022,09:20,`m`,farlin)
(48965154,20/11/2022,08:50,`m`,amenier)
(55555555,20/11/2022,16:55,`t`,farlin)



