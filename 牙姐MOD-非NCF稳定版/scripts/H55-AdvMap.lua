------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - ADVENTURE MAP
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus
--Website: http://heroescommunity.com/viewthread.php3?TID=41303

------------------------------------------------------------------------------------------------------------------------------------------------
--DYNAMIC TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

--BUILDING_FONTAIN_OF_FORTUNE
h55_FontainOfFortunes = GetObjectNamesByType("BUILDING_FONTAIN_OF_FORTUNE");
h55_FontainOfFortunes_Qty = length(h55_FontainOfFortunes);
--BUILDING_TEMPLE
h55_Temples = GetObjectNamesByType("BUILDING_TEMPLE");
h55_Temples_Qty = length(h55_Temples);
--BUILDING_FORTUITOUS_SANCTUARY
h55_FortuitousSanctuarys = GetObjectNamesByType("BUILDING_FORTUITOUS_SANCTUARY");
h55_FortuitousSanctuarys_Qty = length(h55_FortuitousSanctuarys);
--BUILDING_STABLES
h55_Stableses = GetObjectNamesByType("BUILDING_STABLES");
h55_Stableses_Qty = length(h55_Stableses);
--BUILDING_FAERIE_RING
h55_FaerieRings = GetObjectNamesByType("BUILDING_FAERIE_RING");
h55_FaerieRings_Qty = length(h55_FaerieRings);
--BUILDING_NOMADS_SHAMAN
h55_NomadsShamans = GetObjectNamesByType("BUILDING_NOMADS_SHAMAN");
h55_NomadsShamans_Qty = length(h55_NomadsShamans);
--BUILDING_FONTAIN_OF_YOUTH
h55_FontainOfYouths = GetObjectNamesByType("BUILDING_FONTAIN_OF_YOUTH");
h55_FontainOfYouths_Qty = length(h55_FontainOfYouths);
--BUILDING_IDOL_OF_FORTUNE
h55_IdolOfFortunes = GetObjectNamesByType("BUILDING_IDOL_OF_FORTUNE");
h55_IdolOfFortunes_Qty = length(h55_IdolOfFortunes);
--BUILDING_MAGIC_WELL
h55_MagicWells = GetObjectNamesByType("BUILDING_MAGIC_WELL");
h55_MagicWells_Qty = length(h55_MagicWells);
--BUILDING_RALLY_FLAG
h55_RallyFlags = GetObjectNamesByType("BUILDING_RALLY_FLAG");
h55_RallyFlags_Qty = length(h55_RallyFlags);
--BUILDING_OASIS
h55_Oasises = GetObjectNamesByType("BUILDING_OASIS");
h55_Oasises_Qty = length(h55_Oasises);

--Mentors

H55_MentorBoostVisitors = {};

--Witch Huts

H55_WitchHuts = GetObjectNamesByType("BUILDING_WITCH_HUT");
H55_WitchHutsQty = length(H55_WitchHuts);
H55_WHChoice1 = {};
H55_WHChoice2 = {};
H55_WHVisited = {};

--Sphinx

H55_Sphinxs = GetObjectNamesByType("BUILDING_SPHINX");
H55_SphinxsQty = length(H55_Sphinxs);
H55_SphinxVisited = {};
H55_SphinxExp = {};

--Magma Shrines

--H55_Magmas = GetObjectNamesByType("BUILDING_MAGMA_SHRINE");
--H55_MagmasQty = length(H55_Magmas);
--H55_MagmaVisited = {};

--Obelisks

H55_Obelisks = GetObjectNamesByType("BUILDING_LAKE_OF_SCARLET_SWAN");
H55_ObelisksQty = length(H55_Obelisks);
H55_ObeliskArmies = {};
H55_ObeliskVisited = {};
H55_ObeliskTotalVisited = {};
H55_ObeliskChallengeAccepted = {};
H55_ObeliskGraalFound = {};

--Shantiri Disks

H55_Shantiris = GetObjectNamesByType("BUILDING_EYE_OF_MAGI");
H55_MagiHuts = GetObjectNamesByType("BUILDING_HUT_OF_MAGI");
H55_ShantirisQty = length(H55_Shantiris);
H55_ShantiriArmies = {};
H55_ShantiriVisited = {};
H55_ShantiriTotalVisited = {};
H55_ShantiriChallengeAccepted = {};
H55_ShantiriGraalFound = {};

--Seer huts

H55_Mermaids = GetObjectNamesByType("BUILDING_MERMAIDS");
H55_MermaidsQty = length(H55_Mermaids);
H55_MermaidChoices = {};

--Summoning temples

H55_SummonTemples = GetObjectNamesByType("BUILDING_SIRENS");
H55_SummonTemplesQty = length(H55_SummonTemples);
H55_SummonTempleChoices = {};

--Junk

H55_Wagons = GetObjectNamesByType("BUILDING_WAGON");
H55_WagonsQty = length(H55_Wagons);
H55_WagonVisited = {};
H55_WagonChoices = {};

H55_Skeletons = GetObjectNamesByType("BUILDING_SKELETON");
H55_SkeletonsQty = length(H55_Skeletons);
H55_SkeletonVisited = {};
H55_SkeletonChoices = {};

--Banks

H55_BankLastVisit = {};
H55_BankPlayerLastVisit = {{},{},{},{},{},{},{},{}};
H55_BankCurrentPlayerVisit = {};
H55_MPCurrentPlayerVisit = {};
H55_MineCurrentPlayerVisit = {};
H55_PrisonRewardAmount = {20,16,12,8,6,4,2};
H55_PrisonRewardAmountElves = {12,10,10,8,6,4,2};

H55_Crypts = GetObjectNamesByType("BUILDING_CRYPT");
H55_CryptsQty = length(H55_Crypts);
H55_CryptArmies = {};
H55_Utopias = GetObjectNamesByType("BUILDING_DRAGON_UTOPIA");
H55_UtopiasQty = length(H55_Utopias);
H55_UtopiaArmies = {};
H55_StoneVaults = GetObjectNamesByType("BUILDING_GARGOYLE_STONEVAULT");
H55_StoneVaultsQty = length(H55_StoneVaults);
H55_StoneVaultArmies = {};
H55_DwarvenTreasures = GetObjectNamesByType("BUILDING_DWARVEN_TREASURE");
H55_DwarvenTreasuresQty = length(H55_DwarvenTreasures);
H55_DwarvenTreasureArmies = {};
H55_Stockpiles = GetObjectNamesByType("BUILDING_CYCLOPS_STOCKPILE");
H55_StockpilesQty = length(H55_Stockpiles);
H55_StockpileArmies = {};
H55_SunkenTemples = GetObjectNamesByType("BUILDING_SUNKEN_TEMPLE");
H55_SunkenTemplesQty = length(H55_SunkenTemples);
H55_SunkenTempleArmies = {};
H55_WitchTemples = GetObjectNamesByType("BUILDING_BLOOD_TEMPLE");
H55_WitchTemplesQty = length(H55_WitchTemples);
H55_WitchTempleArmies = {};
H55_MageVaults = GetObjectNamesByType("BUILDING_NAGA_BANK");
H55_MageVaultsQty = length(H55_MageVaults);
H55_MageVaultArmies = {};
H55_Thickets = GetObjectNamesByType("BUILDING_TREANT_THICKET");
H55_ThicketsQty = length(H55_Thickets);
H55_ThicketArmies = {};
H55_Pyramids = GetObjectNamesByType("BUILDING_PYRAMID");
H55_PyramidsQty = length(H55_Pyramids);
H55_PyramidArmies = {};
H55_OrcTunnels = GetObjectNamesByType("BUILDING_NAGA_TEMPLE");
H55_OrcTunnelsQty = length(H55_OrcTunnels);
H55_OrcTunnelArmies = {};
H55_Unkempts = GetObjectNamesByType("BUILDING_UNKEMPT");
H55_UnkemptsQty = length(H55_Unkempts);
H55_UnkemptArmies = {};
H55_Demolishs = GetObjectNamesByType("BUILDING_DEMOLISH");
H55_DemolishsQty = length(H55_Demolishs);
H55_DemolishArmies = {};
H55_DemonTowers = GetObjectNamesByType("BUILDING_BUOY");
H55_DemonTowersQty = length(H55_DemonTowers);
H55_DemonTowerArmies = {};
H55_ForestTowers = GetObjectNamesByType("BUILDING_LEAN_TO");
H55_ForestTowersQty = length(H55_ForestTowers);
H55_ForestTowerArmies = {};

--Mines

H55_AbandonedMines = GetObjectNamesByType("BUILDING_ABANDONED_MINE");
H55_AbandonedMinesQty = length(H55_AbandonedMines);
H55_AbandonedMineArmies = {};
H55_AbandonedMineClaims = {};
H55_WoodMines = GetObjectNamesByType("BUILDING_SAW_MILL");
H55_WoodMineClaims = {};
H55_OreMines = GetObjectNamesByType("BUILDING_ORE_PIT");
H55_OreMineClaims = {};
H55_CrystalMines = GetObjectNamesByType("BUILDING_CRYSTAL_CAVERN");
H55_CrystalMineClaims = {};
H55_GemMines = GetObjectNamesByType("BUILDING_GEM_POND");
H55_GemMineClaims = {};
H55_SulphurMines = GetObjectNamesByType("BUILDING_SULFUR_DUNE");
H55_SulphurMineClaims = {};
H55_MercuryMines = GetObjectNamesByType("BUILDING_ALCHEMIST_LAB");
H55_MercuryMineClaims = {};
H55_GoldMines = GetObjectNamesByType("BUILDING_GOLD_MINE");
H55_GoldMineClaims = {};

