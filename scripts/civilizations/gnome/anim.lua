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
--      (c) Copyright 2014-2020 by Andrettin
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

--
-- Gnomish Worker
--

DefineAnimations("animations-gnomish-worker", {
	Still = {
		"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 0", "goto no-rotate",
		"label no-rotate", "wait 1",
	},
	Move = UnitMove,
	Attack = {
		"unbreakable begin",
		"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "attack", "wait 5", "frame 45", "wait 3",
		"frame 25", "wait 7", "frame 25",
		"unbreakable end", "wait 1",
	},
	Harvest_gold = WorkerMetalMining,
	Harvest_silver = WorkerMetalMining,
	Harvest_copper = WorkerMetalMining,
	Harvest_iron = WorkerMetalMining,
	Harvest_mithril = WorkerMetalMining,
	Harvest_lumber = WorkerLumberHarvesting,
	Harvest_stone = WorkerStoneMining,
	Harvest_limestone = WorkerStoneMining,
	Harvest_diamonds = WorkerMetalMining,
	Harvest_emeralds = WorkerMetalMining,
	Repair = {
		"unbreakable begin",
		"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "sound construction-wood", "wait 5", "frame 45", "wait 3",
		"frame 25", "wait 7", "frame 25",
		"unbreakable end", "wait 1",
	},
	Death = {
		"unbreakable begin",
		"frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100", "frame 60",
		"unbreakable end", "wait 1",
	},
})

--
-- Gnomish Recruit
--

local GnomishRecruitStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 0", "label no-rotate", "wait 1",}
local GnomishRecruitDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-gnomish-recruit", {
  Still = GnomishRecruitStill,
  Move = UnitMove,
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "wait 5", "frame 0", "wait 10",
    "frame 0", "unbreakable end", "wait 1",},
  Death = GnomishRecruitDeath
})

--
-- Gnomish Herbalist
--

local HerbalistStill = {
	"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
	"label taunt", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6",
	"frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 0", "wait 1", "goto no-rotate",
	"label no-rotate", "wait 1", }
local HerbalistDeath = {"unbreakable begin",
	"frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100",
	"frame 60", "wait 1", "unbreakable end", "wait 1",
}

DefineAnimations("animations-gnomish-herbalist", {
  Still = HerbalistStill,
  Move = UnitMove,
  Attack = {"unbreakable begin",
	"frame 30", "wait 3", "frame 35", "wait 3", "frame 40", "wait 3",
	"frame 45", "attack", "wait 5", "frame 25", "wait 24",
	"frame 25", "wait 1",
	"unbreakable end", "wait 1",
	},
  SpellCast = {"unbreakable begin", "frame 75", "wait 5", "frame 80", "wait 5",
    "frame 85", "attack", "wait 7",
    "frame 90", "wait 5", "frame 0", "wait 17", "frame 0", "unbreakable end", "wait 1",},
  Death = HerbalistDeath,
})

--
-- Gnomish Caravan
--

DefineAnimations("animations-gnomish-caravan", {
	Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
	Move = UnitWheeledMove,
	Death = {
		"unbreakable begin", "frame 10", "wait 3", "frame 15", "wait 3", "frame 20", "wait 3", "frame 25", "wait 100",
		"frame 25", "unbreakable end", "wait 1",
	}
})
