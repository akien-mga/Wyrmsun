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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineLanguageWord("Cathfer", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "middle-irish",
	Type = "noun",
	Meanings = {"Man of Battle", "Warrior"}
})

DefineLanguageWord("Cellach", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "middle-irish",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Maccoímh", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 120.
	Language = "middle-irish",
	Type = "noun",
	Meanings = {"Squire"} -- source gives the German "Knappen" as the meaning
})

DefineLanguageWord("Sluag", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "middle-irish",
	Type = "noun",
	Meanings = {"Band", "Army"}
})

-- Compounds

DefineLanguageWord("Teglach", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 121; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "middle-irish",
	Type = "noun",
	Meanings = {"Household"}, -- as given by Buck
	CompoundElements = {
--		"prefix", ?
		"suffix", "middle-irish", "noun", "Sluag" -- as given by Buck
	}
})
