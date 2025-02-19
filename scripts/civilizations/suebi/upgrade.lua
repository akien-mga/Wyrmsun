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

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-town-hall"}, {"convert-to", "unit-teuton-town-hall"}
)
  
DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-farm"}, {"convert-to", "unit-teuton-farm"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-barracks"}, {"convert-to", "unit-teuton-barracks"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-carpenters-shop"}, {"convert-to", "unit-teuton-lumber-mill"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-smithy"}, {"convert-to", "unit-teuton-smithy"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-temple"}, {"convert-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-market"}, {"convert-to", "unit-teuton-market"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-dock"}, {"convert-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-worker"}, {"convert-to", "unit-teuton-worker"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-warrior"}, {"convert-to", "unit-suebi-swordsman"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-suebi-swordsman"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-veteran-warrior"}, {"convert-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-chieftain"}, {"convert-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-spearman"}, {"convert-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-archer"}, {"convert-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-priest"}, {"convert-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-suebi-civilization",
	{"apply-to", "unit-germanic-transport-ship"}, {"convert-to", "unit-teuton-kogge"}
)

DefineModifier("upgrade-suebi-civilization",
	{"remove-upgrade", "upgrade-deity-heimdall"}, {"remove-upgrade", "upgrade-deity-frey"}, {"remove-upgrade", "upgrade-deity-freyja"}
)
