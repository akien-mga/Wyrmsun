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
--      (c) Copyright 2013-2020 by Andrettin
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
-- Dwarven Miner
--

DefineAnimations("animations-dwarven-miner", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = WorkerAttack,
	Harvest_gold = WorkerMetalMining,
	Harvest_silver = WorkerMetalMining,
	Harvest_copper = WorkerMetalMining,
	Harvest_iron = WorkerMetalMining,
	Harvest_mithril = WorkerMetalMining,
	Harvest_lumber = WorkerLumberHarvesting,
	Harvest_stone = WorkerStoneMining,
	Harvest_limestone = WorkerStoneMining,
	Harvest_diamonds = WorkerStoneMining,
	Harvest_emeralds = WorkerStoneMining,
	Repair = {
		"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "sound construction-stone", "wait 5", "frame 45", "wait 3",
		"frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",
	},
	Death = WorkerDeath
})

--
-- Dwarven Militia
--

DefineAnimations("animations-dwarven-militia", {
  Still = UnitStill,
  Move = UnitMove,
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100",
    "frame 60", "unbreakable end", "wait 1",},
})

--
-- Dwarven Ballista
--

DefineAnimations("animations-dwarven-ballista", {
	Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
	Move = UnitWheeledMove,
	Attack = {
		"unbreakable begin",
		"frame 10", "wait 25",
		"frame 15", "attack", "sound catapult-attack", "wait 5", 
		"frame 20", "wait 4",
		"frame 15", "wait 6",
		"frame 20", "wait 8",
		"frame 15", "wait 10",
		"frame 15", "wait 92",
		"frame 0", "wait 49",
		"frame 0", "unbreakable end", "wait 1",
	}
})

--
-- Gryphon Rider
--

local GryphonRiderStill = {"frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6",
    "frame 15", "wait 6",}
local GryphonRiderMove = {"unbreakable begin", "frame 0", "wait 1", "frame 0", "move 3", "wait 1",
    "frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
    "frame 5", "move 2", "wait 1", "frame 5", "move 3", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 10", "move 3", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 1", "frame 0", "move 3", "unbreakable end", "wait 1",}
local GryphonRiderDeath = {"unbreakable begin", "frame 35", "wait 5", "frame 40", "wait 5", "frame 45", "wait 5",
    "frame 50", "wait 5", "frame 55", "wait 5", "frame 60", "wait 5",
    "frame 60", "unbreakable end", "wait 1",}

DefineAnimations("animations-dwarven-gryphon-rider", {
  Still = GryphonRiderStill,
  Move = GryphonRiderMove,
  Attack = {"unbreakable begin", "frame 0", "wait 6", "frame 5", "wait 6",
    "frame 10", "wait 6", "frame 15", "wait 6", "frame 15", "wait 1",
    "frame 20", "wait 6", "frame 25", "wait 6",
    "frame 30", "attack", "sound throwing-axe", "wait 8",
    "frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6",
    "frame 15", "wait 6",
    "frame 0", "unbreakable end", "wait 1", },
  Death = GryphonRiderDeath,
})

--
-- Dwarven Sentry Tower
--
local SentryTowerStill = {
	"if-var v.Transport.Value >= 1 transport",
	"frame 0", "wait 4", "frame 0", "goto end",
	"label transport", 
	"frame 3", "wait 4", "frame 3", "goto end",
	"label end", 
	"wait 1",
}

DefineAnimations("animations-dwarven-sentry-tower", {
  Still = SentryTowerStill,
  Research = SentryTowerStill,
  Train = SentryTowerStill,
  Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
})
