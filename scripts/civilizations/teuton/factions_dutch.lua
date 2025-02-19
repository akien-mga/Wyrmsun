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

DefineFaction("brabant", {
	Name = "Brabant",
	Civilization = "teuton",
	Type = "polity",
	Color = "cyan",
	DefaultTier = "duchy", -- Brabant was a duchy in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	FactionUpgrade = "upgrade-faction-brabant",
	Icon = "icon-flag-yellow-lion-on-cyan",
	DevelopsFrom = {"frank-tribe"}
})

DefineFaction("drenthe", {
	Name = "Drenthe",
	Civilization = "teuton",
	Type = "polity",
	Color = "cyan",
	DefaultTier = "county", -- Drenthe was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	FactionUpgrade = "upgrade-faction-drenthe",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"frank-tribe", "ampsivarii-tribe"}
})

DefineFaction("holland", {
	Name = "Holland",
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	DefaultTier = "county", -- Holland was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	FactionUpgrade = "upgrade-faction-holland",
	Icon = "icon-flag-habsburg",
	DevelopsFrom = {"frank-tribe", "batavian-tribe"}
})

DefineFaction("overijssel", {
	Name = "Overijssel",
	Civilization = "teuton",
	Type = "polity",
	Color = "pink",
	DefaultTier = "barony", -- Overijssel was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	FactionUpgrade = "upgrade-faction-overijssel",
	Icon = "icon-flag-five-red-birds-on-yellow",
	DevelopsFrom = {"frank-tribe", "chamavi-tribe"}
})
