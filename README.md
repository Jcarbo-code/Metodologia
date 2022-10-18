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