------------------------------------------------------------------------------------------------------------------------------------------------------
--TRIGGERS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_PrepareAdvMap()
	print("H55 Preparing Advmap..");

	local alltowns = GetObjectNamesByType("TOWN");

	--Town Levels

	if H55_BuildNeutralTowns ~= 0 then
		H55_ConstructNeutralTowns(H55_BuildNeutralTowns);
	end;

	-- by 牙姐 2020-04-18 22:25:11
	-- begin 初始城建配置
		local iPlayerTownLevel = 0;
		if H55_PlayerCheats == 1 then
			iPlayerTownLevel = H55_PlayerTownLevel;
		end;
		local iAITownLevel = 1;
		if H55_AICheats == 1 then
			iAITownLevel = H55_AITownLevel;
		end;

		for iPlayer = 1, 8 do
			H55_ConstructPlayerTowns(iPlayerTownLevel, iPlayer);
			H55_ConstructAITowns(iAITownLevel, iPlayer);
		end;
	-- end

	--Shamans & Witches

	for i,shaman in H55_Shamans do
		H55_ShamanPattern[shaman] = random(6)+1;
	end;
	for i,witch in H55_Witches do
		H55_ShamanPattern[witch] = random(6)+1;
	end;

	--Starting Bonuses

	if H55_AICheatMode == 0 then
		H55_GameMode = 1;
		print("H55 AI Cheating disabled by player.");
	end;
	if H55_AIHandicap == 1 then
		for i=1,8 do
			if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i) == 1) then
				SetPlayerResource(i,0,10);
				SetPlayerResource(i,1,10);
				SetPlayerResource(i,2,5);
				SetPlayerResource(i,3,5);
				SetPlayerResource(i,4,5);
				SetPlayerResource(i,5,5);
				SetPlayerResource(i,6,10000);
			end;
		end;
		print("H55 AI Handicap applied.");
	end;

	for i=1,8 do
		if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i) ~= 1) then
			local heroes = GetPlayerHeroes(i);
			local goldtoken = GetPlayerResource(i,6);
			local woodtoken = GetPlayerResource(i,0);
			local oretoken = GetPlayerResource(i,1);
			local mercurytoken = GetPlayerResource(i,2);
			local crystaltoken = GetPlayerResource(i,3);
			local sulphurtoken = GetPlayerResource(i,4);
			local gemtoken = GetPlayerResource(i,5);
			if contains(H55_StartBonusGold,goldtoken) ~= nil then
				H55_GiveResourcesSilent(i,6,2500);
			end;
			if H55_Difficulty == 0 then
				if contains(H55_StartBonusNormalWO,woodtoken) ~= nil then
					SetPlayerResource(i,0,30);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusNormalWO,oretoken) ~= nil then
					SetPlayerResource(i,1,30);
				end;
				if contains(H55_StartBonusNormal,mercurytoken) ~= nil then
					SetPlayerResource(i,2,15);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusNormal,crystaltoken) ~= nil then
					SetPlayerResource(i,3,15);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusNormal,sulphurtoken) ~= nil then
					SetPlayerResource(i,4,15);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusNormal,gemtoken) ~= nil then
					SetPlayerResource(i,5,15);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
			elseif H55_Difficulty == 3 then
				if contains(H55_StartBonusImpossibleWO,woodtoken) ~= nil then
					SetPlayerResource(i,0,10);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusImpossibleWO,oretoken) ~= nil then
					SetPlayerResource(i,1,10);
				end;
				if contains(H55_StartBonusImpossible,mercurytoken) ~= nil then
					SetPlayerResource(i,2,5);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusImpossible,crystaltoken) ~= nil then
					SetPlayerResource(i,3,5);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusImpossible,sulphurtoken) ~= nil then
					SetPlayerResource(i,4,5);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusImpossible,gemtoken) ~= nil then
					SetPlayerResource(i,5,5);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
			else
				if contains(H55_StartBonusHardWO,woodtoken) ~= nil then
					SetPlayerResource(i,0,20);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusHardWO,oretoken) ~= nil then
					SetPlayerResource(i,1,20);
				end;
				if contains(H55_StartBonusHard,mercurytoken) ~= nil then
					SetPlayerResource(i,2,10);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusHard,crystaltoken) ~= nil then
					SetPlayerResource(i,3,10);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusHard,sulphurtoken) ~= nil then
					SetPlayerResource(i,4,10);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
				if contains(H55_StartBonusHard,gemtoken) ~= nil then
					SetPlayerResource(i,5,10);
					H55_StartCreatureBonus(i,heroes[0],1,4);
				end;
			end;
		end;
	end;

	--AI Compensation

	-- for i=1,8 do
	-- 	if (GetPlayerState(i) == 1) and (H55_IsThisAIPlayer(i) == 1) then
	-- 		local heroes = GetPlayerHeroes(i);
	-- 		for i,hero in heroes do
	-- 			--by sdj
	-- 			if H55_GetHeroClass(hero) == "Knight" then
	-- 				GiveHeroSkill(hero,4);
	-- 				GiveHeroSkill(hero,195);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Paladin" then
	-- 				GiveHeroSkill(hero,4);
	-- 				GiveHeroSkill(hero,195);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Heretic" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,199);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Ranger" then
	-- 				GiveHeroSkill(hero,5);
	-- 				GiveHeroSkill(hero,191);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Warden" then
	-- 				GiveHeroSkill(hero,5);
	-- 				GiveHeroSkill(hero,195);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Druid" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,203);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Seer" then
	-- 				GiveHeroSkill(hero,4);
	-- 				GiveHeroSkill(hero,191);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Wizard" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,3);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Elementalist" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,18);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Demonlord" then
	-- 				GiveHeroSkill(hero,4);
	-- 				GiveHeroSkill(hero,199);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Gatekeeper" then
	-- 				GiveHeroSkill(hero,5);
	-- 				GiveHeroSkill(hero,203);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Sorcerer" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,18);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Deathknight" then
	-- 				GiveHeroSkill(hero,4);
	-- 				GiveHeroSkill(hero,199);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Reaver" then
	-- 				GiveHeroSkill(hero,1);
	-- 				GiveHeroSkill(hero,203);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Necromancer" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,3);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Engineer" then
	-- 				GiveHeroSkill(hero,4);
	-- 				GiveHeroSkill(hero,191);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Runemage" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,3);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Flamekeeper" then
	-- 				GiveHeroSkill(hero,2);
	-- 				GiveHeroSkill(hero,203);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Overlord" then
	-- 				GiveHeroSkill(hero,6);
	-- 				GiveHeroSkill(hero,191);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Assassin" then
	-- 				GiveHeroSkill(hero,6);
	-- 				GiveHeroSkill(hero,199);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Warlock" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,3);
	-- 			end;

	-- 			if H55_GetHeroClass(hero) == "Barbarian" then
	-- 				GiveHeroSkill(hero,6);
	-- 				GiveHeroSkill(hero,195);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Shaman" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,3);
	-- 			end;
	-- 			if H55_GetHeroClass(hero) == "Witch" then
	-- 				GiveHeroSkill(hero,8);
	-- 				GiveHeroSkill(hero,18);
	-- 			end;
	-- 			--end
	-- 		end;
	-- 	end;
	-- end;

	--Start Armies

	-- for i=1,8 do
	-- 	if (GetPlayerState(i) == 1) then
	-- 		local heroes = GetPlayerHeroes(i);
	-- 		--by sdj
	-- 		--heaven
	-- 		if contains(heroes,"Nathaniel") ~= nil then
	-- 			AddHeroCreatures("Nathaniel",1,32);
	-- 		end;
	-- 		if contains(heroes,"Mardigo") ~= nil then
	-- 			AddHeroCreatures("Mardigo",5,6);
	-- 		end;
	-- 		if contains(heroes,"Orrin") ~= nil then
	-- 			AddHeroCreatures("Orrin",3,9);
	-- 		end;
	-- 		--necropolis
	-- 		if contains(heroes,"Straker") ~= nil then
	-- 			AddHeroCreatures("Straker",31,11);
	-- 		end;
	-- 		if contains(heroes,"Thant") ~= nil then
	-- 			AddHeroCreatures("Thant",116,1);
	-- 		end;
	-- 		if contains(heroes,"Archilus") ~= nil then
	-- 			AddHeroCreatures("Archilus",90,1);
	-- 		end;
	-- 		--fortress
	-- 		if contains(heroes,"Ingvar") ~= nil then
	-- 			AddHeroCreatures("Ingvar",92,21);
	-- 		end;
	-- 		if contains(heroes,"Skeggy") ~= nil then
	-- 			AddHeroCreatures("Skeggy",94,11);
	-- 		end;
	-- 		if contains(heroes,"Bersy") ~= nil then
	-- 			AddHeroCreatures("Bersy",96,5);
	-- 		end;
	-- 		--stronghold
	-- 		if contains(heroes,"Hero9") ~= nil then
	-- 			AddHeroCreatures("Hero9",117,25);
	-- 		end;
	-- 		if contains(heroes,"Hero7") ~= nil then
	-- 			AddHeroCreatures("Hero7",119,14);
	-- 		end;
	-- 		if contains(heroes,"Hero8") ~= nil then
	-- 			AddHeroCreatures("Hero8",121,11);
	-- 		end;
	-- 		if contains(heroes,"Azar") ~= nil then
	-- 			AddHeroCreatures("Azar",113,5);
	-- 		end;
	-- 		if contains(heroes,"Hero4") ~= nil then
	-- 			AddHeroCreatures("Hero4",125,1);
	-- 		end;
	-- 		if contains(heroes,"Hero6") ~= nil then
	-- 			AddHeroCreatures("Hero6",127,1);
	-- 		end;
	-- 	end;
	-- end;

	--Artifact Merchants

	for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
		local owner = GetObjectOwner(academy);
		if owner == 0 then
			DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
		elseif owner >= 1 then
			if H55_IsThisAIPlayer(owner) == 1 then
				DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
			end;
		end;
	end;
	for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
		local owner = GetObjectOwner(dungeon);
		if owner == 0 then
			DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
		elseif owner >= 1 then
			if H55_IsThisAIPlayer(owner) == 1 then
				DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
			end;
		end;
	end;

	--Runic Shrines

	if H55_CompetitiveRunelore == 1 then
		for i, fortress in (GetObjectNamesByType("TOWN_FORTRESS")) do
			local owner = GetObjectOwner(fortress);
			if owner == 0 then
				DestroyTownBuildingToLevel(fortress,TOWN_BUILDING_SPECIAL_1,2,0);
			end;
		end;
	end;

	--Special objects

	if H55_SphinxsQty ~= 0 then
		for i, sphinx in H55_Sphinxs do
			SetObjectEnabled(sphinx,nil);
			H55_SphinxVisited[sphinx] = {};
			Trigger(OBJECT_TOUCH_TRIGGER,sphinx,"H55_SphinxVisit");
		end;
	end;
	-- if H55_MagmasQty ~= 0 then
		-- for i, magma in H55_Magmas do
			-- SetObjectEnabled(magma,nil);
			-- H55_MagmaVisited[magma] = {};
			-- Trigger(OBJECT_TOUCH_TRIGGER,magma,"H55_MagmaVisit");
		-- end;
	-- end;
	if H55_ObelisksQty > 0 then
		for i,Obelisk in H55_Obelisks do
			H55_ObeliskArmies[Obelisk] = {};
			for i = 1,14 do
				H55_ObeliskArmies[Obelisk][i] = random(3)+1;
			end;
			for i = 15,20 do
				H55_ObeliskArmies[Obelisk][i] = random(2)+1+(i-15);
			end;
			for i = 21,26 do
				H55_ObeliskArmies[Obelisk][i] = random(2)+1+(i-21);
			end;
			H55_ObeliskArmies[Obelisk][27] = random(7)+1;
			H55_ObeliskArmies[Obelisk][28] = random(8)+1;
			H55_ObeliskArmies[Obelisk][29] = random(9)+1;
			H55_ObeliskArmies[Obelisk][30] = random(8)+1;
			SetObjectEnabled(Obelisk,nil);
			H55_ObeliskVisited[Obelisk] = {};
			Trigger(OBJECT_TOUCH_TRIGGER,Obelisk,"H55_ObeliskVisit");
		end;
	end;

	-- by 牙姐 2021-03-07 05:36:50
	-- begin 杉提瑞 访问
		if length(TTH_Arr_Shantiri) > 0 then
			for iIndexShantiri, objItemShantiri in TTH_Arr_Shantiri do
				SetObjectEnabled(objItemShantiri, nil);
				Trigger(OBJECT_TOUCH_TRIGGER, objItemShantiri, "TTH_Trigger_VisitShantiri");
			end;
		end;
	-- end

	if H55_MermaidsQty ~= 0 then
		for i, mermaid in H55_Mermaids do
			H55_MermaidChoices[mermaid] = random(4)+1;
			SetObjectEnabled(mermaid,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,mermaid,"H55_MermaidVisit");
		end;
	end;
	if H55_SummonTemplesQty ~= 0 then
		for i, temple in H55_SummonTemples do
			H55_SummonTempleChoices[temple] = {};
			H55_SummonTempleChoices[temple][1] = random(6);
			H55_SummonTempleChoices[temple][2] = random(7)+1;
			for i=1,8 do
				if GetPlayerState(i) == 1 then
				SetAIPlayerAttractor(temple,i,-1);
				end;
			end;
			SetObjectEnabled(temple,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,temple,"H55_SummonTempleVisit");
		end;
	end;

	--by sdj
	--begin
	if H55_WitchHutsQty ~= 0 then
		for i, hut in H55_WitchHuts do
			local choice1 = random(13) + 1;
			local choice2 = random(13) + 1;
			while(choice1 == choice2)
			do
			   choice2 = random(13) + 1;
			end
			H55_WHChoice1[hut] = choice1;
			H55_WHChoice2[hut] = choice2;
			H55_WHVisited[hut] = {};
			SetObjectEnabled(hut, nil);
			Trigger(OBJECT_TOUCH_TRIGGER, hut, "H55_WitchVisit");
		end;
	end;
	--end

	--Junk

	if H55_WagonsQty ~= 0 then
		for i, wagon in H55_Wagons do
			H55_WagonChoices[wagon] = {};
			H55_WagonChoices[wagon][1] = random(6)+3;
			H55_WagonChoices[wagon][2] = random(12)+1;
			H55_WagonChoices[wagon][3] = random(length(H55_MinorArtifacts))+1;
			H55_WagonChoices[wagon][4] = random(7);
			H55_WagonChoices[wagon][5] = random(4)+2;
			SetObjectEnabled(wagon,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,wagon,"H55_WagonVisit");
		end;
	end;
	if H55_SkeletonsQty ~= 0 then
		for i, skeleton in H55_Skeletons do
			H55_SkeletonChoices[skeleton] = {};
			H55_SkeletonChoices[skeleton][1] = random(3)+1;
			H55_SkeletonChoices[skeleton][2] = random(12)+1;
			H55_SkeletonChoices[skeleton][3] = random(length(H55_MinorArtifacts))+1;
			H55_SkeletonChoices[skeleton][4] = random(3);
			H55_SkeletonChoices[skeleton][5] = random(4)+2;
			SetObjectEnabled(skeleton,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,skeleton,"H55_SkeletonVisit");
		end;
	end;

	--Banks

	if H55_CryptsQty ~= 0 then
		for i,crypt in H55_Crypts do
			SetObjectEnabled(crypt,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,crypt,"H55_CryptVisit");
		end;
	end;
	if H55_DemonTowersQty > 0 then
		for i,DemonTower in H55_DemonTowers do
			SetObjectEnabled(DemonTower,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,DemonTower,"H55_DemonTowerVisit");
		end;
	end;
	if H55_ForestTowersQty > 0 then
		for i,ForestTower in H55_ForestTowers do
			SetObjectEnabled(ForestTower,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,ForestTower,"H55_ForestTowerVisit");
		end;
	end;
	if H55_StoneVaultsQty > 0 then
		for i,StoneVault in H55_StoneVaults do
			SetObjectEnabled(StoneVault,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,StoneVault,"H55_StoneVaultVisit");
		end;
	end;
	if H55_MageVaultsQty > 0 then
		for i,MageVault in H55_MageVaults do
			SetObjectEnabled(MageVault,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,MageVault,"H55_MageVaultVisit");
		end;
	end;
	if H55_DwarvenTreasuresQty > 0 then
		for i,DwarvenTreasure in H55_DwarvenTreasures do
			SetObjectEnabled(DwarvenTreasure,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,DwarvenTreasure,"H55_DwarvenTreasureVisit");
		end;
	end;
	if H55_WitchTemplesQty > 0 then
		for i,WitchTemple in H55_WitchTemples do
			SetObjectEnabled(WitchTemple,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,WitchTemple,"H55_WitchTempleVisit");
		end;
	end;
	if H55_ThicketsQty > 0 then
		for i,Thicket in H55_Thickets do
			SetObjectEnabled(Thicket,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Thicket,"H55_ThicketVisit");
		end;
	end;
	if H55_PyramidsQty > 0 then
		for i,Pyramid in H55_Pyramids do
			SetObjectEnabled(Pyramid,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Pyramid,"H55_PyramidVisit");
		end;
	end;
	if H55_OrcTunnelsQty > 0 then
		for i,OrcTunnel in H55_OrcTunnels do
			SetObjectEnabled(OrcTunnel,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,OrcTunnel,"H55_OrcTunnelVisit");
		end;
	end;
	if H55_StockpilesQty > 0 then
		for i,Stockpile in H55_Stockpiles do
			SetObjectEnabled(Stockpile,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Stockpile,"H55_StockpileVisit");
		end;
	end;
	if H55_UtopiasQty > 0 then
		for i,Utopia in H55_Utopias do
			SetObjectEnabled(Utopia,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Utopia,"H55_UtopiaVisit");
		end;
	end;
	if H55_AbandonedMinesQty > 0 then
		for i,AbandonedMine in H55_AbandonedMines do
			SetObjectEnabled(AbandonedMine,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,AbandonedMine,"H55_AbandonedMineVisit");
		end;
	end;
	if H55_UnkemptsQty > 0 then
		for i,Unkempt in H55_Unkempts do
			SetObjectEnabled(Unkempt,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Unkempt,"H55_UnkemptVisit");
		end;
	end;
	if H55_DemolishsQty > 0 then
		for i,Demolish in H55_Demolishs do
			SetObjectEnabled(Demolish,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,Demolish,"H55_DemolishVisit");
		end;
	end;
	if H55_SunkenTemplesQty > 0 then
		for i,SunkenTemple in H55_SunkenTemples do
			SetObjectEnabled(SunkenTemple,nil);
			Trigger(OBJECT_TOUCH_TRIGGER,SunkenTemple,"H55_SunkenTempleVisit");
		end;
	end;

	--Artifact Quests

	H55_TriggerToObjectType("BUILDING_TRADING_POST",OBJECT_TOUCH_TRIGGER,"H55_HillFortVisit",nil);
	H55_TriggerToObjectType("BUILDING_ASTROLOGER_TOWER",OBJECT_TOUCH_TRIGGER,"H55_AstrologerVisit",nil);
	H55_TriggerToObjectType("BUILDING_SPELL_SHOP",OBJECT_TOUCH_TRIGGER,"H55_SpellShopVisit",nil);
	H55_TriggerToObjectType("BUILDING_MEMORY_MENTOR",OBJECT_TOUCH_TRIGGER,"H55_MemoryMentorVisit",nil);
	H55_TriggerToObjectType("BUILDING_BLACK_MARKET",OBJECT_TOUCH_TRIGGER,"H55_BlackMarketVisit",nil);
	H55_TriggerToObjectType("BUILDING_SACRIFICIAL_ALTAR",OBJECT_TOUCH_TRIGGER,"H55_SacrificialAltarVisit",nil);

	--Suppliers

	if H55_MysticalGardens ~= nil then
		for i,garden in H55_MysticalGardens do
			-- for j,town in alltowns do
				-- if H55_GetDistance(garden, town) <= 75 then
					-- H55_Insert(H55_MysticalGardenClaims[garden],town);
				-- end;
			-- end;
			H55_WeeklyMysticalGardenRes[garden] = random(2);
			H55_MysticalGardensOwned[garden] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,garden,"H55_MysticalGardenVisit");
			SetObjectEnabled(garden,nil);
		end;
	end;

	if H55_SiegeWorkshops ~= nil then
		for i,workshop in H55_SiegeWorkshops do
			-- for j,town in alltowns do
				-- if H55_GetDistance(workshop, town) <= 75 then
					-- H55_Insert(H55_SiegeWorkshopClaims[workshop],town);
				-- end;
			-- end;
			H55_WeeklySiegeWorkshopResQty[workshop] = 3+random(5);
			H55_SiegeWorkshopsOwned[workshop] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,workshop,"H55_SiegeWorkshopVisit");
			SetObjectEnabled(workshop,nil);
		end;
	end;

	if H55_Windmills ~= nil then
		for i,mill in H55_Windmills do
			-- for j,town in alltowns do
				-- if H55_GetDistance(mill, town) <= 75 then
					-- H55_Insert(H55_WindmillClaims[mill],town);
				-- end;
			-- end;
			H55_WeeklyWindmillRes[mill] = 1+random(5);
			H55_WeeklyWindmillResQty[mill] = 3+random(5);
			H55_WindmillsOwned[mill] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,mill,"H55_WindmillVisit");
			SetObjectEnabled(mill,nil);
		end;
	end;

	if H55_Waterwheels ~= nil then
		for i,wheel in H55_Waterwheels do
			-- for j,town in alltowns do
				-- if H55_GetDistance(wheel, town) <= 75 then
					-- H55_Insert(H55_WaterwheelClaims[wheel],town);
				-- end;
			-- end;
			H55_WaterwheelsOwned[wheel] = 0;
			Trigger(OBJECT_TOUCH_TRIGGER,wheel,"H55_WaterwheelVisit");
			SetObjectEnabled(wheel,nil);
		end;
	end;

	--Dwelling Conversion

	-- if H55_AreaOfControl == 1 then
		-- local dwellings = H55_GetAllDwellings()
		-- if dwellings ~= nil then
			-- for i,dwelling in dwellings do
				-- for i,town in alltowns do
					-- if H55_GetDistance(dwelling, town) <= 75 then
						-- H55_Insert(H55_DwellingClaims[dwelling],town);
					-- end;
				-- end;
			-- end;
		-- end;
	-- end;

	for i=1,8 do
		H55_TriggerToObjectType(H55_T1DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T1DwellingVisit",nil);
	end;
	for i=1,8 do
		H55_TriggerToObjectType(H55_T2DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T2DwellingVisit",nil);
	end;
	for i=1,8 do
		H55_TriggerToObjectType(H55_T3DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T3DwellingVisit",nil);
	end;
	for i=1,8 do
		H55_TriggerToObjectType(H55_T4DwellingTypes[i],OBJECT_TOUCH_TRIGGER,"H55_T4DwellingVisit",nil);
	end;

	print("H55 Adventure Objects ready");

	if H55_IgnoreExpAdjustment == 1 then
		H55_SetEasyExperience();
	end;

	if H55_NeutralStackSize > 1 then
		print("H55 Increasing Neutral stack sizes...WARNING: The game might lag for several minutes, the job is done when you can open your townscreen.");
		BlockGame();
		local neutrals = GetObjectNamesByType("CREATURE");
		local totalamount = length(neutrals)
		for i = 1, totalamount-1 do
			local type,count = H55_MonsterInfo(neutrals[i]);
			for ind = 0,6 do
				if (type[ind] ~= 0) and (type[ind] ~= nil) then
					local amount = H55_Round((count[ind]*H55_NeutralStackSize)-count[ind]);
					if amount >= 1 then
						AddObjectCreatures(neutrals[i],type[ind],amount)
					end;
				end;
			end;
		end;
		UnblockGame();
		print("H55 Game Unblocked...");
	elseif H55_NeutralStackSize > 0.1 and H55_NeutralStackSize < 1 then
		print("H55 Decreasing Neutral stack sizes...WARNING: The game might lag for several minutes, the job is done when you can open your townscreen.");
		BlockGame();
		local neutrals = GetObjectNamesByType("CREATURE");
		local totalamount = length(neutrals)
		for i = 1, totalamount-1 do
			local type,count = H55_MonsterInfo(neutrals[i]);
			for ind = 0,6 do
				if (type[ind] ~= 0) and (type[ind] ~= nil) then
					local amount = H55_Round(count[ind]-(count[ind]*H55_NeutralStackSize));
					if amount >= 1 then
						RemoveObjectCreatures(neutrals[i],type[ind],amount)
					end;
				end;
			end;
		end;
		UnblockGame();
		print("H55 Game Unblocked...");
	end;
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--DWELLING CONVERSION
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_GetT1DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if contains(GetObjectNamesByType(H55_T1DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_GetT2DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if contains(GetObjectNamesByType(H55_T2DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_GetT3DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if contains(GetObjectNamesByType(H55_T3DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_GetT4DwellingRace(dwelling)
	local dwellingrace = 0;
	for i=1,8 do
		if contains(GetObjectNamesByType(H55_T4DwellingTypes[i]),dwelling) then
			dwellingrace = i;
		end;
	end;
	return dwellingrace;
end;

function H55_T1DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT1DwellingRace(dwelling);

	-- by sdj convert by herorace
	local herorace = H55_GetHeroRaceNum(hero);

	--local legiontxt = "/Text/Game/Artifacts/Legion_T1/name.txt";
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and herorace ~= dwellingrace ~= nil and GetObjectOwner(dwelling) == player and H55_IsThisAIPlayer(player) ~= 1 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT1ConvCosts[1],wood=H55_DwellingT1ConvCosts[2],ore=H55_DwellingT1ConvCosts[2]},
			"H55_T1DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T1DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T1DwellingVisitNoAction(hero,dwelling);
	end;
end;

function H55_T2DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT2DwellingRace(dwelling);

	-- by sdj convert by herorace
	local herorace = H55_GetHeroRaceNum(hero);

	--local legiontxt = "/Text/Game/Artifacts/Legion_T2/name.txt";
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and herorace ~= dwellingrace ~= nil and GetObjectOwner(dwelling) == player and H55_IsThisAIPlayer(player) ~= 1 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT2ConvCosts[1],wood=H55_DwellingT2ConvCosts[2],ore=H55_DwellingT2ConvCosts[2]},
			"H55_T2DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T2DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T2DwellingVisitNoAction(hero,dwelling);
	end;
end;

function H55_T3DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT3DwellingRace(dwelling);

	-- by sdj convert by herorace
	local herorace = H55_GetHeroRaceNum(hero);

	--local legiontxt = "/Text/Game/Artifacts/Legion_T3/name.txt";
	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and herorace ~= dwellingrace ~= nil and GetObjectOwner(dwelling) == player and H55_IsThisAIPlayer(player) ~= 1 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT3ConvCosts[1],wood=H55_DwellingT3ConvCosts[2],ore=H55_DwellingT3ConvCosts[2]},
			"H55_T3DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T3DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T3DwellingVisitNoAction(hero,dwelling);
	end;
end;

function H55_T4DwellingVisit(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	local dwellingrace = H55_GetT4DwellingRace(dwelling);

	-- by sdj convert by herorace
	local herorace = H55_GetHeroRaceNum(hero);

	if H55_TownManageOwners[hero] == 1 and H55_TownConvEnabled == 1 and herorace ~= dwellingrace ~= nil and GetObjectOwner(dwelling) == player and H55_IsThisAIPlayer(player) ~= 1 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DwellingConversion.txt";gold=H55_DwellingT4ConvCosts[1],wood=H55_DwellingT4ConvCosts[2],ore=H55_DwellingT4ConvCosts[2]},
			"H55_T4DwellingVisitConvert('"..hero.."','"..dwelling.."')","H55_T4DwellingVisitNoAction('"..hero.."','"..dwelling.."')");
	else
		H55_T4DwellingVisitNoAction(hero,dwelling);
	end;
end;

--and HasArtefact(hero,103,0)

function H55_T1DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	-- local dwellingrace = H55_GetTownRaceID(playerrace);
	-- by sdj convert by herorace
	local herorace = H55_GetTownRaceID(H55_GetHeroRaceNum(hero));
	local dwellingrace = herorace;
	local amountT1dwellings = length(GetObjectNamesByType(H55_T1DwellingTypes[playerrace]));
	if amountT1dwellings < H55_MaxDwellingsT1 then
		if GetPlayerResource(player,0) < H55_DwellingT1ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT1ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT1ConvCosts[1] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT1ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT1ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT1ConvCosts[1]);
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCLimit.txt", hero, player, 5);
	end;
end;

function H55_T2DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	-- local dwellingrace = H55_GetTownRaceID(playerrace);
	-- by sdj convert by herorace
	local herorace = H55_GetTownRaceID(H55_GetHeroRaceNum(hero));
	local dwellingrace = herorace;
	local amountT2dwellings = length(GetObjectNamesByType(H55_T2DwellingTypes[playerrace]));
	if amountT2dwellings < H55_MaxDwellingsT2 then
		if GetPlayerResource(player,0) < H55_DwellingT2ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT2ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT2ConvCosts[1] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT2ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT2ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT2ConvCosts[1]);
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCLimit.txt", hero, player, 5);
	end;
end;

function H55_T3DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	-- local dwellingrace = H55_GetTownRaceID(playerrace);
	-- by sdj convert by herorace
	local herorace = H55_GetTownRaceID(H55_GetHeroRaceNum(hero));
	local dwellingrace = herorace;
	local amountT3dwellings = length(GetObjectNamesByType(H55_T3DwellingTypes[playerrace]));
	if amountT3dwellings < H55_MaxDwellingsT3 then
		if GetPlayerResource(player,0) < H55_DwellingT3ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT3ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT3ConvCosts[1] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT3ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT3ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT3ConvCosts[1]);
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCLimit.txt", hero, player, 5);
	end;
end;

function H55_T4DwellingVisitConvert(hero,dwelling)
	local player = GetObjectOwner(hero);
	local playerrace = H55_GetPlayerRace(player);
	-- local dwellingrace = H55_GetTownRaceID(playerrace);
	-- by sdj convert by herorace
	local herorace = H55_GetTownRaceID(H55_GetHeroRaceNum(hero));
	local dwellingrace = herorace;
	local amountT4dwellings = length(GetObjectNamesByType(H55_T4DwellingTypes[playerrace]));
	if amountT4dwellings < H55_MaxDwellingsT4 then
		if GetPlayerResource(player,0) < H55_DwellingT4ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,1) < H55_DwellingT4ConvCosts[2] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		elseif GetPlayerResource(player,6) < H55_DwellingT4ConvCosts[1] then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCNoRes.txt", hero, player, 5);
		else
			local x,y,z = GetObjectPosition(dwelling);
			H55_TakeResourcesSilent(player,0,H55_DwellingT4ConvCosts[2]);
			H55_TakeResourcesSilent(player,1,H55_DwellingT4ConvCosts[2]);
			H55_TakeResourcesSilent(player,6,H55_DwellingT4ConvCosts[1]);
			Play3DSoundForPlayers(GetPlayerFilter(player),H55_SndCrash,x,y,z);
			ReplaceDwelling(dwelling,dwellingrace);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TCLimit.txt", hero, player, 5);
	end;
end;

function H55_T1DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T1DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

function H55_T2DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T2DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

function H55_T3DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T3DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

function H55_T4DwellingVisitNoAction(hero,dwelling)
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,nil);
	SetObjectEnabled(dwelling,not nil);
	MakeHeroInteractWithObject(hero,dwelling);
	Trigger(OBJECT_TOUCH_TRIGGER,dwelling,"H55_T4DwellingVisit");
	SetObjectEnabled(dwelling,nil);
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--SUPPLIERS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_MysticalGardenVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		if H55_MysticalGardensOwned[building] == player then
			H55_MysticalGardenRefuse(hero,building);
		else
			H55_MysticalGardensOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Garden);
			H55_MysticalGardenRefuse(hero,building);
		end;
	else
		if H55_MysticalGardensOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/SupplyQuestion.txt"},
			"H55_MysticalGardenAccept('"..hero.."','"..building.."')","H55_MysticalGardenRefuse('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/Supply/AlreadyNetwork.txt", hero, player, 5);
		end;
	end;
end;

function H55_MysticalGardenAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= 1000 then
		H55_TakeResourcesSilent(player,6,1000);
		H55_MysticalGardensOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Garden);
		MarkObjectAsVisited(building,hero);
		H55_MysticalGardenRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_MysticalGardenRefuse(hero,building);
	end;
end;

function H55_MysticalGardenRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MysticalGardenVisit");
	SetObjectEnabled(building,nil);
end;

function H55_WindmillVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		if H55_WindmillsOwned[building] == player then
			H55_WindmillRefuse(hero,building);
		else
			H55_WindmillsOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Warren);
			H55_WindmillRefuse(hero,building);
		end;
	else
		if H55_WindmillsOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/SupplyQuestion.txt"},
			"H55_WindmillAccept('"..hero.."','"..building.."')","H55_WindmillRefuse('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/Supply/AlreadyNetwork.txt", hero, player, 5);
		end;
	end;
end;

function H55_WindmillAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= 1000 then
		H55_TakeResourcesSilent(player,6,1000);
		H55_WindmillsOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Warren);
		MarkObjectAsVisited(building,hero);
		H55_WindmillRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_WindmillRefuse(hero,building);
	end;
end;

function H55_WindmillRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_WindmillVisit");
	SetObjectEnabled(building,nil);
end;

function H55_WaterwheelVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		if H55_WaterwheelsOwned[building] == player then
			H55_WaterwheelRefuse(hero,building);
		else
			H55_WaterwheelsOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Mill);
			H55_WaterwheelRefuse(hero,building);
		end;
	else
		if H55_WaterwheelsOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/SupplyQuestion.txt"},
			"H55_WaterwheelAccept('"..hero.."','"..building.."')","H55_WaterwheelRefuse('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/Supply/AlreadyNetwork.txt", hero, player, 5);
		end;
	end;
end;

function H55_WaterwheelAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= 1000 then
		H55_TakeResourcesSilent(player,6,1000);
		H55_WaterwheelsOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Mill);
		MarkObjectAsVisited(building,hero);
		H55_WaterwheelRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_WaterwheelRefuse(hero,building);
	end;
end;

function H55_WaterwheelRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_WaterwheelVisit");
	SetObjectEnabled(building,nil);
end;

function H55_SiegeWorkshopVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		if H55_SiegeWorkshopsOwned[building] == player then
			H55_SiegeWorkshopRefuse(hero,building);
		else
			H55_SiegeWorkshopsOwned[building] = player;
			OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Workshop);
			H55_SiegeWorkshopRefuse(hero,building);
		end;
	else
		if H55_SiegeWorkshopsOwned[building] ~= player then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Supply/WorkshopQuestion.txt"},
			"H55_SiegeWorkshopAccept('"..hero.."','"..building.."')","H55_SiegeWorkshopRefuse('"..hero.."','"..building.."')");
		else
			H55_SiegeWorkshopRefuse(hero,building);
		end;
	end;
end;

function H55_SiegeWorkshopAccept(hero,building)
	local player = GetObjectOwner(hero);
	local ownertxt = H55_Supply_Txt[player];
	if GetPlayerResource(player,6) >= 1000 then
		H55_TakeResourcesSilent(player,6,1000);
		H55_SiegeWorkshopsOwned[building] = player;
		OverrideObjectTooltipNameAndDescription(building,H55_Supply_Txt[player],H55_Supply_Txt_Workshop);
		MarkObjectAsVisited(building,hero);
		H55_SiegeWorkshopRefuse(hero,building);
	else
		ShowFlyingSign("/Text/Game/Scripts/Supply/NoGold.txt", hero, player, 5);
		H55_SiegeWorkshopRefuse(hero,building);
	end;
end;

function H55_SiegeWorkshopRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_SiegeWorkshopVisit");
	SetObjectEnabled(building,nil);
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--ARTIFACT QUESTS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_SacrificialAltarVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_SacrificialAltarRefuse(hero,building);
	else
		if H55_GetLegionOwnCount(hero) == 8 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/LegionQuestion.txt"},
			"H55_SacrificialAltarAccept2('"..hero.."','"..building.."')","H55_SacrificialAltarRefuse('"..hero.."','"..building.."')");
		elseif ((H55_GetHeroRaceNum(hero) == 3) or (H55_GetHeroRaceNum(hero) == 4) or (H55_GetHeroRaceNum(hero) == 6) or (H55_GetHeroRaceNum(hero) == 8)) and HasArtefact(hero,89,0) then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/EggQuestion.txt"},
			"H55_SacrificialAltarAccept3('"..hero.."','"..building.."')","H55_SacrificialAltarRefuse('"..hero.."','"..building.."')");
		elseif H55_GetDragonishOwnCount(hero) == 8 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/DragonQuestion.txt"},
			"H55_SacrificialAltarAccept('"..hero.."','"..building.."')","H55_SacrificialAltarRefuse('"..hero.."','"..building.."')");
		else
			H55_SacrificialAltarRefuse(hero,building);
		end;
	end;
end;

function H55_SacrificialAltarAccept(hero,building)
	H55_ExchangeDragonishSet(hero);
end;

function H55_SacrificialAltarAccept2(hero,building)
	H55_ExchangeLegionSet(hero);
end;

function H55_SacrificialAltarAccept3(hero,building)
	RemoveArtefact(hero,89);
	GiveExp(hero,50000);
end;

function H55_SacrificialAltarRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_SacrificialAltarVisit");
	SetObjectEnabled(building,nil);
end;

function H55_SpellShopVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_SpellShopRefuse(hero,building);
	elseif H55_GetCornucopiaOwnCount(hero) == 6 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/SpellShopQuestion.txt"},
		"H55_SpellShopAccept('"..hero.."','"..building.."')","H55_SpellShopRefuse('"..hero.."','"..building.."')");
	else
		H55_SpellShopRefuse(hero,building);
	end;
end;

function H55_SpellShopAccept(hero,building)
	H55_ExchangeCornucopia(hero);
end;

function H55_SpellShopRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_SpellShopVisit");
	SetObjectEnabled(building,nil);
end;

function H55_AstrologerVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_AstrologerRefuse(hero,building);
	elseif H55_GetSarIssusOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/AstrologerQuestion.txt"},
		"H55_AstrologerAccept('"..hero.."','"..building.."')","H55_AstrologerRefuse('"..hero.."','"..building.."')");
	else
		H55_AstrologerRefuse(hero,building);
	end;
end;

function H55_AstrologerAccept(hero,building)
	H55_ExchangeSarIssusSet(hero);
end;

function H55_AstrologerRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_AstrologerVisit");
	SetObjectEnabled(building,nil);
end;

function H55_HillFortVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_HillFortRefuse(hero,building);
	elseif H55_GetDwarvenOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/HillFortQuestion.txt"},
		"H55_HillFortAccept('"..hero.."','"..building.."')","H55_HillFortRefuse('"..hero.."','"..building.."')");
	else
		H55_HillFortRefuse(hero,building);
	end;
end;

function H55_HillFortAccept(hero,building)
	H55_ExchangeDwarvenSet(hero);
end;

function H55_HillFortRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_HillFortVisit");
	SetObjectEnabled(building,nil);
end;

function H55_MemoryMentorVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_MemoryMentorRefuseAI(hero,building);
	elseif H55_GetTomesOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/MemoryMentorQuestion.txt"},
		"H55_MemoryMentorAccept('"..hero.."','"..building.."')","H55_MemoryMentorRefuse('"..hero.."','"..building.."')");
	else
		H55_MemoryMentorRefuse(hero,building);
	end;
end;

function H55_MemoryMentorAccept(hero,building)
	H55_ExchangeTomesSet(hero);
end;

function H55_MemoryMentorRefuse(hero,building)
	local player = GetObjectOwner(hero);
	if H55_NoMentoring == 0 then
		Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
		SetObjectEnabled(building,not nil);
		MakeHeroInteractWithObject(hero,building);
		Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MemoryMentorVisit");
		SetObjectEnabled(building,nil);
	else
		if H55_MentorBoostVisitors[hero] == nil then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/MemoryMentorSkillBoost.txt"},
			"H55_MemoryMentorSP('"..hero.."','"..building.."')","H55_MemoryMentorKN('"..hero.."','"..building.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/MemoryMentorAlready.txt",hero,player,8);
		end;
	end;
end;

function H55_MemoryMentorRefuseAI(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MemoryMentorVisit");
	SetObjectEnabled(building,nil);
end;

function H55_MemoryMentorSP(hero,building)
	local player = GetObjectOwner(hero);
	H55_MentorBoostVisitors[hero] = 1;
	ChangeHeroStat(hero,STAT_SPELL_POWER,2);
	ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5);
end;

function H55_MemoryMentorKN(hero,building)
	local player = GetObjectOwner(hero);
	H55_MentorBoostVisitors[hero] = 1;
	ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
	ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5);
end;

