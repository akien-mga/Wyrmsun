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

DefineCharacter("marbod", {
	Name = "Marbod",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain/king
	Civilization = "suebi",
	Faction = "marcomanni-tribe",
	Trait = "upgrade-keen",
	HairVariation = "blond-hair",
	Description = "A young chieftain of the Marcomanni, Marbod aspires to forge a realm for his tribe capable of withstanding the test of time.",
	Icon = "icon-marbod",
	StartDate = -9, -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia in 9 BC
	DeathDate = 19, -- Marbod deposed in 19 AD; this should be the year of his death instead
	Deities = {"odin", "tyr"},
	HistoricalTitles = {
		"head-of-state", -9, 19, "marcomanni-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "marcomanni-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("catualda", { -- Marcomannic noble who was exiled by Marbod, and later returned with an army behind him and deposed Marbod
	Name = "Catualda",
	Gender = "male",
	Type = "unit-teuton-veteran-swordsman", -- noble
	Civilization = "suebi",
	Faction = "marcomanni-tribe",
	Deities = {"odin", "tyr"},
	HistoricalTitles = {
		"head-of-state", 19, 0, "marcomanni-tribe" -- deposed Marbod in 19 AD
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "marcomanni-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("ballomar", { -- Source: "Ancient Warfare VII.6", 2013, pp. 29-32.
	Name = "Ballomar",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "suebi",
	Faction = "marcomanni-tribe",
	Trait = "upgrade-intelligent",
	HairVariation = "brown-hair",
	Deities = {"odin", "tyr"},
	Description = "The Marcomannic chieftain Ballomar seeks to establish his tribe in the Roman lands to their south. To that effect, he has gathered a coalition of tribes - and is ready to cross the Danube.",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "marcomanni-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("hermeric", { -- Suebic chieftain who sacked central Galicia
	Name = "Hermeric",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "suebi",
	Faction = "suebi_tribe",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "suebi_tribe" or GetPlayerData(trigger_player, "Faction") == "galicia") then
			return true
		end
		return false
	end
})

DefineCharacter("rechilas", { -- Suebic chieftain who defeated a Roman army led by Andevotus near the Singilis river in 438 AD
	Name = "Rechilas",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "suebi",
	Faction = "galicia",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "suebi_tribe" or GetPlayerData(trigger_player, "Faction") == "galicia") then
			return true
		end
		return false
	end
})

