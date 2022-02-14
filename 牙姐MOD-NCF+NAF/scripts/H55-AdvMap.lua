------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - ADVENTURE MAP
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus
--Website: http://heroescommunity.com/viewthread.php3?TID=41303

------------------------------------------------------------------------------------------------------------------------------------------------
--DYNAMIC TABLES
------------------------------------------------------------------------------------------------------------------------------------------------

-- 待整理
	function H55_GetHeroWitchType(hero)
		local type = "Magic"
		if contains(H55_Knights,hero) ~= nil and contains(H55_Renegades,hero) == nil then type = "MightG"
		elseif contains(H55_Knights,hero) ~= nil and contains(H55_Renegades,hero) ~= nil then type = "MightB"
		elseif contains(H55_Rangers,hero) ~= nil
			or contains(H55_Engineers,hero) ~= nil
			or contains(H55_Flamekeepers,hero) ~= nil then type = "MightG"
		elseif contains(H55_Overlords,hero) ~= nil
			or contains(H55_Demonlords,hero) ~= nil
			or contains(H55_DeathKnights,hero) ~= nil then type = "MightB"
		elseif contains(H55_Paladins,hero) ~= nil
			or contains(H55_Wardens,hero) ~= nil
			or contains(H55_Gatekeepers,hero) ~= nil then type = "MindG"
		elseif contains(H55_Reavers,hero) ~= nil
			-- or contains(H55_Heretics,hero) ~= nil
			or contains(H55_Seers,hero) ~= nil
			or contains(H55_Assassins,hero) ~= nil then type = "MindB"
		elseif contains(H55_Runemages,hero) ~= nil then type = "Special"
		elseif contains(H55_Barbarians,hero) ~= nil then type = "Barbarian"
		else type = "Magic"
		end;
		return type
	end;
	function TTH_GetHeroTrialType(strHero)
		local strType = "";
		if contains(H55_Knights, strHero) ~= nil
			or contains(H55_Paladins, strHero) ~= nil
			or contains(H55_Rangers, strHero) ~= nil
			or contains(H55_Wardens, strHero) ~= nil
			or contains(H55_Seers, strHero) ~= nil
			or contains(H55_Demonlords, strHero) ~= nil
			or contains(H55_Gatekeepers, strHero) ~= nil
			or contains(H55_DeathKnights, strHero) ~= nil
			or contains(H55_Reavers, strHero) ~= nil
			or contains(H55_Engineers, strHero) ~= nil
			or contains(H55_Overlords, strHero) ~= nil then
			strType = "Might"
		elseif contains(H55_Heretics, strHero) ~= nil
			or contains(H55_Druids, strHero) ~= nil
			or contains(H55_Wizards, strHero) ~= nil
			or contains(H55_Elementalists, strHero) ~= nil
			or contains(H55_Sorcerers, strHero) ~= nil
			or contains(H55_Necromancers, strHero) ~= nil
			or contains(H55_Runemages, strHero) ~= nil
			or contains(H55_Flamekeepers, strHero) ~= nil
			or contains(H55_Assassins, strHero) ~= nil
			or contains(H55_Warlocks, strHero) ~= nil then
			strType = "Magic"
		elseif contains(H55_Barbarians, strHero) ~= nil then
			strType = "Barbarian"
		end;
		return strType
	end;

-- 种族
	function H55_GetHeroRaceNum(hero)
		local race = 0;
		if contains(H55_HavenHeroes,hero) ~= nil then race = 1 end;
		if contains(H55_SylvanHeroes,hero) ~= nil then race = 2 end;
		if contains(H55_InfernoHeroes,hero) ~= nil then race = 3 end;
		if contains(H55_NecropolisHeroes,hero) ~= nil then race = 4 end;
		if contains(H55_AcademyHeroes,hero) ~= nil then race = 5 end;
		if contains(H55_DungeonHeroes,hero) ~= nil then race = 6 end;
		if contains(H55_FortressHeroes,hero) ~= nil then race = 7 end;
		if contains(H55_StrongholdHeroes,hero) ~= nil then race = 8 end;
		return race
	end;

--Mentors
H55_MentorBoostVisitors = {};

-- 建筑
	-- 女巫小屋
		H55_WitchHuts = GetObjectNamesByType("BUILDING_WITCH_HUT");
		H55_WitchHutsQty = length(H55_WitchHuts);
		H55_WHChoice1 = {};
		H55_WHChoice2 = {};
		H55_WHVisited = {};
	-- Sphinx
		H55_Sphinxs = GetObjectNamesByType("BUILDING_SPHINX");
		H55_SphinxsQty = length(H55_Sphinxs);
		H55_SphinxVisited = {};
		H55_SphinxExp = {};
	-- 莎拉萨神殿
		H55_SummonTemples = GetObjectNamesByType("BUILDING_SIRENS");
		H55_SummonTemplesQty = length(H55_SummonTemples);
		H55_SummonTempleChoices = {};
	-- 手推车
		H55_Wagons = GetObjectNamesByType("BUILDING_WAGON");
		H55_WagonsQty = length(H55_Wagons);
	-- 坟墓
		H55_Skeletons = GetObjectNamesByType("BUILDING_SKELETON");
		H55_SkeletonsQty = length(H55_Skeletons);
	-- 宝屋
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
	-- 废弃矿井
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

	--Special objects

	if H55_SphinxsQty ~= 0 then
		for i, sphinx in H55_Sphinxs do
			SetObjectEnabled(sphinx,nil);
			H55_SphinxVisited[sphinx] = {};
			Trigger(OBJECT_TOUCH_TRIGGER,sphinx,"H55_SphinxVisit");
		end;
	end;

	-- by 牙姐 2021-03-07 05:36:50
	-- begin 杉提瑞 访问
		if length(TTH_Arr_Long_Shantiri) > 0 then
			for iIndexShantiri, objItemShantiri in TTH_Arr_Long_Shantiri do
				SetObjectEnabled(objItemShantiri, nil);
				Trigger(OBJECT_TOUCH_TRIGGER, objItemShantiri, "TTH_Trigger_VisitShantiri");
			end;
		end;
	-- end


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

	--手推车
		if H55_WagonsQty ~= 0 then
			for i, wagon in H55_Wagons do
				SetObjectEnabled(wagon,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,wagon,"H55_WagonVisit");
			end;
		end;
	--坟墓
		if H55_SkeletonsQty ~= 0 then
			for i, skeleton in H55_Skeletons do
				SetObjectEnabled(skeleton,nil);
				Trigger(OBJECT_TOUCH_TRIGGER,skeleton,"H55_SkeletonVisit");
			end;
		end;
	--宝屋
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

	-- TTH_COMMON.setTrigger2ObjectType("BUILDING_TRADING_POST",OBJECT_TOUCH_TRIGGER,"H55_HillFortVisit",nil);
	-- TTH_COMMON.setTrigger2ObjectType("BUILDING_ASTROLOGER_TOWER",OBJECT_TOUCH_TRIGGER,"H55_AstrologerVisit",nil);
	-- TTH_COMMON.setTrigger2ObjectType("BUILDING_SPELL_SHOP",OBJECT_TOUCH_TRIGGER,"H55_SpellShopVisit",nil);
	-- TTH_COMMON.setTrigger2ObjectType("BUILDING_MEMORY_MENTOR",OBJECT_TOUCH_TRIGGER,"H55_MemoryMentorVisit",nil);
	TTH_COMMON.setTrigger2ObjectType("BUILDING_BLACK_MARKET",OBJECT_TOUCH_TRIGGER,"TTH_ObjectTouchTrigger_BuildingBlackMarket",nil);
	-- TTH_COMMON.setTrigger2ObjectType("BUILDING_SACRIFICIAL_ALTAR",OBJECT_TOUCH_TRIGGER,"H55_SacrificialAltarVisit",nil);

	print("H55 Adventure Objects ready");

	TTH_GLOBAL.changeMonsterStackSize(H55_NeutralStackSize);
end;

------------------------------------------------------------------------------------------------------------------------------------------
--SPHINX
------------------------------------------------------------------------------------------------------------------------------------------