function H55_BlackMarketVisit(hero,building)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_BlackMarketRefuseAI(hero,building);
	elseif H55_GetGuardianOwnCount(hero) == 4 then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/BlackMarketQuestion.txt"},
		"H55_BlackMarketAccept('"..hero.."','"..building.."')","H55_BlackMarketRefuse('"..hero.."','"..building.."')");
	else
		H55_BlackMarketRefuse(hero,building);
	end;
end;

function H55_BlackMarketAccept(hero,building)
	H55_ExchangeGuardianSet(hero);
end;

function H55_BlackMarketRefuse(hero,building)
	Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	SetObjectEnabled(building,not nil);
	MakeHeroInteractWithObject(hero,building);
	Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_BlackMarketVisit");
	SetObjectEnabled(building,nil);
end;

function H55_BlackMarketRefuseAI(hero,building)
	print("Blocked AI from visiting Artifact Merchant");
end;

------------------------------------------------------------------------------------------------------------------------------------------
--SPHINX
------------------------------------------------------------------------------------------------------------------------------------------

function H55_SphinxVisit(hero,sphinx)
	local player = GetObjectOwner(hero);
	if H55_SphinxVisited[sphinx][hero] ~= 1 then
		if H55_SphinxExp[hero] == nil then
			GiveExp(hero,5000);
			H55_SphinxExp[hero] = 5000;
			H55_SphinxVisited[sphinx][hero] = 1;
			MarkObjectAsVisited(sphinx,hero);
		else
			GiveExp(hero,(H55_SphinxExp[hero]+5000));
			H55_SphinxExp[hero] = (H55_SphinxExp[hero]+5000);
			H55_SphinxVisited[sphinx][hero] = 1;
			MarkObjectAsVisited(sphinx,hero);
		end;
	else
		if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign("/Text/Game/Scripts/Sphinxdead.txt",hero,player,5) end;
	end;
end;

------------------------------------------------------------------------------------------------------------------------------------------
--MAGMA SHRINES
------------------------------------------------------------------------------------------------------------------------------------------

-- function H55_MagmaVisit(hero,magma)
	-- local player = GetObjectOwner(hero);
	-- if H55_MagmaVisited[magma][hero] ~= 1 then
		-- GiveExp(hero,2000);
		-- H55_MagmaVisited[magma][hero] = 1;
		-- H55_MagmaReactivate(hero,building);
		-- MarkObjectAsVisited(magma,hero);
	-- else
		-- if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign("/Text/Game/Scripts/Sphinxdead.txt",hero,player,5) end;
	-- end;
-- end;

-- function H55_MagmaReactivate(hero,building)
	-- Trigger(OBJECT_TOUCH_TRIGGER,building,nil);
	-- SetObjectEnabled(building,not nil);
	-- MakeHeroInteractWithObject(hero,building);
	-- Trigger(OBJECT_TOUCH_TRIGGER,building,"H55_MagmaVisit");
	-- SetObjectEnabled(building,nil);
-- end;

------------------------------------------------------------------------------------------------------------------------------------------
--OBELISK
------------------------------------------------------------------------------------------------------------------------------------------

function H55_ObeliskVisit(hero,obelisk)
	H55_GrailTouch(hero, obelisk);
	local player = GetObjectOwner(hero);
	if H55_PuzzleQuest == 0 then
		if H55_IsThisAIPlayer(player) == 1 then
			H55_ObeliskVisitAI(hero,obelisk);
		elseif H55_ObelisksQty == 1 then
			if H55_ObeliskVisited[obelisk][player] == nil then
				H55_ObeliskVisited[obelisk][player] = 1;
				MarkObjectAsVisited(obelisk,hero);
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskOnlyOne.txt"},
				"H55_OneObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");
			elseif H55_ObeliskVisited[obelisk][player] == 1 and H55_ObeliskChallengeAccepted[player] ~= 1 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskOnlyOne.txt"},
				"H55_OneObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");
			elseif H55_ObeliskVisited[obelisk][player] == 1 and H55_ObeliskChallengeAccepted[player] == 1  and H55_ObeliskGraalFound[player] == 1 then
					ShowFlyingSign("/Text/Game/Scripts/Obelisk/ObeliskQuestComplete.txt",hero,player,5);
			else
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskCryptFail.txt"},hero,player,5);
			end;
		elseif H55_ObelisksQty >= 2 then
			if H55_ObeliskTotalVisited[player] == nil then
				H55_ObeliskVisited[obelisk][player] = 1;
				H55_ObeliskTotalVisited[player] = 1;
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskVisit.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);
				MarkObjectAsVisited(obelisk,hero);
			elseif H55_ObeliskVisited[obelisk][player] == nil then
				H55_ObeliskVisited[obelisk][player] = 1;
				H55_ObeliskTotalVisited[player] = H55_ObeliskTotalVisited[player]+1;
				MarkObjectAsVisited(obelisk,hero);
				if H55_ObeliskTotalVisited[player] == H55_ObelisksQty 	then
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskQuestion.txt"},
					"H55_ObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");
				else
					ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskVisit.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);
				end;
			elseif H55_ObeliskTotalVisited[player] == H55_ObelisksQty and H55_ObeliskChallengeAccepted[player] ~= 1 then
					QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ObeliskQuestion.txt"},
					"H55_ObeliskChallenge('"..hero.."','"..obelisk.."')","H55_ObeliskRefuse('"..hero.."','"..obelisk.."')");
			elseif H55_ObeliskTotalVisited[player] == H55_ObelisksQty and H55_ObeliskChallengeAccepted[player] == 1 and H55_ObeliskGraalFound[player] == 1 then
					ShowFlyingSign("/Text/Game/Scripts/Obelisk/ObeliskQuestComplete.txt",hero,player,5);
			elseif H55_ObeliskTotalVisited[player] == H55_ObelisksQty and H55_ObeliskChallengeAccepted[player] == 1 and H55_ObeliskGraalFound[player] ~= 1 then
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskFail.txt"},hero,player,5);
			else
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskAlready.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);
			end;
		end;
	elseif H55_IsThisAIPlayer(player) == 1 then
		H55_ObeliskVisitAI(hero,obelisk);

	--User Made Puzzle Quest
	elseif H55_ObeliskVisited[obelisk][player] == nil then
		H55_ObeliskVisited[obelisk][player] = 1;
		OpenPuzzleMap(player,1);
		MarkObjectAsVisited(obelisk,hero);
	else
		ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ObeliskAlready.txt";amount=H55_ObeliskTotalVisited[player],total=H55_ObelisksQty},hero,player,5);
	end;
end;

function H55_ObeliskRefuse(hero)
	print("Challenge refused by player");
end;

function H55_ObeliskVisitAI(hero,obelisk)
	Trigger(OBJECT_TOUCH_TRIGGER,obelisk,nil);
	SetObjectEnabled(obelisk,not nil);
	MakeHeroInteractWithObject(hero,obelisk);
	Trigger(OBJECT_TOUCH_TRIGGER,obelisk,"H55_ObeliskVisit");
	SetObjectEnabled(obelisk,nil);
end;

function H55_ObeliskChallenge(hero,obelisk)
	local player = GetObjectOwner(hero);
	H55_ObeliskChallengeAccepted[player] = 1;
	local alignment = H55_ObeliskArmies[obelisk][30];
	local faction1 = 1;
	local faction2 = 1;
	if alignment == 1  then faction1 = 3 faction2 = 8 end;
	if alignment == 2  then faction1 = 4 faction2 = 6 end;
	if alignment == 3  then faction1 = 3 faction2 = 4 end;
	if alignment == 4  then faction1 = 8 faction2 = 6 end;
	if alignment == 5  then faction1 = 8 faction2 = 3 end;
	if alignment == 6  then faction1 = 6 faction2 = 4 end;
	if alignment == 7  then faction1 = 4 faction2 = 3 end;
	if alignment == 8  then faction1 = 6 faction2 = 8 end;

	local rnd01 = H55_ObeliskArmies[obelisk][1]   local rnd02 = H55_ObeliskArmies[obelisk][2]  local rnd03 = H55_ObeliskArmies[obelisk][3];
	local rnd04 = H55_ObeliskArmies[obelisk][4]   local rnd05 = H55_ObeliskArmies[obelisk][5]  local rnd06 = H55_ObeliskArmies[obelisk][6];
	local rnd07 = H55_ObeliskArmies[obelisk][7]   local rnd08 = H55_ObeliskArmies[obelisk][8]  local rnd09 = H55_ObeliskArmies[obelisk][9];
	local rnd10 = H55_ObeliskArmies[obelisk][10]  local rnd11 = H55_ObeliskArmies[obelisk][11] local rnd12 = H55_ObeliskArmies[obelisk][12];
	local rnd13 = H55_ObeliskArmies[obelisk][13]  local rnd14 = H55_ObeliskArmies[obelisk][14];

	local rnd12a = H55_ObeliskArmies[obelisk][15] local rnd23a = H55_ObeliskArmies[obelisk][16] local rnd34a = H55_ObeliskArmies[obelisk][17];
	local rnd45a = H55_ObeliskArmies[obelisk][18] local rnd56a = H55_ObeliskArmies[obelisk][19] local rnd67a = H55_ObeliskArmies[obelisk][20];

	local rnd12b = H55_ObeliskArmies[obelisk][21] local rnd23b = H55_ObeliskArmies[obelisk][22] local rnd34b = H55_ObeliskArmies[obelisk][23];
	local rnd45b = H55_ObeliskArmies[obelisk][24] local rnd56b = H55_ObeliskArmies[obelisk][25] local rnd67b = H55_ObeliskArmies[obelisk][26];

	local combat01 = H55_ObeliskArmies[obelisk][27] local combat02 = H55_ObeliskArmies[obelisk][28] local combat03 = H55_ObeliskArmies[obelisk][29];

	local t01a = H55_Creatures[faction1][1][rnd01];
	local t02a = H55_Creatures[faction2][2][rnd02];
	local t03a = H55_Creatures[faction1][3][rnd03];
	local t04a = H55_Creatures[faction2][4][rnd04];
	local t05a = H55_Creatures[faction1][5][rnd05];
	local t06a = H55_Creatures[faction2][6][rnd06];
	local t07a = H55_Creatures[faction1][7][rnd07];

	local t01b = H55_Creatures[faction2][1][rnd08];
	local t02b = H55_Creatures[faction1][2][rnd09];
	local t03b = H55_Creatures[faction2][3][rnd10];
	local t04b = H55_Creatures[faction1][4][rnd11];
	local t05b = H55_Creatures[faction2][5][rnd12];
	local t06b = H55_Creatures[faction1][6][rnd13];
	local t07b = H55_Creatures[faction2][7][rnd14];

	local t12a = H55_Creatures[faction1][rnd12a][rnd08];
	local t12b = H55_Creatures[faction2][rnd12b][rnd07];
	local t23a = H55_Creatures[faction1][rnd23a][rnd06];
	local t23b = H55_Creatures[faction2][rnd23b][rnd05];

	local t34a = H55_Creatures[faction2][rnd34a][rnd12];
	local t34b = H55_Creatures[faction1][rnd34b][rnd11];
	local t45a = H55_Creatures[faction2][rnd45a][rnd10];
	local t45b = H55_Creatures[faction1][rnd45b][rnd09];

	local t56a = H55_Creatures[faction2][rnd56a][rnd04];
	local t56b = H55_Creatures[faction1][rnd56b][rnd03];
	local t67a = H55_Creatures[faction1][rnd67a][rnd02];
	local t67b = H55_Creatures[faction2][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()
	local boss = 1.3;

	local cnt01 = boss*(random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][1])));
	local cnt02 = boss*(random(7)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][2])));
	local cnt03 = boss*(random(6)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][3])));
	local cnt04 = boss*(random(5)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][4])));
	local cnt05 = boss*(random(4)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][5])));
	local cnt06 = boss*(random(3)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][6])));
	local cnt07 = boss*(random(2)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][7])));
	local cntcr = boss*(5*(random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][1]))));

	if H55_Day <= 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
	if H55_Day > 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_ObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Void.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
end;

function H55_OneObeliskChallenge(hero,obelisk)
	local player = GetObjectOwner(hero);
	H55_ObeliskChallengeAccepted[player] = 1;
	local faction = 4;

	local rnd01 = H55_ObeliskArmies[obelisk][1]   local rnd02 = H55_ObeliskArmies[obelisk][2]  local rnd03 = H55_ObeliskArmies[obelisk][3];
	local rnd04 = H55_ObeliskArmies[obelisk][4]   local rnd05 = H55_ObeliskArmies[obelisk][5]  local rnd06 = H55_ObeliskArmies[obelisk][6];
	local rnd07 = H55_ObeliskArmies[obelisk][7]   local rnd08 = H55_ObeliskArmies[obelisk][8]  local rnd09 = H55_ObeliskArmies[obelisk][9];
	local rnd10 = H55_ObeliskArmies[obelisk][10]  local rnd11 = H55_ObeliskArmies[obelisk][11] local rnd12 = H55_ObeliskArmies[obelisk][12];
	local rnd13 = H55_ObeliskArmies[obelisk][13]  local rnd14 = H55_ObeliskArmies[obelisk][14];

	local rnd12a = H55_ObeliskArmies[obelisk][15] local rnd23a = H55_ObeliskArmies[obelisk][16] local rnd34a = H55_ObeliskArmies[obelisk][17];
	local rnd45a = H55_ObeliskArmies[obelisk][18] local rnd56a = H55_ObeliskArmies[obelisk][19] local rnd67a = H55_ObeliskArmies[obelisk][20];

	local rnd12b = H55_ObeliskArmies[obelisk][21] local rnd23b = H55_ObeliskArmies[obelisk][22] local rnd34b = H55_ObeliskArmies[obelisk][23];
	local rnd45b = H55_ObeliskArmies[obelisk][24] local rnd56b = H55_ObeliskArmies[obelisk][25] local rnd67b = H55_ObeliskArmies[obelisk][26];

	local combat01 = H55_ObeliskArmies[obelisk][27] local combat02 = H55_ObeliskArmies[obelisk][28] local combat03 = H55_ObeliskArmies[obelisk][29];

	local t01a = H55_Creatures[faction][1][rnd01];
	local t02a = H55_Creatures[faction][2][rnd02];
	local t03a = H55_Creatures[faction][3][rnd03];
	local t04a = H55_Creatures[faction][4][rnd04];
	local t05a = H55_Creatures[faction][5][rnd05];
	local t06a = H55_Creatures[faction][6][rnd06];
	local t07a = H55_Creatures[faction][7][rnd07];

	local t01b = H55_Creatures[faction][1][rnd08];
	local t02b = H55_Creatures[faction][2][rnd09];
	local t03b = H55_Creatures[faction][3][rnd10];
	local t04b = H55_Creatures[faction][4][rnd11];
	local t05b = H55_Creatures[faction][5][rnd12];
	local t06b = H55_Creatures[faction][6][rnd13];
	local t07b = H55_Creatures[faction][7][rnd14];

	local t12a = H55_Creatures[faction][rnd12a][rnd08];
	local t12b = H55_Creatures[faction][rnd12b][rnd07];
	local t23a = H55_Creatures[faction][rnd23a][rnd06];
	local t23b = H55_Creatures[faction][rnd23b][rnd05];

	local t34a = H55_Creatures[faction][rnd34a][rnd12];
	local t34b = H55_Creatures[faction][rnd34b][rnd11];
	local t45a = H55_Creatures[faction][rnd45a][rnd10];
	local t45b = H55_Creatures[faction][rnd45b][rnd09];

	local t56a = H55_Creatures[faction][rnd56a][rnd04];
	local t56b = H55_Creatures[faction][rnd56b][rnd03];
	local t67a = H55_Creatures[faction][rnd67a][rnd02];
	local t67b = H55_Creatures[faction][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()

	local cnt01 = random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][1]));
	local cnt02 = random(7)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][2]));
	local cnt03 = random(6)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][3]));
	local cnt04 = random(5)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][4]));
	local cnt05 = random(4)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][5]));
	local cnt06 = random(3)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][6]));
	local cnt07 = random(2)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][7]));
	local cntcr = 5*(random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][1])));

	if H55_Day <= 56 then
		if combat01 == 1 or combat01 == 2 then
			StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat01 == 3 or combat01 == 4 then
			StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat01 == 5 or combat01 == 6 then
			StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat01 == 7 then
			StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
	if H55_Day > 56 and H55_Day <= 112 then
		if combat02 == 1 or combat02 == 2 or combat02 == 3 then
			StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 4 or combat02 == 5 or combat02 == 6 then
			StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 7 or combat02 == 8 or combat02 == 9 then
			StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 10 then
			StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat02 == 11 then
			StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
	if H55_Day > 112 and H55_Day <= 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
	if H55_Day > 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_OneObeliskWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,
			"H55_OneObeliskWin","/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
end;

function H55_ShantiriVisit(hero,shantiri)
	H55_GrailTouch(hero, shantiri);
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		H55_ShantiriVisitAI(hero,shantiri);
	elseif H55_ShantirisQty == 1 then
		if H55_ShantiriVisited[shantiri][player] == nil then
			H55_ShantiriVisited[shantiri][player] = 1;
			MarkObjectAsVisited(shantiri,hero);
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriOnlyOne.txt"},
			"H55_OneShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");
		elseif H55_ShantiriVisited[shantiri][player] == 1 and H55_ShantiriChallengeAccepted[player] ~= 1 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriOnlyOne.txt"},
			"H55_OneShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");
		elseif H55_ShantiriVisited[shantiri][player] == 1 and H55_ShantiriChallengeAccepted[player] == 1  and H55_ShantiriGraalFound[player] == 1 then
				ShowFlyingSign("/Text/Game/Scripts/Obelisk/ShantiriQuestComplete.txt",hero,player,5);
		else
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriCryptFail.txt"},hero,player,5);
		end;
	elseif H55_ShantirisQty >= 2 then
		if H55_ShantiriTotalVisited[player] == nil then
			H55_ShantiriVisited[shantiri][player] = 1;
			H55_ShantiriTotalVisited[player] = 1;
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriVisit.txt";amount=H55_ShantiriTotalVisited[player],total=H55_ShantirisQty},hero,player,5);
			MarkObjectAsVisited(shantiri,hero);
		elseif H55_ShantiriVisited[shantiri][player] == nil then
			H55_ShantiriVisited[shantiri][player] = 1;
			H55_ShantiriTotalVisited[player] = H55_ShantiriTotalVisited[player]+1;
			MarkObjectAsVisited(shantiri,hero);
			if H55_ShantiriTotalVisited[player] == H55_ShantirisQty 	then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriQuestion.txt"},
				"H55_ShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");
			else
				ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriVisit.txt";amount=H55_ShantiriTotalVisited[player],total=H55_ShantirisQty},hero,player,5);
			end;
		elseif H55_ShantiriTotalVisited[player] == H55_ShantirisQty and H55_ShantiriChallengeAccepted[player] ~= 1 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Obelisk/ShantiriQuestion.txt"},
				"H55_ShantiriChallenge('"..hero.."','"..shantiri.."')","H55_ShantiriRefuse('"..hero.."','"..shantiri.."')");
		elseif H55_ShantiriTotalVisited[player] == H55_ShantirisQty and H55_ShantiriChallengeAccepted[player] == 1 and H55_ShantiriGraalFound[player] == 1 then
				ShowFlyingSign("/Text/Game/Scripts/Obelisk/ShantiriQuestComplete.txt",hero,player,5);
		elseif H55_ShantiriTotalVisited[player] == H55_ShantirisQty and H55_ShantiriChallengeAccepted[player] == 1 and H55_ShantiriGraalFound[player] ~= 1 then
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriFail.txt"},hero,player,5);
		else
			ShowFlyingSign({"/Text/Game/Scripts/Obelisk/ShantiriAlready.txt";amount=H55_ShantiriTotalVisited[player],total=H55_ShantirisQty},hero,player,5);
		end;
	end;
end;
function H55_GrailTouch(s_hero, grail)
	local player = GetObjectOwner(s_hero);
	if H55_IsThisAIPlayer(player) ~= 1 then
		if HasHeroSkill(s_hero, KNIGHT_FEAT_GRAIL_VISION) ~= nil then
			local i_get = 0;
			if H55_Touch_Grail[s_hero] == nil then
				H55_Touch_Grail[s_hero] = {};
				H55_Touch_Grail[s_hero][grail] = 1;
				i_get = 1;
			else
				if H55_Touch_Grail[s_hero][grail] == nil then
					H55_Touch_Grail[s_hero][grail] = 1;
					i_get = 1;
				end;
			end;
			if i_get == 1 then
				local i_exp = 500;
				local i_level = GetHeroLevel(s_hero);
				i_exp = i_exp * i_level;
				GiveExp(s_hero, i_exp);
				-- ShowFlyingSign({"/Text/Game/Scripts/Grail/GrailTouch4Exp.txt";exp=i_exp},s_hero,player,5) sleep(4);
			end;
			local i_rest = 0;
			local ci = GetLastSavedCombatIndex();
			if H55_CI_Grail[s_hero] == nil then
				H55_CI_Grail[s_hero] = -1;
				i_rest = 1;
			end;
			if H55_CI_Grail[s_hero] ~= H55_CI_Grail_Last[s_hero] then
				H55_CI_Grail[s_hero] = H55_CI_Grail_Last[s_hero];
				i_rest = 1;
			end;
			if i_rest == 1 then
				local i_movement = H55_Round(H55_GetHeroMovement(s_hero) * .4 * (1 + 0.5 * TTH_Monk_Move_Bonus(s_hero)));
				ChangeHeroStat(s_hero, STAT_MOVE_POINTS, i_movement);

				local i_mana = GetHeroStat(s_hero, STAT_MANA_POINTS);
				local i_knowledge = GetHeroStat(s_hero, STAT_KNOWLEDGE);
				local i_mana_total = 10 * i_knowledge;
				if HasHeroSkill(s_hero, PERK_INTELLIGENCE) ~= nil then
					i_mana_total = 15 * i_knowledge;
				end;
				local i_remain_mana = H55_Round(i_mana_total * .4 * (1 + 0.5 * TTH_Monk_Mana_Bonus(s_hero)));
				if i_remain_mana > i_mana_total - i_mana then
					ChangeHeroStat(s_hero, STAT_MANA_POINTS, i_mana_total - i_mana);
				else
					ChangeHeroStat(s_hero, STAT_MANA_POINTS, i_remain_mana);
				end;

				ShowFlyingSign({"/Text/Game/Scripts/Grail/GrailTouch4Rest.txt";},s_hero,player,5) sleep(4);
			end;
		end;
	end;
end;

function H55_ShantiriRefuse(hero)
	print("Challenge refused by player");
end;

function H55_ShantiriVisitAI(hero,shantiri)
	Trigger(OBJECT_TOUCH_TRIGGER,shantiri,nil);
	SetObjectEnabled(shantiri,not nil);
	MakeHeroInteractWithObject(hero,shantiri);
	Trigger(OBJECT_TOUCH_TRIGGER,shantiri,"H55_ShantiriVisit");
	SetObjectEnabled(shantiri,nil);
end;

