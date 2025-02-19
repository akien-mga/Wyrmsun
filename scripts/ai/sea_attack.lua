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
--      sea_attack.lua - Define the sea attack AI.
--
--      (c) Copyright 2000-2020 by Lutz Sammer, Jimmy Salmon and Andrettin
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

local end_loop_sea_funcs = {
	function() DebugPrint("Looping !\n"); return false end,
--	function() return AiForce(1, {AiDestroyer(), 6, AiBattleship(), 7, GetAiUnitType("glider"), 1}) end,
	function() return AiForce(2, {GetAiUnitType("infantry"), 4, GetAiUnitType("cavalry"), 4, GetAiUnitType("siege_engine"), 4}) end,
--	function() return AiWaitForce(1) end,
	function() return AiWaitForce(2) end,
--	function() return AiAttackWithForce(1) end,
	function() return AiAttackWithForce(2) end,
	function() return AiSleep(500) end,
	function() stratagus.gameData.AIState.loop_index[1 + AiPlayer()] = 0; return false end,
}

local sea_funcs = {
	function() return AiSleep(AiGetSleepCycles()) end,
	function() return AiSet(GetAiUnitType("worker"), 1) end,
	function() return AiWait(GetAiUnitType("worker")) end,  -- start hangs if nothing is available

	function() return AiSet(GetAiUnitType("worker"), 9) end,
	function() return AiNeed(GetAiUnitType("lumber_mill")) end,
	function() return AiWait(GetAiUnitType("lumber_mill")) end,
	function()
		if (AiGetRace() == "dwarf") then
			return AiNeed(GetAiUnitType("masons_shop"));
		end
		return false;
	end,
	function() return AiNeed(GetAiUnitType("market")) end, -- seems like a good point to build one
	function() return AiNeed(GetAiUnitType("barracks")) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 3}) end,
	function() return AiForceRole(0, "defend") end,
	function() return AiWaitForce(0) end,

	-- get the necessary upgrades for Germanic civilizations to become Teuton
	function()
		if (AiGetRace() == "germanic") then
			return AiNeed(GetAiUnitType("smithy"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiWait(GetAiUnitType("smithy"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiResearch(GetAiUnitType("wood-plow"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiResearch(GetAiUnitType("melee-weapon-1"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiResearch(GetAiUnitType("bronze-shield"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiResearch(GetAiUnitType("ranged-projectile-1"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiWait(GetAiUnitType("wood-plow"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiWait(GetAiUnitType("melee-weapon-1"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiWait(GetAiUnitType("bronze-shield"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiWait(GetAiUnitType("ranged-projectile-1"));
		end
		return false;
	end,

	function()
		if (AiGetRace() == "germanic") then -- if is Germanic, wait until becomes Anglo-Saxon/Frankish/Suebi/Teuton for the next step
			return true;
		end
	end,

	function() return AiResearch(GetAiUnitType("masonry")) end, -- needed for the stronghold
	function() return AiWait(GetAiUnitType("masonry")) end,

	function() return AiUpgradeTo(GetAiUnitType("stronghold")) end,
--	function() return AiNeed(AiRefinery()) end,
--	function() return AiNeed(GetAiUnitType("workshop")) end,
	function() return AiSet(GetAiUnitType("worker"), 15) end,
--	function() return AiSet(AiTanker(), 1) end,
--	function() return AiNeed(AiPlatform()) end,
	function()
		if (AiGetRace() ~= "gnome") then
			return AiWait(GetAiUnitType("stronghold"))
		end
		return false
	end,
	function() return AiResearch(GetAiUnitType("coinage")) end, -- research coinage to improve copper/silver/gold processing
	function() return AiResearch(GetAiUnitType("writing")) end, -- research writing to become a polity

	function() -- certain civilizations acquire serfdom when it becomes available
		if (AiGetRace() == "teuton" or AiGetRace() == "anglo_saxon" or AiGetRace() == "english" or AiGetRace() == "frankish" or AiGetRace() == "suebi" or AiGetRace() == "goth" or AiGetRace() == "norse") then
			return AiResearch("upgrade-serfdom");
		end
		return false;
	end,
	
--	function() return AiSet(AiTanker(), 3) end,
--	function() return AiForce(1, {AiSubmarine(), 3}) end,
--	function() return AiWaitForce(1) end,  -- wait until attack force is ready
--	function() return AiAttackWithForce(1) end,

	function() return AiSleep(500) end,
--	function() return AiNeed(AiFoundry()) end,
--	function() return AiResearch(AiUpgradeShipArmor1()) end,
--	function() return AiResearch(AiUpgradeShipArmor2()) end,
--	function() return AiSet(AiTanker(), 4) end,
--	function() return AiForce(1, {AiSubmarine(), 4}) end,
--	function() return AiWaitForce(1) end,
--	function() return AiAttackWithForce(1) end,

	function() return AiSleep(500) end,
	function()
		if (AiGetRace() ~= "germanic") then
			return AiNeed(GetAiUnitType("smithy")); -- Germanics needed a smithy earlier to upgrade to Teuton
		end
		return false;
	end,
--	function() return AiForce(1, {AiSubmarine(), 5, GetAiUnitType("glider"), 1}) end,
--	function() return AiWaitForce(1) end,  -- wait until attack force is ready
--	function() return AiAttackWithForce(1) end,

	function() return AiSleep(500) end,
	function() return AiResearch(GetAiUnitType("siege-projectile-1")) end,
	function() return AiNeed(GetAiUnitType("stables")) end,
	function() return AiResearch(GetAiUnitType("alchemy")) end, -- research alchemy to improve shooters
	function() return AiForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("siege_engine"), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(1, {AiSubmarine(), 1, AiDestroyer(), 2, AiBattleship(), 1, GetAiUnitType("glider"), 2}) end,
	function() return AiSleep(3000) end,
--	function() return AiWaitForce(1) end,
--	function() return AiAttackWithForce(1) end,

	function() return AiForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("siege_engine"), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(3, {AiDestroyer(), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForceRole(3, "defend") end,
--	function() return AiForce(1, {AiSubmarine(), 1, AiDestroyer(), 2, AiBattleship(), 2, GetAiUnitType("glider"), 2}) end,
	function() return AiForce(2, {GetAiUnitType("siege_engine"), 2}) end,
--	function() return AiWaitForce(1) end,
	function() return AiWaitForce(2) end,
--	function() return AiAttackWithForce(1) end,
	function() return AiAttackWithForce(2) end,

	function() return AiSleep(500) end,
	function() return AiResearch(GetAiUnitType("siege-projectile-2")) end,
--	function() return AiResearch(AiUpgradeShipCannon1()) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("siege_engine"), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(3, {AiDestroyer(), 1, AiBattleship(), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(1, {AiSubmarine(), 1, AiDestroyer(), 2, AiBattleship(), 3, GetAiUnitType("glider"), 1}) end,
	function() return AiForce(2, {GetAiUnitType("cavalry"), 1, GetAiUnitType("siege_engine"), 3}) end,
--	function() return AiWaitForce(1) end,
	function() return AiWaitForce(2) end,
--	function() return AiAttackWithForce(1) end,
	function() return AiAttackWithForce(2) end,

	function() return AiSleep(500) end,
--	function() return AiResearch(AiUpgradeShipCannon2()) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("siege_engine"), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(3, {AiDestroyer(), 1, AiBattleship(), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(1, {AiSubmarine(), 1, AiDestroyer(), 3, AiBattleship(), 4, GetAiUnitType("glider"), 1}) end,
	function() return AiForce(2, {GetAiUnitType("cavalry"), 3, GetAiUnitType("siege_engine"), 3}) end,
--	function() return AiWaitForce(1) end,
	function() return AiWaitForce(2) end,
--	function() return AiAttackWithForce(1) end,
	function() return AiAttackWithForce(2) end,

	function() return AiSleep(500) end,
	function() return AiNeed(GetAiUnitType("dock")) end,
	function() return AiResearch(GetAiUnitType("melee-weapon-1")) end,
	function() return AiResearch(GetAiUnitType("bronze-shield")) end,
	function() return AiResearch(GetAiUnitType("melee-weapon-2")) end,
	function() return AiResearch(GetAiUnitType("iron-shield")) end,
	function() return AiResearch("upgrade-shield-wall") end, -- acquire the shield wall military doctrine
--	function() return AiSet(AiTanker(), 5) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("siege_engine"), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(3, {AiDestroyer(), 1, AiBattleship(), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(1, {AiSubmarine(), 1, AiDestroyer(), 4, AiBattleship(), 5, GetAiUnitType("glider"), 1}) end,
	function() return AiForce(2, {GetAiUnitType("cavalry"), 3, GetAiUnitType("siege_engine"), 3}) end,
--	function() return AiWaitForce(1) end,
	function() return AiWaitForce(2) end,
--	function() return AiAttackWithForce(1) end,
	function() return AiAttackWithForce(2) end,

	function() return AiSleep(500) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("siege_engine"), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(3, {AiDestroyer(), 1, AiBattleship(), 1, GetAiUnitType("glider"), 1}) end,
--	function() return AiForce(1, {AiSubmarine(), 1, AiDestroyer(), 5, AiBattleship(), 6, GetAiUnitType("glider"), 1}) end,
	function() return AiForce(2, {GetAiUnitType("cavalry"), 3, GetAiUnitType("siege_engine"), 3}) end,
--	function() return AiWaitForce(1) end,
	function() return AiWaitForce(2) end,
--	function() return AiAttackWithForce(1) end,
	function() return AiAttackWithForce(2) end,

	function() return AiSleep(500) end,
	function() return AiLoop(end_loop_sea_funcs, stratagus.gameData.AIState.loop_index) end,
}

local ai_call_counter = {}

function AiSeaAttack()
	if (ai_call_counter[AiPlayer()] == nil) then
		ai_call_counter[AiPlayer()] = 0
	end
	ai_call_counter[AiPlayer()] = ai_call_counter[AiPlayer()] + 1
	if (GameSettings.Difficulty == DifficultyEasy and (ai_call_counter[AiPlayer()] % 50) ~= 0) then -- on easy difficulty, the AI is slower to do things
		return;
	end

	AiLoop(sea_funcs, stratagus.gameData.AIState.index)
end

DefineAi("sea-attack", "*", "sea-attack", AiSeaAttack)