function H55_SphinxVisit(hero,sphinx)
	local player = GetObjectOwner(hero);
	if H55_SphinxVisited[sphinx][hero] ~= 1 then
		if H55_SphinxExp[hero] == nil then
			TTH_GLOBAL.giveExp(hero,5000);
			H55_SphinxExp[hero] = 5000;
			H55_SphinxVisited[sphinx][hero] = 1;
			MarkObjectAsVisited(sphinx,hero);
		else
			TTH_GLOBAL.giveExp(hero,(H55_SphinxExp[hero]+5000));
			H55_SphinxExp[hero] = (H55_SphinxExp[hero]+5000);
			H55_SphinxVisited[sphinx][hero] = 1;
			MarkObjectAsVisited(sphinx,hero);
		end;
	else
		if TTH_GLOBAL.isAi(player) ~= 1 then ShowFlyingSign("/Text/Game/Scripts/Sphinxdead.txt",hero,player,5) end;
	end;
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
		if TTH_GLOBAL.isAi(player) == 1 then
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
		TTH_GLOBAL.reduceResource(player,reschoice,amount);
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
	if HasArtefact(hero,ARTIFACT_RES_ADVANCED,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Fire.txt"},
		"H55_SummonFireAccept('"..hero.."','"..temple.."')","H55_SummonFireRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_ADVANCED,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Water.txt"},
		"H55_SummonWaterAccept('"..hero.."','"..temple.."')","H55_SummonWaterRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_ADVANCED,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Air.txt"},
		"H55_SummonAirAccept('"..hero.."','"..temple.."')","H55_SummonAirRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_ADVANCED,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Earth.txt"},
		"H55_SummonEarthAccept('"..hero.."','"..temple.."')","H55_SummonEarthRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_BASIC,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Wolves.txt"},
		"H55_SummonWolvesAccept('"..hero.."','"..temple.."')","H55_SummonWolvesRefuse('"..hero.."','"..temple.."')");
	end;
	if HasArtefact(hero,ARTIFACT_RES_BASIC,0) ~= nil then
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/Summon/Wolves2.txt"},
		"H55_SummonWolves2Accept('"..hero.."','"..temple.."')","H55_SummonWolves2Refuse('"..hero.."','"..temple.."')");
	end;
end;

function H55_SummonPhoenixAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(2*(TTH_VARI.day/7)));
	RemoveArtefact(hero,92);
	AddHeroCreatures(hero,91,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Phoenixes.txt";num=amount},hero,player,7);
end;

function H55_SummonManticoreAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(2*(TTH_VARI.day/7)));
	RemoveArtefact(hero,93);
	AddHeroCreatures(hero,115,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Manticores.txt";num=amount},hero,player,7);
end;

function H55_SummonFireAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(4*(TTH_VARI.day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_ADVANCED);
	AddHeroCreatures(hero,85,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonWaterAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(4*(TTH_VARI.day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_ADVANCED);
	AddHeroCreatures(hero,86,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonAirAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(4*(TTH_VARI.day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_ADVANCED);
	AddHeroCreatures(hero,88,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonEarthAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(4*(TTH_VARI.day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_ADVANCED);
	AddHeroCreatures(hero,87,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Elementals.txt";num=amount},hero,player,7);
end;

function H55_SummonWolvesAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(6*(TTH_VARI.day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_BASIC);
	AddHeroCreatures(hero,113,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Wolfpack.txt";num=amount},hero,player,7);
end;

function H55_SummonWolves2Accept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(6*(TTH_VARI.day/7)));
	RemoveArtefact(hero,ARTIFACT_RES_BASIC);
	AddHeroCreatures(hero,113,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/Wolfpack.txt";num=amount},hero,player,7);
end;

function H55_SummonMummyAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(4*(TTH_VARI.day/7)));
	RemoveArtefact(hero,70);
	AddHeroCreatures(hero,116,amount);
	ShowFlyingSign({"/Text/Game/Scripts/Summon/MReceive.txt";num=amount},hero,player,7);
end;

function H55_SummonDreadKnightAccept(hero,temple)
	local player = GetObjectOwner(hero);
	local amount = TTH_COMMON.round(1+(3*(TTH_VARI.day/7)));
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
	if TTH_GLOBAL.isAi(player) == 1 then
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
					TTH_COMMON.push(TTH_ArrVisitedWitch, hut);
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
					TTH_COMMON.push(TTH_ArrVisitedWitch, hut);
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
					TTH_COMMON.push(TTH_ArrVisitedWitch, hut);
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
	TTH_GLOBAL.dealSkillBonus8Hero(hero); -- 英雄技能效果实装
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
		TTH_GLOBAL.reduceResource(player,6,2000);
		TTH_GLOBAL.dealSkillBonus8Hero(hero); -- 英雄技能效果实装
	else
		ShowFlyingSign("/Text/Game/Scripts/Witch/Nogold.txt",hero,player,5);
	end;
end;

function H55_WitchRefuse02(hero)
	local player = GetObjectOwner(hero);
	ShowFlyingSign("/Text/Game/Scripts/Witch/Nooffer.txt",hero,player,5);
end;

----------------------------------------------------------------------------------------------------------------------------------------------
--JUNK
----------------------------------------------------------------------------------------------------------------------------------------------
TTH_VARI.filterBankVisit = {};
function H55_WagonVisit(strHero, objBank)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, "H55_WagonVisit");
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			if TTH_VARI.filterBankVisit[strHero] ~= nil
				and TTH_VARI.filterBankVisit[strHero][objBank] == TTH_VARI.day then
				print("repeat visit");
				return nil;
			end;
			if TTH_VARI.filterBankVisit[strHero] == nil then
				TTH_VARI.filterBankVisit[strHero] = {};
			end;
			TTH_VARI.filterBankVisit[strHero][objBank] = TTH_VARI.day;

			local strCallbackWin = "TTH_WagonWin";

			StartCombat(strHero, nil, 3
				, 1, 30
				, 2, 30
				, 106, 30
				, nil, strCallbackWin, nil, 1);
		end;
	else
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;

function H55_SkeletonVisit(strHero, objBank)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, "H55_SkeletonVisit");
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			if TTH_VARI.filterBankVisit[strHero] ~= nil
				and TTH_VARI.filterBankVisit[strHero][objBank] == TTH_VARI.day then
				print("repeat visit");
				return nil;
			end;
			if TTH_VARI.filterBankVisit[strHero] == nil then
				TTH_VARI.filterBankVisit[strHero] = {};
			end;
			TTH_VARI.filterBankVisit[strHero][objBank] = TTH_VARI.day;

			local strCallbackWin = "TTH_SkeletonWin";

			StartCombat(strHero, nil, 3
				, 31, 20
				, 32, 20
				, 153, 20
				, nil, strCallbackWin, nil, 1);
		end;
	else
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
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
		TTH_GLOBAL.increaseResource(iPlayer, 0, 3, strHero);
		TTH_GLOBAL.increaseResource(iPlayer, 1, 3, strHero);
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
TTH_TABLE_SkeletonReward4Fortress = {
	[0] = ARTIFACT_WAND_OF_X
	, [1] = ARTIFACT_SCROLL_OF_SPELL_X
	, [2] = ARTIFACT_RUNE_OF_FLAME
};
TTH_TABLE_SkeletonReward4Other = {
	[0] = ARTIFACT_WAND_OF_X
	, [1] = ARTIFACT_SCROLL_OF_SPELL_X
};
function TTH_SkeletonWin(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
		if iHeroRace == TOWN_STRONGHOLD then
			local arrArtiPool = TTH_TABLE_Artifacts[1];
			local iLenArtiPool = length(arrArtiPool);
			local iRanIndexArtiPool = random(iLenArtiPool);
			GiveArtefact(strHero, arrArtiPool[iRanIndexArtiPool]);
		elseif iHeroRace == TOWN_FORTRESS then
			local arrArtiPool = TTH_UNITY_CONCAT(TTH_TABLE_Artifacts[1], TTH_TABLE_SkeletonReward4Fortress);
			local iLenArtiPool = length(arrArtiPool);
			local iRanIndexArtiPool = random(iLenArtiPool);
			GiveArtefact(strHero, arrArtiPool[iRanIndexArtiPool]);
		else
			local arrArtiPool = TTH_UNITY_CONCAT(TTH_TABLE_Artifacts[1], TTH_TABLE_SkeletonReward4Other);
			local iLenArtiPool = length(arrArtiPool);
			local iRanIndexArtiPool = random(iLenArtiPool);
			GiveArtefact(strHero, arrArtiPool[iRanIndexArtiPool]);
		end;
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
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
-- begin 宝屋统一战斗方法-8族-非废弃矿井
function TTH_BankCombatByRaceNotMine(strHero, objBank, iFaction, strCallbackVisit, strCombatLink)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, strCallbackVisit);
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			if TTH_VARI.filterBankVisit[strHero] ~= nil
				and TTH_VARI.filterBankVisit[strHero][objBank] == TTH_VARI.day then
				print("repeat visit");
				return nil;
			end;
			if TTH_VARI.filterBankVisit[strHero] == nil then
				TTH_VARI.filterBankVisit[strHero] = {};
			end;
			TTH_VARI.filterBankVisit[strHero][objBank] = TTH_VARI.day;

			local iMonthScale = TTH_VARI.month;
			local iWeekScale = TTH_VARI.absoluteWeek;
			local iRandom = TTH_VARI.absoluteWeek;
			local iType = mod(TTH_VARI.day, 3);
			if iType == 0 then
				iType = 3;
			end;
			local iLevel = TTH_COMMON.floor(TTH_VARI.absoluteWeek / 3);
			local iMultiplier = H55_GetBankDifMultiplier();
			local strCallbackWin = "TTH_BankWinNormal";

			local listIdCreature = {};
			local listCountCreature = {};
			for i = 1, 7 do
				listIdCreature[i] = H55_Creatures[iFaction][i][iType];
				listCountCreature[i] = random(iRandom * (8 - i)) + TTH_COMMON.round(iMultiplier * (1 + iWeekScale) * iMonthScale * H55_CreaturesGrowth[iFaction][i]);
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
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
			ShowFlyingSign("/Text/Game/Scripts/Banks/Already.txt", strHero, iPlayer, 5);
		end;
	end;
end;
-- end

-- by 牙姐 2018-9-30 22:41:32
-- begin 宝屋统一战斗方法-8族-废弃矿井
function TTH_BankCombatByRaceMine(strHero, objBank, iFaction, strCallbackVisit, strCombatLink)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 1 and H55_GetPlayerLastVisited(iPlayer, objBank) > 1 then
		H55_MineCurrentPlayerVisit[iPlayer] = objBank;
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			TTH_AbandonedMineWin(strHero, 1);
		else
			local iMonthScale = TTH_VARI.month;
			local iWeekScale = TTH_VARI.absoluteWeek;
			local iRandom = TTH_VARI.absoluteWeek;
			local iType = mod(TTH_VARI.day, 3);
			if iType == 0 then
				iType = 3;
			end;
			local iLevel = TTH_COMMON.floor(TTH_VARI.absoluteWeek / 3);
			local iMultiplier = H55_GetBankDifMultiplier();
			local strCallbackWin = "TTH_AbandonedMineWin";

			local listIdCreature = {};
			local listCountCreature = {};
			for i = 1, 7 do
				listIdCreature[i] = H55_Creatures[iFaction][i][iType];
				listCountCreature[i] = random(iRandom * (8 - i)) + TTH_COMMON.round(iMultiplier * (iWeekScale * 2) * iMonthScale * H55_CreaturesGrowth[iFaction][i]);
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
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
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
-- begin 宝屋统一战斗方法-非8族
function TTH_BankCombatByNoRace(strHero, objBank, strBuildingName, strCallbackVisit, strCombatLink)
	local iPlayer = GetObjectOwner(strHero);
	if H55_GetLastVisited(objBank) > 6 and H55_GetPlayerLastVisited(iPlayer, objBank) > 13 then
		H55_BankCurrentPlayerVisit[iPlayer] = objBank;
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, nil);
			SetObjectEnabled(objBank, not nil);
			MakeHeroInteractWithObject(strHero, objBank);
			Trigger(OBJECT_TOUCH_TRIGGER, objBank, strCallbackVisit);
			SetObjectEnabled(objBank, nil);
			TTH_BankWinAI(strHero, 1);
		else
			if TTH_VARI.filterBankVisit[strHero] ~= nil
				and TTH_VARI.filterBankVisit[strHero][objBank] == TTH_VARI.day then
				print("repeat visit");
				return nil;
			end;
			if TTH_VARI.filterBankVisit[strHero] == nil then
				TTH_VARI.filterBankVisit[strHero] = {};
			end;
			TTH_VARI.filterBankVisit[strHero][objBank] = TTH_VARI.day;

			local iMonthScale = TTH_VARI.month + 1;
			if strBuildingName == "BUILDING_CYCLOPS_STOCKPILE" then
				iMonthScale = TTH_VARI.month;
			end;
			local iWeekScale = TTH_VARI.absoluteWeek;
			local iRandom = TTH_VARI.absoluteWeek;
			local iMultiplier = H55_GetBankDifMultiplier();
			local strCallbackWin = "TTH_BankWinAdv";

			local listIdCreature = {};
			local listCountCreature = {};
			local iLen = length(TTH_BankMonsterByNoRace[strBuildingName]["ID"]);
			for i = 0, iLen - 1 do
				listIdCreature[i] = TTH_BankMonsterByNoRace[strBuildingName]["ID"][i];
				local iGrowth = TTH_BankMonsterByNoRace[strBuildingName]["GROWTH"][i];
				listCountCreature[i] = random(iRandom * iGrowth) + TTH_COMMON.round(iMultiplier * iWeekScale * 2 * iMonthScale * iGrowth);
			end

			if strBuildingName == "BUILDING_CYCLOPS_STOCKPILE" and TTH_VARI.month == 1 then
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
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
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

-- 玩家每周宝屋胜利次数
TTH_DATA_BankWinTimes = {};

-- by 牙姐 2018-10-3 12:47:39
-- begin AI宝屋胜利
function TTH_BankWinAI(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	if TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek] == nil then
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek] = {};
	end;
	if TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] == nil then
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] = 1;
	else
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] = TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] + 1;
	end;
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
-- begin 普通宝屋胜利
function TTH_BankWinNormal(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	if TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek] == nil then
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek] = {};
	end;
	if TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] == nil then
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] = 1;
	else
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] = TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] + 1;
	end;
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		TTH_BankReward(strHero);
		H55_BankLastVisit[objBank] = iDay;
		H55_BankPlayerLastVisit[iPlayer][objBank] = iDay;
		MarkObjectAsVisited(objBank, strHero);
	else
		MarkObjectAsVisited(objBank, strHero);
	end;