function H55_ShantiriChallenge(hero,shantiri)
	local player = GetObjectOwner(hero);
	H55_ShantiriChallengeAccepted[player] = 1;
	local alignment = H55_ShantiriArmies[shantiri][30];
	local faction1 = 1;
	local faction2 = 1;
	if alignment == 1  then faction1 = 1 faction2 = 2 end;
	if alignment == 2  then faction1 = 5 faction2 = 7 end;
	if alignment == 3  then faction1 = 1 faction2 = 7 end;
	if alignment == 4  then faction1 = 2 faction2 = 5 end;
	if alignment == 5  then faction1 = 2 faction2 = 1 end;
	if alignment == 6  then faction1 = 7 faction2 = 5 end;
	if alignment == 7  then faction1 = 7 faction2 = 1 end;
	if alignment == 8  then faction1 = 5 faction2 = 2 end;

	local rnd01 = H55_ShantiriArmies[shantiri][1]   local rnd02 = H55_ShantiriArmies[shantiri][2]  local rnd03 = H55_ShantiriArmies[shantiri][3];
	local rnd04 = H55_ShantiriArmies[shantiri][4]   local rnd05 = H55_ShantiriArmies[shantiri][5]  local rnd06 = H55_ShantiriArmies[shantiri][6];
	local rnd07 = H55_ShantiriArmies[shantiri][7]   local rnd08 = H55_ShantiriArmies[shantiri][8]  local rnd09 = H55_ShantiriArmies[shantiri][9];
	local rnd10 = H55_ShantiriArmies[shantiri][10]  local rnd11 = H55_ShantiriArmies[shantiri][11] local rnd12 = H55_ShantiriArmies[shantiri][12];
	local rnd13 = H55_ShantiriArmies[shantiri][13]  local rnd14 = H55_ShantiriArmies[shantiri][14];

	local rnd12a = H55_ShantiriArmies[shantiri][15] local rnd23a = H55_ShantiriArmies[shantiri][16] local rnd34a = H55_ShantiriArmies[shantiri][17];
	local rnd45a = H55_ShantiriArmies[shantiri][18] local rnd56a = H55_ShantiriArmies[shantiri][19] local rnd67a = H55_ShantiriArmies[shantiri][20];

	local rnd12b = H55_ShantiriArmies[shantiri][21] local rnd23b = H55_ShantiriArmies[shantiri][22] local rnd34b = H55_ShantiriArmies[shantiri][23];
	local rnd45b = H55_ShantiriArmies[shantiri][24] local rnd56b = H55_ShantiriArmies[shantiri][25] local rnd67b = H55_ShantiriArmies[shantiri][26];

	local combat01 = H55_ShantiriArmies[shantiri][27] local combat02 = H55_ShantiriArmies[shantiri][28] local combat03 = H55_ShantiriArmies[shantiri][29];

	local t01a = H55_Creatures[faction1][1][rnd01];
	local t02a = H55_Creatures[faction2][2][rnd02];
	local t03a = H55_Creatures[faction1][3][rnd03];
	local t04a = H55_Creatures[faction2][4][rnd04];
	local t05a = H55_Creatures[faction1][5][rnd05];
	local t06a = H55_Creatures[faction2][6][rnd06];
	local t07a = H55_Creatures[faction1][7][rnd07];

	local t01b = H55_Creatures[faction2][1][rnd08];
	local t02b = H55_Creatures[faction1][2][rnd09];
	local t03b = H55_Creatures[faction2][3][rnd10];
	local t04b = H55_Creatures[faction1][4][rnd11];
	local t05b = H55_Creatures[faction2][5][rnd12];
	local t06b = H55_Creatures[faction1][6][rnd13];
	local t07b = H55_Creatures[faction2][7][rnd14];

	local t12a = H55_Creatures[faction1][rnd12a][rnd08];
	local t12b = H55_Creatures[faction2][rnd12b][rnd07];
	local t23a = H55_Creatures[faction1][rnd23a][rnd06];
	local t23b = H55_Creatures[faction2][rnd23b][rnd05];

	local t34a = H55_Creatures[faction2][rnd34a][rnd12];
	local t34b = H55_Creatures[faction1][rnd34b][rnd11];
	local t45a = H55_Creatures[faction2][rnd45a][rnd10];
	local t45b = H55_Creatures[faction1][rnd45b][rnd09];

	local t56a = H55_Creatures[faction2][rnd56a][rnd04];
	local t56b = H55_Creatures[faction1][rnd56b][rnd03];
	local t67a = H55_Creatures[faction1][rnd67a][rnd02];
	local t67b = H55_Creatures[faction2][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()
	local boss = 1.3;

	local cnt01 = boss*(random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][1])));
	local cnt02 = boss*(random(7)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][2])));
	local cnt03 = boss*(random(6)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][3])));
	local cnt04 = boss*(random(5)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][4])));
	local cnt05 = boss*(random(4)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][5])));
	local cnt06 = boss*(random(3)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][6])));
	local cnt07 = boss*(random(2)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][7])));
	local cntcr = boss*(5*(random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction1][1]))));

	if H55_Day <= 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
	if H55_Day > 112 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,"H55_ShantiriWin",
			"/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)",1);
		end;
	end;
end;

function H55_OneShantiriChallenge(hero,shantiri)
	local player = GetObjectOwner(hero);
	H55_ShantiriChallengeAccepted[player] = 1;
	local faction = 6;

	local rnd01 = H55_ShantiriArmies[shantiri][1]   local rnd02 = H55_ShantiriArmies[shantiri][2]  local rnd03 = H55_ShantiriArmies[shantiri][3];
	local rnd04 = H55_ShantiriArmies[shantiri][4]   local rnd05 = H55_ShantiriArmies[shantiri][5]  local rnd06 = H55_ShantiriArmies[shantiri][6];
	local rnd07 = H55_ShantiriArmies[shantiri][7]   local rnd08 = H55_ShantiriArmies[shantiri][8]  local rnd09 = H55_ShantiriArmies[shantiri][9];
	local rnd10 = H55_ShantiriArmies[shantiri][10]  local rnd11 = H55_ShantiriArmies[shantiri][11] local rnd12 = H55_ShantiriArmies[shantiri][12];
	local rnd13 = H55_ShantiriArmies[shantiri][13]  local rnd14 = H55_ShantiriArmies[shantiri][14];

	local rnd12a = H55_ShantiriArmies[shantiri][15] local rnd23a = H55_ShantiriArmies[shantiri][16] local rnd34a = H55_ShantiriArmies[shantiri][17];
	local rnd45a = H55_ShantiriArmies[shantiri][18] local rnd56a = H55_ShantiriArmies[shantiri][19] local rnd67a = H55_ShantiriArmies[shantiri][20];

	local rnd12b = H55_ShantiriArmies[shantiri][21] local rnd23b = H55_ShantiriArmies[shantiri][22] local rnd34b = H55_ShantiriArmies[shantiri][23];
	local rnd45b = H55_ShantiriArmies[shantiri][24] local rnd56b = H55_ShantiriArmies[shantiri][25] local rnd67b = H55_ShantiriArmies[shantiri][26];

	local combat01 = H55_ShantiriArmies[shantiri][27] local combat02 = H55_ShantiriArmies[shantiri][28] local combat03 = H55_ShantiriArmies[shantiri][29];

	local t01a = H55_Creatures[faction][1][rnd01];
	local t02a = H55_Creatures[faction][2][rnd02];
	local t03a = H55_Creatures[faction][3][rnd03];
	local t04a = H55_Creatures[faction][4][rnd04];
	local t05a = H55_Creatures[faction][5][rnd05];
	local t06a = H55_Creatures[faction][6][rnd06];
	local t07a = H55_Creatures[faction][7][rnd07];

	local t01b = H55_Creatures[faction][1][rnd08];
	local t02b = H55_Creatures[faction][2][rnd09];
	local t03b = H55_Creatures[faction][3][rnd10];
	local t04b = H55_Creatures[faction][4][rnd11];
	local t05b = H55_Creatures[faction][5][rnd12];
	local t06b = H55_Creatures[faction][6][rnd13];
	local t07b = H55_Creatures[faction][7][rnd14];

	local t12a = H55_Creatures[faction][rnd12a][rnd08];
	local t12b = H55_Creatures[faction][rnd12b][rnd07];
	local t23a = H55_Creatures[faction][rnd23a][rnd06];
	local t23b = H55_Creatures[faction][rnd23b][rnd05];

	local t34a = H55_Creatures[faction][rnd34a][rnd12];
	local t34b = H55_Creatures[faction][rnd34b][rnd11];
	local t45a = H55_Creatures[faction][rnd45a][rnd10];
	local t45b = H55_Creatures[faction][rnd45b][rnd09];

	local t56a = H55_Creatures[faction][rnd56a][rnd04];
	local t56b = H55_Creatures[faction][rnd56b][rnd03];
	local t67a = H55_Creatures[faction][rnd67a][rnd02];
	local t67b = H55_Creatures[faction][rnd67b][rnd01];

	local multiplier = H55_GetBankDifMultiplier()

	local cnt01 = random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][1]));
	local cnt02 = random(7)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][2]));
	local cnt03 = random(6)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][3]));
	local cnt04 = random(5)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][4]));
	local cnt05 = random(4)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][5]));
	local cnt06 = random(3)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][6]));
	local cnt07 = random(2)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][7]));
	local cntcr = 5*(random(8)+ H55_Round((multiplier*H55_CreaturesGrowth[faction][1])));

	if H55_Day <= 56 then
		if combat01 == 1 or combat01 == 2 then
			StartCombat(hero,nil,4,t12a,cnt01,t12b,cnt02,t23a,cnt02,t45a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat01 == 3 or combat01 == 4 then
			StartCombat(hero,nil,4,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat01 == 5 or combat01 == 6 then
			StartCombat(hero,nil,4,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat01 == 7 then
			StartCombat(hero,nil,5,t01a,cnt01,t01a,cnt01,t01b,cnt01,t01b,cnt01,t01a,cnt01,nil,"H55_OneShantiriWin",
			nil,1);
		end;
	end;
	if H55_Day > 56 and H55_Day <= 112 then
		if combat02 == 1 or combat02 == 2 or combat02 == 3 then
			StartCombat(hero,nil,5,t12a,cnt01,t12b,cnt02,t23a,cnt02,t34a,cnt03,t56a,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 4 or combat02 == 5 or combat02 == 6 then
			StartCombat(hero,nil,5,t12a,cnt01,t23a,cnt02,t23b,cnt03,t34a,cnt03,t45a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 7 or combat02 == 8 or combat02 == 9 then
			StartCombat(hero,nil,5,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 10 then
			StartCombat(hero,nil,6,t02a,cnt02,t02a,cnt02,t02b,cnt02,t02b,cnt02,t02a,cnt02,t02b,cnt02,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat02 == 11 then
			StartCombat(hero,nil,5,t03a,cnt03,t03a,cnt03,t03b,cnt03,t03b,cnt03,t03a,cnt03,nil,"H55_OneShantiriWin",
			nil,1);
		end;
	end;
	if H55_Day > 112 and H55_Day <= 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,6,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34b,cnt04,t45a,cnt04,t56a,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,6,t12a,cnt01,t12b,cnt01,t23a,cnt02,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,6,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,5,t04a,cnt04,t04a,cnt04,t04b,cnt04,t04b,cnt04,t04a,cnt04,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t05a,cnt05,t05a,cnt05,t05b,cnt05,t05b,cnt05,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t01a,cntcr,t01a,cntcr,t01b,cntcr,t01b,cntcr,t01a,cntcr,t01b,cntcr,nil,"H55_OneShantiriWin",
			nil,1);
		end;
	end;
	if H55_Day > 224 then
		if combat03 == 1 or combat03 == 2 or combat03 == 3 then
			StartCombat(hero,nil,7,t12a,cnt01,t23a,cnt02,t34a,cnt03,t34a,cnt03,t45a,cnt04,t56a,cnt05,t67a,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 4 or combat03 == 5 or combat03 == 6 then
			StartCombat(hero,nil,7,t12a,cnt01,t12b,cnt01,t23a,cnt02,t34a,cnt03,t45a,cnt04,t67a,cnt06,t67b,cnt07,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 7 or combat03 == 8 or combat03 == 9 then
			StartCombat(hero,nil,7,t01a,cnt01,t02a,cnt02,t03a,cnt03,t04a,cnt04,t05a,cnt05,t06a,cnt06,t07a,cnt07,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 10 then
			StartCombat(hero,nil,3,t07a,cnt07,t07a,cnt07,t07b,cnt07,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 11 then
			StartCombat(hero,nil,4,t06a,cnt06,t06a,cnt06,t06b,cnt06,t06b,cnt06,nil,"H55_OneShantiriWin",
			nil,1);
		end;
		if combat03 == 12 then
			StartCombat(hero,nil,6,t02a,cntcr,t02a,cntcr,t02b,cntcr,t02b,cntcr,t02a,cntcr,t02b,cntcr,nil,
			"H55_OneShantiriWin",nil,1);
		end;
	end;
end;

function H55_ObeliskWin(hero,result)
	local player = GetObjectOwner(hero);
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	if result ~= nil then
		if H55_ObelisksQty == 2 then
			H55_ArtifactAward(hero,1);
		end;
		if H55_ObelisksQty >= 3 and H55_ObelisksQty < 5 then
			H55_ArtifactAward(hero,2);
		end;
		if mapsize == 256 and floorsize == 0 then
			if H55_ObelisksQty >= 6 and H55_ObelisksQty < 8 then
				H55_RandomUltimateAward(hero);
			end;
		elseif mapsize == 176 and floorsize == 1 then
			if H55_ObelisksQty >= 6 and H55_ObelisksQty < 8 then
				H55_RandomUltimateAward(hero);
			end;
		else
			if H55_ObelisksQty >= 6 and H55_ObelisksQty < 8 then
				H55_ArtifactAward(hero,3);
			end;
		end;
		if H55_ObelisksQty >= 8 then
			H55_RandomUltimateAward(hero);
		end;
		H55_ObeliskGraalFound[player]=1;
	end;
end;

function H55_OneObeliskWin(hero,result)
	local player = GetObjectOwner(hero);
	if result ~= nil then
		H55_ArtifactAward(hero,1);
		H55_ObeliskGraalFound[player]=1;
	end;
end;

function H55_ShantiriWin(hero,result)
	local player = GetObjectOwner(hero);
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	if result ~= nil then
		if H55_ShantirisQty == 2 then
			H55_ArtifactAward(hero,1);
		end;
		if H55_ShantirisQty >= 3 and H55_ShantirisQty < 5 then
			H55_ArtifactAward(hero,2);
		end;
		if mapsize == 256 and floorsize == 0 then
			if H55_ShantirisQty >= 6 and H55_ShantirisQty < 8 then
				H55_RandomUltimateAward(hero);
			end;
		elseif mapsize == 176 and floorsize == 1 then
			if H55_ShantirisQty >= 6 and H55_ShantirisQty < 8 then
				H55_RandomUltimateAward(hero);
			end;
		else
			if H55_ShantirisQty >= 6 and H55_ShantirisQty < 8 then
				H55_ArtifactAward(hero,3);
			end;
		end;
		if H55_ShantirisQty >= 8 then
			H55_RandomUltimateAward(hero);
		end;
		H55_ShantiriGraalFound[player]=1;
	end;
end;

function H55_OneShantiriWin(hero,result)
	local player = GetObjectOwner(hero);
	if result ~= nil then
		H55_ArtifactAward(hero,1);
		H55_ShantiriGraalFound[player]=1;
	end;
end;

-------------------------------------------------------------------------------------------------------------------------------------------
--SEER HUT
-------------------------------------------------------------------------------------------------------------------------------------------

function H55_MermaidVisit(s_hero, s_mermaid)
	local i_player = GetObjectOwner(s_hero);
	local i_race = H55_GetHeroRaceNum(s_hero);
	if IsHeroInBoat(s_hero) == nil and H55_IsThisAIPlayer(i_player) ~= 1 then
		local index = H55_MermaidChoices[s_mermaid];
		if index == 1 then
			--Shatter
			local b_hasinterest = 0;
			local i_len_shatter = length(H55_MermaidSwaps[index]);
			for i = 1, i_len_shatter do
				if GetHeroArtifactsCount(s_hero, H55_MermaidSwaps[index][i][1]) >= 1 then
					b_hasinterest = 1;
					QuestionBoxForPlayers(GetPlayerFilter(i_player),{"/Text/Game/Scripts/Seer/SeerQuestion.txt";arti=H55_MermaidSwaps[index][i][3],skill=H55_MermaidSwaps[index][i][4]},"H55_SeerHutAccept('"..s_hero.."','"..s_mermaid.."','"..H55_MermaidSwaps[index][i][1].."','"..H55_MermaidSwaps[index][i][2].."')","H55_SeerHutRefuse('"..s_hero.."','"..s_mermaid.."')");
				end;
			end;
			if b_hasinterest == 0 then
				ShowFlyingSign("/Text/Game/Scripts/Seer/SeerInterestShatter.txt", s_hero, i_player, 7);
			end;
		elseif index == 2 then
			--Normal
			local b_hasinterest = 0;
			local i_len_normal = length(H55_MermaidSwaps[index]);
			for i = 1, i_len_normal do
				if GetHeroArtifactsCount(s_hero, H55_MermaidSwaps[index][i][1]) >= 1 then
					b_hasinterest = 1;
					QuestionBoxForPlayers(GetPlayerFilter(i_player),{"/Text/Game/Scripts/Seer/SeerQuestion.txt";arti=H55_MermaidSwaps[index][i][3],skill=H55_MermaidSwaps[index][i][4]},"H55_SeerHutAccept('"..s_hero.."','"..s_mermaid.."','"..H55_MermaidSwaps[index][i][1].."','"..H55_MermaidSwaps[index][i][2].."')","H55_SeerHutRefuse('"..s_hero.."','"..s_mermaid.."')");
				end;
			end;
			if b_hasinterest == 0 then
				ShowFlyingSign("/Text/Game/Scripts/Seer/SeerInterestNormal.txt", s_hero, i_player, 7);
			end;
		elseif index == 3 then
			--Special
			local b_hasinterest = 0;
			local i_len_special = length(H55_MermaidSwaps[index]);
			for i = 1, i_len_special do
				if i == 1 then
					if GetHeroArtifactsCount(s_hero, H55_MermaidSwaps[index][i][i_race][1]) >= 1 then
						b_hasinterest = 1;
						QuestionBoxForPlayers(GetPlayerFilter(i_player),{"/Text/Game/Scripts/Seer/SeerQuestion.txt";arti=H55_MermaidSwaps[index][i][i_race][3],skill=H55_MermaidSwaps[index][i][i_race][4]},"H55_SeerHutAccept('"..s_hero.."','"..s_mermaid.."','"..H55_MermaidSwaps[index][i][i_race][1].."','"..H55_MermaidSwaps[index][i][i_race][2].."')","H55_SeerHutRefuse('"..s_hero.."','"..s_mermaid.."')");
					end;
				else
					if i_race == 8 then
						if GetHeroArtifactsCount(s_hero, H55_MermaidSwaps[index][i][2][1]) >= 1 then
							b_hasinterest = 1;
							QuestionBoxForPlayers(GetPlayerFilter(i_player),{"/Text/Game/Scripts/Seer/SeerQuestion.txt";arti=H55_MermaidSwaps[index][i][2][3],skill=H55_MermaidSwaps[index][i][2][4]},"H55_SeerHutAccept('"..s_hero.."','"..s_mermaid.."','"..H55_MermaidSwaps[index][i][2][1].."','"..H55_MermaidSwaps[index][i][2][2].."')","H55_SeerHutRefuse('"..s_hero.."','"..s_mermaid.."')");
						end;
					else
						if GetHeroArtifactsCount(s_hero, H55_MermaidSwaps[index][i][1][1]) >= 1 then
							b_hasinterest = 1;
							QuestionBoxForPlayers(GetPlayerFilter(i_player),{"/Text/Game/Scripts/Seer/SeerQuestion.txt";arti=H55_MermaidSwaps[index][i][1][3],skill=H55_MermaidSwaps[index][i][1][4]},"H55_SeerHutAccept('"..s_hero.."','"..s_mermaid.."','"..H55_MermaidSwaps[index][i][1][1].."','"..H55_MermaidSwaps[index][i][1][2].."')","H55_SeerHutRefuse('"..s_hero.."','"..s_mermaid.."')");
						end;
					end;
				end;
			end;
			if b_hasinterest == 0 then
				ShowFlyingSign("/Text/Game/Scripts/Seer/SeerInterestSpecial.txt", s_hero, i_player, 7);
			end;
		elseif index == 4 then
			--Magic
			if H55_GetHeroRaceNum(s_hero) == 8 then
				ShowFlyingSign("/Text/Game/Scripts/Seer/SeerRefuse.txt", s_hero, i_player, 7);
			else
				local b_hasinterest = 0;
				local i_len_magic = length(H55_MermaidSwaps[index]);
				for i = 1, i_len_magic do
					if GetHeroArtifactsCount(s_hero, H55_MermaidSwaps[index][i][1]) >= 1 then
						b_hasinterest = 1;
						QuestionBoxForPlayers(GetPlayerFilter(i_player),{"/Text/Game/Scripts/Seer/SeerQuestion.txt";arti=H55_MermaidSwaps[index][i][3],skill=H55_MermaidSwaps[index][i][4]},"H55_SeerHutAccept('"..s_hero.."','"..s_mermaid.."','"..H55_MermaidSwaps[index][i][1].."','"..H55_MermaidSwaps[index][i][2].."')","H55_SeerHutRefuse('"..s_hero.."','"..s_mermaid.."')");
					end;
				end;
				if b_hasinterest == 0 then
					ShowFlyingSign("/Text/Game/Scripts/Seer/SeerInterestMagic.txt", s_hero, i_player, 7);
				end;
			end;
		end;
		MarkObjectAsVisited(s_mermaid, s_hero);
	else
		Trigger(OBJECT_TOUCH_TRIGGER, s_mermaid, nil);
		SetObjectEnabled(s_mermaid, not nil);
		MakeHeroInteractWithObject(s_hero, s_mermaid);
		print("Mermaids activated");
	end;
end;

function H55_SeerHutAccept(s_hero, s_mermaid, i_arti, i_skill)
	RemoveArtefact(s_hero, i_arti);
	GiveHeroSkill(s_hero, i_skill);
	H55_ResetMermaid(s_mermaid);
end;

function H55_SeerHutRefuse(s_hero, s_mermaid)
	MarkObjectAsVisited(s_mermaid, s_hero);
end;

function H55_ResetMermaid(s_mermaid)
	H55_MermaidChoices[s_mermaid] = random(4) + 1;
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--TEMPLE OF SUMMONING
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_MapSizeSummoningAmount()
	local floorsize = GetMaxFloor();
	local mapsize = GetTerrainSize();
	local amount = 40;
	if floorsize == 0 then
		if mapsize == 320 then amount = 80 end;
		if mapsize == 256 then amount = 60 end;
		if mapsize == 216 then amount = 50 end;
		if mapsize == 176 then amount = 50 end;
	end;
	if floorsize == 1 then
		if mapsize == 320 then amount = 120 end;
		if mapsize == 256 then amount = 100 end;
		if mapsize == 216 then amount = 80 end;
		if mapsize == 176 then amount = 60 end;
		if mapsize == 136 then amount = 50 end;
	end;
	return amount
end;

function H55_SummonTempleVisit(hero,temple)
	local player = GetObjectOwner(hero);
	if IsHeroInBoat(hero) == nil then
		if H55_IsThisAIPlayer(player) == 1 then
			print("AI Visits Summoning Temple!");
			MarkObjectAsVisited(temple,hero);
		else
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Artifacts.txt"},
			"H55_SummonTempleResources('"..hero.."','"..temple.."')","H55_SummonTempleArtifacts('"..hero.."','"..temple.."')");
		end;
	else
		Trigger(OBJECT_TOUCH_TRIGGER,temple,nil);
		SetObjectEnabled(temple,not nil);
		MakeHeroInteractWithObject(hero,temple);
		print("Sirens activated");
	end;
end;

function H55_SummonTempleResources(hero,temple)
	local player = GetObjectOwner(hero);
	local reschoice = H55_SummonTempleChoices[temple][1];
	local armychoice = H55_SummonTempleChoices[temple][2];
	local amount = H55_MapSizeSummoningAmount();
	if reschoice == 0 or reschoice == 1 then amount = (2*amount) end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Question.txt";qty=amount,type=H55_SummonResourceText[reschoice]},
	"H55_SummonAccept('"..hero.."','"..temple.."')","H55_SummonRefuse('"..hero.."','"..temple.."')");
end;

function H55_SummonAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local reschoice = H55_SummonTempleChoices[temple][1];
	local armychoice = H55_SummonTempleChoices[temple][2];
	local amount = H55_MapSizeSummoningAmount();
	if reschoice == 0 or reschoice == 1 then
		amount = (2*amount);
	end;
	if GetPlayerResource(player,reschoice) >= amount then
		H55_TakeResources(player,reschoice,amount,hero);
		H55_SummonTempleReward(hero,3,armychoice);
	else
		ShowFlyingSign("/Text/Game/Scripts/Summon/Fail.txt",hero,player,5);
	end;
	H55_SummonTempleChoices[temple][1] = random(6);
	H55_SummonTempleChoices[temple][2] = random(7)+1;
	MarkObjectAsVisited(temple,hero);
end;

function H55_SummonRefuse(hero,temple)
	local player = GetObjectOwner(hero);
	ShowFlyingSign("/Text/Game/Scripts/Summon/Refuse.txt",hero,player,5);
	MarkObjectAsVisited(temple,hero);
end;

function H55_SummonTempleArtifacts(hero,temple)
	local player = GetObjectOwner(hero);
	if HasArtefact(hero,92,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Phoenix.txt"},
		"H55_SummonPhoenixAccept('"..hero.."','"..temple.."')","H55_SummonPhoenixRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,93,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Manticore.txt"},
		"H55_SummonManticoreAccept('"..hero.."','"..temple.."')","H55_SummonManticoreRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,71,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Dreadknight.txt"},
		"H55_SummonDreadKnightAccept('"..hero.."','"..temple.."')","H55_SummonDreadKnightRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,70,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Mummy.txt"},
		"H55_SummonMummyAccept('"..hero.."','"..temple.."')","H55_SummonMummyRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_SULPHUR,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Fire.txt"},
		"H55_SummonFireAccept('"..hero.."','"..temple.."')","H55_SummonFireRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_CRYSTAL,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Water.txt"},
		"H55_SummonWaterAccept('"..hero.."','"..temple.."')","H55_SummonWaterRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_GEM,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Air.txt"},
		"H55_SummonAirAccept('"..hero.."','"..temple.."')","H55_SummonAirRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_MERCURY,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Earth.txt"},
		"H55_SummonEarthAccept('"..hero.."','"..temple.."')","H55_SummonEarthRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_ORE,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Wolves.txt"},
		"H55_SummonWolvesAccept('"..hero.."','"..temple.."')","H55_SummonWolvesRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_WOOD,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Wolves2.txt"},
		"H55_SummonWolves2Accept('"..hero.."','"..temple.."')","H55_SummonWolves2Refuse('"..hero.."','"..temple.."')");
	end;
end;

