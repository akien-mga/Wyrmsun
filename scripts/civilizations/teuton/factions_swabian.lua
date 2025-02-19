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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineFaction("baden", {
	Name = "Baden",
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	DefaultTier = "grand_duchy",
	FactionUpgrade = "upgrade-faction-baden",
	Icon = "icon-flag-habsburg",
	DevelopsFrom = {"alamanni-tribe", "suebi_tribe"}
	
})

DefineFaction("switzerland", {
	Name = "Switzerland",
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-switzerland",
	Icon = "icon-flag-red-lion-on-green",
	DevelopsFrom = {"alamanni-tribe", "suebi_tribe"},
	Titles = {
		"republic", "kingdom", "Confederation"
	},
	MinisterTitles = {
		"head-of-state", "none", "republic", "kingdom", "Chancellor"
	}
})

DefineFaction("wurtemberg", {
	Name = "Wurtemberg",
	Civilization = "teuton",
	ParentFaction = "swabia",
	Type = "polity",
	Color = "red",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-wurtemberg",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"alamanni-tribe", "suebi_tribe"}
})

