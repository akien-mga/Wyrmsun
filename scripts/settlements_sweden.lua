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

DefineSite("roma-gotland", {
	Name = "Roma",
	MapTemplate = "earth",
	Position = {4259, 739},
	CulturalNames = {
		"norse", "Roma"
	},
	HistoricalOwners = {
		{1164, 9, 9}, "cistercian-order"
	},
	HistoricalBuildings = {
		{1164, 9, 9}, 0, "temple", "cistercian-order" -- a Cistercian monastery, the Beata Maria de Gutnalia, was established on September 9th of 1164 at Roma; Source: "Guta Saga: The History of the Gotlanders", 1999, p. xlvii.
	},
	Regions = {"scandinavia"}
})

DefineSite("sigtun", {
	Name = "Sigtun",
	MapTemplate = "earth",
	Position = {4243, 692},
	CulturalNames = {
		"germanic", "Segiztuna", -- "Segiztûna" is a rendering of "Sigtun" in Proto-Germanic, since the Ynglinga saga the city was founded when the cultural ancestors of the Germanic peoples (= Odin's people) first settled Scandinavia
		"norse", "Sigtun"
	},
	HistoricalOwners = {
		{-2800, 12, 30}, "yngling-tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; the Ynglings were the dynasty founded by Odin's son Yngve, who ruled the Swedish lands
		-264, "swede-tribe", -- tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "sweden" -- political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		{-2800, 12, 30}, 0, "temple" -- in the Ynglinga saga, Odin erects a large temple after he arrived in Sigtun (here understood to correspond to the time when Indo-Europeans reached Scandinavia); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 220.
	},
	Regions = {"scandinavia"}
})

DefineSite("torsburgen", {
	Name = "Torsburgen",
	MapTemplate = "earth",
	Position = {4265, 741},
	CulturalNames = {
		"norse", "Torsburgen"
	},
	HistoricalOwners = {
		300, "gute-tribe"
	},
	HistoricalBuildings = {
		300, 1100, "watch_tower" -- the enormous hill fort of Torsburgen had two phases, one dated to 300-400 AD, and the other to 800-1100 AD; Source: "Guta Saga: The History of the Gotlanders", 1999, pp. xxvii-xxviii.
	},
	Regions = {"scandinavia"}
})

DefineSite("vitemolla", {
	Name = "Vitemolla",
	MapTemplate = "earth",
	Position = {4161, 780},
	CulturalNames = {
		"norse", "Vitemolla" -- "Vitemölla"
	},
	HistoricalOwners = {
		-1700, "yngling-tribe"
	},
	HistoricalBuildings = {
		-1700, -500, "temple", "heimdalls-stones" -- the archaeoastronomical observatory termed by archaeologists as "Heimdall's Stones" was constructed and in use during the Bronze Age; between 600 and 500 BC it was covered by sands; Source: Nils-Axel Mörner, Bob G. Lind, Göran Possnert, "Heimdall's Stones at Vitemölla in SE Sweden and the Chronology and Stratigraphy of the Surroundings", 2009, pp. 209-212.
	},
	Regions = {"scandinavia"}
})