function H55_SummonPhoenixAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(2*(H55_Day/7)));
	RemoveArtefact(hero,92);
	AddHeroCreatures(hero,91,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Phoenixes.txt";num=amount},hero,player,7);
end;

function H55_SummonManticoreAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(2*(H55_Day/7)));
	RemoveArtefact(hero,93);
	AddHeroCreatures(hero,115,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Manticores.txt";num=amount},hero,player,7);
end;

function H55_SummonFireAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_SULPHUR);
	AddHeroCreatures(hero,85,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonWaterAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_CRYSTAL);
	AddHeroCreatures(hero,86,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonAirAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_GEM);
	AddHeroCreatures(hero,88,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonEarthAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_MERCURY);
	AddHeroCreatures(hero,87,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonWolvesAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(6*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_ORE);
	AddHeroCreatures(hero,113,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Wolfpack.txt";num=amount},hero,player,7);
end;

function H55_SummonWolves2Accept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(6*(H55_Day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_WOOD);
	AddHeroCreatures(hero,113,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Wolfpack.txt";num=amount},hero,player,7);
end;

function H55_SummonMummyAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(4*(H55_Day/7)));
	RemoveArtefact(hero,70);
	AddHeroCreatures(hero,116,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/MReceive.txt";num=amount},hero,player,7);
end;

function H55_SummonDreadKnightAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = H55_Round(1+(3*(H55_Day/7)));
	RemoveArtefact(hero,71);
	AddHeroCreatures(hero,90,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/DKReceive.txt";num=amount},hero,player,7);
end;

function H55_SummonPhoenixRefuse(hero,temple)
	print("No Phoenix");
end;

function H55_SummonManticoreRefuse(hero,temple)
	print("No Manticore");
end;

function H55_SummonFireRefuse(hero,temple)
	print("No Fire");
end;

function H55_SummonWaterRefuse(hero,temple)
	print("No Water");
end;

function H55_SummonAirRefuse(hero,temple)
	print("No Air");
end;

function H55_SummonEarthRefuse(hero,temple)
	print("No Earth");
end;

function H55_SummonWolvesRefuse(hero,temple)
	print("No Wolves");
end;

function H55_SummonWolves2Refuse(hero,temple)
	print("No Wolves2");
end;

function H55_SummonMummyRefuse(hero,temple)
	print("No Mummy");
end;

function H55_SummonDreadKnightRefuse(hero,temple)
	print("No DreadKnight");
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--WITCH HUT
----------------------------------------------------------------------------------------------------------------------------------------------

-- by 牙姐 2019-04-27 12:56:19
-- begin 定制开局前3个女巫小屋
	TTH_ArrVisitedWitch = {};
-- end

function H55_WitchVisit(hero,hut)
	local player = GetObjectOwner(hero);
	if H55_IsThisAIPlayer(player) == 1 then
		print("AI Visits Witch Hut!");
	elseif contains(H55_WHVisited[hut],hero) then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
	else
		local choice1 = H55_WHChoice1[hut];
		local choice2 = H55_WHChoice2[hut];
		-- by 牙姐 2019-04-27 12:56:19
		-- begin 定制开局前3个女巫小屋
			if length(TTH_ArrVisitedWitch) == 0 then
				if contains(TTH_ArrVisitedWitch, hut) == nil then
					H55_Insert(TTH_ArrVisitedWitch, hut);
					if H55_Witch_1_1 ~= 0 then
						H55_WHChoice1[hut] = H55_Witch_1_1;
						choice1 = H55_Witch_1_1;
					end;
					if H55_Witch_1_2 ~= 0 then
						H55_WHChoice2[hut] = H55_Witch_1_2;
						choice2 = H55_Witch_1_2;
					end;
				end;
			end;
			if length(TTH_ArrVisitedWitch) == 1 then
				if contains(TTH_ArrVisitedWitch, hut) == nil then
					H55_Insert(TTH_ArrVisitedWitch, hut);
					if H55_Witch_2_1 ~= 0 then
						H55_WHChoice1[hut] = H55_Witch_2_1;
						choice1 = H55_Witch_2_1;
					end;
					if H55_Witch_2_2 ~= 0 then
						H55_WHChoice2[hut] = H55_Witch_2_2;
						choice2 = H55_Witch_2_2;
					end;
				end;
			end;
			if length(TTH_ArrVisitedWitch) == 2 then
				if contains(TTH_ArrVisitedWitch, hut) == nil then
					H55_Insert(TTH_ArrVisitedWitch, hut);
					if H55_Witch_3_1 ~= 0 then
						H55_WHChoice1[hut] = H55_Witch_3_1;
						choice1 = H55_Witch_3_1;
					end;
					if H55_Witch_3_2 ~= 0 then
						H55_WHChoice2[hut] = H55_Witch_3_2;
						choice2 = H55_Witch_3_2;
					end;
				end;
			end;
		-- end
		-- OverrideObjectTooltipNameAndDescription(hut, "", {"/Text/Game/Scripts/Witch/Tips_Template.txt";tpl_choice1=H55_WitchTipsText[choice1],tpl_choice2=H55_WitchTipsText[choice2]});
		OverrideObjectTooltipNameAndDescription(hut, H55_WitchTipsText[choice1], H55_WitchTipsText[choice2]);
		local classtype = H55_GetHeroWitchType(hero);
		if classtype == "MightG" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchMightG[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchMightGText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
		if classtype == "MightB" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchMightB[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchMightBText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
		if classtype == "MindG" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchMindG[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchMindGText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
		if classtype == "MindB" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchMindB[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchMindBText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
		if classtype == "Magic" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchMagic[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchMagicText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
		if classtype == "Barbarian" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchBarbarian[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchBarbarianText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
		if classtype == "Special" then
			local mastery1 = GetHeroSkillMastery(hero,H55_WitchSpecial[choice1]);
			if mastery1 <= 2 then
				QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questionone.txt";
				mastery=H55_WitchMasteryText[mastery1],skill=H55_WitchSpecialText[choice1]},
				"H55_WitchAccept01('"..hero.."','"..hut.."')","H55_WitchRefuse01('"..hero.."','"..hut.."')");
			elseif mastery1 == 3 then
				H55_WitchVisit2nd(hero,hut);
			end;
		end;
	end;
end;

function H55_WitchAccept01(hero,hut)
	local player = GetObjectOwner(hero);
	local classtype = H55_GetHeroWitchType(hero);
	local choice1 = H55_WHChoice1[hut];
	local visits = length(H55_WHVisited[hut])
	local currentvisitor = length(H55_WHVisited[hut])+1
	local x,y,z = GetObjectPosition(hut);
	if classtype == "MightG" then
		GiveHeroSkill(hero,H55_WitchMightG[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
	if classtype == "MightB" then
		GiveHeroSkill(hero,H55_WitchMightB[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
	if classtype == "MindG" then
		GiveHeroSkill(hero,H55_WitchMindG[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
	if classtype == "MindB" then
		GiveHeroSkill(hero,H55_WitchMindB[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
	if classtype == "Magic" then
		GiveHeroSkill(hero,H55_WitchMagic[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
	if classtype == "Barbarian" then
		GiveHeroSkill(hero,H55_WitchBarbarian[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
	if classtype == "Special" then
		GiveHeroSkill(hero,H55_WitchSpecial[choice1]);
		H55_WHVisited[hut][currentvisitor] = hero;
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
		MarkObjectAsVisited(hut,hero);
	end;
end;

function H55_WitchVisit2nd(hero,hut)
	local player = GetObjectOwner(hero);
	local choice2 = H55_WHChoice2[hut];
	local classtype = H55_GetHeroWitchType(hero);
	local price = 2000;
	if classtype == "MightG" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMightG[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchMightGText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
	if classtype == "MightB" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMightB[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchMightBText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
	if classtype == "MindG" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMindG[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchMindGText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
	if classtype == "MindB" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMindB[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchMindBText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
	if classtype == "Magic" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMagic[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchMagicText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
	if classtype == "Barbarian" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchBarbarian[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchBarbarianText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
	if classtype == "Special" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchSpecial[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiononealt.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2],skill=H55_WitchSpecialText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Already.txt",hero,player,5);
		end;
	end;
end;

function H55_WitchRefuse01(hero,hut)
	local player = GetObjectOwner(hero);
	local choice2 = H55_WHChoice2[hut];
	local classtype = H55_GetHeroWitchType(hero);
	local price = 2000;
	if classtype == "MightG" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMightG[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchMightGText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
	if classtype == "MightB" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMightB[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchMightBText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
	if classtype == "MindG" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMindG[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchMindGText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
	if classtype == "MindB" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMindB[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchMindBText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
	if classtype == "Magic" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchMagic[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchMagicText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
	if classtype == "Barbarian" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchBarbarian[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchBarbarianText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
	if classtype == "Special" then
		local mastery2 = GetHeroSkillMastery(hero,H55_WitchSpecial[choice2])
		if mastery2 <= 2 then
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Witch/Questiontwo.txt";
			gold=price,mastery=H55_WitchMasteryText[mastery2], skill=H55_WitchSpecialText[choice2]},
			"H55_WitchAccept02('"..hero.."','"..hut.."')","H55_WitchRefuse02('"..hero.."')");
		elseif mastery2 == 3 then
			ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
		end;
	end;
end;

function H55_WitchAccept02(hero,hut)
	local player = GetObjectOwner(hero);
	local classtype = H55_GetHeroWitchType(hero);
	local choice2 = H55_WHChoice2[hut];
	local visits = length(H55_WHVisited[hut])
	local currentvisitor = length(H55_WHVisited[hut])+1
	local x,y,z = GetObjectPosition(hut);
	local money = GetPlayerResource(player,6);
	if money >= 2000 then
		if classtype == "MightG" then
			GiveHeroSkill(hero,H55_WitchMightG[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		if classtype == "MightB" then
			GiveHeroSkill(hero,H55_WitchMightB[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		if classtype == "MindG" then
			GiveHeroSkill(hero,H55_WitchMindG[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		if classtype == "MindB" then
			GiveHeroSkill(hero,H55_WitchMindB[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		if classtype == "Magic" then
			GiveHeroSkill(hero,H55_WitchMagic[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		if classtype == "Barbarian" then
			GiveHeroSkill(hero,H55_WitchBarbarian[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		if classtype == "Special" then
			GiveHeroSkill(hero,H55_WitchSpecial[choice2]);
			H55_WHVisited[hut][currentvisitor] = hero;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndWitch,x,y,z);
			MarkObjectAsVisited(hut,hero);
		end;
		H55_TakeResources(player,6,2000,hero);
	else
		ShowFlyingSign("/Text/Game/Scripts/Witch/Nogold.txt",hero,player,5);
	end;
end;

function H55_WitchRefuse02(hero)
	local player = GetObjectOwner(hero);
	ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--BANKS
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_SetBankDay(day)
	H55_BankTest = 1;
	H55_TestDay = day;
end;

function H55_BanksOnTimer()
	H55_BankTest = 0;
end;

function H55_GetBankDifMultiplier()
	return H55_BanksDifficulty;
end;

function H55_GetLastVisited(bank)
	local day = GetDate(DAY);
	local result = 9999;
	if H55_BankLastVisit[bank] ~= nil then
		result = (day - H55_BankLastVisit[bank])
	end;
	return result
end;

function H55_GetBank_Restday(bank)
	local day = GetDate(DAY);
	local result = 9999;
	if H55_BankLastVisit[bank] ~= nil then
		-- print('day: '..day);
		-- print('bank: '..bank);
		-- print('H55_BankLastVisit[bank]: '..H55_BankLastVisit[bank]);
		result = 14 - (day - H55_BankLastVisit[bank])
		-- print('result: '..result);
	end;
	return result
end;

function H55_GetPlayerLastVisited(player,bank)
	local day = GetDate(DAY);
	local result = 9999;
	if H55_BankPlayerLastVisit[player][bank] ~= nil then
		result = (day - H55_BankPlayerLastVisit[player][bank]);
	end;
	return result
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--JUNK
----------------------------------------------------------------------------------------------------------------------------------------------

function H55_WagonVisit(strHero, objBank)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if H55_IsThisAIPlayer(iPlayer) == 1 then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, "H55_WagonVisit");
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			local strCallbackWin = "TTH_WagonWin";

			StartCombat(strHero, nil, 3
				, 1, 30
				, 2, 30
				, 106, 30
				, nil, strCallbackWin, nil, 1);
		end;
	else
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;

function H55_SkeletonVisit(strHero, objBank)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if H55_IsThisAIPlayer(iPlayer) == 1 then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, "H55_SkeletonVisit");
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			local strCallbackWin = "TTH_SkeletonWin";

			StartCombat(strHero, nil, 3
				, 31, 20
				, 32, 20
				, 153, 20
				, nil, strCallbackWin, nil, 1);
		end;
	else
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;

-- by 牙姐 2018-10-2 14:34:59
-- begin 手推车胜利
function TTH_WagonWin(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		H55_GiveResources(iPlayer, 1, 5, strHero);
		H55_BankLastVisit[objBank] = iDay;
		H55_BankPlayerLastVisit[iPlayer][objBank] = iDay;
		MarkObjectAsVisited(objBank, strHero);
	else
		MarkObjectAsVisited(objBank, strHero);
	end;
end;
-- end

-- by 牙姐 2018-10-2 14:35:04
-- begin 勇士之墓胜利
function TTH_SkeletonWin(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		GiveArtefact(strHero, H55_Melodia_Artifacts[1][random(length(H55_Melodia_Artifacts[1])) + 1]);
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
			Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndArtifact, iPositionX, iPositionY, iPositionZ);
		end;
		H55_BankLastVisit[objBank] = iDay;
		H55_BankPlayerLastVisit[iPlayer][objBank] = iDay;
		MarkObjectAsVisited(objBank, strHero);
	else
		MarkObjectAsVisited(objBank, strHero);
	end;
end;
-- end

------------------------------------------------------------------------------------------------------------------------------------------------
--COMBAT
------------------------------------------------------------------------------------------------------------------------------------------------

-- by 牙姐 2018-9-27 13:05:15
-- begin 银行统一战斗方法-8族-非废弃矿井
function TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, strCallbackVisit, strCombatLink)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if H55_IsThisAIPlayer(iPlayer) == 1 then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, strCallbackVisit);
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			local iMonthScale = H55_Month;
			local iWeekScale = H55_AbsoluteWeek;
			local iRandom = H55_AbsoluteWeek;
			local iType = mod(H55_Day, 3);
			if iType == 0 then
				iType = 3;
			end;
			local iLevel = H55_Floor(H55_AbsoluteWeek / 3);
			local iMultiplier = H55_GetBankDifMultiplier();
			local strCallbackWin = "TTH_BankWinNormal";

			local listIdCreature = {};
			local listCountCreature = {};
			for i = 1, 7 do
				listIdCreature[i] = H55_Creatures[iFaction][i][iType];
				listCountCreature[i] = random(iRandom * (8 - i)) + H55_Round(iMultiplier * (1 + iWeekScale) * iMonthScale * H55_CreaturesGrowth[iFaction][i]);
			end

			if iLevel == 0 then
				StartCombat(strHero, nil, 3
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel == 1 then
				StartCombat(strHero, nil, 4
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel == 2 then
				StartCombat(strHero, nil, 5
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel == 3 then
				StartCombat(strHero, nil, 6
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, listIdCreature[6], listCountCreature[6]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel >= 4 then
				StartCombat(strHero, nil, 7
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, listIdCreature[6], listCountCreature[6]
					, listIdCreature[7], listCountCreature[7]
					, nil, strCallbackWin, strCombatLink, 1);
			end;
		end;
	else
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;
-- end

-- by 牙姐 2018-9-30 22:41:32
-- begin 银行统一战斗方法-8族-废弃矿井
function TTH_BankCombatByRaceMine(strHero, objBank, iFaction, strCallbackVisit, strCombatLink)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 1 and H55_GetPlayerLastVisited(iPlayer, objBank) > 1 then
		H55_MineCurrentPlayerVisit[iPlayer] = objBank;
		if H55_IsThisAIPlayer(iPlayer) == 1 then
			TTH_AbandonedMineWin(strHero, 1);
		else
			local iMonthScale = H55_Month;
			local iWeekScale = H55_AbsoluteWeek;
			local iRandom = H55_AbsoluteWeek;
			local iType = mod(H55_Day, 3);
			if iType == 0 then
				iType = 3;
			end;
			local iLevel = H55_Floor(H55_AbsoluteWeek / 3);
			local iMultiplier = H55_GetBankDifMultiplier();
			local strCallbackWin = "TTH_AbandonedMineWin";

			local listIdCreature = {};
			local listCountCreature = {};
			for i = 1, 7 do
				listIdCreature[i] = H55_Creatures[iFaction][i][iType];
				listCountCreature[i] = random(iRandom * (8 - i)) + H55_Round(iMultiplier * (iWeekScale * 2) * iMonthScale * H55_CreaturesGrowth[iFaction][i]);
			end

			if iLevel == 0 then
				StartCombat(strHero, nil, 3
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel == 1 then
				StartCombat(strHero, nil, 4
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel == 2 then
				StartCombat(strHero, nil, 5
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel == 3 then
				StartCombat(strHero, nil, 6
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, listIdCreature[6], listCountCreature[6]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLevel >= 4 then
				StartCombat(strHero, nil, 7
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, listIdCreature[6], listCountCreature[6]
					, listIdCreature[7], listCountCreature[7]
					, nil, strCallbackWin, strCombatLink, 1);
			end;
		end;
	else
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;
-- end

function H55_UnkemptVisit(strHero, objBank)
	local iFaction = 1;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_UnkemptVisit", "/Arenas/CombatArena/FinalCombat/Bank_Tower.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_ForestTowerVisit(strHero, objBank)
	local iFaction = 2;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_ForestTowerVisit", "/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_MageVaultVisit(strHero, objBank)
	local iFaction = 5;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_MageVaultVisit", "/Arenas/CombatArena/FinalCombat/Bank_Artifact.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_WitchTempleVisit(strHero, objBank)
	local iFaction = 6;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_WitchTempleVisit", "/Arenas/CombatArena/FinalCombat/Bank_Witch.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_CryptVisit(strHero, objBank)
	local iFaction = 4;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_CryptVisit", "/Arenas/CombatArena/FinalCombat/Bank_Crypt.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_StoneVaultVisit(strHero, objBank)
	local iFaction = 3;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_StoneVaultVisit", "/Arenas/CombatArena/FinalCombat/Bank_Demon.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_DwarvenTreasureVisit(strHero, objBank)
	local iFaction = 7;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_DwarvenTreasureVisit", "/Arenas/CombatArena/FinalCombat/Bank_Dwarf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_OrcTunnelVisit(strHero, objBank)
	local iFaction = 8;
	TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, "H55_OrcTunnelVisit", "/Arenas/CombatArena/FinalCombat/Bank_Orc.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;
function H55_AbandonedMineVisit(strHero, objBank)
	local iFaction = random(8) + 1;
	TTH_BankCombatByRaceMine(strHero, objBank, iFaction, "H55_AbandonedMineVisit", "/Arenas/CombatArena/FinalCombat/Bank_Mine.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

-- by 牙姐 2018-9-27 23:31:27
-- begin 银行统一战斗方法-非8族
function TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, strCallbackVisit, strCombatLink)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if H55_IsThisAIPlayer(iPlayer) == 1 then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, strCallbackVisit);
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			local iMonthScale = H55_Month + 1;
			if strBuildingName == "BUILDING_CYCLOPS_STOCKPILE" then
				iMonthScale = H55_Month;
			end;
			local iWeekScale = H55_AbsoluteWeek;
			local iRandom = H55_AbsoluteWeek;
			local iMultiplier = H55_GetBankDifMultiplier();
			local strCallbackWin = "TTH_BankWinAdv";

			local listIdCreature = {};
			local listCountCreature = {};
			local iLen = length(TTH_BankMonsterByNoRace[strBuildingName]["ID"]);
			for i = 0, iLen - 1 do
				listIdCreature[i] = TTH_BankMonsterByNoRace[strBuildingName]["ID"][i];
				local iGrowth = TTH_BankMonsterByNoRace[strBuildingName]["GROWTH"][i];
				listCountCreature[i] = random(iRandom * iGrowth) + H55_Round(iMultiplier * iWeekScale * 2 * iMonthScale * iGrowth);
			end

			if strBuildingName == "BUILDING_CYCLOPS_STOCKPILE" and H55_Month == 1 then
				iLen = iLen - 1;
			end;
			if iLen == 3 then
				StartCombat(strHero, nil, 3
					, listIdCreature[0], listCountCreature[0]
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLen == 4 then
				StartCombat(strHero, nil, 4
					, listIdCreature[0], listCountCreature[0]
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLen == 5 then
				StartCombat(strHero, nil, 5
					, listIdCreature[0], listCountCreature[0]
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLen == 6 then
				StartCombat(strHero, nil, 6
					, listIdCreature[0], listCountCreature[0]
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, nil, strCallbackWin, strCombatLink, 1);
			elseif iLen == 7 then
				StartCombat(strHero, nil, 7
					, listIdCreature[0], listCountCreature[0]
					, listIdCreature[1], listCountCreature[1]
					, listIdCreature[2], listCountCreature[2]
					, listIdCreature[3], listCountCreature[3]
					, listIdCreature[4], listCountCreature[4]
					, listIdCreature[5], listCountCreature[5]
					, listIdCreature[6], listCountCreature[6]
					, nil, strCallbackWin, strCombatLink, 1);
			end;
		end;
	else
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;
-- end

function H55_StockpileVisit(strHero, objBank)
	local strBuildingName = "BUILDING_CYCLOPS_STOCKPILE";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_StockpileVisit", "/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

function H55_UtopiaVisit(strHero, objBank)
	local strBuildingName = "BUILDING_DRAGON_UTOPIA";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_UtopiaVisit", "/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

function H55_PyramidVisit(strHero, objBank)
	local strBuildingName = "BUILDING_PYRAMID";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_PyramidVisit", "/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

function H55_DemonTowerVisit(strHero, objBank)
	local strBuildingName = "BUILDING_BUOY";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_DemonTowerVisit", "/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

function H55_SunkenTempleVisit(strHero, objBank)
	local strBuildingName = "BUILDING_SUNKEN_TEMPLE";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_SunkenTempleVisit", "/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

function H55_DemolishVisit(strHero, objBank)
	local strBuildingName = "BUILDING_DEMOLISH";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_DemolishVisit", "/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

function H55_ThicketVisit(strHero, objBank)
	local strBuildingName = "BUILDING_TREANT_THICKET";
	TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, "H55_ThicketVisit", "/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)");
end;

-- by 牙姐 2018-10-3 12:47:39
-- begin AI银行胜利
function TTH_BankWinAI(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		TTH_BankRewardAI(strHero);
		H55_BankLastVisit[objBank] = iDay;
		H55_BankPlayerLastVisit[iPlayer][objBank] = iDay;
		MarkObjectAsVisited(objBank, strHero);
	else
		MarkObjectAsVisited(objBank, strHero);
	end;
end;
-- end

-- by 牙姐 2018-9-30 13:56:42
-- begin 普通银行胜利
function TTH_BankWinNormal(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		TTH_BankReward(strHero, 0);
		H55_BankLastVisit[objBank] = iDay;
		H55_BankPlayerLastVisit[iPlayer][objBank] = iDay;
		MarkObjectAsVisited(objBank, strHero);
	else
		MarkObjectAsVisited(objBank, strHero);
	end;
end;
-- end

-- by 牙姐 2018-9-30 13:56:42
-- begin 高级银行胜利
function TTH_BankWinAdv(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		TTH_BankReward(strHero, 1);
		TTH_BankReward(strHero, 1);
		H55_BankLastVisit[objBank] = iDay;
		H55_BankPlayerLastVisit[iPlayer][objBank] = iDay;
		MarkObjectAsVisited(objBank, strHero);
	else
		MarkObjectAsVisited(objBank, strHero);
	end;
end;
-- end

-- by 牙姐 2018-9-30 13:56:42
-- begin 废弃矿井胜利
function TTH_AbandonedMineWin(strHero, result)
	if result ~= nil then
		local iPlayer = GetObjectOwner(strHero);
		local objMine = H55_MineCurrentPlayerVisit[iPlayer];
		Trigger(OBJECT_TOUCH_TRIGGER, objMine, nil);
		SetObjectEnabled(objMine, not nil);
		MakeHeroInteractWithObject(strHero, objMine);
	end;
end;
-- end

TTH_TABLE_BankRewardCallbackName = {
	[0] = "TTH_Reward_Resource"
	, [1] = "TTH_Reward_Stat"
	, [2] = "TTH_Reward_Spell"
	, [3] = "TTH_Reward_Artifact"
	, [4] = "TTH_Reward_Creature"
	, [5] = "TTH_Reward_Exp"
};
TTH_TABLE_BankRewardTipName = {
	[0] = "/Text/Game/Scripts/BankReward/ChooseReward/RewardResource.txt"
	, [1] = "/Text/Game/Scripts/BankReward/ChooseReward/RewardStat.txt"
	, [2] = "/Text/Game/Scripts/BankReward/ChooseReward/RewardSpell.txt"
	, [3] = "/Text/Game/Scripts/BankReward/ChooseReward/RewardArtifact.txt"
	, [4] = "/Text/Game/Scripts/BankReward/ChooseReward/RewardCreature.txt"
	, [5] = "/Text/Game/Scripts/BankReward/ChooseReward/RewardExp.txt"
};
-- by 牙姐 2018-9-30 22:44:26
-- begin 银行奖励 5随2 2选1
function TTH_BankReward(strHero, iLevel)
	local iPlayer = GetObjectOwner(strHero);
	local iRandomEnter = random(5);
	local iRandomCancel = random(4);
	if iRandomCancel == iRandomEnter then
		iRandomCancel = iRandomCancel + 1;
	end;
	local strClass = H55_GetHeroClass(strHero);
	if strClass == "Barbarian" then
		if iRandomEnter == 2 then
			iRandomEnter = 5;
		end;
		if iRandomCancel == 2 then
			iRandomCancel = 5;
		end;
	end;
	local strRewardCallbackEnter = TTH_TABLE_BankRewardCallbackName[iRandomEnter];
	local strRewardCallbackCancel = TTH_TABLE_BankRewardCallbackName[iRandomCancel];
	local strRewardEnter = TTH_TABLE_BankRewardTipName[iRandomEnter];
	local strRewardCancel = TTH_TABLE_BankRewardTipName[iRandomCancel];
	local iRewardParamEnter = 0;
	local iRewardParamCancel = 0;
	if iLevel == 0 then
		if iRandomEnter == 0 then
			iRewardParamEnter = H55_AbsoluteWeek;
		elseif iRandomEnter == 1 then
			iRewardParamEnter = 1;
		elseif iRandomEnter == 2 then
			iRewardParamEnter = 0;
		elseif iRandomEnter == 3 then
			iRewardParamEnter = H55_AbsoluteWeek;
		elseif iRandomEnter == 4 then
			iRewardParamEnter = H55_AbsoluteWeek;
		elseif iRandomEnter == 5 then
			iRewardParamEnter = H55_AbsoluteWeek;
		end;
		if iRandomCancel == 0 then
			iRewardParamCancel = H55_AbsoluteWeek;
		elseif iRandomCancel == 1 then
			iRewardParamCancel = 1;
		elseif iRandomCancel == 2 then
			iRewardParamCancel = 0;
		elseif iRandomCancel == 3 then
			iRewardParamCancel = H55_AbsoluteWeek;
		elseif iRandomCancel == 4 then
			iRewardParamCancel = H55_AbsoluteWeek;
		elseif iRandomCancel == 5 then
			iRewardParamCancel = H55_AbsoluteWeek;
		end;
	elseif iLevel == 1 then
		if iRandomEnter == 0 then
			iRewardParamEnter = H55_AbsoluteWeek + 6;
		elseif iRandomEnter == 1 then
			iRewardParamEnter = 2;
		elseif iRandomEnter == 2 then
			iRewardParamEnter = 1;
		elseif iRandomEnter == 3 then
			iRewardParamEnter = H55_AbsoluteWeek + 6;
		elseif iRandomEnter == 4 then
			iRewardParamEnter = H55_AbsoluteWeek + 6;
		elseif iRandomEnter == 5 then
			iRewardParamEnter = H55_AbsoluteWeek + 6;
		end;
		if iRandomCancel == 0 then
			iRewardParamCancel = H55_AbsoluteWeek + 6;
		elseif iRandomCancel == 1 then
			iRewardParamCancel = 2;
		elseif iRandomCancel == 2 then
			iRewardParamCancel = 1;
		elseif iRandomCancel == 3 then
			iRewardParamCancel = H55_AbsoluteWeek + 6;
		elseif iRandomCancel == 4 then
			iRewardParamCancel = H55_AbsoluteWeek + 6;
		elseif iRandomCancel == 5 then
			iRewardParamCancel = H55_AbsoluteWeek + 6;
		end;
	end;
	QuestionBoxForPlayers(GetPlayerFilter(iPlayer),{"/Text/Game/Scripts/BankReward/ChooseReward/TemplateChooseReward.txt";strRewardEnter=strRewardEnter,strRewardCancel=strRewardCancel},
	strRewardCallbackEnter.."('"..strHero.."',"..iRewardParamEnter..")",strRewardCallbackCancel.."('"..strHero.."',"..iRewardParamCancel..")");
	if iLevel == 0 then
		TTH_Reward_Gold(strHero, H55_AbsoluteWeek);
	elseif iLevel == 1 then
		TTH_Reward_Gold(strHero, H55_AbsoluteWeek + 6);
	end;
end;
-- end
-- by 牙姐 2018-10-3 12:48:56
-- begin AI银行奖励 5随1
function TTH_BankRewardAI(strHero, iLevel)
	local iPlayer = GetObjectOwner(strHero);
	local iRandom = random(5);
	local strClass = H55_GetHeroClass(strHero);
	if strClass == "Barbarian" then
		if iRandom == 2 then
			iRandom = 5;
		end;
	end;
	local iRewardParam = 0;
	if iLevel == 0 then
		if iRandom == 0 then
			iRewardParam = H55_AbsoluteWeek;
		elseif iRandom == 1 then
			iRewardParam = 1;
		elseif iRandom == 2 then
			iRewardParam = H55_AbsoluteWeek;
		elseif iRandom == 3 then
			iRewardParam = H55_AbsoluteWeek;
		elseif iRandom == 4 then
			iRewardParam = H55_AbsoluteWeek;
		elseif iRandom == 5 then
			iRewardParam = H55_AbsoluteWeek;
		end;
	elseif iLevel == 1 then
		if iRandom == 0 then
			iRewardParam = H55_AbsoluteWeek + 6;
		elseif iRandom == 1 then
			iRewardParam = 2;
		elseif iRandom == 2 then
			iRewardParam = H55_AbsoluteWeek + 6;
		elseif iRandom == 3 then
			iRewardParam = H55_AbsoluteWeek + 6;
		elseif iRandom == 4 then
			iRewardParam = H55_AbsoluteWeek + 6;
		elseif iRandom == 5 then
			iRewardParam = H55_AbsoluteWeek + 6;
		end;
	end;
	if iRandom == 0 then
		TTH_Reward_Resource(strHero, iRewardParam);
	elseif iRandom == 1 then
		TTH_Reward_Stat(strHero, iRewardParam);
	elseif iRandom == 2 then
		TTH_Reward_Spell(strHero, iRewardParam);
	elseif iRandom == 3 then
		TTH_Reward_Artifact(strHero, iRewardParam);
	elseif iRandom == 4 then
		TTH_Reward_Creature(strHero, iRewardParam);
	elseif iRandom == 5 then
		TTH_Reward_Exp(strHero, iRewardParam);
	end;
	if iLevel == 0 then
		TTH_Reward_Gold(strHero, H55_AbsoluteWeek);
	elseif iLevel == 1 then
		TTH_Reward_Gold(strHero, H55_AbsoluteWeek + 6);
	end;
end;
-- end

-- by 牙姐 2018-10-2 0:45:52
-- begin 银行奖励相关
-- iRewardParam: H55_AbsoluteWeek
function TTH_Reward_Gold(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local iGold = 2000 + iRewardParam * 500;
	H55_GiveResources(iPlayer, 6, iGold, strHero);
end;
-- iRewardParam: H55_AbsoluteWeek
function TTH_Reward_Resource(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local iCountNormal = 2 + iRewardParam * 2 + random(5);
	local iCountSpecial = 1 + iRewardParam + random(3);
	H55_GiveResources(iPlayer, 0, iCountNormal, strHero);
	H55_GiveResources(iPlayer, 1, iCountNormal, strHero);
	H55_GiveResources(iPlayer, 2, iCountSpecial, strHero);
	H55_GiveResources(iPlayer, 3, iCountSpecial, strHero);
	H55_GiveResources(iPlayer, 4, iCountSpecial, strHero);
	H55_GiveResources(iPlayer, 5, iCountSpecial, strHero);
end;
-- iRewardParam: 1, 2
function TTH_Reward_Stat(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local iRandom = random(100) + 1;
	local iGroup = H55_GetHeroClassGroup(strHero);
	if iGroup == 1 then
		if iRandom > 0 and iRandom <= 50 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iRewardParam);
		elseif iRandom > 50 and iRandom <= 100 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iRewardParam);
		end;
	elseif iGroup == 2 then
		if iRandom > 0 and iRandom <= 24 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iRewardParam);
		elseif iRandom > 24 and iRandom <= 48 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iRewardParam);
		elseif iRandom > 48 and iRandom <= 72 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_SPELL_POWER, iRewardParam);
		elseif iRandom > 72 and iRandom <= 96 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_KNOWLEDGE, iRewardParam);
		elseif iRandom > 96 and iRandom <= 98 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_LUCK, iRewardParam);
		elseif iRandom > 98 and iRandom <= 100 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_MORALE, iRewardParam);
		end;
	elseif iGroup == 4 then
		if iRandom > 0 and iRandom <= 24 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iRewardParam);
		elseif iRandom > 24 and iRandom <= 48 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iRewardParam);
		elseif iRandom > 48 and iRandom <= 72 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_SPELL_POWER, iRewardParam);
		elseif iRandom > 72 and iRandom <= 96 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_KNOWLEDGE, iRewardParam);
		elseif iRandom > 96 and iRandom <= 100 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_LUCK, iRewardParam);
		end;
	elseif iGroup == 3 then
		if iRandom > 0 and iRandom <= 50 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_SPELL_POWER, iRewardParam);
		elseif iRandom > 50 and iRandom <= 100 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_KNOWLEDGE, iRewardParam);
		end;
	elseif iGroup == 5 then
		if iRandom > 0 and iRandom <= 45 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iRewardParam);
		elseif iRandom > 45 and iRandom <= 90 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iRewardParam);
		elseif iRandom > 90 and iRandom <= 95 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_LUCK, iRewardParam);
		elseif iRandom > 95 and iRandom <= 100 then
			TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_MORALE, iRewardParam);
		end;
	end;
end;
function TTH_Reward_Shout_Loop(iPlayer, strHero, strShoutGroup, iShoutLevel, iRewardParam)
	if iRewardParam == 0 then
		for iIndex = 1, iShoutLevel do
			for iJndex, objJndix in TTH_TABLE_SPELL[strShoutGroup][iIndex]["ID"] do
				if KnowHeroSpell(strHero, TTH_TABLE_SPELL[strShoutGroup][iIndex]["ID"][iJndex]) == nil then
					TeachHeroSpell(strHero, TTH_TABLE_SPELL[strShoutGroup][iIndex]["ID"][iJndex]);
					if H55_IsThisAIPlayer(iPlayer) ~= 1 then
						ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateShout.txt";name=TTH_TABLE_SPELL[strShoutGroup][iIndex]["NAME"][iJndex]}, strHero, iPlayer, 5);
						local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
						Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndSpell, iPositionX, iPositionY, iPositionZ);
					end;
					return 1;
				end;
			end;
		end;
	else
		for iIndex = iShoutLevel, 1 do
			for iJndex, objJndix in TTH_TABLE_SPELL[strShoutGroup][iIndex]["ID"] do
				if KnowHeroSpell(strHero, TTH_TABLE_SPELL[strShoutGroup][iIndex]["ID"][iJndex]) == nil then
					TeachHeroSpell(strHero, TTH_TABLE_SPELL[strShoutGroup][iIndex]["ID"][iJndex]);
					if H55_IsThisAIPlayer(iPlayer) ~= 1 then
						ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateShout.txt";name=TTH_TABLE_SPELL[strShoutGroup][iIndex]["NAME"][iJndex]}, strHero, iPlayer, 5);
						local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
						Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndSpell, iPositionX, iPositionY, iPositionZ);
					end;
					return 1;
				end;
			end;
		end;
	end;
	return 0;
end;
function TTH_Reward_Spell_Loop(iPlayer, strHero, strSpellGroup, iSpellLevel, iRewardParam)
	if iRewardParam == 0 then
		for iIndex = 1, iSpellLevel do
			for iJndex, objJndix in TTH_TABLE_SPELL[strSpellGroup][iIndex]["ID"] do
				if KnowHeroSpell(strHero, TTH_TABLE_SPELL[strSpellGroup][iIndex]["ID"][iJndex]) == nil then
					TeachHeroSpell(strHero, TTH_TABLE_SPELL[strSpellGroup][iIndex]["ID"][iJndex]);
					if H55_IsThisAIPlayer(iPlayer) ~= 1 then
						ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateSpell.txt";name=TTH_TABLE_SPELL[strSpellGroup][iIndex]["NAME"][iJndex]}, strHero, iPlayer, 5);
						local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
						Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndSpell, iPositionX, iPositionY, iPositionZ);
					end;
					return 1;
				end;
			end;
		end;
	else
		for iIndex = iSpellLevel, 1, -1 do
			for iJndex, objJndix in TTH_TABLE_SPELL[strSpellGroup][iIndex]["ID"] do
				if KnowHeroSpell(strHero, TTH_TABLE_SPELL[strSpellGroup][iIndex]["ID"][iJndex]) == nil then
					TeachHeroSpell(strHero, TTH_TABLE_SPELL[strSpellGroup][iIndex]["ID"][iJndex]);
					if H55_IsThisAIPlayer(iPlayer) ~= 1 then
						ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateSpell.txt";name=TTH_TABLE_SPELL[strSpellGroup][iIndex]["NAME"][iJndex]}, strHero, iPlayer, 5);
						local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
						Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndSpell, iPositionX, iPositionY, iPositionZ);
					end;
					return 1;
				end;
			end;
		end;
	end;
	return 0;
end;
-- iRewardParam: 0, 1
function TTH_Reward_Spell(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local strClass = H55_GetHeroClass(strHero);
	local iHeroLevel = GetHeroLevel(strHero);
	local iCountLearn = 0;
	local iRandomType = random(100) + iRewardParam;
	local strType = "";
	if iRandomType < 30 then
		-- 1级魔法30%几率
		strType = "1";
	elseif iRandomType < 55 then
		-- 2级魔法25%几率
		strType = "2";
	elseif iRandomType < 75 then
		-- 3级魔法20%几率
		strType = "3";
	elseif iRandomType < 85 then
		-- 4级魔法10%几率
		strType = "4";
	elseif iRandomType < 90 then
		-- 5级魔法5%几率
		strType = "5";
	else
		-- 群体魔法5%几率+强效魔法5%几率
		strType = "MASSandEMPOWERED";
	end;
	local iIndex = random(length(TTH_TABLE_SPELL_TYPE[strType]["ID"])) + 1;
	if KnowHeroSpell(strHero, TTH_TABLE_SPELL_TYPE[strType]["ID"][iIndex]) == nil then
		TeachHeroSpell(strHero, TTH_TABLE_SPELL_TYPE[strType]["ID"][iIndex]);
		if H55_IsThisAIPlayer(iPlayer) ~= 1 then
			ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateSpell.txt";name=TTH_TABLE_SPELL_TYPE[strType]["NAME"][iIndex]}, strHero, iPlayer, 5);
			local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
			Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndSpell, iPositionX, iPositionY, iPositionZ);
		end;
	else
		ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateNoMore.txt";name=TTH_TABLE_SPELL_TYPE[strType]["NAME"][iIndex]}, strHero, iPlayer, 5);
		if iRewardParam == 0 then
			iRewardParam = H55_AbsoluteWeek;
		else
			iRewardParam = H55_AbsoluteWeek + 6;
		end;
		TTH_Reward_Exp(strHero, iRewardParam);
	end;
end;
-- iRewardParam: H55_AbsoluteWeek
function TTH_Reward_Artifact(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local iMinLevel = 0;
	local iMaxLevel = 5;
	iMinLevel = iMinLevel + H55_Ceil(iRewardParam / 2);
	if iMinLevel > 6 then
		iMinLevel = 6;
	end;
	iMaxLevel = iMaxLevel + H55_Floor(iRewardParam / 2);
	if iMaxLevel > 10 then
		iMaxLevel = 10;
	end;
	local iRandomLevel = iMinLevel + random(iMaxLevel - iMinLevel + 1);
	GiveArtefact(strHero, H55_Melodia_Artifacts[iRandomLevel][random(length(H55_Melodia_Artifacts[iRandomLevel])) + 1]);
	if H55_IsThisAIPlayer(iPlayer) ~= 1 then
		local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
		Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndArtifact, iPositionX, iPositionY, iPositionZ);
		return nil;
	end;
end;
-- iRewardParam: H55_AbsoluteWeek
function TTH_Reward_Creature(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local listCreatureType = H55_ArmyInfoSimple(strHero);
	local lenCreatureType = 0;
	for iIndexType = 0, 6 do
		if listCreatureType[iIndexType] ~= 0 then
			lenCreatureType = lenCreatureType + 1;
		end;
	end;
	local iRandomCreatureId = listCreatureType[random(lenCreatureType)];
	for iIndexCreatureId = 1, 999 do
		if iRandomCreatureId == TTH_TABLE_NCF_CREATURES[iIndexCreatureId]["ID"] then
			print(iRandomCreatureId)
			local iGrowth = TTH_TABLE_NCF_CREATURES[iIndexCreatureId]["GROWTH"];
			print(iGrowth)
			local strName = TTH_TABLE_NCF_CREATURES[iIndexCreatureId]["NAME"];
			print(strName)
			local iNumber = iGrowth + H55_Round(random(iRewardParam * iGrowth) / 4);
			print(iNumber)
			AddHeroCreatures(strHero, iRandomCreatureId, iNumber);
			if H55_IsThisAIPlayer(iPlayer) ~= 1 then
				ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardCreature/TemplateCreature.txt";num=iNumber,name=strName}, strHero, iPlayer, 5);
				local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
				Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndArmy, iPositionX, iPositionY, iPositionZ);
				return nil;
			end;
		end;
	end;
end;
-- end
-- iRewardParam: H55_AbsoluteWeek
function TTH_Reward_Exp(strHero, iRewardParam)
	local iPlayer = GetObjectOwner(strHero);
	local iExp = iRewardParam * 2000;
	GiveExp(strHero, iExp);
	if H55_IsThisAIPlayer(iPlayer) ~= 1 then
		ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardExp/GetExp.txt";iExp=iExp}, strHero, iPlayer, 5);
		return nil;
	end;
end;
-- end

-- by 牙姐 2018-10-1 0:53:53
-- begin 银行加属性通用方法
function TTH_HERO_STAT_BONUS(iPlayer, strHero, iStatId, iNumber)
	ChangeHeroStat(strHero, iStatId, iNumber);
	if H55_IsThisAIPlayer(iPlayer) ~= 1 then
		local strTemplate = "/Text/Game/Scripts/Stat/Template.txt";
		local strStatName = "";
		if iStatId == STAT_ATTACK then
			strStatName = "/Text/Game/Scripts/Stat/Attack.txt";
		elseif iStatId == STAT_DEFENCE then
			strStatName = "/Text/Game/Scripts/Stat/Defense.txt";
		elseif iStatId == STAT_SPELL_POWER then
			strStatName = "/Text/Game/Scripts/Stat/Spellpower.txt";
		elseif iStatId == STAT_KNOWLEDGE then
			strStatName = "/Text/Game/Scripts/Stat/Knowledge.txt";
		elseif iStatId == STAT_LUCK then
			strStatName = "/Text/Game/Scripts/Stat/Luck.txt";
		elseif iStatId == STAT_MORALE then
			strStatName = "/Text/Game/Scripts/Stat/Morale.txt";
		end;
		sleep(10);
		ShowFlyingSign({strTemplate;name=strStatName,number=iNumber}, strHero, iPlayer, 5);
	end;
end;
-- end

-- by 牙姐 2018-9-27 23:31:27
-- begin 获取英雄职业类型
	-- 1.力量型英雄
	-- 2.平衡型英雄-非墓园
	-- 4.平衡型英雄-墓园
	-- 3.魔法型英雄
	-- 5.野蛮人英雄
function H55_GetHeroClassGroup(strHero)
	local strClass = H55_GetHeroClass(strHero);
	if strClass == "Knight" then
		return 1;
	end;
	if strClass == "Paladin" then
		return 2;
	end;
	if strClass == "Heretic" then
		return 3;
	end;

	if strClass == "Ranger" then
		return 1;
	end;
	if strClass == "Warden" then
		return 2;
	end;
	if strClass == "Druid" then
		return 3;
	end;

	if strClass == "Seer" then
		return 1;
	end;
	if strClass == "Wizard" then
		return 2;
	end;
	if strClass == "Elementalist" then
		return 3;
	end;

	if strClass == "Demonlord" then
		return 1;
	end;
	if strClass == "Gatekeeper" then
		return 2;
	end;
	if strClass == "Sorcerer" then
		return 3;
	end;

	if strClass == "Deathknight" then
		return 1;
	end;
	if strClass == "Reaver" then
		return 4;
	end;
	if strClass == "Necromancer" then
		return 3;
	end;

	if strClass == "Engineer" then
		return 1;
	end;
	if strClass == "Runemage" then
		return 2;
	end;
	if strClass == "Flamekeeper" then
		return 3;
	end;

	if strClass == "Overlord" then
		return 1;
	end;
	if strClass == "Assassin" then
		return 2;
	end;
	if strClass == "Warlock" then
		return 3;
	end;

	if strClass == "Barbarian" then
		return 5;
	end;
end;
-- end

--------------------------------------------------------------------------------------------------------------------------------------------
--AFTERMATH
--------------------------------------------------------------------------------------------------------------------------------------------

function H55_WagonWin01(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_ArtifactAward(hero,1);
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_WagonWin02(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_GoldReward(hero,0.1);
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_WagonWin03(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local rndrestype = H55_WagonChoices[bank][4];
	local rndamount = H55_WagonChoices[bank][5];
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		rndamount = rndamount+1;
	end;
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if rndrestype == 6 then rndamount = rndamount*100 end;
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_GiveResources(player,rndrestype,rndamount,hero);
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_SkeletonWin01(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_ArtifactAward(hero,1);
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_SkeletonWin02(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		H55_GoldReward(hero,0.1);
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_SkeletonWin03(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	local x,y,z = GetObjectPosition(bank);
	if result ~= nil then
		Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndInteract,x,y,z);
		if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt",hero,player,5) end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_AbandonedMineWin(hero,result)
	if result ~= nil then
		local player = GetObjectOwner(hero);
		local mp = H55_MineCurrentPlayerVisit[player];
		Trigger(OBJECT_TOUCH_TRIGGER,mp,nil);
		SetObjectEnabled(mp,not nil);
		MakeHeroInteractWithObject(hero,mp);
	end;
end;

function H55_CryptWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_StoneVaultWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,0,1);
			H55_ResourceReward(hero,4,1);
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1)
			elseif rnd1 == 3 then
				H55_RandomArtifactAward(hero,50,45,5);
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(3)+1;
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,0,2);
			H55_ResourceReward(hero,4,2);
			if rnd2 == 1 then
				H55_PrisonersReward(hero,3,5);
			elseif rnd2 == 2 then
				H55_RandomArtifactAward(hero,20,70,10);
			else
				H55_DocumentAward(hero,1);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_StoneVaultArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_StoneVaultArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_StoneVaultArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_StoneVaultArmies[bank][27] = random(7)+1;
		H55_StoneVaultArmies[bank][28] = random(8)+1;
		H55_StoneVaultArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_MageVaultWin(hero,result)
	local player = GetObjectOwner(hero)
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_SpellAward(hero,2);
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,2,1);
				H55_ResourceReward(hero,5,1);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_RandomArtifactAward(hero,20,60,20);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,3);
			H55_SpellAward(hero,2)
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,60,20);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,2,2);
				H55_ResourceReward(hero,5,2);
			elseif rnd2 == 3 then
				H55_RandomArtifactAward(hero,20,50,30);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_MageVaultArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_MageVaultArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_MageVaultArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_MageVaultArmies[bank][27] = random(7)+1;
		H55_MageVaultArmies[bank][28] = random(8)+1;
		H55_MageVaultArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_DwarvenTreasureWin(hero,result)
	local player = GetObjectOwner(hero)
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,3,1);
			H55_ResourceReward(hero,5,1);
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,1,1);
				H55_RandomArtifactAward(hero,50,45,5);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,3,2);
			H55_ResourceReward(hero,5,2);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,60,20);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,2,2);
				H55_ResourceReward(hero,5,2);
				H55_RandomArtifactAward(hero,50,45,5);
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_DwarvenTreasureArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DwarvenTreasureArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DwarvenTreasureArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DwarvenTreasureArmies[bank][27] = random(7)+1;
		H55_DwarvenTreasureArmies[bank][28] = random(8)+1;
		H55_DwarvenTreasureArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_WitchTempleWin(hero,result)
	local player = GetObjectOwner(hero)
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_ArtifactAward(hero,2);
			if rnd1 == 1 then
				H55_ArtifactAward(hero,1);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,3,1);
				H55_ResourceReward(hero,4,1);
			elseif rnd1 == 3 then
				H55_SpellAward(hero,2);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_RandomArtifactAward(hero,0,80,20);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,70,30,0);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,3,2);
				H55_ResourceReward(hero,4,2);
			elseif rnd2 == 3 then
				H55_SpellAward(hero,2);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_WitchTempleArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_WitchTempleArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_WitchTempleArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_WitchTempleArmies[bank][27] = random(7)+1;
		H55_WitchTempleArmies[bank][28] = random(8)+1;
		H55_WitchTempleArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_ThicketWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,4);
			H55_ArtifactAward(hero,2);
			if rnd1 == 1 then
				H55_ArtifactAward(hero,3);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,5,2);
				H55_ResourceReward(hero,0,3);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,2);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,4);
			H55_ArtifactAward(hero,2);
			if rnd2 == 1 then
				H55_ArtifactAward(hero,3);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,5,3);
				H55_ResourceReward(hero,0,4);
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,2);
			else
				H55_PrisonersReward(hero,6,7);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_ThicketArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_ThicketArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_ThicketArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_ThicketArmies[bank][27] = random(7)+1;
		H55_ThicketArmies[bank][28] = random(8)+1;
		H55_ThicketArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_ForestTowerWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,3);
			H55_ResourceReward(hero,0,3);
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,5,2);
				H55_RandomArtifactAward(hero,50,45,5);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,2);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,4);
			H55_ResourceReward(hero,0,4);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,50,30);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,5,3);
				H55_RandomArtifactAward(hero,50,45,5);
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,2);
			else
				H55_PrisonersReward(hero,5,6);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_ForestTowerArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_ForestTowerArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_ForestTowerArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_ForestTowerArmies[bank][27] = random(7)+1;
		H55_ForestTowerArmies[bank][28] = random(8)+1;
		H55_ForestTowerArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_PyramidWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;
		H55_GoldReward(hero,3);
		H55_SpellAward(hero,2);
		if rnd1 == 1 then
			H55_RandomArtifactAward(hero,0,20,80);
		elseif rnd1 == 2 then
			H55_RandomArtifactAward(hero,20,70,10);
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3);
		elseif rnd1 == 3 then
			H55_RandomArtifactAward(hero,20,70,10);
			H55_DocumentAward(hero,2);
		else
			H55_RandomArtifactAward(hero,20,70,10);
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_PyramidArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_PyramidArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_PyramidArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_PyramidArmies[bank][27] = random(7)+1;
		H55_PyramidArmies[bank][28] = random(8)+1;
		H55_PyramidArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_OrcTunnelWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_PrisonersReward(hero,1,5);
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,50,50,0);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,0,1);
				H55_ResourceReward(hero,2,1);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,2,5);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_PrisonersReward(hero,2,6);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,0,2);
				H55_ResourceReward(hero,2,2);
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,7);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_OrcTunnelArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_OrcTunnelArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_OrcTunnelArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_OrcTunnelArmies[bank][27] = random(7)+1;
		H55_OrcTunnelArmies[bank][28] = random(8)+1;
		H55_OrcTunnelArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_DemonTowerWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;
		H55_GoldReward(hero,3);
		H55_PrisonersReward(hero,6,7);
		if rnd1 == 1 then
			H55_ArtifactAward(hero,2);
			H55_SpellAward(hero,2);
		elseif rnd1 == 2 then
			H55_ArtifactAward(hero,3);
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3);
		elseif rnd1 == 3 then
			H55_ArtifactAward(hero,2);
			H55_DocumentAward(hero,2);
		else
			H55_ArtifactAward(hero,3);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_DemonTowerArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DemonTowerArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DemonTowerArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DemonTowerArmies[bank][27] = random(7)+1;
		H55_DemonTowerArmies[bank][28] = random(8)+1;
		H55_DemonTowerArmies[bank][29] = random(9)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_StockpileWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(2)+1;
			local rnd3 = random(2)+1;
			H55_ResourceReward(hero,0,rnd1);
			H55_ResourceReward(hero,1,rnd1);
			H55_ResourceReward(hero,2,rnd1);
			H55_ResourceReward(hero,3,rnd1);
			H55_ResourceReward(hero,4,rnd1);
			H55_ResourceReward(hero,5,rnd1);
			if rnd3 == 2 then
				H55_RandomArtifactAward(hero,40,50,10);
			end;
		else
			local rnd2 = random(2)+2;
			local rnd4 = random(2)+1;
			H55_ResourceReward(hero,0,rnd2);
			H55_ResourceReward(hero,1,rnd2);
			H55_ResourceReward(hero,2,rnd2);
			H55_ResourceReward(hero,3,rnd2);
			H55_ResourceReward(hero,4,rnd2);
			H55_ResourceReward(hero,5,rnd2);
			if rnd4 == 2 then
				H55_RandomArtifactAward(hero,20,60,20);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,7 do
			H55_StockpileArmies[bank][i] = random(3)+1
		end;
		H55_StockpileArmies[bank][8] = random(5)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_UtopiaWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;
		H55_GoldReward(hero,4);
		H55_ArtifactAward(hero,3);
		H55_ArtifactAward(hero,2);
		if rnd1 == 1 then
			H55_ArtifactAward(hero,1);
		elseif rnd1 == 2 then
			H55_ResourceReward(hero,4,4);
		elseif rnd1 == 3 then
			H55_DocumentAward(hero,2);
		else
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,6 do
			H55_UtopiaArmies[bank][i] = random(3)+1;
		end;
		H55_UtopiaArmies[bank][7] = random(8)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_SunkenTempleWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;
		H55_GoldReward(hero,3);
		H55_ArtifactAward(hero,3);
		if rnd1 == 1 then
			H55_RandomArtifactAward(hero,30,70,0);
			H55_SpellAward(hero,2);
		elseif rnd1 == 2 then
			H55_RandomArtifactAward(hero,30,70,0);
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3);
		elseif rnd1 == 3 then
			H55_RandomArtifactAward(hero,30,70,0);
			H55_DocumentAward(hero,2);
		else
			H55_RandomArtifactAward(hero,30,70,0);
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_SunkenTempleArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_SunkenTempleArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_SunkenTempleArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_SunkenTempleArmies[bank][27] = random(7)+1;
		H55_SunkenTempleArmies[bank][28] = random(8)+1;
		H55_SunkenTempleArmies[bank][29] = random(9)+1;
		H55_SunkenTempleArmies[bank][30] = random(8)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_UnkemptWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_ResourceReward(hero,0,1);
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1);
			elseif rnd1 == 3 then
				H55_RandomArtifactAward(hero,75,25,0);
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(3)+1;
			H55_GoldReward(hero,2);
			H55_ResourceReward(hero,0,2);
			if rnd2 == 1 then
				H55_PrisonersReward(hero,3,5);
			elseif rnd2 == 2 then
				H55_RandomArtifactAward(hero,50,45,5);
			else
				H55_DocumentAward(hero,1);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_UnkemptArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_UnkemptArmies[bank][27] = random(7)+1;
		H55_UnkemptArmies[bank][28] = random(8)+1;
		H55_UnkemptArmies[bank][29] = random(9)+1;
		H55_UnkemptArmies[bank][30] = random(8)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_DemolishWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_RandomArtifactAward(hero,50,50,0);
			if rnd1 == 1 then
				H55_PrisonersReward(hero,2,4);
			elseif rnd1 == 2 then
				H55_SpellAward(hero,1);
			elseif rnd1 == 3 then
				H55_ResourceReward(hero,0,1);
			else
				H55_DocumentAward(hero,1);
			end;
		else
			local rnd2 = random(3)+1;
			H55_GoldReward(hero,2);
			H55_RandomArtifactAward(hero,20,60,20);
			if rnd2 == 1 then
				H55_PrisonersReward(hero,3,5);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,0,2);
			else
				H55_DocumentAward(hero,1);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_DemolishArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DemolishArmies[bank][27] = random(7)+1;
		H55_DemolishArmies[bank][28] = random(8)+1;
		H55_DemolishArmies[bank][29] = random(9)+1;
		H55_DemolishArmies[bank][30] = random(8)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_TowerWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		if day <= 84 then
			local rnd1 = random(4)+1;
			H55_GoldReward(hero,1);
			H55_PrisonersReward(hero,2,5);
			if rnd1 == 1 then
				H55_RandomArtifactAward(hero,20,70,10);
			elseif rnd1 == 2 then
				H55_ResourceReward(hero,0,2);
				H55_ResourceReward(hero,1,2);
			elseif rnd1 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,5);
			end;
		else
			local rnd2 = random(4)+1;
			H55_GoldReward(hero,2);
			H55_PrisonersReward(hero,2,6);
			if rnd2 == 1 then
				H55_RandomArtifactAward(hero,20,65,15);
			elseif rnd2 == 2 then
				H55_ResourceReward(hero,0,2);
				H55_ResourceReward(hero,1,2);
			elseif rnd2 == 3 then
				H55_DocumentAward(hero,1);
			else
				H55_PrisonersReward(hero,3,7);
			end;
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_UnkemptArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_UnkemptArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_UnkemptArmies[bank][27] = random(7)+1;
		H55_UnkemptArmies[bank][28] = random(8)+1;
		H55_UnkemptArmies[bank][29] = random(9)+1;
		H55_UnkemptArmies[bank][30] = random(8)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

