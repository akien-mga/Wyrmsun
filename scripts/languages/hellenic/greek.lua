--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2015-2020 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineLanguageWord("Ἄχμων", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "greek",
	Type = "noun",
	Meanings = {"Anvil"} -- source gives the German "Ambos" (sic) as the meaning
})

DefineLanguageWord("Aegi", { -- appears in the name of a goat
	Language = "greek",
	Type = "noun",
	Meanings = {"Goat"} -- presumably, since "Aegipan" means "Goat-Pan" or "Goat-All"
})

DefineLanguageWord("Ákmōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.2.2.
	Language = "greek",
	Type = "noun",
	Meanings = {"Stone"},
	NumberCaseInflections = {
		"singular", "dative", "Ákmoni",
		"plural", "nominative", "Ákmones",
		"plural", "genitive", "Akmónōn"
	}
})

DefineLanguageWord("Amaltheia", { -- name of a female goat
	Language = "greek",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Ársēn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.2.2.
	Language = "greek",
	Type = "noun",
	Meanings = {"Male"},
	NumberCaseInflections = {
		"singular", "dative", "Árseni",
		"plural", "nominative", "Ársenes",
		"plural", "genitive", "Arsénōn"
	}
})

DefineLanguageWord("Ἀυτή", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cry", "Battle-Cry", "Battle"}
})

DefineLanguageWord("Baínō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "verb",
	Meanings = {"Come"} -- apparently, but not entirely clear from source
})

DefineLanguageWord("Basilikē", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxv.
	Language = "greek",
	Type = "noun",
	Meanings = {"Royal Hall", "Large Public Hall", "Church"}
})

DefineLanguageWord("Χαροπός", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "greek",
	Type = "verb", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Ĝherē"}
})

DefineLanguageWord("Χέσ-χιον", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oakum"} -- source gives the German word "Werg" as the meaning
})

DefineLanguageWord("Χέγχει", { -- this is (apparently) the third person singular present inflection; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "greek",
	Type = "verb", -- apparently
	Meanings = {"Hunger"}, -- source gives the German "hungert" as the meaning
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "indicative", "Χέγχει"
	}
})

DefineLanguageWord("Χοίμαω", { -- first person singular; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 53.
	Language = "greek",
	Type = "verb",
	Meanings = {"Bed", "Put to Sleep"} -- source gives the German "bette, schläfere ein" as the meaning
})

DefineLanguageWord("Χórtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Garden"}
})

DefineLanguageWord("Χολωνός", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "greek",
	Type = "noun",
	Meanings = {"Hill"} -- source gives the German "Hügel" as the meaning
})

DefineLanguageWord("Χράτος", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "greek",
	Type = "noun",
	Meanings = {"Strength"} -- source gives the German "Kraft" as the meaning
})

DefineLanguageWord("Χρατύς", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Strong", "Firm", "Hard"} -- source gives the German "stark, fest, hart" as the meaning
})

DefineLanguageWord("Χύσθος", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cavity", "Vulva"},
	Gender = "masculine"
})

DefineLanguageWord("Dāḗr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "greek",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Daxw"}
})

DefineLanguageWord("Δήιος", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 9.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Hostile"}
})

DefineLanguageWord("Δόλος", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "greek",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Del"}
})

DefineLanguageWord("Égō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "greek",
	Type = "pronoun",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Égō"
})

DefineLanguageWord("Éphūn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "greek",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Bhew"}
})

DefineLanguageWord("Érā", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Earth"},
	NumberCaseInflections = {
		"singular", "genitive", "Érā"
	}
})

DefineLanguageWord("Ἔσπερος", { -- source also gives the alternative form "Ἑστέρα"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "greek",
	Type = "noun",
	Meanings = {"Evening"}, -- source gives the German "Abend" as the meaning
	DerivesFrom = {"proto-indo-european", "adverb", "Ve"}
})

DefineLanguageWord("Ésti", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "greek",
	Type = "verb",
	Meanings = {"Is"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Ésti"
	}
})

DefineLanguageWord("Γηραλέος", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Old"} -- source gives the German "alt" as the meaning
})

DefineLanguageWord("Hēélios", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "greek",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Hépomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "greek",
	Type = "verb",
	Meanings = {"Follow"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Heptá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Ídmen", { -- this is the plural first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "verb",
	Meanings = {"Know"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Ídmen"
	}
})

