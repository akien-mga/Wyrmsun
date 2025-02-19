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

DefineDependency("upgrade-deity-christian-god",
	{"upgrade-writing"}
)

DefinePredependency("upgrade-deity-heimdall",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-anglo-saxon-civilization"}, "or", {"upgrade_norse_civilization"}
)

DefineDependency("upgrade-deity-heimdall",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}
)

DefinePredependency("upgrade-deity-hel",
	{"upgrade-english-civilization", 0}
)

DefineDependency("upgrade-deity-hel",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}, "or", {"upgrade-deity-gathaarl"}
)

DefinePredependency("upgrade-deity-odin",
	{"upgrade-english-civilization", 0}
)

DefinePredependency("upgrade-deity-thor",
	{"upgrade-english-civilization", 0}
)

DefinePredependency("upgrade-deity-loki",
	{"upgrade-english-civilization", 0}
)

DefinePredependency("upgrade-deity-frey",
	{"upgrade-english-civilization", 0}
)

DefinePredependency("upgrade-deity-freyja",
	{"upgrade-english-civilization", 0}
)

DefinePredependency("upgrade-deity-tyr",
	{"upgrade-english-civilization", 0}
)

DefineDependency("upgrade-deity-tyr",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}
)