function H55_MausoleumWin(hero,result)
	local player = GetObjectOwner(hero);
	local bank = H55_BankCurrentPlayerVisit[player];
	local day = GetDate(DAY);
	if result ~= nil then
		local rnd1 = random(4)+1;
		H55_GoldReward(hero,3);
		H55_RandomArtifactAward(hero,0,20,80);
		if rnd1 == 1 then
			H55_RandomArtifactAward(hero,50,50,0);
			H55_SpellAward(hero,2);
		elseif rnd1 == 2 then
			H55_RandomArtifactAward(hero,30,70,0);
			H55_ResourceReward(hero,3,3);
			H55_ResourceReward(hero,2,3);
		elseif rnd1 == 3 then
			H55_RandomArtifactAward(hero,50,50,0);
			H55_DocumentAward(hero,2);
		else
			H55_RandomArtifactAward(hero,50,50,0);
			H55_PrisonersReward(hero,6,7);
		end;
		H55_BankLastVisit[bank] = day;
		H55_BankPlayerLastVisit[player][bank] = day;
		MarkObjectAsVisited(bank,hero);
		for i = 1,14 do
			H55_DemolishArmies[bank][i] = random(3)+1;
		end;
		for i = 15,20 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-15);
		end;
		for i = 21,26 do
			H55_DemolishArmies[bank][i] = random(2)+1+(i-21);
		end;
		H55_DemolishArmies[bank][27] = random(7)+1;
		H55_DemolishArmies[bank][28] = random(8)+1;
		H55_DemolishArmies[bank][29] = random(9)+1;
		H55_DemolishArmies[bank][30] = random(8)+1;
	else
		MarkObjectAsVisited(bank,hero);
	end;