end;
-- end

-- by 牙姐 2018-9-30 13:56:42
-- begin 高级宝屋胜利
function TTH_BankWinAdv(strHero, result)
	local iPlayer = GetObjectOwner(strHero);
	if TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek] == nil then
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek] = {};
	end;
	if TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] == nil then
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] = 3;
	else
		TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] = TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer] + 3;
	end;
	local objBank = H55_BankCurrentPlayerVisit[iPlayer];
	local iDay = GetDate(DAY);
	if result ~= nil then
		TTH_BankReward(strHero);
		TTH_BankReward(strHero);
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
-- begin 宝屋奖励 5随2 2选1
function TTH_BankReward(strHero)
	local iPlayer = GetObjectOwner(strHero);
	local iRandomEnter = random(5);
	local iRandomCancel = random(4);
	if iRandomCancel == iRandomEnter then
		iRandomCancel = iRandomCancel + 1;
	end;
	local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
	if enumHeroClass == TTH_ENUM.Barbarian then
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
	QuestionBoxForPlayers(GetPlayerFilter(iPlayer),{"/Text/Game/Scripts/BankReward/ChooseReward/TemplateChooseReward.txt";iBankWinTimes=TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer],strRewardEnter=strRewardEnter,strRewardCancel=strRewardCancel},
	strRewardCallbackEnter.."('"..strHero.."')",strRewardCallbackCancel.."('"..strHero.."')");
	TTH_Reward_Gold(strHero);
end;
-- end
-- by 牙姐 2018-10-3 12:48:56
-- begin AI宝屋奖励 5随1
function TTH_BankRewardAI(strHero)
	local iPlayer = GetObjectOwner(strHero);
	local iRandom = random(5);
	local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
	if enumHeroClass == TTH_ENUM.Barbarian then
		if iRandom == 2 then
			iRandom = 5;
		end;
	end;
	if iRandom == 0 then
		TTH_Reward_Resource(strHero);
	elseif iRandom == 1 then
		TTH_Reward_Stat(strHero);
	elseif iRandom == 2 then
		TTH_Reward_Spell(strHero);
	elseif iRandom == 3 then
		TTH_Reward_Artifact(strHero);
	elseif iRandom == 4 then
		TTH_Reward_Creature(strHero);
	elseif iRandom == 5 then
		TTH_Reward_Exp(strHero);
	end;
	TTH_Reward_Gold(strHero);
end;
-- end

-- 宝屋阶梯奖励
	function TTH_Reward_Step(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iTimes = TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer];
		local iRealTimes = TTH_VARI.absoluteWeek - 1 + iTimes - 1;
		local iIndex = 0;
		if iRealTimes >= 987 then
			iIndex = 30;
		elseif iRealTimes >= 610 then
			iIndex = 20;
		elseif iRealTimes >= 377 then
			iIndex = 14;
		elseif iRealTimes >= 233 then
			iIndex = 10;
		elseif iRealTimes >= 144 then
			iIndex = 7.5;
		elseif iRealTimes >= 89 then
			iIndex = 6;
		elseif iRealTimes >= 55 then
			iIndex = 4;
		elseif iRealTimes >= 34 then
			iIndex = 3;
		elseif iRealTimes >= 21 then
			iIndex = 2.5;
		elseif iRealTimes >= 13 then
			iIndex = 2;
		elseif iRealTimes >= 8 then
			iIndex = 1.75;
		elseif iRealTimes >= 5 then
			iIndex = 1.5;
		elseif iRealTimes >= 3 then
			iIndex = 1.35;
		elseif iRealTimes >= 2 then
			iIndex = 1.2;
		elseif iRealTimes >= 1 then
			iIndex = 1.1;
		elseif iRealTimes >= 0 then
			iIndex = 1;
		end;
		print('iRealTimes: '..iRealTimes);
		print('iIndex: '..iIndex);
		return iIndex;
	end;
