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

DefineUnitType("unit-norse-swordsman", {
	Name = "Swordsman",
	Parent = "unit-template-infantry",
	Civilization = "norse",
	Description = "Feared throughout northern coasts, Norse swordsmen are mighty warriors.",
	Image = {"file", "norse/units/swordsman.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-norse-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Costs = {"time", 50, "copper", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	ButtonKey = "w",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Sounds = {
--		"selected", "basic-norse-voices-selected-group",
--		"acknowledge", "basic-norse-voices-acknowledge",
--		"ready", "basic-norse-voices-ready",
--		"help", "basic-norse-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-norse-veteran-swordsman", {
	Name = "Veteran Swordsman",
	Parent = "unit-template-veteran-infantry",
	Civilization = "norse",
	Description = "These high-ranking swordsmen have honed their combat skills to a greater degree than many of their counterparts.",
	Image = {"file", "norse/units/veteran_swordsman.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-norse-veteran-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing"},
	Sounds = {
--		"selected", "basic-norse-voices-selected-group",
--		"acknowledge", "basic-norse-voices-acknowledge",
--		"ready", "basic-norse-voices-ready",
--		"help", "basic-norse-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-norse-heroic-swordsman", {
	Name = "Hersir",
	Parent = "unit-template-heroic-infantry",
	Civilization = "norse",
	Description = "The hersirs were the Norse chieftains, going forth into battle in their shining war-gear.",
	Image = {"file", "norse/units/veteran_swordsman.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-norse-heroic-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Sounds = {
--		"selected", "basic-norse-voices-selected-group",
--		"acknowledge", "basic-norse-voices-acknowledge",
--		"ready", "basic-norse-voices-ready",
--		"help", "basic-norse-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-norse-longship", {
	Name = "Longship", -- called "Langskip" in Old Norse; Source: Richard W. Unger, "Warships and Cargo Ships in Medieval Europe", 1981, p. 242.
	Parent = "unit-template-siege-warship",
	Civilization = "teuton", -- so that it will be buildable by the Teutons, Suebi and etc. as well
	Description = "Longships are the terror of the Baltic and North Seas, and beyond. Fast, elegant and deadly, they are often used for quick incursions and raids.",
	Image = {"file", "norse/units/longship.png", "size", {100, 100}},
	LightImage = {"file", "norse/units/longship_water.png"},
	Icon = "icon-norse-longship",
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	BluntDamage = true,
	ButtonKey = "l"
})

DefineUnitType("unit-norse-town-hall", {
	Name = "Chieftain's Hall",
	Parent = "unit-template-town-hall",
	Civilization = "norse",
	Description = "Built by mighty chieftains, these halls serve as the center of Norse settlements.",
	Image = {"file", "norse/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "norse/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-norse-town-hall",
	ButtonKey = "h",
	AiDrops = {"unit-boots"},
	DropSpells = {"spell-norse-allegiance"},
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-farm", {
	Name = "Farm",
	Parent = "unit-template-farm",
	Civilization = "norse",
	Description = "Farms are essential for supporting a settlement's population.",
	Image = {"file", "norse/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "norse/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-norse-farm",
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-barracks", {
	Name = "War Lodge",
	Parent = "unit-template-barracks",
	Civilization = "norse",
	Description = "In this structure Norse warriors are trained for battle.",
	Image = {"file", "norse/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "norse/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-norse-barracks",
	ButtonKey = "w",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-composite-bow", "unit-longbow", "unit-hand-cannon", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-lumber-mill", {
	Name = "Lumber Mill",
	Parent = "unit-template-lumber-mill",
	Civilization = "norse",
	Description = "A lumber mill provides a settlement with more advanced methods for processing timber, and it is also in this structure where woodworkers seek to improve arrows and construction techniques.",
	Image = {"file", "norse/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "norse/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Animations = "animations-active-building",
	Icon = "icon-norse-lumber-mill",
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-composite-bow", "unit-longbow", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-smithy", {
	Parent = "unit-template-smithy",
	Civilization = "norse",
	Description = "Norse smiths work in these structures to produce swords and other war-gear that warriors bring into battle..",
	Image = {"file", "norse/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "norse/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-norse-smithy",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-hand-cannon", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield"},
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-temple", {
	Name = "Temple",
	Parent = "unit-template-temple",
	Civilization = "norse",
	Description = "Within Norse temples the worship of their gods is conducted, as are their traditional rituals.",
	Image = {"file", "norse/buildings/temple.png", "size", {96, 96}},
	Shadow = {"file", "norse/buildings/temple_shadow.png", "size", {96, 96}},
	Icon = "icon-norse-temple",
	RequirementsString = "Lumber Mill",
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-market", {
	Parent = "unit-template-market",
	Civilization = "norse",
	Description = "Norse traders are active throughout the North and Baltic Seas, bringing a varied assortment of goods to market.",
	Image = {"file", "norse/buildings/market.png", "size", {96, 96}},
	Shadow = {"file", "norse/buildings/market_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-norse-market",
	RequirementsString = "Lumber Mill",
	SoldUnits = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-composite-bow", "unit-longbow", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-watch-tower", {
	Name = "Watch Tower",
	Parent = "unit-template-watch-tower",
	Civilization = "norse",
	Description = "Sentinels in these wooden towers keep watch to see whether enemies approach.",
	Image = {"file", "norse/buildings/watch_tower.png", "size", {64, 64}},
	Shadow = {"file", "norse/buildings/watch_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-norse-watch-tower",
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-dock", {
	Name = "Dock",
	Parent = "unit-template-dock",
	Civilization = "norse",
	Description = "The Norse are a seafaring people par excellence. Their skilled shipwrights take great pride in the elegant ships they construct, and which sail to a myriad shores.",
	Image = {"file", "norse/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "norse/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-norse-dock",
	RequirementsString = "Lumber Mill",
	Sounds = {
--		"help", "basic-norse-voices-help-town"
	}
} )

DefineUnitType("unit-norse-palisade", {
	Parent = "unit-template-palisade",
	Civilization = "neutral", -- so that other civilizations can build the palisade
	TerrainType = "norse-palisade",
	Image = {"file", "norse/buildings/wooden_wall.png", "size", {32, 32}},
	Icon = "icon-norse-wooden-wall",
	Description = "Cheaper and easier to construct than stone walls, palisades are often built to defend a temporary camp, or if stonemasons aren't readily available."
} )