end;

-------------------------------------------------------------------------------------------------------------------------------------------------
--REWARDS
-------------------------------------------------------------------------------------------------------------------------------------------------

function H55_GoldReward(hero,level)
	local player = GetObjectOwner(hero);
	local rnd = random(3000)+1;
	local amount = (level*2000)+rnd;
	if level == 4 then amount = amount+4000 end;
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(20)+1)/100));
		amount = H55_Round(amount*lucky);
	end;
	H55_GiveResources(player,6,amount,hero);
end;

function H55_ResourceReward(hero,type,level)
	local player = GetObjectOwner(hero);
	local rnd = random(5)+1;
	local amount = (level*3)+rnd;
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(20)+1)/100));
		amount = H55_Round(amount*lucky);
	end;
	H55_GiveResources(player,type,amount,hero);
end;

function H55_ArtifactAward(hero,level)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);
	if H55_Day == 1 then
		local rnda = random(length(H55_MinorArtifacts))+1;
		local rndb = random(length(H55_MajorArtifacts))+1;
		local rndc = random(length(H55_RelicArtifacts))+1;
		if level == 3 then
			GiveArtefact(hero,H55_RelicArtifacts[rndc],0);
		elseif level == 2 then
			GiveArtefact(hero,H55_MajorArtifacts[rndb],0);
		else
			GiveArtefact(hero,H55_MinorArtifacts[rnda],0);
		end;
	else
		local rnd1 = random(length(H55_MinorArtifactsUsed));
		local rnd2 = random(length(H55_MajorArtifactsUsed));
		local rnd3 = random(length(H55_RelicArtifactsUsed));
		if level == 3 then
			GiveArtefact(hero,H55_RelicArtifactsUsed[rnd3],0);
		elseif level == 2 then
			GiveArtefact(hero,H55_MajorArtifactsUsed[rnd2],0);
		else
			GiveArtefact(hero,H55_MinorArtifactsUsed[rnd1],0);
		end;
	end;
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
	if H55_IsThisAIPlayer(player) ~= 1 then
		ShowFlyingSign("/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,5);
		sleep(8);
	end;
end;

function H55_RandomArtifactAward(hero,minorchance,majorchance,relicchance)
	local player = GetObjectOwner(hero);
	local choice = random(100)+1;
	local x,y,z = GetObjectPosition(hero);
	if H55_Day == 1 then
		local rnda = random(length(H55_MinorArtifacts))+1;
		local rndb = random(length(H55_MajorArtifacts))+1;
		local rndc = random(length(H55_RelicArtifacts))+1;
		if choice <= minorchance then
			GiveArtefact(hero,H55_MinorArtifacts[rnda],0);
		elseif choice > minorchance and choice <= (majorchance+minorchance) then
			GiveArtefact(hero,H55_MajorArtifacts[rndb],0);
		else
			GiveArtefact(hero,H55_RelicArtifacts[rndc],0);
		end;
	else
		local rnd1 = random(length(H55_MinorArtifactsUsed));
		local rnd2 = random(length(H55_MajorArtifactsUsed));
		local rnd3 = random(length(H55_RelicArtifactsUsed));
		if choice <= minorchance then
			GiveArtefact(hero,H55_MinorArtifactsUsed[rnd1],0);
		elseif choice > minorchance and choice <= (majorchance+minorchance) then
			GiveArtefact(hero,H55_MajorArtifactsUsed[rnd2],0);
		else
			GiveArtefact(hero,H55_RelicArtifactsUsed[rnd3],0);
		end;
	end;
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
	if H55_IsThisAIPlayer(player) ~= 1 then
		ShowFlyingSign("/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,5);
		sleep(8);
	end;
end;

function H55_GraalAward(hero,result)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);
	GiveArtefact(hero,53);
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
	if H55_IsThisAIPlayer(player) ~= 1 then
		ShowFlyingSign("/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,5);
		sleep(8);
	end;
end;

function H55_RandomUltimateAward(hero)
	local player = GetObjectOwner(hero);
	local x,y,z = GetObjectPosition(hero);
	if H55_Day == 1 then
		local rnda = random(length(H55_UltimateArtifacts))+1;
		GiveArtefact(hero,H55_UltimateArtifacts[rnda],0);
	else
		local rnd1 = random(length(H55_UltimateArtifactsUsed));
		GiveArtefact(hero,H55_UltimateArtifactsUsed[rnd1],0);
	end;
	Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
	if H55_IsThisAIPlayer(player) ~= 1 then
		ShowFlyingSign("/Text/Game/Scripts/Banks/Giveartifact.txt",hero,player,5);
		sleep(8);
	end;
end;

function H55_PrisonersReward(hero,multiplier,maxtier)
	local player = GetObjectOwner(hero);
	local tier = random(maxtier)+1;
	local faction = H55_GetHeroRaceNum(hero);
	local amount = random(4)+(multiplier*H55_CreaturesGrowth[faction][tier]);
	-- local amount = 1;
	-- if faction == 2 or faction == 6 then
		-- amount = random(4)+(multiplier*H55_PrisonRewardAmountElves[tier]);
	-- else
		-- amount = random(4)+(multiplier*H55_PrisonRewardAmount[tier]);
	-- end;
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(20)+1)/100));
		amount = H55_Round(amount*lucky);
	end;
	local type = H55_ArmyInfoSimple(hero);
	local released = 0;
	local x,y,z = GetObjectPosition(hero);
	for i = 0,6 do
		if type[i] == H55_Creatures[faction][tier][2] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
			if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Prisoners.txt";num=amount,level=tier},hero,player,7) end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
		if type[i] == H55_Creatures[faction][tier][3] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
			if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Prisoners.txt";num=amount,level=tier},hero,player,7) end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
		if type[i] == H55_Creatures[faction][tier][1] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
			if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Prisoners.txt";num=amount,level=tier},hero,player,7) end;
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
	end;
	if released == 0 then
		for i = 0,6 do
			if (type[i] == 0 or type[i] == nil) and released == 0 then
				AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Prisoners.txt";num=amount,level=tier},hero,player,7) end;
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
				released = 1;
			end;
		end;
	end;
	if H55_IsThisAIPlayer(player) ~= 1 then
		sleep(8);
	end;
end;

function H55_StartCreatureBonus(player,hero,multiplier,maxtier)
	-- local tier = random(maxtier-1)+2;
	local tier = 1;
	if H55_StartCreatureBonusTier <= 7 and H55_StartCreatureBonusTier >= 1 then
		tier = H55_StartCreatureBonusTier;
	end
	if H55_StartCreatureBonusTier == 6 then
		SetPlayerResource (player,6,8000);
	end;
	if H55_StartCreatureBonusTier == 7 then
		SetPlayerResource (player,6,5000);
	end;
	local faction = H55_GetHeroRaceNum(hero);
	--local amount = 1;
	local amount = random(2)+(multiplier*H55_CreaturesGrowth[faction][tier]);
	-- if faction == 2 or faction == 6 then
		-- amount = random(2)+(multiplier*H55_CreatureBonusAmountElves[tier]);
	-- elseif faction == 3 or faction == 4 or faction == 5 then
		-- amount = random(2)+(multiplier*H55_CreatureBonusAmountDeath[tier]);
	-- else
		-- amount = random(2)+(multiplier*H55_CreatureBonusAmount[tier]);
	-- end;
	--if tier == 4 then amount = amount-1 end;
	if H55_StartCreatureBonusTier <= 7 and H55_StartCreatureBonusTier >= 5 then
		amount = 1;
	end
	if H55_StartCreatureBonusTier == 4 then
		amount = 3;
	end
	local type = H55_ArmyInfoSimple(hero);
	local released = 0;
	for i = 0,6 do
		if type[i] == H55_Creatures[faction][tier][2] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
			released = 1;
		end;
		if type[i] == H55_Creatures[faction][tier][3] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
			released = 1;
		end;
		if type[i] == H55_Creatures[faction][tier][1] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
			released = 1;
		end;
	end;
	if released == 0 then
		for i = 0,6 do
			if (type[i] == 0 or type[i] == nil) and released == 0 then
				AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				released = 1;
			end;
		end;
	end;
end;

function H55_SummonTempleReward(hero,multiplier,maxtier)
	local player = GetObjectOwner(hero);
	local tier = maxtier;
	local faction = H55_GetHeroRaceNum(hero);
	local amount = random(4)+(multiplier*H55_CreaturesGrowth[faction][tier]);
	-- local amount = 1;
	-- if faction == 2 or faction == 6 then
		-- amount = random(4)+(multiplier*H55_PrisonRewardAmountElves[tier]);
	-- else
		-- amount = random(4)+(multiplier*H55_PrisonRewardAmount[tier]);
	-- end;
	if HasHeroSkill(hero,PERK_LUCKY_STRIKE) then
		local lucky = 1+(0.1+((random(10)+1)/100));
		amount = H55_Round(amount*lucky);
	end;
	local type = H55_ArmyInfoSimple(hero);
	local released = 0;
	local x,y,z = GetObjectPosition(hero);
	for i = 0,6 do
		if type[i] == H55_Creatures[faction][tier][2] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
			ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
		if type[i] == H55_Creatures[faction][tier][3] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
			ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
		if type[i] == H55_Creatures[faction][tier][1] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
			ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
	end;
	if released == 0 then
		for i = 0,6 do
			if (type[i] == 0 or type[i] == nil) and released == 0 then
				AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
				released = 1;
			end;
		end;
	end;
end;

function H55_SpellAward(hero,level)
	local player = GetObjectOwner(hero);
	local rnd5 = random(9)+1;
	local rnd4 = random(10)+1;
	local rnd3 = random(11)+1;
	local rnd2 = random(9)+1;
	local rnd1 = random(9)+1;
	local teached = 0;
	local x,y,z = GetObjectPosition(hero);
	if level == 2 then
		if contains(H55_Barbarians,hero) ~= nil then
			GiveArtefact(hero,ARTIFACT_SCROLL_OF_SPELL_X);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
		else
			if KnowHeroSpell(hero,H55_SpellsL5[rnd5]) == nil then
				if contains(H55_LightSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL5[rnd5]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DarkSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL5[rnd5]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DestructiveSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL5[rnd5]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_SummoningSpells,H55_SpellsL5[rnd5]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL5[rnd5]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL5[rnd5]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;
			elseif KnowHeroSpell(hero,H55_SpellsL4[rnd4]) == nil then
				if contains(H55_LightSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd4]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DarkSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd4]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DestructiveSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd4]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_SummoningSpells,H55_SpellsL4[rnd4]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd4]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd4]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;
			elseif KnowHeroSpell(hero,H55_SpellsL4[rnd1]) == nil then
				if contains(H55_LightSpells,H55_SpellsL4[rnd1]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd1]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd1]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DarkSpells,H55_SpellsL4[rnd1]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd1]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd1]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DestructiveSpells,H55_SpellsL4[rnd1]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd1]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd1]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_SummoningSpells,H55_SpellsL4[rnd1]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL4[rnd1]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL4[rnd1]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;
			elseif KnowHeroSpell(hero,H55_SpellsL3[rnd3]) == nil then
				if contains(H55_LightSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd3]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DarkSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd3]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DestructiveSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd3]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_SummoningSpells,H55_SpellsL3[rnd3]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd3]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;
			elseif KnowHeroSpell(hero,H55_SpellsL3[rnd2]) == nil then
				if contains(H55_LightSpells,H55_SpellsL3[rnd2]) then
					if HasHeroSkill(hero,SKILL_LIGHT_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd2]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd2]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DarkSpells,H55_SpellsL3[rnd2]) then
					if HasHeroSkill(hero,SKILL_DARK_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd2]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd2]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_DestructiveSpells,H55_SpellsL3[rnd2]) then
					if HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd2]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd2]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				elseif contains(H55_SummoningSpells,H55_SpellsL3[rnd2]) then
					if HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) then
						TeachHeroSpell(hero,H55_SpellsL3[rnd2]);
						if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd2]},hero,player,7) end;
						Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
						teached = 1;
					end;
				end;
			end;
			if teached == 0 then
				GiveArtefact(hero,ARTIFACT_SCROLL_OF_SPELL_X);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
			end;
			if H55_IsThisAIPlayer(player) ~= 1 then
				sleep(8);
			end;
		end;
	else
		if contains(H55_Barbarians,hero) ~= nil then
			GiveArtefact(hero,ARTIFACT_WAND_OF_X);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
		else
			if HasHeroSkill(hero,PERK_WISDOM) then
				if KnowHeroSpell(hero,H55_SpellsL3[rnd3]) == nil then
					TeachHeroSpell(hero,H55_SpellsL3[rnd3]);
					if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL3[rnd3]},hero,player,7) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
					teached = 1;
				end;
			end;
			if teached == 0 then
				if KnowHeroSpell(hero,H55_SpellsL2[rnd2]) == nil then
					TeachHeroSpell(hero,H55_SpellsL2[rnd2]);
					if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL2[rnd2]},hero,player,7) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
					teached = 1;
				elseif KnowHeroSpell(hero,H55_SpellsL2[rnd4]) == nil then
					TeachHeroSpell(hero,H55_SpellsL2[rnd4]);
					if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL2[rnd4]},hero,player,7) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
					teached = 1;
				elseif KnowHeroSpell(hero,H55_SpellsL1[rnd1]) == nil then
					TeachHeroSpell(hero,H55_SpellsL1[rnd1]);
					if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL1[rnd1]},hero,player,7) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
					teached = 1;
				elseif KnowHeroSpell(hero,H55_SpellsL1[rnd3]) == nil then
					TeachHeroSpell(hero,H55_SpellsL1[rnd3]);
					if H55_IsThisAIPlayer(player) ~= 1 then ShowFlyingSign({"/Text/Game/Scripts/Banks/Givespell.txt";name=H55_SpellsTextL1[rnd3]},hero,player,7) end;
					Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndSpell,x,y,z);
					teached = 1;
				end;
			end;
			if teached == 0 then
				GiveArtefact(hero,ARTIFACT_WAND_OF_X);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArtifact,x,y,z);
			end;
			if H55_IsThisAIPlayer(player) ~= 1 then
				sleep(8);
			end;
		end;
	end;
end;

function H55_DocumentAward(hero,level)
	local player = GetObjectOwner(hero);
	local rnd = random(4)+1;
	if level == 2 then
		ChangeHeroStat(hero,H55_StatAwards[rnd],2);
		if H55_IsThisAIPlayer(player) ~= 1 then
			ShowFlyingSign(H55_BankDocumentsL2[rnd],hero,player,7);
			sleep(8);
			ShowFlyingSign({H55_BankStatText[rnd];param=2},hero,player,7);
			sleep(4);
		end;
	else
		ChangeHeroStat(hero,H55_StatAwards[rnd],1);
		if H55_IsThisAIPlayer(player) ~= 1 then
			ShowFlyingSign(H55_BankDocumentsL1[rnd],hero,player,7);
			sleep(8);
			ShowFlyingSign({H55_BankStatText[rnd];param=1},hero,player,7);
			sleep(4);
		end;
	end;
end;