-- 金币奖励
	function TTH_Reward_Gold(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iScale = TTH_Reward_Step(strHero);
		local iGold = TTH_COMMON.round(1500 * iScale + 500);
		TTH_GLOBAL.increaseResource(iPlayer, 6, iGold, strHero);
	end;
-- 资源奖励
	function TTH_Reward_Resource(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iScale = TTH_Reward_Step(strHero);
		local iCountNormal = TTH_COMMON.round(4 * iScale);
		local iCountSpecial = TTH_COMMON.round(2 * iScale);
		local iWeekBonus = TTH_COMMON.round((TTH_VARI.absoluteWeek - 1) / 2);
		TTH_GLOBAL.increaseResource(iPlayer, 0, iCountNormal + random(4 + iWeekBonus * 2), strHero);
		TTH_GLOBAL.increaseResource(iPlayer, 1, iCountNormal + random(4 + iWeekBonus * 2), strHero);
		TTH_GLOBAL.increaseResource(iPlayer, 2, iCountSpecial + random(2 + iWeekBonus), strHero);
		TTH_GLOBAL.increaseResource(iPlayer, 3, iCountSpecial + random(2 + iWeekBonus), strHero);
		TTH_GLOBAL.increaseResource(iPlayer, 4, iCountSpecial + random(2 + iWeekBonus), strHero);
		TTH_GLOBAL.increaseResource(iPlayer, 5, iCountSpecial + random(2 + iWeekBonus), strHero);
	end;
-- 属性奖励
	function TTH_Reward_Stat(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iScale = TTH_Reward_Step(strHero);
		local iStat = TTH_COMMON.round(0.49 * iScale + 0.51);
		local iRandom = random(100) + 1;
		local enumHeroGroup = TTH_TABLE.Hero[strHero]["Group"];
		if enumHeroGroup == TTH_ENUM.GroupMight then
			if iRandom > 0 and iRandom <= 50 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iStat);
			elseif iRandom > 50 and iRandom <= 100 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iStat);
			end;
		elseif enumHeroGroup == TTH_ENUM.GroupBalanceNotNec then
			if iRandom > 0 and iRandom <= 24 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iStat);
			elseif iRandom > 24 and iRandom <= 48 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iStat);
			elseif iRandom > 48 and iRandom <= 72 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_SPELL_POWER, iStat);
			elseif iRandom > 72 and iRandom <= 96 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_KNOWLEDGE, iStat);
			elseif iRandom > 96 and iRandom <= 98 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_LUCK, iStat);
			elseif iRandom > 98 and iRandom <= 100 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_MORALE, iStat);
			end;
		elseif enumHeroGroup == TTH_ENUM.GroupBalanceNec then
			if iRandom > 0 and iRandom <= 24 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iStat);
			elseif iRandom > 24 and iRandom <= 48 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iStat);
			elseif iRandom > 48 and iRandom <= 72 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_SPELL_POWER, iStat);
			elseif iRandom > 72 and iRandom <= 96 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_KNOWLEDGE, iStat);
			elseif iRandom > 96 and iRandom <= 100 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_LUCK, iStat);
			end;
		elseif enumHeroGroup == TTH_ENUM.GroupMagic then
			if iRandom > 0 and iRandom <= 50 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_SPELL_POWER, iStat);
			elseif iRandom > 50 and iRandom <= 100 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_KNOWLEDGE, iStat);
			end;
		elseif enumHeroGroup == TTH_ENUM.GroupBarbarian then
			if iRandom > 0 and iRandom <= 45 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_ATTACK, iStat);
			elseif iRandom > 45 and iRandom <= 90 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_DEFENCE, iStat);
			elseif iRandom > 90 and iRandom <= 95 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_LUCK, iStat);
			elseif iRandom > 95 and iRandom <= 100 then
				TTH_HERO_STAT_BONUS(iPlayer, strHero, STAT_MORALE, iStat);
			end;
		end;
	end;
-- 魔法奖励: random(100 + 绝对周数 - 1) + 周宝屋胜利次数 - 1 0/30/55/75/85/90/99
	function TTH_Reward_Spell(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iTimes = TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer];
		local iHeroLevel = GetHeroLevel(strHero);
		local iCountLearn = 0;
		local iRandomType = random(100 + TTH_VARI.absoluteWeek - 1) + iTimes - 1;
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
			if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
				ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateSpell.txt";name=TTH_TABLE_SPELL_TYPE[strType]["NAME"][iIndex]}, strHero, iPlayer, 5);
				local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
				Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndSpell, iPositionX, iPositionY, iPositionZ);
			end;
		else
			ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardSpell/TemplateNoMore.txt";name=TTH_TABLE_SPELL_TYPE[strType]["NAME"][iIndex]}, strHero, iPlayer, 5);
			TTH_Reward_Exp(strHero);
		end;
	end;
-- 宝物奖励: random(100 + 绝对周数 - 1) + 周宝屋胜利次数 - 1 0/64/96/112/120/124/126
	function TTH_Reward_Artifact(strHero, iRewardParam)
		local iPlayer = GetObjectOwner(strHero);
		local iTimes = TTH_DATA_BankWinTimes[TTH_VARI.absoluteWeek][iPlayer];
		print('iTimes: '..iTimes);
		local iRandomLevel = random(127 + TTH_VARI.absoluteWeek - 1) + iTimes - 1;
		local iLevel = 1;
		if iRandomLevel < 64 then
			-- 1级宝物50%
			iLevel = 1;
		elseif iRandomLevel < 96 then
			-- 2级宝物25%
			iLevel = 2;
		elseif iRandomLevel < 112 then
			-- 3级宝物12.5%
			iLevel = 3;
		elseif iRandomLevel < 120 then
			-- 4级宝物6.25%
			iLevel = 4;
		elseif iRandomLevel < 124 then
			-- 5级宝物3.125%
			iLevel = 5;
		else
			-- 6级宝物1.5625%
			iLevel = 6;
		end;
		GiveArtefact(strHero, TTH_TABLE_Artifacts[iLevel][random(length(TTH_TABLE_Artifacts[iLevel]))]);
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
			local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
			Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndArtifact, iPositionX, iPositionY, iPositionZ);
			return nil;
		end;
	end;
-- 生物奖励
	function TTH_Reward_Creature(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iScale = TTH_Reward_Step(strHero);
		local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
		local iLenCreatureType = 0;
		for iIndexType = 0, 6 do
			if arrCreature4Hero[iIndexType]["Id"] ~= 0 then
				iLenCreatureType = iLenCreatureType + 1;
			end;
		end;
		local iRandomCreatureId = arrCreature4Hero[random(iLenCreatureType)]["Id"];
		local iGrowth = TTH_TABLE_NCF_CREATURES[iRandomCreatureId]["GROWTH"];
		local strName = TTH_TABLE_NCF_CREATURES[iRandomCreatureId]["NAME"];
		local iNumber = TTH_COMMON.round(iGrowth * iScale);
		AddHeroCreatures(strHero, iRandomCreatureId, iNumber);
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
			ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardCreature/TemplateCreature.txt";num=iNumber,name=strName}, strHero, iPlayer, 5);
			local iPositionX, iPositionY, iPositionZ = GetObjectPosition(strHero);
			Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndArmy, iPositionX, iPositionY, iPositionZ);
			return nil;
		end;
	end;
-- 经验奖励
	function TTH_Reward_Exp(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iScale = TTH_Reward_Step(strHero);
		local iExp = TTH_COMMON.round(2000 * iScale);
		TTH_GLOBAL.giveExp(strHero, iExp);
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
			ShowFlyingSign({"/Text/Game/Scripts/BankReward/RewardExp/GetExp.txt";iExp=iExp}, strHero, iPlayer, 5);
			return nil;
		end;
	end;

-- 宝屋加属性通用方法
	function TTH_HERO_STAT_BONUS(iPlayer, strHero, iStatId, iNumber)
		ChangeHeroStat(strHero, iStatId, iNumber);
		if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
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

-------------------------------------------------------------------------------------------------------------------------------------------------
--REWARDS
-------------------------------------------------------------------------------------------------------------------------------------------------

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
		amount = TTH_COMMON.round(amount*lucky);
	end;
	local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(hero);
	local released = 0;
	local x,y,z = GetObjectPosition(hero);
	for i = 0,6 do
		if arrCreature4Hero[i]["Id"] == H55_Creatures[faction][tier][2] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][2],amount);
			ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
		if arrCreature4Hero[i]["Id"] == H55_Creatures[faction][tier][3] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][3],amount);
			ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
		if arrCreature4Hero[i]["Id"] == H55_Creatures[faction][tier][1] and released == 0 then
			AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
			ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
			Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
			released = 1;
		end;
	end;
	if released == 0 then
		for i = 0,6 do
			if (arrCreature4Hero[i]["Id"] == 0 or arrCreature4Hero[i]["Id"] == nil) and released == 0 then
				AddHeroCreatures(hero,H55_Creatures[faction][tier][1],amount);
				ShowFlyingSign({"/Text/Game/Scripts/Summon/Summons.txt";num=amount,level=tier},hero,player,7);
				Play3DSoundForPlayers(GetPlayerFilter(player), H55_SndArmy,x,y,z);
				released = 1;
			end;
		end;
	end;
end;