DefineLanguageWord("Κώμη", { -- Fick gives "Χώμη" instead; Source: Arnold H. Price, "Early Places Ending in -heim as Warrior Club Settlements and the Role of Soc in the Germanic Administration of Justice", 1981, p. 194; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 53.
	Language = "greek",
	Type = "noun",
	Meanings = {"Village"} -- as given by Price; Fick also gives the German "Dorf" as the meaning
})

DefineLanguageWord("Κῶμος", { -- Source: Arnold H. Price, "Early Places Ending in -heim as Warrior Club Settlements and the Role of Soc in the Germanic Administration of Justice", 1981, p. 194.
	Language = "greek",
	Type = "noun",
	Meanings = {"Feast"}
})

DefineLanguageWord("Κώνωπες", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "greek",
	Type = "noun",
	Meanings = {"Gnats"},
	NumberCaseInflections = {
		"plural", "nominative", "Κώνωπες"
	}
})

DefineLanguageWord("Κότος", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "greek",
	Type = "noun",
	Meanings = {"Wrath"}
})

DefineLanguageWord("Kúrtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cage"}
})

DefineLanguageWord("Kyriakón", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxv.
	Language = "greek",
	Type = "noun",
	Meanings = {"That which belongs to the Lord", "That House of the Lord", "Church"}
})

DefineLanguageWord("Λύχος", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "greek",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥qo"}
})

DefineLanguageWord("Légō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.
	Language = "greek",
	Type = "verb",
	Meanings = {"Read"},
	DerivesFrom = {"proto-indo-european", "noun", "Leg"}
})

DefineLanguageWord("Lógos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.
	Language = "greek",
	Type = "noun",
	Meanings = {"Word"},
	DerivesFrom = {"proto-indo-european", "noun", "Leg"}
})

DefineLanguageWord("Μάχη", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Battle"}
})

DefineLanguageWord("Μάχοαι", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Fight"}
})

DefineLanguageWord("Μάρη", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "greek",
	Type = "noun",
	Meanings = {"Hand"} -- source gives the German "Hand" as the meaning
})

DefineLanguageWord("Meízōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"More"}
})

DefineLanguageWord("Μισθός", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "greek",
	Type = "noun",
	Meanings = {"Reward", "Payment of a Soldier"},
	Gender = "masculine"
})

DefineLanguageWord("Muîa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "greek",
	Type = "noun",
	Meanings = {"Midge"}
})

DefineLanguageWord("Naûs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NumberCaseInflections = {
		"singular", "accusative", "Nêa",
		"singular", "genitive", "Nēós"
	}
})

DefineLanguageWord("Nea", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "adjective",
	Meanings = {"New"}
})

DefineLanguageWord("Némō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "greek",
	Type = "verb",
	Meanings = {"Distribute"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
})

DefineLanguageWord("Νέρτερος", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "greek",
	Type = "noun",
	Meanings = {"The Lower"} -- source gives the German "der untere" as the meaning
})

DefineLanguageWord("Nuktós", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Night"}, -- presumably, but is not entirely clear from source
	NumberCaseInflections = {
		"singular", "genitive", "Nuktós"
	}
})

DefineLanguageWord("Óχos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Wagon"}
})

DefineLanguageWord("Ὀδούς", { -- source also gives the alternative form "ὀδόντος"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "greek",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Dont"}
})

DefineLanguageWord("Oktṓ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "numeral",
	Number = 8
})

DefineLanguageWord("Ōlénē", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "greek",
	Type = "noun",
	Meanings = {"Elbow"}
})

DefineLanguageWord("Ὁμιλέω", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "greek",
	Type = "verb",
	Meanings = {"Consort With"}
})

DefineLanguageWord("Ὅμιλος", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "greek",
	Type = "noun",
	Meanings = {"Crowd"}
})

DefineLanguageWord("Omφḗ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oracle"}
})

DefineLanguageWord("Ōón", { -- source also gives the variant in Sappho "ṓion"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "greek",
	Type = "noun",
	Meanings = {"Egg"},
	DerivesFrom = {"proto-indo-european", "noun", "Oh"}
})

DefineLanguageWord("Ὀφρύς", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "greek",
	Type = "noun",
	Meanings = {"Eyebrow", "Edge"}, -- source gives the German "Augenbraue, Rand" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Orektós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Straight"}
})

