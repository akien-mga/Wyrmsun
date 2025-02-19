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
--      land_attack.lua - Default land attack AI.
--
--      (c) Copyright 2000-2020 by José Ignacio Rodríguez, Carlo Almario and Andrettin
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

local land_funcs = {
	function() return AiSleep(AiGetSleepCycles()) end,
	function()
		if (AiGetRace() == "dwarf") then -- dwarves collect more stone than other civilizations, as they need it for their structures, rather than lumber
			AiSetCollect("copper", 45, "lumber", 20, "stone", 35)
		else
			AiSetCollect("copper", 45, "lumber", 45, "stone", 10)
		end
		return false;
	end,
	function() return AiSet(GetAiUnitType("worker"), 1) end,
	function() return AiWait(GetAiUnitType("worker")) end, -- start hangs if nothing available

	function() return AiWait(GetAiUnitType("town_hall")) end, -- don't spend resources on other buildings if the AI player doesn't have a town hall yet

	function() return AiSet(GetAiUnitType("worker"), 4) end, -- 4

	function() return AiSet(GetAiUnitType("worker"), 8) end, -- 8
	function() return AiWait(GetAiUnitType("barracks")) end,
	
	function() return AiSet(GetAiUnitType("worker"), 12) end,

	function() return AiSet(GetAiUnitType("worker"), 20) end,

	function() return AiWait(GetAiUnitType("lumber_mill")) end,

	function()
		if (AiGetRace() == "dwarf") then
			return AiWait(GetAiUnitType("masons_shop"));
		end
		return false;
	end,

	function()
		if (AiGetRace() == "germanic") then -- if is Germanic, wait until becomes Anglo-Saxon/Frankish/Gothic/Norse/Suebi/Teuton for the next step
			return true;
		end
	end,

	function() return AiResearch(GetAiUnitType("masonry")) end, -- needed for the stronghold
	function() return AiWait(GetAiUnitType("masonry")) end,
	
	function() return AiWait(GetAiUnitType("stronghold")) end,
	function() return AiSet(GetAiUnitType("worker"), 25) end,
	function() return AiResearch(GetAiUnitType("writing")) end, -- research writing to become a polity, and is needed for Engineering
	function() return AiWait(GetAiUnitType("stables")) end,
	function() return AiWait(GetAiUnitType("writing")) end,	

-- BUILDING A DEFENSE
	function() return AiSet(GetAiUnitType("worker"), 30) end,
--	function() return AiWait(AiBestCityCenter()) end,

	function() return AiWait(GetAiUnitType("temple")) end,
	
	-- MAGE TOWER
--	function() return AiNeed(AiMageTower()) end,

	function() return AiWait(GetAiUnitType("university")) end,

	function() return AiResearch(GetAiUnitType("mathematics")) end, -- needed for engineering
	function() return AiWait(GetAiUnitType("mathematics")) end,	
	function() return AiResearch(GetAiUnitType("engineering")) end, -- needed for siege engines
	function() return AiWait(GetAiUnitType("engineering")) end,	

	function() return AiSet(GetAiUnitType("worker"), 35) end,

	function() return AiSet(GetAiUnitType("worker"), 40) end,

	function() return AiSet(GetAiUnitType("worker"), 45) end,
	
	function() return true end,
}

local ai_call_counter = {}

function AiLandAttack()
	if (ai_call_counter[AiPlayer()] == nil) then
		ai_call_counter[AiPlayer()] = 0
	end
	ai_call_counter[AiPlayer()] = ai_call_counter[AiPlayer()] + 1
	if (GameSettings.Difficulty == DifficultyEasy and (ai_call_counter[AiPlayer()] % 50) ~= 0) then -- on easy difficulty, the AI is slower to do things
		return;
	end

	AiLoop(land_funcs, stratagus.gameData.AIState.index);
end

DefineAi("land-attack", "*", "land-attack", AiLandAttack)