-- by 牙姐 2021-03-07 05:36:50
-- begin 【杉提瑞圆盘】试炼相关
	TTH_Arr_Shantiri = GetObjectNamesByType("BUILDING_EYE_OF_MAGI");
	TTH_Arr_Obelisk = GetObjectNamesByType("BUILDING_LAKE_OF_SCARLET_SWAN");
	TTH_Arr_Long_Shantiri = TTH_UNITY_CONCAT(TTH_Arr_Shantiri, TTH_Arr_Obelisk);
	-- 玩家是否访问过 【杉提瑞圆盘】
	TTH_Map_HasPlayerVisitedShantiri = {};
	-- 玩家访问 【杉提瑞圆盘】 的数量
	TTH_Map_CountPlayerVisitedShantiri = {};
	-- 玩家访问 【杉提瑞圆盘】 的标记
	TTH_Map_FlagPlayerVisitedShantiri = {};
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

		-- 标记【杉提瑞圆盘】已被玩家访问的数量
		if TTH_Map_FlagPlayerVisitedShantiri[iPlayer] == nil then
			TTH_Map_FlagPlayerVisitedShantiri[iPlayer] = {};
			TTH_Map_FlagPlayerVisitedShantiri[iPlayer][objShantiri] = 1;
			TTH_Map_CountPlayerVisitedShantiri[iPlayer] = 1;
		else
			if TTH_Map_FlagPlayerVisitedShantiri[iPlayer][objShantiri] == nil then
				TTH_Map_FlagPlayerVisitedShantiri[iPlayer][objShantiri] = 1;
				TTH_Map_CountPlayerVisitedShantiri[iPlayer] = TTH_Map_CountPlayerVisitedShantiri[iPlayer] + 1;
			end;
		end;

		-- 标记【杉提瑞圆盘】已被该英雄访问
		MarkObjectAsVisited(objShantiri, strHero);
		-- AI分支
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			TTH_Trigger_VisitShantiri_AI(strHero, objShantiri);
		-- 玩家分支
		else
			-- 若英雄未完成试炼，则询问是否进行试炼
			if TTH_Map_ShantiriTrial4HeroIsComplete[strHero] == nil then
				-- 若英雄战力不足1W，则提示英雄战力不足
				local iPower = TTH_Func_CalcPower(strHero);
				if iPower < 10000 then
					MessageBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/Shantiri/MessageTrialNotEnoughPower.txt";iPower=iPower}, nil);
				else
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/Shantiri/QuestionChallengeInfo4Trial.txt", "TTH_Func_Shantiri_ReceiveChallenge('"..strHero.."')", "TTH_Func_Shantiri_RefuseChallenge('"..strHero.."')");
				end;
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
		local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
		local iPower = 0;
		for i = 0, 6 do
			if arrCreature4Hero[i]["Id"] ~= 0 then
				iPower = iPower + TTH_TABLE_NCF_CREATURES[arrCreature4Hero[i]["Id"]]["POWER"] * arrCreature4Hero[i]["Count"];
			end;
		end;
		return iPower;
	end;
	-- 战力检测
	function TTH_Func_Shantiri_Challenge4Trial8PowerCheck(strHero)
		local iPlayer = GetObjectOwner(strHero);

		local iPower = TTH_Func_CalcPower(strHero);
		local iPower8Scale = iPower / 2 * TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] * TTH_Map_ShantiriTrial4HeroRecord[strHero]["Difficult"] * sqrt(TTH_Map_ShantiriTrial4HeroRecord[strHero]["HeroLevel"]) / sqrt(TTH_Map_CountPlayerVisitedShantiri[iPlayer]);
		if iPower8Scale < 20000 then
			iPower8Scale = 20000;
		end;
		local iPowerPerSlot =  iPower8Scale / 7;

		local strCallbackWin = "TTH_Func_Shantiri_Challenge4Trial8MirrorFight";
		local strCombatLink = "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)";

		local listCreatureId = {};
		local listCreatureCount = {};

		local TTH_TABLE_HeroTrialSkill_Hero = TTH_Func_Shantiri_GetHeroTrialSkill(strHero);
		local arrMonster = TTH_TABLE_HeroTrialSkill_Hero[TTH_Map_ShantiriTrial4HeroRecord[strHero]["Mastery"]]["Perk"][TTH_Map_ShantiriTrial4HeroRecord[strHero]["Perk"]]["Monster"];

		for i = 1, 7 do
			if arrMonster[i] ~= 0 then
				listCreatureId[i] = arrMonster[i];
				listCreatureCount[i] = TTH_COMMON.ceil(iPowerPerSlot / TTH_TABLE_NCF_CREATURES[arrMonster[i]]["POWER"]);
			else
				local iRandomCreatureId = TTH_TABLE_HeroTrial_Monster[random(130) + 1];
				listCreatureId[i] = iRandomCreatureId;
				listCreatureCount[i] = TTH_COMMON.ceil(iPowerPerSlot / TTH_TABLE_NCF_CREATURES[iRandomCreatureId]["POWER"]);
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
			local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
			local iLenArrCreatureType = 0;
			for i = 0, length(arrCreature4Hero) - 1 do
				if arrCreature4Hero[i]["Id"] == 0 then
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
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 2 then
				StartCombat(strHero, strEnemyHero, 2
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 3 then
				StartCombat(strHero, strEnemyHero, 3
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iMultiplier
					, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 4 then
				StartCombat(strHero, strEnemyHero, 4
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iMultiplier
					, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iMultiplier
					, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 5 then
				StartCombat(strHero, strEnemyHero, 5
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iMultiplier
					, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iMultiplier
					, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iMultiplier
					, arrCreature4Hero[4]["Id"], arrCreature4Hero[4]["Count"] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			elseif iLenArrCreatureType == 6 then
				StartCombat(strHero, strEnemyHero, 6
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iMultiplier
					, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iMultiplier
					, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iMultiplier
					, arrCreature4Hero[4]["Id"], arrCreature4Hero[4]["Count"] * iMultiplier
					, arrCreature4Hero[5]["Id"], arrCreature4Hero[5]["Count"] * iMultiplier
					, nil
					, strCallbackWin
					, "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
					, 1);
			else
				StartCombat(strHero, strEnemyHero, 7
					, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iMultiplier
					, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iMultiplier
					, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iMultiplier
					, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iMultiplier
					, arrCreature4Hero[4]["Id"], arrCreature4Hero[4]["Count"] * iMultiplier
					, arrCreature4Hero[5]["Id"], arrCreature4Hero[5]["Count"] * iMultiplier
					, arrCreature4Hero[6]["Id"], arrCreature4Hero[6]["Count"] * iMultiplier
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
			TTH_GLOBAL.dealSkillBonus8Hero(strHero); -- 英雄技能效果实装
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

-- 杉提瑞之触
function H55_GrailTouch(s_hero, grail)
	local player = GetObjectOwner(s_hero);
	if TTH_GLOBAL.isAi(player) ~= 1 then
		if HasHeroSkill(s_hero, KNIGHT_FEAT_GRAIL_VISION) ~= nil then
			-- 第一次访问显示地图上所有【杉提瑞圆盘】
			if TTH_Map_HasPlayerVisitedShantiri[player] == nil then
				TTH_Map_HasPlayerVisitedShantiri[player] = 1;
				for iIndexShantiri, objShantiri in TTH_Arr_Long_Shantiri do
					local iX, iY, iZ = GetObjectPosition(objShantiri);
					OpenCircleFog(iX, iY, iZ, 5, player);
				end;
			end;

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
				TTH_GLOBAL.giveExp(s_hero, i_exp);
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
				local i_movement = TTH_COMMON.round(H55_GetHeroMovement(s_hero) * .4 * (1 + 0.5 * TTH_Monk_Move_Bonus(s_hero)));
				ChangeHeroStat(s_hero, STAT_MOVE_POINTS, i_movement);

				local i_mana = GetHeroStat(s_hero, STAT_MANA_POINTS);
				local i_knowledge = GetHeroStat(s_hero, STAT_KNOWLEDGE);
				local i_mana_total = 10 * i_knowledge;
				if HasHeroSkill(s_hero, PERK_INTELLIGENCE) ~= nil then
					i_mana_total = 15 * i_knowledge;
				end;
				local i_remain_mana = TTH_COMMON.round(i_mana_total * .4 * (1 + 0.5 * TTH_Monk_Mana_Bonus(s_hero)));
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

-- begin 宝物商店访问触发器
	function TTH_Test_GiveComponentArtifact2Hero(iPlayer)
		local strHero = GetPlayerHeroes(iPlayer)[0];
		GiveArtefact(strHero, ARTIFACT_GUARDIAN_01);
		GiveArtefact(strHero, ARTIFACT_GUARDIAN_02);
		GiveArtefact(strHero, ARTIFACT_GUARDIAN_03);
		GiveArtefact(strHero, ARTIFACT_PLATE_MAIL_OF_STABILITY);
		GiveArtefact(strHero, ARTIFACT_LEGION_BASIC);
		GiveArtefact(strHero, ARTIFACT_LEGION_ADVANCED);
		GiveArtefact(strHero, ARTIFACT_LEGION_EXPERT);
		GiveArtefact(strHero, ARTIFACT_ENDLESS_SACK_OF_GOLD);
		GiveArtefact(strHero, ARTIFACT_ENDLESS_BAG_OF_GOLD);
		GiveArtefact(strHero, ARTIFACT_CROWN_OF_LEADER);
		GiveArtefact(strHero, ARTIFACT_RES_BASIC);
		GiveArtefact(strHero, ARTIFACT_RES_ADVANCED);
		GiveArtefact(strHero, ARTIFACT_ENDLESS_SACK_OF_GOLD);
		GiveArtefact(strHero, ARTIFACT_ENDLESS_BAG_OF_GOLD);
		GiveArtefact(strHero, ARTIFACT_BAND_OF_CONJURER);
		GiveArtefact(strHero, ARTIFACT_CLOAK_OF_MOURNING);
		GiveArtefact(strHero, ARTIFACT_STAFF_OF_VEXINGS);
		GiveArtefact(strHero, ARTIFACT_RING_OF_DEATH);
		GiveArtefact(strHero, ARTIFACT_NECROMANCER_PENDANT);
		GiveArtefact(strHero, ARTIFACT_DRAGON_SCALE_ARMOR);
		GiveArtefact(strHero, ARTIFACT_DRAGON_SCALE_SHIELD);
		GiveArtefact(strHero, ARTIFACT_DRAGON_BONE_GRAVES);
		GiveArtefact(strHero, ARTIFACT_DRAGON_WING_MANTLE);
		GiveArtefact(strHero, ARTIFACT_DRAGON_TEETH_NECKLACE);
		GiveArtefact(strHero, ARTIFACT_DRAGON_TALON_CROWN);
		GiveArtefact(strHero, ARTIFACT_DRAGON_EYE_RING);
		GiveArtefact(strHero, ARTIFACT_DRAGON_FLAME_TONGUE);
		GiveArtefact(strHero, ARTIFACT_DWARVEN_MITHRAL_CUIRASS);
		GiveArtefact(strHero, ARTIFACT_DWARVEN_MITHRAL_GREAVES);
		GiveArtefact(strHero, ARTIFACT_DWARVEN_MITHRAL_HELMET);
		GiveArtefact(strHero, ARTIFACT_DWARVEN_MITHRAL_SHIELD);
		GiveArtefact(strHero, ARTIFACT_ROBE_OF_MAGI);
		GiveArtefact(strHero, ARTIFACT_STAFF_OF_MAGI);
		GiveArtefact(strHero, ARTIFACT_CROWN_OF_MAGI);
		GiveArtefact(strHero, ARTIFACT_RING_OF_MAGI);
		GiveArtefact(strHero, ARTIFACT_TOME_OF_DESTRUCTION);
		GiveArtefact(strHero, ARTIFACT_TOME_OF_LIGHT_MAGIC);
		GiveArtefact(strHero, ARTIFACT_TOME_OF_DARK_MAGIC);
		GiveArtefact(strHero, ARTIFACT_TOME_OF_SUMMONING_MAGIC);
		GiveArtefact(strHero, ARTIFACT_SWORD_OF_RUINS);
		GiveArtefact(strHero, ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD);
		GiveArtefact(strHero, ARTIFACT_SKULL_HELMET);
		GiveArtefact(strHero, ARTIFACT_BUCKLER);
		GiveArtefact(strHero, ARTIFACT_BOOTS_OF_INTERFERENCE);
		GiveArtefact(strHero, ARTIFACT_TITANS_TRIDENT);
		GiveArtefact(strHero, ARTIFACT_EVERCOLD_ICICLE);
		GiveArtefact(strHero, ARTIFACT_PHOENIX_FEATHER_CAPE);
		GiveArtefact(strHero, ARTIFACT_EARTHSLIDERS);
	end;
	function TTH_Test_VisitBlackMarkent(iPlayer)
		local strHero = GetPlayerHeroes(iPlayer)[0];
		local objBlackMarket = GetObjectNamesByType("BUILDING_BLACK_MARKET")[0];
		MakeHeroInteractWithObject(strHero, objBlackMarket);
	end;

	function TTH_ObjectTouchTrigger_BuildingBlackMarket(strHero, strBuilding)
		local iPlayer = GetObjectOwner(strHero);
		if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
			print("Blocked AI from visiting Artifact Merchant");
		else
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
				, "/Text/Game/Scripts/ArtiManage/CombineArtifact/TTH_QB_CombineArtifact_or_VisitBlackMarket.txt"
				, "TTH_Func_VisitBlackMarket('"..strHero.."','"..strBuilding.."')"
				, "TTH_Func_ArtiManage_CombineArtifact('"..strHero.."')");
		end;
	end;

	-- 英雄选择合成宝物
		TTH_TABLE_ArtiManage_ArtifactCombine = {
			[ARTIFACT_ANGELIC_ALLIANCE] = {
				["ArtifactId"] = ARTIFACT_ANGELIC_ALLIANCE
				, ["Text"] = "/Text/Game/Artifacts/Angelic_Alliance/Name.txt"
				, ["Component"] = {
					[ARTIFACT_GUARDIAN_01] = {
						["ArtifactId"] = ARTIFACT_GUARDIAN_01
						, ["Text"] = "/Text/Game/Artifacts/Guardian_Helmet/Name.txt"
					}
					, [ARTIFACT_GUARDIAN_02] = {
						["ArtifactId"] = ARTIFACT_GUARDIAN_02
						, ["Text"] = "/Text/Game/Artifacts/Guardian_Boots/Name.txt"
					}
					, [ARTIFACT_GUARDIAN_03] = {
						["ArtifactId"] = ARTIFACT_GUARDIAN_03
						, ["Text"] = "/Text/Game/Artifacts/Guardian_Shield/Name.txt"
					}
					, [ARTIFACT_PLATE_MAIL_OF_STABILITY] = {
						["ArtifactId"] = ARTIFACT_PLATE_MAIL_OF_STABILITY
						, ["Text"] = "/Text/Game/Artifacts/PlateMailOfStability/Name.txt"
					}
				}
			}
			,[ARTIFACT_GRAAL] = {
				["ArtifactId"] = ARTIFACT_GRAAL
				, ["Text"] = "/Text/Game/Artifacts/Graal/Name.txt"
				, ["Component"] = {
					[ARTIFACT_LEGION_BASIC] = {
						["ArtifactId"] = ARTIFACT_LEGION_BASIC
						, ["Text"] = "/Text/Game/Artifacts/Legion_Basic/Name.txt"
					}
					, [ARTIFACT_LEGION_ADVANCED] = {
						["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
						, ["Text"] = "/Text/Game/Artifacts/Legion_Advanced/Name.txt"
					}
					, [ARTIFACT_LEGION_EXPERT] = {
						["ArtifactId"] = ARTIFACT_LEGION_EXPERT
						, ["Text"] = "/Text/Game/Artifacts/Legion_Expert/Name.txt"
					}
					, [ARTIFACT_ENDLESS_BAG_OF_GOLD] = {
						["ArtifactId"] = ARTIFACT_ENDLESS_BAG_OF_GOLD
						, ["Text"] = "/Text/Game/Artifacts/Endless_Bag_Of_Gold/Name.txt"
					}
					, [ARTIFACT_CROWN_OF_LEADER] = {
						["ArtifactId"] = ARTIFACT_CROWN_OF_LEADER
						, ["Text"] = "/Text/Game/Artifacts/Crown_Of_Leader/Name.txt"
					}
				}
			}
			,[ARTIFACT_HORN_OF_PLENTY] = {
				["ArtifactId"] = ARTIFACT_HORN_OF_PLENTY
				, ["Text"] = "/Text/Game/Artifacts/Horn_Of_Plenty/Name.txt"
				, ["Component"] = {
					[ARTIFACT_RES_BASIC] = {
						["ArtifactId"] = ARTIFACT_RES_BASIC
						, ["Text"] = "/Text/Game/Artifacts/Res_Basic/Name.txt"
					}
					, [ARTIFACT_RES_ADVANCED] = {
						["ArtifactId"] = ARTIFACT_RES_ADVANCED
						, ["Text"] = "/Text/Game/Artifacts/Res_Advanced/Name.txt"
					}
					, [ARTIFACT_RES_EXPERT] = {
						["ArtifactId"] = ARTIFACT_RES_EXPERT
						, ["Text"] = "/Text/Game/Artifacts/Res_Expert/Name.txt"
					}
					, [ARTIFACT_BAND_OF_CONJURER] = {
						["ArtifactId"] = ARTIFACT_BAND_OF_CONJURER
						, ["Text"] = "/Text/Game/Artifacts/Band_Of_Conjurer/Name.txt"
					}
				}
			}
			,[ARTIFACT_CURSE_SHOULDER] = {
				["ArtifactId"] = ARTIFACT_CURSE_SHOULDER
				, ["Text"] = "/Text/Game/Artifacts/Curse_Shoulder/Name.txt"
				, ["Component"] = {
					[ARTIFACT_CLOAK_OF_MOURNING] = {
						["ArtifactId"] = ARTIFACT_CLOAK_OF_MOURNING
						, ["Text"] = "/Text/Game/Artifacts/Cloak_of_mourning/Name.txt"
					}
					, [ARTIFACT_STAFF_OF_VEXINGS] = {
						["ArtifactId"] = ARTIFACT_STAFF_OF_VEXINGS
						, ["Text"] = "/Text/Game/Artifacts/Staff_of_vexing/Name.txt"
					}
					, [ARTIFACT_RING_OF_DEATH] = {
						["ArtifactId"] = ARTIFACT_RING_OF_DEATH
						, ["Text"] = "/Text/Game/Artifacts/Ring_of_Death/Name.txt"
					}
					, [ARTIFACT_NECROMANCER_PENDANT] = {
						["ArtifactId"] = ARTIFACT_NECROMANCER_PENDANT
						, ["Text"] = "/Text/Game/Artifacts/Necromancer_Pendant/Name.txt"
					}
				}
			}
			,[ARTIFACT_DRACONIC] = {
				["ArtifactId"] = ARTIFACT_DRACONIC
				, ["Text"] = "/Text/Game/Artifacts/Draconic/Name.txt"
				, ["Component"] = {
					[ARTIFACT_DRAGON_SCALE_ARMOR] = {
						["ArtifactId"] = ARTIFACT_DRAGON_SCALE_ARMOR
						, ["Text"] = "/Text/Game/Artifacts/Dragon_scale_armor/Name.txt"
					}
					, [ARTIFACT_DRAGON_SCALE_SHIELD] = {
						["ArtifactId"] = ARTIFACT_DRAGON_SCALE_SHIELD
						, ["Text"] = "/Text/Game/Artifacts/DragonscaleShield/Name.txt"
					}
					, [ARTIFACT_DRAGON_BONE_GRAVES] = {
						["ArtifactId"] = ARTIFACT_DRAGON_BONE_GRAVES
						, ["Text"] = "/Text/Game/Artifacts/Dragon_bone_greaves/Name.txt"
					}
					, [ARTIFACT_DRAGON_WING_MANTLE] = {
						["ArtifactId"] = ARTIFACT_DRAGON_WING_MANTLE
						, ["Text"] = "/Text/Game/Artifacts/Dragon_wing_mantle/Name.txt"
					}
					, [ARTIFACT_DRAGON_TEETH_NECKLACE] = {
						["ArtifactId"] = ARTIFACT_DRAGON_TEETH_NECKLACE
						, ["Text"] = "/Text/Game/Artifacts/Dragon_teeth_necklace/Name.txt"
					}
					, [ARTIFACT_DRAGON_TALON_CROWN] = {
						["ArtifactId"] = ARTIFACT_DRAGON_TALON_CROWN
						, ["Text"] = "/Text/Game/Artifacts/Dragon_talon_crown/Name.txt"
					}
					, [ARTIFACT_DRAGON_EYE_RING] = {
						["ArtifactId"] = ARTIFACT_DRAGON_EYE_RING
						, ["Text"] = "/Text/Game/Artifacts/Dragon_eye_ring/Name.txt"
					}
					, [ARTIFACT_DRAGON_FLAME_TONGUE] = {
						["ArtifactId"] = ARTIFACT_DRAGON_FLAME_TONGUE
						, ["Text"] = "/Text/Game/Artifacts/Dragon_flame_tongue/Name.txt"
					}
				}
			}
			,[ARTIFACT_SENTINEL] = {
				["ArtifactId"] = ARTIFACT_SENTINEL
				, ["Text"] = "/Text/Game/Artifacts/Sentinel/Name.txt"
				, ["Component"] = {
					[ARTIFACT_DWARVEN_MITHRAL_CUIRASS] = {
						["ArtifactId"] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
						, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_cuirass/Name.txt"
					}
					, [ARTIFACT_DWARVEN_MITHRAL_GREAVES] = {
						["ArtifactId"] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
						, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_greaves/Name.txt"
					}
					, [ARTIFACT_DWARVEN_MITHRAL_HELMET] = {
						["ArtifactId"] = ARTIFACT_DWARVEN_MITHRAL_HELMET
						, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_helmet/Name.txt"
					}
					, [ARTIFACT_DWARVEN_MITHRAL_SHIELD] = {
						["ArtifactId"] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
						, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_shield/Name.txt"
					}
				}
			}
			,[ARTIFACT_EIGHTFOLD] = {
				["ArtifactId"] = ARTIFACT_EIGHTFOLD
				, ["Text"] = "/Text/Game/Artifacts/Eightfold/Name.txt"
				, ["Component"] = {
					[ARTIFACT_ROBE_OF_MAGI] = {
						["ArtifactId"] = ARTIFACT_ROBE_OF_MAGI
						, ["Text"] = "/Text/Game/Artifacts/Robe_of_magi/Name.txt"
					}
					, [ARTIFACT_STAFF_OF_MAGI] = {
						["ArtifactId"] = ARTIFACT_STAFF_OF_MAGI
						, ["Text"] = "/Text/Game/Artifacts/Staff_of_magi/Name.txt"
					}
					, [ARTIFACT_CROWN_OF_MAGI] = {
						["ArtifactId"] = ARTIFACT_CROWN_OF_MAGI
						, ["Text"] = "/Text/Game/Artifacts/Crown_of_magi/Name.txt"
					}
					, [ARTIFACT_RING_OF_MAGI] = {
						["ArtifactId"] = ARTIFACT_RING_OF_MAGI
						, ["Text"] = "/Text/Game/Artifacts/Ring_of_magi/Name.txt"
					}
				}
			}
			,[ARTIFACT_CODEX] = {
				["ArtifactId"] = ARTIFACT_CODEX
				, ["Text"] = "/Text/Game/Artifacts/Codex/Name.txt"
				, ["Component"] = {
					[ARTIFACT_TOME_OF_DESTRUCTION] = {
						["ArtifactId"] = ARTIFACT_TOME_OF_DESTRUCTION
						, ["Text"] = "/Text/Game/Artifacts/Tome_of_Destruction/Name.txt"
					}
					, [ARTIFACT_TOME_OF_LIGHT_MAGIC] = {
						["ArtifactId"] = ARTIFACT_TOME_OF_LIGHT_MAGIC
						, ["Text"] = "/Text/Game/Artifacts/Tome_of_Light_Magic/Name.txt"
					}
					, [ARTIFACT_TOME_OF_DARK_MAGIC] = {
						["ArtifactId"] = ARTIFACT_TOME_OF_DARK_MAGIC
						, ["Text"] = "/Text/Game/Artifacts/Tome_of_Dark_Magic/Name.txt"
					}
					, [ARTIFACT_TOME_OF_SUMMONING_MAGIC] = {
						["ArtifactId"] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
						, ["Text"] = "/Text/Game/Artifacts/Tome_of_Summoning_Magic/Name.txt"
					}
				}
			}
			,[ARTIFACT_PLATE_MAIL_OF_STABILITY] = {
				["ArtifactId"] = ARTIFACT_PLATE_MAIL_OF_STABILITY
				, ["Text"] = "/Text/Game/Artifacts/PlateMailOfStability/Name.txt"
				, ["Component"] = {
					[ARTIFACT_SWORD_OF_RUINS] = {
						["ArtifactId"] = ARTIFACT_SWORD_OF_RUINS
						, ["Text"] = "/Text/Game/Artifacts/SwordOfRuin/Name.txt"
					}
					, [ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD] = {
						["ArtifactId"] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
						, ["Text"] = "/Text/Game/Artifacts/Breastplate_of_petrified_wood/Name.txt"
					}
					, [ARTIFACT_SKULL_HELMET] = {
						["ArtifactId"] = ARTIFACT_SKULL_HELMET
						, ["Text"] = "/Text/Game/Artifacts/Skull_Helmet/Name.txt"
					}
					, [ARTIFACT_BUCKLER] = {
						["ArtifactId"] = ARTIFACT_BUCKLER
						, ["Text"] = "/Text/Game/Artifacts/Buckler/Name.txt"
					}
					, [ARTIFACT_BOOTS_OF_INTERFERENCE] = {
						["ArtifactId"] = ARTIFACT_BOOTS_OF_INTERFERENCE
						, ["Text"] = "/Text/Game/Artifacts/Boots_of_interference/Name.txt"
					}
				}
			}
			,[ARTIFACT_TOME_OF_DESTRUCTION] = {
				["ArtifactId"] = ARTIFACT_TOME_OF_DESTRUCTION
				, ["Text"] = "/Text/Game/Artifacts/Tome_of_Destruction/Name.txt"
				, ["Component"] = {
					[ARTIFACT_TITANS_TRIDENT] = {
						["ArtifactId"] = ARTIFACT_TITANS_TRIDENT
						, ["Text"] = "/Text/Game/Artifacts/Titan`s_trident/Name.txt"
					}
					, [ARTIFACT_EVERCOLD_ICICLE] = {
						["ArtifactId"] = ARTIFACT_EVERCOLD_ICICLE
						, ["Text"] = "/Text/Game/Artifacts/Evercold_icicle/Name.txt"
					}
					, [ARTIFACT_PHOENIX_FEATHER_CAPE] = {
						["ArtifactId"] = ARTIFACT_PHOENIX_FEATHER_CAPE
						, ["Text"] = "/Text/Game/Artifacts/Phoenix_feather_cape/Name.txt"
					}
					, [ARTIFACT_EARTHSLIDERS] = {
						["ArtifactId"] = ARTIFACT_EARTHSLIDERS
						, ["Text"] = "/Text/Game/Artifacts/Earthsliders/Name.txt"
					}
				}
			}
		}
		function TTH_Func_ArtiManage_CombineArtifact(strHero)
			TTH_Func_ArtiManage_CombineArtifactChosen(strHero, 1);
		end;
		function TTH_Func_ArtiManage_CombineArtifactChosen(strHero, iChoose)
			local iPlayer = GetObjectOwner(strHero);
			local strText1 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_ANGELIC_ALLIANCE]["Text"];
			local strText2 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_GRAAL]["Text"];
			local strText3 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_HORN_OF_PLENTY]["Text"];
			local strText4 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_CURSE_SHOULDER]["Text"];
			local strText5 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_DRACONIC]["Text"];
			local strText6 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_SENTINEL]["Text"];
			local strText7 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_EIGHTFOLD]["Text"];
			local strText8 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_CODEX]["Text"];
			local strText9 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_PLATE_MAIL_OF_STABILITY]["Text"];
			local strText10 = TTH_TABLE_ArtiManage_ArtifactCombine[ARTIFACT_TOME_OF_DESTRUCTION]["Text"];
			local iArtifactId = 0;
			if iChoose + 0 == 1 then
				iArtifactId = ARTIFACT_ANGELIC_ALLIANCE;
			elseif iChoose + 0 == 2 then
				iArtifactId = ARTIFACT_GRAAL;
			elseif iChoose + 0 == 3 then
				iArtifactId = ARTIFACT_HORN_OF_PLENTY;
			elseif iChoose + 0 == 4 then
				iArtifactId = ARTIFACT_CURSE_SHOULDER;
			elseif iChoose + 0 == 5 then
				iArtifactId = ARTIFACT_DRACONIC;
			elseif iChoose + 0 == 6 then
				iArtifactId = ARTIFACT_SENTINEL;
			elseif iChoose + 0 == 7 then
				iArtifactId = ARTIFACT_EIGHTFOLD;
			elseif iChoose + 0 == 8 then
				iArtifactId = ARTIFACT_CODEX;
			elseif iChoose + 0 == 9 then
				iArtifactId = ARTIFACT_PLATE_MAIL_OF_STABILITY;
			elseif iChoose + 0 == 10 then
				iArtifactId = ARTIFACT_TOME_OF_DESTRUCTION;
			end;
			if iChoose + 0 < 10 then
				local iChooseNext = iChoose + 1;
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/ArtiManage/CombineArtifact/QuestionChooseType"..iChoose..".txt";strText1=strText1,strText2=strText2,strText3=strText3,strText4=strText4,strText5=strText5,strText6=strText6,strText7=strText7,strText8=strText8,strText9=strText9,strText10=strText10}, "TTH_Func_ArtiManage_CombineArtifactImpl('"..strHero.."','"..iArtifactId.."')", "TTH_Func_ArtiManage_CombineArtifactChosen('"..strHero.."','"..iChooseNext.."')");
			else
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/ArtiManage/CombineArtifact/QuestionChooseType"..iChoose..".txt";strText1=strText1,strText2=strText2,strText3=strText3,strText4=strText4,strText5=strText5,strText6=strText6,strText7=strText7,strText8=strText8,strText9=strText9,strText10=strText10}, "TTH_Func_ArtiManage_CombineArtifactImpl('"..strHero.."','"..iArtifactId.."')", "TTH_Func_ArtiManage_Giveup('"..strHero.."')");
			end;
		end;
		function TTH_Func_ArtiManage_CombineArtifactImpl(strHero, strArtifactId)
			local iPlayer = GetObjectOwner(strHero);
			local iArtifactId = strArtifactId + 0;
			local objArtifact = TTH_TABLE_ArtiManage_ArtifactCombine[iArtifactId];
			local strCombineText = objArtifact["Text"];
			local arrComponentTextExist = {"", "", "", "", "", "", "", ""};
			local arrComponentTextNotExist = {"", "", "", "", "", "", "", ""};
			local iComponentCount = length(objArtifact["Component"]);
			local iIndex = 0;
			for iComponent, objComponent in objArtifact["Component"] do
				if HasArtefact(strHero, objComponent["ArtifactId"], 0) ~= nil then
					arrComponentTextExist[iIndex] = objComponent["Text"];
				else
					arrComponentTextNotExist[iIndex] = objComponent["Text"];
					iComponentCount = iComponentCount - 1;
				end;
				iIndex = iIndex + 1;
			end;
			if iComponentCount < length(objArtifact["Component"]) then
				MessageBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/ArtiManage/CombineArtifact/TTH_MB_NotCompleteComponent.txt"
					;strComponentText0=arrComponentTextNotExist[0]
					,strComponentText1=arrComponentTextNotExist[1]
					,strComponentText2=arrComponentTextNotExist[2]
					,strComponentText3=arrComponentTextNotExist[3]
					,strComponentText4=arrComponentTextNotExist[4]
					,strComponentText5=arrComponentTextNotExist[5]
					,strComponentText6=arrComponentTextNotExist[6]
					,strComponentText7=arrComponentTextNotExist[7]
					,strCombineText=strCombineText}, nil);
			else
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/ArtiManage/CombineArtifact/TTH_QB_CombineArtifact_or_Giveup.txt"
					;strComponentText0=arrComponentTextExist[0]
					,strComponentText1=arrComponentTextExist[1]
					,strComponentText2=arrComponentTextExist[2]
					,strComponentText3=arrComponentTextExist[3]
					,strComponentText4=arrComponentTextExist[4]
					,strComponentText5=arrComponentTextExist[5]
					,strComponentText6=arrComponentTextExist[6]
					,strComponentText7=arrComponentTextExist[7]
					,strCombineText=strCombineText}, "TTH_Func_ArtiManage_CombineArtifactDeal('"..strHero.."','"..iArtifactId.."')", "TTH_Func_ArtiManage_Giveup('"..strHero.."')");
			end;
		end;
		function TTH_Func_ArtiManage_CombineArtifactDeal(strHero, strArtifactId)
			local iPlayer = GetObjectOwner(strHero);
			local iArtifactId = strArtifactId + 0;
			local objArtifact = TTH_TABLE_ArtiManage_ArtifactCombine[iArtifactId];
			local strCombineText = objArtifact["Text"];
			for iIndex, objComponent in objArtifact["Component"] do
				RemoveArtefact(strHero, objComponent["ArtifactId"]);
			end;
			GiveArtefact(strHero, iArtifactId);
			MessageBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/ArtiManage/CombineArtifact/TTH_MB_CombineArtifactSuccess.txt"
				;strCombineText=strCombineText}, nil);
		end;

	-- 英雄选择访问宝物商店
		function TTH_Func_VisitBlackMarket(strHero, strBuilding)
			Trigger(OBJECT_TOUCH_TRIGGER, strBuilding, nil);
			SetObjectEnabled(strBuilding, not nil);
			MakeHeroInteractWithObject(strHero, strBuilding);
			Trigger(OBJECT_TOUCH_TRIGGER, strBuilding, "TTH_ObjectTouchTrigger_BuildingBlackMarket");
			SetObjectEnabled(strBuilding, nil);
		end;
