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

DefineSpeciesGenus("proailurus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 46.
	Name = "Proailurus",
	Family = "felidae"
})

DefineSpecies("proailurus-lemanensis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 46.
	Name = "Proailurus", -- Proailurus lemanensis
	Genus = "proailurus",
	Species = "lemanensis",
	Homeworld = "earth",
	EvolvesFrom = {"nimravus"}, -- earlier feliform
	Era = "oligocene" -- Upper Oligocene
	-- first known felid
	-- had the size of a small lynx
})

DefineSpecies("felis-attica", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46-47.
	Name = "Felis", -- Felis attica
	Genus = "felis",
	Species = "attica",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene" -- Upper Miocene
	-- 35 cm shoulder height
	-- lived in Eurasia
	-- as fast and agile as a mountain cat
})

DefineSpecies("machairodus-aphanistus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 48-49.
	Name = "Machairodus", -- Machairodus aphanistus
	Genus = "machairodus",
	Species = "aphanistus",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene" -- Upper Miocene
	-- 100 cm shoulder height
	-- lived in Eurasia and Africa
	-- the size of a lion
	-- his size and strength made him the predominant predator of his environment and era
	-- high great weight reduced his climbing ability
})

DefineSpecies("pristinosmilus-ogygia", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 48-49.
	Name = "Pristinosmilus", -- Pristinosmilus ogygia
	Genus = "pristinosmilus",
	Species = "ogygia",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene" -- Upper Miocene
	-- 60 cm shoulder height
	-- lived in Eurasia
	-- had the size similar to that of a modern leopard
	-- efficient climber
	-- hunted his prey on land but climbed up trees to escape from the threat of larger predators
})

DefineSpecies("pseudaelurus-quadridentatus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46, 48.
	Name = "Pseudaelurus", -- Pseudaelurus quadridentatus
	Genus = "pseudaelurus",
	Species = "quadridentatus",
	Homeworld = "earth",
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene" -- Middle Miocene
	-- first known machairodontine
	-- lived in Europe
	-- somewhat smaller than a puma
	-- possessed compressed canine teeth
})

DefineSpecies("schizaelurus-lorteti", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46-47.
	Name = "Schizaelurus", -- Schizaelurus lorteti
	Genus = "schizaelurus",
	Species = "lorteti",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene" -- Middle Miocene
	-- had the size of a lynx
	-- 45 cm shoulder height
	-- likely inhabited areas with abundant vegetation
	-- lived in Eurasia
})

DefineSpecies("lion", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183803
	Name = "Lion",
	Genus = "panthera",
	Species = "leo",
	Homeworld = "earth",
	EvolvesFrom = {"felis-attica", "schizaelurus-lorteti"}, -- earlier felines (the pantherinae originated from the felinae)
	Era = "holocene"
})

DefineSpecies("sabertooth", {
	Name = "Sabertooth",
	Supertaxon = "felidae",
	Homeworld = "earth",
	EvolvesFrom = {"proailurus-lemanensis"} -- earlier felid
})

DefineSpecies("tiger", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183805
	Name = "Tiger",
	Genus = "panthera",
	Species = "tigris",
	Homeworld = "earth",
	EvolvesFrom = {"felis-attica", "schizaelurus-lorteti"}, -- earlier felines (the pantherinae originated from the felinae)
	Era = "holocene"
})
