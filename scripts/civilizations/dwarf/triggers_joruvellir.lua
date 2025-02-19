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

AddTrigger("a-home-in-the-fields-of-sand-introduction",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and i == GetThisPlayer() and GetCurrentCampaign() == "a_home_in_the_fields_of_sand") then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("a-home-in-the-fields-of-sand-introduction", trigger_player)
		return false
	end
)

AddTrigger("aurvangling-goblins-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "RaceName") == "dwarf" and GetFactionExists("aurvangling-tribe")) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("aurvangling-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (
						uncount[unit1]
						and GetUnitVariable(uncount[unit1], "Ident") == "unit-goblin-archer"
						and GetUnitVariable(uncount[unit1], "PosX") >= GetMapTemplateData("aurvang", "MapStartPosX")
						and GetUnitVariable(uncount[unit1], "PosX") <= GetMapTemplateData("aurvang", "MapEndPosX")
						and GetUnitVariable(uncount[unit1], "PosY") >= GetMapTemplateData("aurvang", "MapStartPosY")
						and GetUnitVariable(uncount[unit1], "PosY") <= GetMapTemplateData("aurvang", "MapEndPosY")
					) then
						if (GetNumUnitsAt(i, "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}, GetUnitVariable(uncount[unit1], "MapLayer")) > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function() 
		CallDialogue("aurvangling-goblins-sighted", trigger_player)
		return false
	end
)

AddTrigger("joruvellir-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "a_home_in_the_fields_of_sand") and GetNumUnitsAt(i, "any", {GetMapTemplateData("joruvellir", "MapStartPosX"), GetMapTemplateData("joruvellir", "MapStartPosY")}, {GetMapTemplateData("joruvellir", "MapEndPosX"), GetMapTemplateData("joruvellir", "MapEndPosY")}, GetMapTemplateData("joruvellir", "MapLayer")) > 0) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("joruvellir-sighted", trigger_player)
		return false
	end
)

AddTrigger("joruvellir-hall-completed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "a_home_in_the_fields_of_sand") and GetNumUnitsAt(i, "unit-dwarven-town-hall", {GetSiteData("joruvellir", "MapCenterPosX") - 16, GetSiteData("joruvellir", "MapCenterPosY") - 16}, {GetSiteData("joruvellir", "MapCenterPosX") + 16, GetSiteData("joruvellir", "MapCenterPosY") + 16}, GetSiteData("joruvellir", "MapLayer")) > 0) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("joruvellir-hall-completed", trigger_player)
		return false
	end
)

AddTrigger("joruvellir-hall-construction-failed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "a_home_in_the_fields_of_sand") and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-miner") == 0 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-skilled-miner") == 0 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-expert-miner") == 0 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-runesmith") == 0 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-runemaster") == 0 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-arcanister") == 0) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("joruvellir-hall-construction-failed", trigger_player)
		return false
	end
)