-- end

---------------------------------------------------------------------------------------------------------------------------------------------
--ACTIVATOR
---------------------------------------------------------------------------------------------------------------------------------------------

H55_PrepareAdvMap();

---------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
---------------------------------------------------------------------------------------------------------------------------------------------

-- TTH_COMMON.setTrigger2ObjectType("BUILDING_DRAGON_UTOPIA", OBJECT_TOUCH_TRIGGER, 'H55_UtopiaVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_SUNKEN_TEMPLE", OBJECT_TOUCH_TRIGGER, 'H55_SunkenTempleVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_NAGA_BANK", OBJECT_TOUCH_TRIGGER, 'H55_MageVaultVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_CRYPT", OBJECT_TOUCH_TRIGGER, 'H55_CryptVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_GARGOYLE_STONEVAULT", OBJECT_TOUCH_TRIGGER, 'H55_StoneVaultVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_DWARVEN_TREASURE", OBJECT_TOUCH_TRIGGER, 'H55_DwarvenTreasureVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_DEMOLISH", OBJECT_TOUCH_TRIGGER, 'H55_DemolishVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_UNKEMPT", OBJECT_TOUCH_TRIGGER, 'H55_UnkemptVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_CYCLOPS_STOCKPILE", OBJECT_TOUCH_TRIGGER, 'H55_StockpileVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_BLOOD_TEMPLE", OBJECT_TOUCH_TRIGGER, 'H55_WitchBankVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_TREANT_THICKET", OBJECT_TOUCH_TRIGGER, 'H55_TreantThicketVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_PYRAMID", OBJECT_TOUCH_TRIGGER, 'H55_PyramidVisit', nil);
-- TTH_COMMON.setTrigger2ObjectType("BUILDING_NAGA_TEMPLE", OBJECT_TOUCH_TRIGGER, 'object_touch_handler', nil);

-- TTH_COMMON.setTrigger2ObjectType("BUILDING_ABANDONED_MINE", OBJECT_TOUCH_TRIGGER, 'H55_AbandonedVisit', nil);