function H55_SeerAward(hero,level,skill)
	local player = GetObjectOwner(hero);
	ChangeHeroStat(hero,H55_StatAwards[skill],level);
	if H55_IsThisAIPlayer(player) ~= 1 then
		sleep(10);
		ShowFlyingSign({H55_BankStatText[skill];param=level},hero,player,7);
	end;
end;

-- by 牙姐 2021-03-07 05:36:50
-- begin 【杉提瑞圆盘】试炼相关
	TTH_Arr_Shantiri = GetObjectNamesByType("BUILDING_EYE_OF_MAGI");
	-- 玩家是否访问过 【杉提瑞圆盘】
	TTH_Map_HasPlayerVisitedShantiri = {};
	-- 英雄是否已完成 【杉提瑞圆盘】 的试炼
	TTH_Map_ShantiriTrial4HeroIsComplete = {};
	-- 英雄试炼的主技能，子技能，难度选择
	TTH_Map_ShantiriTrial4HeroRecord = {};

	-- 【杉提瑞圆盘】AI
	function TTH_Trigger_VisitShantiri_AI(strHero, objShantiri)
		Trigger(OBJECT_TOUCH_TRIGGER, objShantiri, nil);
		SetObjectEnabled(objShantiri, not nil);
		MakeHeroInteractWithObject(strHero, objShantiri);
		Trigger(OBJECT_TOUCH_TRIGGER, objShantiri, "TTH_Trigger_VisitShantiri");
		SetObjectEnabled(objShantiri, nil);
	end;
	-- 【杉提瑞圆盘】玩家
	function TTH_Trigger_VisitShantiri(strHero, objShantiri)
		local iPlayer = GetObjectOwner(strHero);
		-- 杉提瑞之触
		H55_GrailTouch(strHero, objShantiri);

		-- 第一次访问显示地图上所有【杉提瑞圆盘】
		if TTH_Map_HasPlayerVisitedShantiri[iPlayer] == nil then
			TTH_Map_HasPlayerVisitedShantiri[iPlayer] = 1;
			for iIndexShantiri, objShantiri in TTH_Arr_Shantiri do
				local iX, iY, iZ = GetObjectPosition(objShantiri);
				OpenCircleFog(iX, iY, iZ, 5, iPlayer);
			end;
		end;

		-- 标记【杉提瑞圆盘】已被该英雄访问
		MarkObjectAsVisited(objShantiri, strHero);
		-- AI分支
		if H55_IsThisAIPlayer(iPlayer) == 1 then
			TTH_Trigger_VisitShantiri_AI(strHero, objShantiri);
		-- 玩家分支
		else
			-- 若英雄未完成试炼，则询问是否进行试炼
			if TTH_Map_ShantiriTrial4HeroIsComplete[strHero] == nil then
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/Shantiri/QuestionChallengeInfo4Trial.txt", "TTH_Func_Shantiri_ReceiveChallenge('"..strHero.."')", "TTH_Func_Shantiri_RefuseChallenge('"..strHero.."')");
			-- 否则提示，英雄已完成试炼
			else
				MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/Shantiri/MessageTrialHasCompleted.txt");
			end;
		end;
	end;
	-- 英雄拒绝参加试炼
	function TTH_Func_Shantiri_RefuseChallenge(strHero)
		print(strHero.." refuse the challenge of shantiri");
	end;
	-- 英雄接受试炼挑战
	function TTH_Func_Shantiri_ReceiveChallenge(strHero)
		print(strHero.." receive the challenge of shantiri");
		-- 接受试炼挑战，清除记录数据，并记录英雄等级
		TTH_Map_ShantiriTrial4HeroRecord[strHero] = {};
		TTH_Map_ShantiriTrial4HeroRecord[strHero]["HeroLevel"] = GetHeroLevel(strHero);
		-- 选择主技能进行试炼
		TTH_Func_Shantiri_ChooseMastery(strHero, 1);
	end;
	-- 选择试炼主技能
	function TTH_Func_Shantiri_ChooseMastery(strHero, iMastery)
		local iPlayer = GetObjectOwner(strHero);
		local TTH_TABLE_HeroTrialSkill_Hero = TTH_Func_Shantiri_GetHeroTrialSkill(strHero);
		local strMastery1 = TTH_TABLE_HeroTrialSkill_Hero[1]["MasteryText"];
		local strMastery2 = TTH_TABLE_HeroTrialSkill_Hero[2]["MasteryText"];
		local strMastery3 = TTH_TABLE_HeroTrialSkill_Hero[3]["MasteryText"];
		local strMastery4 = TTH_TABLE_HeroTrialSkill_Hero[4]["MasteryText"];
		local strMastery5 = TTH_TABLE_HeroTrialSkill_Hero[5]["MasteryText"];
		local strMastery6 = TTH_TABLE_HeroTrialSkill_Hero[6]["MasteryText"];
		local strMastery7 = TTH_TABLE_HeroTrialSkill_Hero[7]["MasteryText"];
		local strMastery8 = TTH_TABLE_HeroTrialSkill_Hero[8]["MasteryText"];
		local strMastery9 = TTH_TABLE_HeroTrialSkill_Hero[9]["MasteryText"];
		local strMastery10 = TTH_TABLE_HeroTrialSkill_Hero[10]["MasteryText"];
		local strMastery11 = TTH_TABLE_HeroTrialSkill_Hero[11]["MasteryText"];
		local strMastery12 = TTH_TABLE_HeroTrialSkill_Hero[12]["MasteryText"];
		local strMastery13 = TTH_TABLE_HeroTrialSkill_Hero[13]["MasteryText"];
		if iMastery + 0 <= 12 then
			local iMasteryNext = iMastery + 1;
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/Shantiri/QuestionChooseMastery"..iMastery..".txt";strMastery1=strMastery1,strMastery2=strMastery2,strMastery3=strMastery3,strMastery4=strMastery4,strMastery5=strMastery5,strMastery6=strMastery6,strMastery7=strMastery7,strMastery8=strMastery8,strMastery9=strMastery9,strMastery10=strMastery10,strMastery11=strMastery11,strMastery12=strMastery12,strMastery13=strMastery13}, "TTH_Func_Shantiri_ChoosePerk('"..strHero.."','"..iMastery.."','1')", "TTH_Func_Shantiri_ChooseMastery('"..strHero.."','"..iMasteryNext.."')");
		else
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/Shantiri/QuestionChooseMastery"..iMastery..".txt";strMastery1=strMastery1,strMastery2=strMastery2,strMastery3=strMastery3,strMastery4=strMastery4,strMastery5=strMastery5,strMastery6=strMastery6,strMastery7=strMastery7,strMastery8=strMastery8,strMastery9=strMastery9,strMastery10=strMastery10,strMastery11=strMastery11,strMastery12=strMastery12,strMastery13=strMastery13}, "TTH_Func_Shantiri_ChoosePerk('"..strHero.."','"..iMastery.."','1')", "TTH_Func_Shantiri_Giveup('"..strHero.."')");
		end;
	end;
	-- 选择试炼子技能
	function TTH_Func_Shantiri_ChoosePerk(strHero, iMastery, iPerk)
		local iPlayer = GetObjectOwner(strHero);
		local TTH_TABLE_HeroTrialSkill_Hero = TTH_Func_Shantiri_GetHeroTrialSkill(strHero);
		local strPerk1 = TTH_TABLE_HeroTrialSkill_Hero[iMastery + 0]["Perk"][1]["PerkText"];
		local strPerk2 = TTH_TABLE_HeroTrialSkill_Hero[iMastery + 0]["Perk"][2]["PerkText"];
		local strPerk3 = TTH_TABLE_HeroTrialSkill_Hero[iMastery + 0]["Perk"][3]["PerkText"];
		if iPerk + 0 <= 2 then
			local iPerkNext = iPerk + 1;
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/Shantiri/QuestionChoosePerk"..iPerk..".txt";strPerk1=strPerk1,strPerk2=strPerk2,strPerk3=strPerk3}, "TTH_Func_Shantiri_ChooseDifficult('"..strHero.."','"..iMastery.."','"..iPerk.."',1)", "TTH_Func_Shantiri_ChoosePerk('"..strHero.."','"..iMastery.."','"..iPerkNext.."')");
		else
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/Shantiri/QuestionChoosePerk"..iPerk..".txt";strPerk1=strPerk1,strPerk2=strPerk2,strPerk3=strPerk3}, "TTH_Func_Shantiri_ChooseDifficult('"..strHero.."','"..iMastery.."','"..iPerk.."',1)", "TTH_Func_Shantiri_Giveup('"..strHero.."')");
		end;
	end;
	-- 选择试炼难度
	function TTH_Func_Shantiri_ChooseDifficult(strHero, iMastery, iPerk, iDifficult)
		local iPlayer = GetObjectOwner(strHero);
		if iDifficult + 0 <= 2 then
			local iDifficultNext = iDifficult + 1;
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/Shantiri/QuestionChooseDifficult"..iDifficult..".txt", "TTH_Func_Shantiri_CheckChallenge('"..strHero.."','"..iMastery.."','"..iPerk.."','"..iDifficult.."')", "TTH_Func_Shantiri_ChooseDifficult('"..strHero.."','"..iMastery.."','"..iPerk.."','"..iDifficultNext.."')");
		else
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/Shantiri/QuestionChooseDifficult"..iDifficult..".txt", "TTH_Func_Shantiri_CheckChallenge('"..strHero.."','"..iMastery.."','"..iPerk.."','"..iDifficult.."')", "TTH_Func_Shantiri_Giveup('"..strHero.."')");
		end;
	end;
	-- 英雄放弃试炼
	function TTH_Func_Shantiri_Giveup(strHero)
		local iPlayer = GetObjectOwner(strHero);
		TTH_Map_ShantiriTrial4HeroRecord[strHero] = nil;
		print(strHero.." giveup trial");
		MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/Shantiri/MessageTrialGiveup.txt");
	end;
	-- 试炼前确认试炼主技能，子技能，难度选择
	function TTH_Func_Shantiri_CheckChallenge(strHero, iMastery, iPerk, iDifficult)
		local iPlayer = GetObjectOwner(strHero);
		print(strHero.." choose mastery: "..iMastery);
		print(strHero.." choose perk: "..iPerk);
		print(strHero.." choose difficult: "..iDifficult);

		-- 开始试炼战斗前，记录试炼数据
		TTH_Map_ShantiriTrial4HeroRecord[strHero]["Mastery"] = iMastery + 0;
		TTH_Map_ShantiriTrial4HeroRecord[strHero]["Perk"] = iPerk + 0;
		TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] = iDifficult + 0;

		local TTH_TABLE_HeroTrialSkill_Hero = TTH_Func_Shantiri_GetHeroTrialSkill(strHero);
		local strMastery = TTH_TABLE_HeroTrialSkill_Hero[iMastery + 0]["MasteryText"];
		local strPerk = TTH_TABLE_HeroTrialSkill_Hero[iMastery + 0]["Perk"][iPerk + 0]["PerkText"];
		local strDifficult = "/Text/Game/Scripts/Shantiri/EnumDifficult"..iDifficult..".txt";

		QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/Shantiri/QuestionCheckChallenge.txt";strMastery=strMastery,strPerk=strPerk,strDifficult=strDifficult}, "TTH_Func_Shantiri_Challenge4Trial8PowerCheck('"..strHero.."')", "TTH_Func_Shantiri_Giveup('"..strHero.."')");
	end;
	-- 英雄战力计算
	function TTH_Func_CalcPower(strHero)
		local arrType, arrCount = H55_ArmyInfo(strHero)
		local iPower = 0;
		for i = 0, 6 do
			if arrType[i] ~= 0 then
				iPower = iPower + TTH_TABLE_NCF_CREATURES[arrType[i]]["POWER"] * arrCount[i];
			end;
		end;
		return iPower;
	end;
	-- 战力检测
	function TTH_Func_Shantiri_Challenge4Trial8PowerCheck(strHero)
		local iPower = TTH_Func_CalcPower(strHero);
		local iPowerPerSlot = iPower * TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] * TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] * sqrt(TTH_Map_ShantiriTrial4HeroRecord[strHero]["HeroLevel"]) / 7;

		local strCallbackWin = "TTH_Func_Shantiri_Challenge4Trial8MirrorFight";
		local strCombatLink = "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)";

		local listCreatureId = {};
		local listCreatureCount = {};

		local TTH_TABLE_HeroTrialSkill_Hero = TTH_Func_Shantiri_GetHeroTrialSkill(strHero);
		local arrMonster = TTH_TABLE_HeroTrialSkill_Hero[TTH_Map_ShantiriTrial4HeroRecord[strHero]["Mastery"]]["Perk"][TTH_Map_ShantiriTrial4HeroRecord[strHero]["Perk"]]["Monster"];

		for i = 1, 7 do
			if arrMonster[i] ~= 0 then
				listCreatureId[i] = arrMonster[i];
				listCreatureCount[i] = H55_Ceil(iPowerPerSlot / TTH_TABLE_NCF_CREATURES[arrMonster[i]]["POWER"]);
			else
				local iRandomCreatureId = TTH_TABLE_HeroTrial_Monster[random(130) + 1];
				listCreatureId[i] = iRandomCreatureId;
				listCreatureCount[i] = H55_Ceil(iPowerPerSlot / TTH_TABLE_NCF_CREATURES[iRandomCreatureId]["POWER"]);
			end;
		end;

		StartCombat(strHero, nil, 7
			, listCreatureId[1], listCreatureCount[1]
			, listCreatureId[2], listCreatureCount[2]
			, listCreatureId[3], listCreatureCount[3]
			, listCreatureId[4], listCreatureCount[4]
			, listCreatureId[5], listCreatureCount[5]
			, listCreatureId[6], listCreatureCount[6]
			, listCreatureId[7], listCreatureCount[7]
			, nil, strCallbackWin, strCombatLink, 1);
	end;
	-- 镜像之战
	function TTH_Func_Shantiri_Challenge4Trial8MirrorFight(strHero, objResult)
		if objResult ~= nil then
			local arrCreatureType, arrCreatureCount = H55_ArmyInfo(strHero);
			local iLenArrCreatureType = 0;
			for i = 0, length(arrCreatureType) - 1 do
				print('arrCreatureType[i]: '..arrCreatureType[i]);
				print('arrCreatureCount[i]: '..arrCreatureCount[i]);
				if arrCreatureType[i] == 0 then
					iLenArrCreatureType = i;
					break;
				end;
			end;
			print("iLenArrCreatureType: "..iLenArrCreatureType);
			local strEnemyHero = nil;
			-- local arrCurrentPlayerHeroes = GetPlayerHeroes(GetCurrentPlayer());
			-- for iIndexHero, objHero in arrCurrentPlayerHeroes do
			-- 	if objHero ~= strHero then
			-- 		strEnemyHero = objHero;
			-- 		break;
			-- 	end;
			-- end;
			local iMultiplier = 2 * TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] * TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"];
			local strCallbackWin = "TTH_Func_Shantiri_Challenge4Trial_Win";
			if iLenArrCreatureType == 1 then
				StartCombat(strHero, strEnemyHero, 1
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 2 then
				StartCombat(strHero, strEnemyHero, 2
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, arrCreatureType[1], arrCreatureCount[1] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 3 then
				StartCombat(strHero, strEnemyHero, 3
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, arrCreatureType[1], arrCreatureCount[1] * iMultiplier
					, arrCreatureType[2], arrCreatureCount[2] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 4 then
				StartCombat(strHero, strEnemyHero, 4
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, arrCreatureType[1], arrCreatureCount[1] * iMultiplier
					, arrCreatureType[2], arrCreatureCount[2] * iMultiplier
					, arrCreatureType[3], arrCreatureCount[3] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 5 then
				StartCombat(strHero, strEnemyHero, 5
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, arrCreatureType[1], arrCreatureCount[1] * iMultiplier
					, arrCreatureType[2], arrCreatureCount[2] * iMultiplier
					, arrCreatureType[3], arrCreatureCount[3] * iMultiplier
					, arrCreatureType[4], arrCreatureCount[4] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 6 then
				StartCombat(strHero, strEnemyHero, 6
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, arrCreatureType[1], arrCreatureCount[1] * iMultiplier
					, arrCreatureType[2], arrCreatureCount[2] * iMultiplier
					, arrCreatureType[3], arrCreatureCount[3] * iMultiplier
					, arrCreatureType[4], arrCreatureCount[4] * iMultiplier
					, arrCreatureType[5], arrCreatureCount[5] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			else
				StartCombat(strHero, strEnemyHero, 7
					, arrCreatureType[0], arrCreatureCount[0] * iMultiplier
					, arrCreatureType[1], arrCreatureCount[1] * iMultiplier
					, arrCreatureType[2], arrCreatureCount[2] * iMultiplier
					, arrCreatureType[3], arrCreatureCount[3] * iMultiplier
					, arrCreatureType[4], arrCreatureCount[4] * iMultiplier
					, arrCreatureType[5], arrCreatureCount[5] * iMultiplier
					, arrCreatureType[6], arrCreatureCount[6] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			end;
		end;
	end;
	-- 试炼成功 并 结算
	function TTH_Func_Shantiri_Challenge4Trial_Win(strHero, objResult)
		local iPlayer = GetObjectOwner(strHero);
		if objResult ~= nil then
			-- 标记英雄已完成试炼
			TTH_Map_ShantiriTrial4HeroIsComplete[strHero] = 1;

			local strHeroTrialType = TTH_GetHeroTrialType(strHero);
			local TTH_TABLE_HeroTrialSkill_Hero = nil;
			if strHeroTrialType == "Might" then
				TTH_TABLE_HeroTrialSkill_Hero = TTH_TABLE_HeroTrialSkill_HeroMight;
			elseif strHeroTrialType == "Magic" then
				TTH_TABLE_HeroTrialSkill_Hero = TTH_TABLE_HeroTrialSkill_HeroMagic;
			elseif strHeroTrialType == "Barbarian" then
				TTH_TABLE_HeroTrialSkill_Hero = TTH_TABLE_HeroTrialSkill_HeroBarbarian;
			end;

			-- 若英雄等级<=10级
			if TTH_Map_ShantiriTrial4HeroRecord[strHero]["HeroLevel"] <= 10 then
				-- 获取当前英雄经验
				local iHeroCurrentExp = GetHeroStat(strHero, STAT_EXPERIENCE);
				-- 英雄等级降为1
				TakeAwayHeroExp(strHero, iHeroCurrentExp);
				-- 根据试炼难度奖励 2/4/6点全属性
				local iStat = 0;
				if TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] == 1 then
					iStat = 2;
				elseif TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] == 2 then
					iStat = 4;
				elseif TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] == 3 then
					iStat = 6;
				end;
				ChangeHeroStat(strHero, STAT_ATTACK, iStat);
				ChangeHeroStat(strHero, STAT_DEFENCE, iStat);
				ChangeHeroStat(strHero, STAT_SPELL_POWER, iStat);
				ChangeHeroStat(strHero, STAT_KNOWLEDGE, iStat);
				-- 奖励 1点士气1点幸运
				ChangeHeroStat(strHero, STAT_MORALE, 1);
				ChangeHeroStat(strHero, STAT_LUCK, 1);
				-- 按难度奖励 所选主技能等级
				local iDifficult = TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"];
				local iMastery = TTH_Map_ShantiriTrial4HeroRecord[strHero]["Mastery"];
				local objMasteryId = TTH_TABLE_HeroTrialSkill_Hero[iMastery]["MasteryId"];
				for i = 1, iDifficult do
					GiveHeroSkill(strHero, objMasteryId);
					print("GiveHeroMastery: "..objMasteryId);
					sleep(1);
				end;
				-- 按难度奖励 所选子技能
				local iPerk = TTH_Map_ShantiriTrial4HeroRecord[strHero]["Perk"];
				local objPerkId = TTH_TABLE_HeroTrialSkill_Hero[iMastery]["Perk"][iPerk]["PerkId"];
				GiveHeroSkill(strHero, objPerkId);
				print("GiveHeroPerk: "..objPerkId);
				sleep(1);
				-- 提升英雄等级到10级
				ChangeHeroStat(strHero, STAT_EXPERIENCE, 14700);
			-- 若英雄等级>10级
			else
				-- 根据试炼难度奖励 1/2/3点全属性
				local iStat = 0;
				if TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] == 1 then
					iStat = 1;
				elseif TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] == 2 then
					iStat = 2;
				elseif TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] == 3 then
					iStat = 3;
				end;
				ChangeHeroStat(strHero, STAT_ATTACK, iStat);
				ChangeHeroStat(strHero, STAT_DEFENCE, iStat);
				ChangeHeroStat(strHero, STAT_SPELL_POWER, iStat);
				ChangeHeroStat(strHero, STAT_KNOWLEDGE, iStat);
				-- 奖励 所选主技能
				local iMastery = TTH_Map_ShantiriTrial4HeroRecord[strHero]["Mastery"];
				local objMasteryId = TTH_TABLE_HeroTrialSkill_Hero[iMastery]["MasteryId"];
				GiveHeroSkill(strHero, objMasteryId);
				print("GiveHeroMastery: "..objMasteryId);
				sleep(1);
				-- 奖励 所选子技能
				local iPerk = TTH_Map_ShantiriTrial4HeroRecord[strHero]["Perk"];
				local objPerkId = TTH_TABLE_HeroTrialSkill_Hero[iMastery]["Perk"][iPerk]["PerkId"];
				GiveHeroSkill(strHero, objPerkId);
				print("GiveHeroPerk: "..objPerkId);
				sleep(1);
				-- 按难度奖励 英雄等级
				local iDifficult = TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"];
				for i = 1, iDifficult do
					LevelUpHero(strHero);
					print("LevelUpHero: "..strHero);
					sleep(1);
				end;
			end;
		end;
		-- 试炼挑战结束，清除记录数据
		TTH_Map_ShantiriTrial4HeroRecord[strHero] = {};
	end;
	-- 获取英雄对应的试炼集合
	function TTH_Func_Shantiri_GetHeroTrialSkill(strHero)
		local strHeroTrialType = TTH_GetHeroTrialType(strHero);
		local TTH_TABLE_HeroTrialSkill_Hero = nil;
		if strHeroTrialType == "Might" then
			TTH_TABLE_HeroTrialSkill_Hero = TTH_TABLE_HeroTrialSkill_HeroMight;
		elseif strHeroTrialType == "Magic" then
			TTH_TABLE_HeroTrialSkill_Hero = TTH_TABLE_HeroTrialSkill_HeroMagic;
		elseif strHeroTrialType == "Barbarian" then
			TTH_TABLE_HeroTrialSkill_Hero = TTH_TABLE_HeroTrialSkill_HeroBarbarian;
		end;
		return TTH_TABLE_HeroTrialSkill_Hero;
	end;
-- end


---------------------------------------------------------------------------------------------------------------------------------------------
--ACTIVATOR
---------------------------------------------------------------------------------------------------------------------------------------------

H55_PrepareAdvMap();

---------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
---------------------------------------------------------------------------------------------------------------------------------------------

-- H55_TriggerToObjectType("BUILDING_DRAGON_UTOPIA", OBJECT_TOUCH_TRIGGER, 'H55_UtopiaVisit', nil);
-- H55_TriggerToObjectType("BUILDING_SUNKEN_TEMPLE", OBJECT_TOUCH_TRIGGER, 'H55_SunkenTempleVisit', nil);
-- H55_TriggerToObjectType("BUILDING_NAGA_BANK", OBJECT_TOUCH_TRIGGER, 'H55_MageVaultVisit', nil);
-- H55_TriggerToObjectType("BUILDING_CRYPT", OBJECT_TOUCH_TRIGGER, 'H55_CryptVisit', nil);
-- H55_TriggerToObjectType("BUILDING_GARGOYLE_STONEVAULT", OBJECT_TOUCH_TRIGGER, 'H55_StoneVaultVisit', nil);
-- H55_TriggerToObjectType("BUILDING_DWARVEN_TREASURE", OBJECT_TOUCH_TRIGGER, 'H55_DwarvenTreasureVisit', nil);
-- H55_TriggerToObjectType("BUILDING_DEMOLISH", OBJECT_TOUCH_TRIGGER, 'H55_DemolishVisit', nil);
-- H55_TriggerToObjectType("BUILDING_UNKEMPT", OBJECT_TOUCH_TRIGGER, 'H55_UnkemptVisit', nil);
-- H55_TriggerToObjectType("BUILDING_CYCLOPS_STOCKPILE", OBJECT_TOUCH_TRIGGER, 'H55_StockpileVisit', nil);
-- H55_TriggerToObjectType("BUILDING_BLOOD_TEMPLE", OBJECT_TOUCH_TRIGGER, 'H55_WitchBankVisit', nil);
-- H55_TriggerToObjectType("BUILDING_TREANT_THICKET", OBJECT_TOUCH_TRIGGER, 'H55_TreantThicketVisit', nil);
-- H55_TriggerToObjectType("BUILDING_PYRAMID", OBJECT_TOUCH_TRIGGER, 'H55_PyramidVisit', nil);
-- H55_TriggerToObjectType("BUILDING_NAGA_TEMPLE", OBJECT_TOUCH_TRIGGER, 'object_touch_handler', nil);

-- H55_TriggerToObjectType("BUILDING_ABANDONED_MINE", OBJECT_TOUCH_TRIGGER, 'H55_AbandonedVisit', nil);