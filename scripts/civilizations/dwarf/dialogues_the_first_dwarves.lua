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

DefineDialogue("a-rocky-home-introduction", {
	Nodes = {
		{
			"text", "After a long time wandering, a clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home..."
		},
		{
			"speaker", "character", "modsognir",
			"text", "My clansfolk, this rocky hill seems like a promising place to build our place of dwelling. And if we are to survive here, we will need food and materials to build shelters for our people."
		},
		{
			"speaker", "character", "durin",
			"text", "Aye. There are plenty of yales here, we should hunt some. I saw a yale cave to the southeast when we were on our way here."
		},
		{
			"speaker", "character", "modsognir",
			"text", "There are many perils laying about. We need to be ready quickly.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the_first_dwarves")
					SetPlayerData(trigger_player, "AcceptQuest", "a_rocky_home")
				end
			}
		},
		{
			"text", "Hint: Select a Miner, press the Build Structure button and then click on the Build Mead Hall button to build the structure required for this quest. The Mead Hall can only be built on a Settlement Site."
		},
		{
			"text", "Hint: Select a Miner and then right-click on a Yale Cave to build a Yale Hunting Lodge."
		}
	}
})

DefineDialogue("a-rocky-home-mead-hall-built", {
	Nodes = {
		{
			"speaker", "unit", "unit-brising-miner",
			"speaker-player", "brising_clan",
			"text", "The mead hall is built, my chieftain."
		},
		{
			"speaker", "character", "modsognir",
			"text", "Hmm. That's some good craftsmanship. And now we can begin harvesting the materials we need."
		},
		{
			"text", "Hint: You can acquire side-quests in your Mead Hall, and train new Miners there should you need them. If you lack the Food supply to train more units, build farms with your existing miners."
		},
		{
			"text", "Hint: You can harvest stone from Stone Piles, as well as from rock tiles."
		}
	}
})

DefineDialogue("a-rocky-home-yales-hunted", {
	Nodes = {
		{
			"speaker", "character", "durin",
--			"text", "We have hunted enough of them to last for a while. Ah, nothing like the taste of roasted yale..."
			"text", "Ah, nothing like the taste of roasted yale..."
		},
		{
			"text", "Hint: Yale Hunting Lodges provide you with food, but that is not all. You can also instruct your workers to gather leather there, which is sold automatically for copper if you have built a market."
		}
	}
})

DefineDialogue("a-rocky-home-materials-collected", {
	Nodes = {
		{
			"speaker", "character", "modsognir",
			"text", "The materials we need have been collected. It is time to build our new homes by these rocks!"
		},
		{
			"speaker", "character", "durin",
			"text", "Aye, chieftain! And we should build a war hall here, to train warriors to fight off any potential foes.",
			"conditions", function(s)
				local war_hall = GetFactionClassUnitType("barracks", GetPlayerData(trigger_player, "Faction"))
				return (war_hall ~= nil and GetPlayerData(trigger_player, "UnitTypesCount", war_hall) == 0)
			end
		}
	}
})

DefineDialogue("grafvitning-kobolds-attack-modsognirs-clan", {
	Nodes = {
		{
			"speaker", "unit", "unit-kobold-footpad",
			"speaker-player", "grafvitning-tribe",
			"text", "This is our land! Die, breastling trespassers!"
		},
		{
			"speaker", "character", "durin",
			"text", "Kobolds! We are under attack!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("grafvitning-tribe"))
					SetDiplomacy(GetFactionPlayer("grafvitning-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("modsognirs-clan-kills-a-kobold", {
	Nodes = {
		{
			"speaker", "character", "durin",
			"text", "Damn scaly beast!"
		},
		{
			"speaker", "character", "modsognir",
			"text", "The kobolds claim these stonelands as their own. There are many other kobold territories, however, and us dwarves have only these rocks to call home. If our settlement in Svarinshaug is destroyed, we will go extinct."
		},
		{
			"speaker", "character", "durin",
			"text", "Ye speak truly, Modsognir. But perhaps we can agree to some form of peace with the creatures?"
		},
		{
			"speaker", "character", "modsognir",
			"text", "It would be no use. If they attacked us on sight, they hold Svarinshaug to be sacred ground and would never let us live here. Many kobold tribes build their homes around a wyrm's lair, serving the colossal beast who resides within. This is likely the case here, with these kobolds living somewhere below us. The entrance to the lower level should be nearby..."
		},
		{
			"speaker", "character", "durin",
			"text", "A dire situation, if true. Our clan has never fought a wyrm before."
		},
		{
			"speaker", "character", "modsognir",
			"text", "Either way, the survival of our clan requires that we root the kobolds out. Ready our warriors!",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-slaying-of-grafvitnir")
				end
			}
		},
		{
			"text", "Hint: Some maps have multiple surface layers. Select a unit and then right-click on a Cavern Entrance to go to another surface layer."
		}
	}
})

DefineDialogue("modsognirs-clan-destroys-the-grafvitnings", {
	Nodes = {
		{
			"speaker", "character", "modsognir",
			"text", "The diminutive fiends and their pet monster are done for. Our clan lives on!",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "the_first_dwarves")) then
						if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the_first_dwarves") then
							CallDialogue("campaign-victory", trigger_player)
						end
						SetPlayerData(trigger_player, "CompleteQuest", "the_first_dwarves")
					end
					SetPlayerData(trigger_player, "CompleteQuest", "the-slaying-of-grafvitnir")
				end
			}
		}
	}
})

DefineDialogue("worker-suggests-stone-furniture", {
	Nodes = {
		{
			"speaker", "unit", "unit-brising-miner",
			"speaker-player", "brising_clan",
			"text", "I have an idea! Why don't we make furniture out of stone?"
		},
		{
			"speaker", "unit", "unit-brising-expert-miner",
			"speaker-player", "brising_clan",
			"text", "Har! Even our hardy dwarven arses can't withstand sitting on stone for long. And have ye thought of how difficult it would be to move it around?"
		}
	}
})

DefineDialogue("brokk-and-eitri-craft-mjollnir", {
	Nodes = {
		{
			"speaker", "character", "eitri",
			"text", "We have gotten all the metal we need. To the forge!"
		}
	}
})
