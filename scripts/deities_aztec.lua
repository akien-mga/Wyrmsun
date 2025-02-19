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
--      (c) Copyright 2018-2020 by Andrettin
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

DefineDeity("huitzilopochtli", { -- Source: Edward E. Calnek, "The Historical Validity of the Codex Xolotl", 1973, p. 424.
	Name = "Huitzilopochtli",
	Civilizations = {"aztec"},
	Religions = {"paganism"},
	Gender = "male",
	Major = true
	-- according to myth, Huitzilopochtli was born in Cohuatepec (near Tula)
})

DefineDeity("tezcatlipoca", { -- Source: Jerome A. Offner, "A Reassessment of the Extent and Structuring of the Empire of Techotlalatzin, Fourteenth Century Ruler of Texcoco", 1979, p. 233.
	Name = "Tezcatlipoca",
	Civilizations = {"aztec"}, -- worshipped by the Huitznahuaque and the Tlailotlaque
	Religions = {"paganism"},
	Gender = "male",
	Major = true
})

DefineDeity("tlaloc", { -- Source: Jerome A. Offner, "A Reassessment of the Extent and Structuring of the Empire of Techotlalatzin, Fourteenth Century Ruler of Texcoco", 1979, p. 233.
	Name = "Tlaloc",
	Civilizations = {"aztec"},
	Religions = {"paganism"},
	Gender = "male",
	Major = true,
	Domains = {"water", "earth"} -- deity of rain, earth and water
})
