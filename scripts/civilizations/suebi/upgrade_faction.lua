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

DefineUpgrade("upgrade-faction-alamanni-tribe", {
	Name = "Alamanni Tribe",
	EffectsString = "+10 HP for Kregars"
})

DefineUpgrade("upgrade-faction-buri-tribe", {
	Name = "Buri Tribe",
	EffectsString = "+1 Speed for Kregars"
})

DefineUpgrade("upgrade-faction-hermunduri-tribe", {
	Name = "Hermunduri Tribe",
	EffectsString = "+1 Damage, +5 HP for Kregars"
})

DefineUpgrade("upgrade-faction-marcomanni-tribe", {
	Name = "Marcomanni Tribe",
	EffectsString = "+2 Accuracy for Kregars"
})

DefineUpgrade("upgrade-faction-quadi-tribe", {
	Name = "Quadi Tribe",
	EffectsString = "+2 Armor for Kregars"
})

DefineUpgrade("upgrade-faction-semnone-tribe", {
	Name = "Semnone Tribe",
	EffectsString = "+1 Damage, +1 Armor for Kregars"
})

DefineUpgrade("upgrade-faction-suebi-tribe", {
	Name = "Suebi Tribe",
	EffectsString = "+2 Evasion for Kregars",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-thuringian-tribe", {
	Name = "Thuringian Tribe",
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-faction-galicia", {
	Name = "Galicia",
	EffectsString = "+2 Damage for Kregars",
	RequirementsString = "Writing and Masonry"
})

DefineModifier("upgrade-faction-alamanni-tribe",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-buri-tribe",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-hermunduri-tribe",
	{"HitPoints", 5},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-marcomanni-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-quadi-tribe",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-semnone-tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-suebi-tribe",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-thuringian-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-galicia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineDependency("upgrade-faction-suebi-tribe",
	{"upgrade_ironworking"}
)