DefineLanguageWord("Ὄρνυμι", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "greek",
	Type = "verb",
	Meanings = {"Stir Up", "Incite"}
})

DefineLanguageWord("Pan", { -- appears in the name of a goat
	Language = "greek",
	Type = "adjective",
	Meanings = {"All"} -- presumably, since "Aegipan" means "Goat-Pan" or "Goat-All"
})

DefineLanguageWord("Πάλλω", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 7.
	Language = "greek",
	Type = "verb",
	Meanings = {"Swing", "Brandish"}
})

DefineLanguageWord("Patḗr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.3, 2.9.
	Language = "greek",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Πελεμίζω", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 7.
	Language = "greek",
	Type = "verb", -- presumably
	Meanings = {"Shake"}
})

DefineLanguageWord("Pénte", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "greek",
	Type = "numeral",
	Number = 5
})

DefineLanguageWord("Peúthomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "greek",
	Type = "verb",
	Meanings = {"Examine"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhewdh"}
})

DefineLanguageWord("Phāgós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oak"}
})

DefineLanguageWord("Pheídomai", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "greek",
	Type = "verb",
	Meanings = {"Separate"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Pheídomai"
	}
})

DefineLanguageWord("Phū́ō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "greek",
	Type = "verb",
	Meanings = {"Grow"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhew"}
})

DefineLanguageWord("Pī́on", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "greek",
	Type = "noun",
	Meanings = {"Fat"},
	DerivesFrom = {"proto-indo-european", "noun", "Spyxwon"}
})

DefineLanguageWord("Plōtós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Floating"}
})

DefineLanguageWord("Podós", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Foot"}, -- meaning not explicitly given in source, but Proto-Germanic cognate "Fōts" means "Foot"
	NumberCaseInflections = {
		"singular", "genitive", "Podós"
	}
})

DefineLanguageWord("Πόλεμος", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 7.
	Language = "greek",
	Type = "noun",
	Meanings = {"War", "Fighting", "Battle"}
})

DefineLanguageWord("Πύργος", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "greek",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Skiá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Shadow"}
})

DefineLanguageWord("Steíkhō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "greek",
	Type = "verb",
	Meanings = {"Climb"}
})

DefineLanguageWord("Στῑ́α", { -- source also gives the alternative form "στῖον"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "greek",
	Type = "noun",
	Meanings = {"Small Stone"} -- source gives the German "Steinchen" as the meaning
})

DefineLanguageWord("Στρατόπεδα", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 14.
	Language = "greek",
	Type = "noun",
	Meanings = {"Camp", "Army"}
})

DefineLanguageWord("Στρατιώτης", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 15.
	Language = "greek",
	Type = "noun",
	Meanings = {"Soldier"}
	-- from στρατός, στρατιά
})

DefineLanguageWord("Στρατός", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 14.
	Language = "greek",
	Type = "noun",
	Meanings = {"Encamped Army", "Army"}
})

DefineLanguageWord("Ταἑίδι", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 15.
	Language = "greek",
	Type = "noun",
	Meanings = {"Body of Soldiers"}
})

DefineLanguageWord("Téphra", { -- is this the plural form? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Ashes"},
	DerivesFrom = {"proto-indo-european", "noun", "Dhagh"}
})

DefineLanguageWord("Thḗsato", { -- this is apparently the past participle, since the source gives "sucked" as the meaning; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "greek",
	Type = "verb",
	Meanings = {"Sucked"},
	DerivesFrom = {"proto-indo-european", "noun", "Dheʔ"},
	Participles = {
		"past", "Thḗsato"
	}
})

DefineLanguageWord("Thugátēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Daughter"}
})

DefineLanguageWord("Thúrā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Door"}
})

DefineLanguageWord("Τρέχω", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 118.
	Language = "greek",
	Type = "verb",
	Meanings = {"Run"} -- source gives the German "laufen" as the meaning
})

DefineLanguageWord("Τύρβη", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "greek",
	Type = "noun",
	Meanings = {"Confusion", "Turmoil"} -- source gives the German "Verwirrung, Getümmel" as the meaning
})

DefineLanguageWord("Τύρβα", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Confused"} -- source gives the German "Durcheinander, Verwirrt" as the meaning
})

DefineLanguageWord("Ὑσμίνη", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 2.
	Language = "greek",
	Type = "noun",
	Meanings = {"Battle"}
})
