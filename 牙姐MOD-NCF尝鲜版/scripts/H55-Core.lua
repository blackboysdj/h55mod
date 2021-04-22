----------------------------------------------------------------------------------------------------------------------------------------------------
--MIGHT & MAGIC: HEROES 5.5 - CORE
----------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus
--Website: http://heroescommunity.com/viewthread.php3?TID=41303

----------------------------------------------------------------------------------------------------------------------------------------------------
--SYSTEM VARIABLES
----------------------------------------------------------------------------------------------------------------------------------------------------

--Game
TTH_NUM_MAX = 999999;

H55_Switch = 1;
H55_Difficulty = GetDifficulty();
H55_TeamAsked = 0;
H55_GameMode = 0;
H55_AmountCrashes = 0;
H55_AmountCycles = 0;
H55_AmountCyclesAI = 0;
H55_CycleSpeed = 2;
H55_PuzzleQuest = 0;
H55_DEBUG = {0,"",0,""};
H55_DbgTxt = {0,"",0,""};
H55_NewDayTrigger = 0;
H55_NeutralStackSize = 1;
H55_GovernorExpCoef = 1;
H55_IgnoreExpAdjustment = 0;
H55_CompetitiveRunelore = 0;
H55_NoMentoring = 0;
H55_BuildNeutralTowns = 0;
H55_PlayerTownLevel = 0;
H55_AITownLevel = 1;
H55_AICheatValue = 0;
H55_AIHandicap = 0;
H55_AICheatMode = 4;
H55_AllAgainstOne = 0;

doFile("/scripts/H55-Settings.lua");

--Timer

H55_Day = 1;
H55_Week = 1;
H55_AbsoluteWeek = 1;
H55_Month = 1;
H55_Workday = 1;
H55_DailyEventsCounter = {1,1,1,1,1,1,1,1};
H55_EstatesDay = {};
H55_MiningDay = {};
H55_TestDay = 0;
H55_BankTest = 0;

--AI

H55_PlayerStatus = {0,0,0,0,0,0,0,0}
H55_PlayerFactions = {0,0,0,0,0,0,0,0}
H55_AIStartResources = {20001,20501,20601,20701,20801,20901,21001,30001,30501,30601,30701,30801,30901,31001,50001,50501,50601,50701,50801,50901,51001};
H55_AIStartResourcesNormal = {20000,20500,20600,20700,20800,20900,21000,30000,30500,30600,30700,30800,30900,31000,50000,50500,50600,50700,50800,50900,51000};
H55_AIKillMode = 1;
H55_AmountAIBankVisits = 0;

H55_StartBonusGold = {
10500,10600,10700,10800,10900,11000,
20500,20600,20700,20800,20900,21000,
30500,30600,30700,30800,30900,31000,
50500,50600,50700,50800,50900,51000,
10501,10601,10701,10801,10901,11001,
20501,20601,20701,20801,20901,21001,
30501,30601,30701,30801,30901,31001,
50501,50601,50701,50801,50901,51001
};

H55_StartBonusNormal = {18,19,20,21};
H55_StartBonusHard = {13,14,15,16};
H55_StartBonusImpossible = {8,9,10,11};

H55_StartBonusNormalWO = {33,34,35,36};
H55_StartBonusHardWO = {23,24,25,26};
H55_StartBonusImpossibleWO = {13,14,15,16};

--Neutrals

H55_TownQtyDivisor = 1;
H55_TownQtyBankDifficulty = 0.01;

--Town Gate

H55_TeleportStatus = {};
H55_TownGateOwners = {};
H55_Pi = 3.1417;
H55_SpinSwitch = 1;

--Town Conversion

H55_TownManageOwners = {};
H55_TownConvOwners = {};
H55_MaxTownsPerFaction = 1;
H55_AmountAIConversions = 0;
H55_AmountAIDwellingConversions = 0;
H55_MaxDwellingsT1 = 2;
H55_MaxDwellingsT2 = 2;
H55_MaxDwellingsT3 = 2;
H55_MaxDwellingsT4 = 4;
H55_UniqueDwellings = {};

--Governance

H55_Governors = {};
H55_GovernorsWithTown = {};
H55_TownsWithGovernor = {};
H55_GovernorInaugurationDay = {};
H55_CastleDefenseOwners = {};
H55_MageGuildBonusOwners = {};
H55_SpecialAttackOwners = {};
H55_SpecialKnowledgeOwners = {};
H55_RunicShrineBonusOwners = {};
H55_SpecialSpellPowerOwners = {};
H55_GovernanceTier1 = {};
H55_GovernanceTier2 = {};
H55_GovernanceTier3 = {};
H55_GovernanceTier4 = {};
H55_GovernanceTier5 = {};
H55_GovernanceTier6 = {};
H55_GovernanceTier7 = {};

--Economy

H55_GlobalWeeklyWoodPayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailyWoodPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyOrePayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailyOrePayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyMercuryPayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailyMercuryPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyCrystalPayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailyCrystalPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklySulphurPayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailySulphurPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyGemPayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailyGemPayout = {0,0,0,0,0,0,0,0};
H55_GlobalWeeklyGoldPayout = {0,0,0,0,0,0,0,0};
H55_GlobalDailyGoldPayout = {0,0,0,0,0,0,0,0};
H55_TaxRate = 5;

--Supply

H55_MysticalGardens = GetObjectNamesByType("BUILDING_MYSTICAL_GARDEN");
H55_MysticalGardenClaims = {};
H55_Windmills = GetObjectNamesByType("BUILDING_WINDMILL");
H55_WindmillClaims = {};
H55_Waterwheels = GetObjectNamesByType("BUILDING_WATER_WHEEL");
H55_WaterwheelClaims = {};
H55_SiegeWorkshops = GetObjectNamesByType("BUILDING_WARMACHINE_FACTORY");
H55_SiegeWorkshopClaims = {};

H55_MysticalGardensOwned = {};
H55_WeeklyMysticalGardenRes = {};
H55_WindmillsOwned = {};
H55_WeeklyWindmillRes = {};
H55_WeeklyWindmillResQty = {};
H55_WaterwheelsOwned = {};
H55_SiegeWorkshopsOwned = {};
H55_WeeklySiegeWorkshopResQty = {};

H55_GoblinNetworkOwners = {};
H55_DwarvenNetworkOwners = {};
H55_NetworkSkillAmount = {0,0,0,0,0,0,0,0};

--Movement

H55_AcademyMoveCorrection = {};
H55_FortressMoveCorrection = {};
H55_HavenMoveCorrection = {};
H55_SylvanMoveCorrection = {};
H55_StrongholdMoveCorrection = {};
H55_InfernoMoveCorrection = {};
H55_DungeonMoveCorrection = {};

----------------------------------------------------------------------------------------------------------------------------------------------------
--DYNAMIC VARIABLES
----------------------------------------------------------------------------------------------------------------------------------------------------

--Skills

H55_EstatesOwners = {};
H55_MiningOwners = {};
H55_LeadershipOwners = {};
H55_LeadershipPowerOwners = {};
H55_LuckPowerOwners = {};
H55_BaseLeadershipOwners = {};
H55_OccultismOwners = {};
H55_OccultismPowerOwners = {};
H55_OverkillOwners = {};
H55_OverkillSumOwners = {};
H55_BaseOccultismOwners = {};
H55_ExpertShatterOwners = {};
H55_DemonicFlameOwners = {};
H55_DemonicRetaliationOwners = {};
H55_DemonicRetaliationPlusOwners = {};
H55_ChillingSteelOwners = {};
H55_ChillingBonesOwners = {};
H55_ExplodingCorpsesOwners = {};
H55_ConsumeCorpseOwners = {};
H55_SpoilsOwners = {};
H55_TwilightOwners = {};
H55_PariahOwners = {};
H55_CertificateOwners = {};
H55_DarkRevelationOwners = {};
H55_OffensiveFormationOwners = {};
H55_DefensiveFormationOwners = {};
H55_OffensiveFormationPlusOwners = {};
H55_DefensiveFormationPlusOwners = {};
H55_RunicKnowledgeOwners = {};
H55_LuckyStrikeOwners = {};
H55_ArcaneExaltationOwners = {};
H55_RetributionOwners = {};
H55_PrayerOwners = {};
H55_EmpathyOwners = {};
H55_EncourageOwners = {};
H55_KnowYourEnemyOwners = {};
H55_ForestRageOwners = {};
H55_SecretsDestructionOwners = {};
H55_ColdDeathOwners = {};
H55_MentoringOwners = {};
H55_BarbarianMentoringOwners = {};
H55_TripleCatapultOwners = {};
H55_TripleCatapultExpertOwners = {};
H55_TripleCatapultRingOwners = {};
H55_PreparationOwners = {};
H55_BackToVoidOwners = {};
H55_RefinedManaOwners = {};
H55_BRefinedManaOwners = {};
H55_GuardianAngelOwners = {};
H55_StudentAwardOwners = {};
H55_AcademyAwardOwners = {};
H55_ExpertTrainerOwners = {};
H55_LordOfUndeadOwners = {};
H55_RaiseArchersOwners = {};
H55_ExpertTrainerPlusOwners = {};

H55_ShatterLightOwners = {};
H55_BaseShatterLightOwners = {};
H55_ShatterDarkOwners = {};
H55_BaseShatterDarkOwners = {};
H55_ShatterDestructiveOwners = {};
H55_BaseShatterDestructiveOwners = {};
H55_ShatterSummoningOwners = {};
H55_BaseShatterSummoningOwners = {};

H55_ImbueBallistaOwners = {};
H55_HeroHasImbuedHisArrows = {};
H55_HeroHasImbuedHisBallista = {};

--Town Buildings

H55_HallIntrigueStudent = {};
H55_FountainStudent = {};
H55_PrimalAltarStudent = {};
H55_BrotherhoodStudent = {};
H55_PileSkullsStudent = {};


for i, town in GetObjectNamesByType("TOWN") do
	H55_HallIntrigueStudent[town] = {};
	H55_FountainStudent[town] = {};
	H55_PrimalAltarStudent[town] = {};
	H55_BrotherhoodStudent[town] = {};
	H55_PileSkullsStudent[town] = {};
end;

H55_HallTrialStudent = {};
H55_HallCourageStudent = {};
H55_HallMightStudent = {};

--Artifacts

H55_ArtifactsIndexed = 0;
H55_MinorArtifactsUsed = {};
H55_MajorArtifactsUsed = {};
H55_RelicArtifactsUsed = {};
H55_UltimateArtifactsUsed = {};
H55_RemoveTheseArtifactsFromBanks = {};

H55_ArtWoodReceived = {};
H55_ArtOreReceived = {};
H55_ArtSulphurReceived = {};
H55_ArtCrystalReceived = {};
H55_ArtGemReceived = {};
H55_ArtMercuryReceived = {};
H55_ArtInterestReceived = {};
H55_ArtMoveReceived = {};
H55_ArtManaReceived = {};
H55_EightFoldManaReceived = {};
H55_Monk1ManaReceived = {};
H55_Monk2ManaReceived = {};
H55_Monk4ManaReceived = {};
H55_EternalLightManaReceived = {};
H55_PayBackManaReceived = {};
H55_SecretsOfDestructionManaReceived = {};
H55_RitualManaReceived = {};
H55_SkillMasteryManaReceived = {};

H55_CodexReceived = {};
H55_CIResurrectT1 = {};
H55_CIResurrectT2 = {};
H55_CIResurrectT3 = {};
H55_CIResurrectT4 = {};
H55_CIResurrectT5 = {};
H55_CIResurrectT6 = {};
H55_CIResurrectT7 = {};
H55_CIResurrectTALL = {};
H55_RefuseCIResurrectT1 = {};
H55_RefuseCIResurrectT2 = {};
H55_RefuseCIResurrectT3 = {};
H55_RefuseCIResurrectT4 = {};
H55_RefuseCIResurrectT5 = {};
H55_RefuseCIResurrectT6 = {};
H55_RefuseCIResurrectT7 = {};
H55_RefuseCIResurrectTALL = {};

H55_LegionT1Received = {};
H55_LegionT2Received = {};
H55_LegionT3Received = {};
H55_LegionT4Received = {};
H55_LegionT5Received = {};
H55_LegionT6Received = {};
H55_LegionT7Received = {};

-- by 牙姐
H55_DraconicReceived = {};
H55_SentinelReceived = {};
H55_PhoenixReceived = {};
H55_CIReincarnation = {};
H55_CIReincarnation_newest = {};
H55_ChangedReincarnation = {};
H55_CI_Inheritance = {};
H55_CINecromancy_Pelt = -1;
H55_PowerNecromancy_Pelt = 0;
H55_CI_Kyrre = -1;
H55_CI_Hero2 = -1;
H55_CI_Melodia = -1;
H55_Power_Hangvul = 0;
H55_Reset_Hangvul = 0;
H55_Power_Sylsai = 0;
H55_Reset_Sylsai = 0;
H55_Power_Welygg = 0;
H55_Reset_Welygg = 0;
H55_Reset_Gelu = 0;
H55_Power_Kunyak = 0;
H55_Reset_Kunyak = 0;
H55_Power_Biara = 0;
H55_Reset_Biara = 0;
H55_Power_Cyrus = 0;
H55_Reset_Cyrus = 0;
H55_Reset_KujinMP = 0;
H55_Reset_Hero9 = 0;
H55_CI_Sovereign = -1;
H55_Hero_Stat_List = {};

H55_PendantMasteryOwners = {};
H55_PendantMasteryPlusOwners = {};
H55_DragonishSetOwners = {};
H55_DragonishHalfSetOwners = {};
H55_DragonishCrSetOwners = {};
H55_NecroSetOwners = {};
H55_NecroHalfSetOwners = {};
H55_RunicSetOwners = {};
H55_ArcherSetOwners = {};
H55_LionSetOwners = {};
H55_VestmentSetOwners = {};
H55_DwarvenSetOwners = {};
H55_SarIssusSetOwners = {};
H55_SarIssusPlusSetOwners = {};
H55_UrgashSetOwners = {};
H55_MonkSetOwners = {};
H55_GuardianSetOwners = {};
H55_SaintSetOwners = {};
-- H55_ManaPotionOwners = {};
-- H55_ResurrectPotionOwners = {};

--Specs

H55_ShamanPattern = {};

-- by 牙姐
H55_CragLevel = 0;
H55_NadaurLevel = 0;
H55_SandroLevel = 0;
-- H55_TimerkhanLevel = 0;
H55_IldarLevel = 0;
H55_VinraelLevel = 0;
H55_VinraelMana_Level = 1;
H55_TazarLevel = 0;
H55_MephalaLevel = 0;
H55_MaahirLevel = 0;
H55_EllesharLevel = 0;
H55_VegeyrLevel = 0;
H55_AlmegirLevel = 0;
H55_Hero2Level = 0;
H55_Hero3Level = 0;
H55_ZouleikaLevel = 0;
H55_Hero7Level = 0;
H55_CI_Zombie_Straker = 0;
H55_Town_Zombie_Straker = 0;

H55_StatSpecNumbersA = {7,14,21,28,35,42,49,56};
--H55_StatSpecNumbersB = {8,16,24,32,40,48,56,62};
H55_StatSpecReceived = {};

H55_WeeklyReinforce_List = {};
H55_InfernalLoomTable = {};
H55_DefendUsTable = {};

H55_JenovaReceived = 0;
H55_RedHeavenHero06Received = 0;
H55_RissaReceived = 0;
-- H55_SephinrothReceived = 0;
H55_UfretinReceived = 0;

H55_MatewaReceived = 0;

H55_HydrasReceived = 0;
H55_DjinnsReceived = 0;
H55_RakshasasReceived = 0;
H55_ClericsReceived = 0;
H55_TreantsReceived = 0;
H55_NightmaresReceived = 0;
H55_PitFiendsReceived = 0;
H55_WitchesReceived = 0;
H55_WightsReceived = 0;
H55_LichesReceived = 0;
H55_ThanesReceived = 0;

-- by 牙姐
H55_BlackKnightReceived = 0;
H55_MummyReceived = 0;
H55_BlackKnightReceived_Change = 0
H55_MummyReceived_Change = 0
H55_WolfReceived_Change = 0;
H55_MelodiaReceived = 0;
H55_WolfReceived = 0;
H55_QuroqReceived = 0;

H55_ManticoresReceived = 0;
H55_MummiesReceived = 0;
H55_WolvesReceived = 0;

H55_HeavenReceived_Change = 0
H55_Training_Cost_Isabell_List = {150, 255, 1800, 3900};
H55_Training_DownId_Isabell_List = {1, 3, 5, 9};
H55_Training_UpId_Isabell_List = {3, 5, 9, 11};

H55_DivineGuardiansReceived = {0,0,0,0,0,0,0,0};
H55_SpoilsReceived = {};
H55_ElementalsReceived = {};
H55_SpellcastersReceived = {};
H55_DragonishReceived = {};
H55_EmbraceReceived = {};
H55_LightPenaltyReceived = {};
H55_DestructivePenaltyReceived = {};

H55_WeeklyEventsDone = {};

-- by 牙姐
H55_length_playerheroes = {0,0,0,0,0,0,0,0};
H55_length_playerheroes_script = {0,0,0,0,0,0,0,0};
H55_flag_startbonus = {};
H55_Welygg_Switch = 0;

H55_TeachSpell_L3 = {};
H55_TeachSpell_L4 = {};

H55_Touch_Grail = {};
H55_CI_Grail = {};
H55_CI_Grail_Last = {};
--end

-- by 牙姐
-- begin core arguments
H55_Switch_Bank_Restday = 0;
-- end core arguments

-- by 牙姐
-- begin Wulfstan
H55SMOD_Wulfstan = {};
-- end Wulfstan

-- by 牙姐
-- begin Death_Tread
TTH_DEATH_TREAD = {};
-- end Death_Tread

-- by 牙姐
-- begin 英雄手动特技3
TTH_HeroCustomAbilityOwner3 = {};
-- end 英雄手动特技3

-- by 牙姐
-- begin 英雄手动特技3
TTH_HeroCustomAbility_CastCreature_GCD = {};
TTH_HeroCustomAbility_CastCreature_GCD_Reduce8Daily = {};
TTH_HeroCustomAbility_CI = {};
-- end 英雄手动特技3

-- by 牙姐
-- begin 士气<-5转化为亡灵巫师
TTH_Necromancer = {};
-- end

-- combat var  by 牙姐
H55SMOD_HeroLevel = {};
H55SMOD_HeroSkill = {};
H55SMOD_HeroArtifact = {};
H55SMOD_HeroAbility = {};
-- end

-- karissa SKELETON
H55SMOD_ListKarissaLevel = {1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40};

TTH_Ildar_Race4Morale = 0;

----------------------------------------------------------------------------------------------------------------------------------------------------
--SUPPORT FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------

-- by 牙姐 2018-10-16 19:03:31
-- begin 通用函数
-- 数组中最小值
function TTH_COMMON_MIN(arr)
	local iCompare = nil;
	if arr ~= nil and length(arr) > 0 then
		for iIndex, objItem in arr do
			if objItem == nil then
				return nil;
			end;
			if iCompare == nil then
				if objItem ~= nil then
					iCompare = objItem;
				end;
			else
				if objItem ~= nil and iCompare > objItem then
					iCompare = objItem;
				end;
			end;
		end;
	end;
	return iCompare;
end;
-- end

function H55_SetSleepTime(num)
	if num ~= 0 and num <= 100 then
		H55_CycleSpeed = num;
	else
		print("Value must be between 1 and 100!");
	end;
end;

function H55_Round(num)
	if num < 0.5 then
		return 0;
	end;
	local ost = mod(num, 1);
	local res = num - ost;
	if ost < 0.5 then
		return res;
		else res = res + 1;
		return res;
	end;
end;

function H55_RndWithout(num,excluded)
	local rnd1 = random(num)+1;
	local rnd2 = random(num)+1;
	local rnd3 = random(num)+1;
	local rnd4 = random(num)+1;
	local rnd5 = random(num)+1;
	if rnd1 ~= excluded then return rnd1
	elseif rnd2 ~= excluded then return rnd2
	elseif rnd3 ~= excluded then return rnd3
	elseif rnd4 ~= excluded then return rnd4
	else return rnd5
	end;
end;

function H55_Floor(num)
	local ost = mod(num, 1);
	return num - ost;
end;

function H55_Ceil(num)
	local ost = mod(num, 1);
	if ost > 0 then
		return num - ost + 1;
	else
		return num - ost;
	end;
end;

function H55_GetDistance(object1,object2)
	local x1,y1,z1 = GetObjectPosition(object1);
	local x2,y2,z2 = GetObjectPosition(object2);
	local a = 0;
	local b = 0;
	local distance = 0;
	if z1 == z2 then
		if x1 > x2 then a = x1-x2 elseif x2 > x1 then a = x2-x1 end;
		if y1 > y2 then b = y1-y2 elseif y2 > y1 then b = y2-y1 end;
		if a == 0 then
			distance = b;
		elseif b == 0 then
			distance = a;
		else
			local pythagoras1 = a*a;
			local pythagoras2 = b*b;
			distance = H55_Round(sqrt(pythagoras1+pythagoras2));
		end;
	else
		distance = 1000;
	end;
	return distance;
end;

function H55_GetDistanceUG(object1,object2)
	local x1,y1,z1 = GetObjectPosition(object1);
	local x2,y2,z2 = GetObjectPosition(object2);
	local a = 0;
	local b = 0;
	local distance = 0;
	if x1 > x2 then a = x1-x2 elseif x2 > x1 then a = x2-x1 end;
	if y1 > y2 then b = y1-y2 elseif y2 > y1 then b = y2-y1 end;
	if a == 0 then
		distance = b;
	elseif b == 0 then
		distance = a;
	else
		local pythagoras1 = a*a;
		local pythagoras2 = b*b;
		distance = H55_Round(sqrt(pythagoras1+pythagoras2));
	end;
	if z1 == z2 then
		distance = distance + 10;
	end;
	return distance;
end;

function H55_ContainsAmount(array, sample)
	local amount = 0;
	for index, element in array do
		if (element == sample) then
			amount = amount+1;
		end;
	end;
	return amount;
end;

function H55_Insert(array, sample)
	local index = length(array);
	array[index] = sample;
end;

function H55_TakeResources(PlayerID,ResourceID,chosenamount,AffectedHero)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount - chosenamount;
	if newamount < 0 then
		SetPlayerResource (PlayerID,ResourceID,0,AffectedHero);
	else
		SetPlayerResource (PlayerID,ResourceID,newamount,AffectedHero);
	end;
end;

function H55_GiveResources(PlayerID,ResourceID,chosenamount,AffectedHero)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount + chosenamount;
	if newamount > 0 then
		SetPlayerResource (PlayerID,ResourceID,newamount,AffectedHero);
	end;
end;

function H55_TakeResourcesSilent(PlayerID,ResourceID,chosenamount)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount - chosenamount;
	if newamount < 0 then
		SetPlayerResource (PlayerID,ResourceID,0);
	else
		SetPlayerResource (PlayerID,ResourceID,newamount);
	end;
end;

function H55_GiveResourcesSilent(PlayerID,ResourceID,chosenamount)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount + chosenamount;
	if newamount > 0 then
		SetPlayerResource (PlayerID,ResourceID,newamount);
	end;
end;

function H55_SetResourcesSilent(PlayerID,ResourceID,chosenamount)
	local currentamount = GetPlayerResource(PlayerID,ResourceID);
	local newamount = currentamount + chosenamount;
	if newamount > 0 then
		SetPlayerResource (PlayerID,ResourceID,newamount);
	end;
end;

function H55_ArmyInfo(hero)
	local type = {};
	local count = {};
	type[0], type[1], type[2], type[3], type[4], type[5], type[6] = GetHeroCreaturesTypes(hero);
		for i = 0,6 do
			if(type[i] ~= 0) then
				count[i] = GetHeroCreatures(hero,type[i]);
			else
			count[i] = 0;
			end;
		end;
	return type,count
end;

function H55_ArmyInfoSimple(hero)
	local type = {};
	type[0], type[1], type[2], type[3], type[4], type[5], type[6] = GetHeroCreaturesTypes(hero);
	return type
end;

function H55_GetHeroTaxRate(hero)
	local type,count = H55_ArmyInfo(hero)
	local army = 0;
	local level = GetHeroLevel(hero);
	for i = 0,6 do
		if type[i] ~= 0 then
			army = army + count[i];
		end;
	end;
	local tax = H55_Round( (level+sqrt(army)) * H55_TaxRate);
	return tax;
end;

function H55_MonsterInfo(creature)
	local type = {};
	local count = {};
	type[0], type[1], type[2], type[3], type[4], type[5], type[6] = GetObjectCreaturesTypes(creature);
		for i = 0,6 do
			if(type[i] ~= 0) then
				count[i] = GetObjectCreatures(creature,type[i]);
			else
			count[i] = 0;
			end;
		end;
	return type,count
end;

function H55_IncStackSize(multiplier)
	print("H55 Modifying Neutral stack sizes...");
	BlockGame();
	local neutrals = GetObjectNamesByType("CREATURE");
	local totalamount = length(neutrals)
	for i = 1, totalamount-1 do
		local type,count = H55_MonsterInfo(neutrals[i]);
		for ind = 0,6 do
			if (type[ind] ~= 0) and (type[ind] ~= nil) then
				local amount = H55_Round((count[ind]*multiplier)-count[ind]);
				AddObjectCreatures(neutrals[i],type[ind],amount)
			end;
		end;
	end;
	UnblockGame();
	print("H55 Neutrals processed");
end;

function H55_TriggerToObjectType(object_type,trigger_type,handler,prevent_disabling)
    local names = GetObjectNamesByType(object_type);
    for i,name in names do
        SetTrigger(trigger_type,name,handler);
        if(prevent_disabling==nil) then
            SetObjectEnabled(name,nil);
        end;
    end;
end;

function H55_GetAmountActivePlayers()
	local active = 0;
	for i=1,8 do
		if (GetPlayerState(i) == 1) then
			active = active+1;
		end;
	end;
	return active
end;

function H55_UpdateTownQtyDifficulty()
	local towns = GetObjectNamesByType("TOWN");
	H55_TownQtyDivisor = (length(towns))/(H55_GetAmountActivePlayers());
	H55_MaxTownsPerFaction = H55_Round(H55_AmountExtraTownsDwellings+H55_TownQtyDivisor);
	H55_MaxDwellingsT1 = H55_Round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	H55_MaxDwellingsT2 = H55_Round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	H55_MaxDwellingsT3 = H55_Round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	H55_MaxDwellingsT4 = 2+H55_Round(H55_AmountExtraTownsDwellings+(H55_TownQtyDivisor/2));
	if H55_TownQtyDivisor >= 2 and H55_TownQtyDivisor < 3 then H55_TownQtyBankDifficulty = 0.02 end;
	if H55_TownQtyDivisor >= 3 and H55_TownQtyDivisor < 4 then H55_TownQtyBankDifficulty = 0.03 end;
	if H55_TownQtyDivisor >= 4 and H55_TownQtyDivisor < 5 then H55_TownQtyBankDifficulty = 0.04 end;
	if H55_TownQtyDivisor >= 5 then H55_TownQtyBankDifficulty = 0.05 end;
end;

function H55_ConstructNeutralTowns(level)
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == 0 then
			if level == 1 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			elseif level == 2 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			elseif level == 3 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			elseif level == 4 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			elseif level >= 5 then
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
				UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);
			end;
		end;
	end;
end;

function H55_ConstructPlayerTowns(iLevel, iPlayer)
	local listTown = GetObjectNamesByType("TOWN");
	for i, objTown in listTown do
		if GetObjectOwner(objTown) == iPlayer and H55_IsThisAIPlayer(iPlayer) ~= 1 then
			H55_ConstructTowns(objTown, iLevel);
		end;
	end;
end;

function H55_ConstructAITowns(iLevel, iPlayer)
	local listTown = GetObjectNamesByType("TOWN");
	for i, objTown in listTown do
		if GetObjectOwner(objTown) == iPlayer and H55_IsThisAIPlayer(iPlayer) == 1 then
			H55_ConstructTowns(objTown, iLevel);
		end;
	end;
end;

function H55_ConstructTowns(objTown, iLevel)
	if GetObjectOwner(objTown) ~= 0 then
		if iLevel == 0 then
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MARKETPLACE,1);
		elseif iLevel == 1 then
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
		elseif iLevel == 2 then
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_3,1);
		elseif iLevel == 3 then
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_5,1);
		elseif iLevel == 4 then
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_3,1);
		elseif iLevel >= 5 then
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(objTown, TOWN_BUILDING_DWELLING_7,1);
		end;
	end;
end;

function H55_BuildMyTowns(player)
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == player then
			UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1);
			UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1);
		end;
	end;
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--AI FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_DetectP1AI()
	if (GetPlayerState(PLAYER_1) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_1);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[1] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_1,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[1] = 1;
				else
					H55_PlayerStatus[1] = 0;
				end;
			end;
	else
		H55_PlayerStatus[1] = 2;
	end;
end;

function H55_DetectP2AI()
	if (GetPlayerState(PLAYER_2) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_2);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[2] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_2,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[2] = 1;
				else
					H55_PlayerStatus[2] = 0;
				end;
			end;
	else
		H55_PlayerStatus[2] = 2;
	end;

	--Campaign Bugfix

	if GetMapDataPath() == "Maps/Scenario/C1M5/" then
		H55_PlayerStatus[2] = 1;
	end;
end;

function H55_DetectP3AI()
	if (GetPlayerState(PLAYER_3) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_3);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[3] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_3,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[3] = 1;
				else
					H55_PlayerStatus[3] = 0;
				end;
			end;
	else
		H55_PlayerStatus[3] = 2;
	end;
end;

function H55_DetectP4AI()
	if (GetPlayerState(PLAYER_4) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_4);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[4] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_4,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[4] = 1;
				else
					H55_PlayerStatus[4] = 0;
				end;
			end;
	else
		H55_PlayerStatus[4] = 2;
	end;
end;

function H55_DetectP5AI()
	if (GetPlayerState(PLAYER_5) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_5);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[5] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_5,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[5] = 1;
				else
					H55_PlayerStatus[5] = 0;
				end;
			end;
	else
		H55_PlayerStatus[5] = 2;
	end;
end;

function H55_DetectP6AI()
	if (GetPlayerState(PLAYER_6) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_6);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[6] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_6,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[6] = 1;
				else
					H55_PlayerStatus[6] = 0;
				end;
			end;
	else
		H55_PlayerStatus[6] = 2;
	end;
end;

function H55_DetectP7AI()
	if (GetPlayerState(PLAYER_7) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_7);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[7] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_7,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[7] = 1;
				else
					H55_PlayerStatus[7] = 0;
				end;
			end;
	else
		H55_PlayerStatus[7] = 2;
	end;
end;

function H55_DetectP8AI()
	if (GetPlayerState(PLAYER_8) == 1) then
			local heroes = GetPlayerHeroes(PLAYER_8);
			if heroes ~= nil then
				for i, hero in heroes do
					EnableHeroAI(hero,not nil);
					H55_PlayerStatus[8] = 1;
				end;
			else
				local modetoken = GetPlayerResource(PLAYER_8,6);
				if contains(H55_AIStartResources,modetoken) ~= nil then
					H55_PlayerStatus[8] = 1;
				else
					H55_PlayerStatus[8] = 0;
				end;
			end;
	else
		H55_PlayerStatus[8] = 2;
	end;
end;

function H55_DetectPlayerFactions()
	local towns = GetObjectNamesByType("TOWN");
	for i=1,8 do
		for j, town in towns do
			if GetObjectOwner(town) == i then
				H55_PlayerFactions[i] = H55_GetTownRace(town);
			end;
		end;
	end;
end;

function H55_DetectPlayerFactionsSecond()
	for i=1,8 do
		if H55_PlayerFactions[i] == 0 and H55_PlayerStatus[i] == 0 then
			local heroes = GetPlayerHeroes(i);
			if heroes ~= nil then
				H55_PlayerFactions[i] = (H55_GetHeroRaceNum(heroes[0]));
			end;
		end;
	end;
end;

function H55_GetPlayerRace(player)
	local answer = H55_PlayerFactions[player];
	return answer;
end;

function H55_UpdateGameMode()
	local gamemode = 0;
	for i=1,8 do
		local modetoken = GetPlayerResource(i,6);
		if contains(H55_AIStartResources,modetoken) == nil and H55_PlayerStatus[i] == 1 then
			gamemode = 1;
		end;
	end;
	H55_GameMode = gamemode;
end;

function H55_IsThisAIPlayer(player)
	local answer = 0;
	if H55_PlayerStatus[player] == 1 then
		answer = 1;
	end;
	return answer;
end;

function H55_DetectTeamConfig()
	local teamsituation = 0;
	local amounthuman = H55_ContainsAmount(H55_PlayerStatus,0);
	local amountai = H55_ContainsAmount(H55_PlayerStatus,1);
	--if amounthuman == amountai then teamsituation = 1 end;
	if amounthuman == 2 and amountai >= 2 then teamsituation = 1 end;
	if amounthuman == 3 and amountai >= 3 then teamsituation = 1 end;
	if amounthuman == 4 and amountai == 4 then teamsituation = 1 end;
	if amounthuman == 1 and amountai >= 2 then teamsituation = 2 end;
	return teamsituation
end;

function H55_TeamHumansvsAI()
	for i=1,8 do
		if H55_PlayerStatus[i] == 0 then SetPlayerTeam(i,1) end;
		if H55_PlayerStatus[i] == 1 then SetPlayerTeam(i,2) end;
	end;
end;

function H55_NoTeams()
	print("H55 Request for Teams Canceled")
end;

function H55_AIMapSizeCoef()
		local floorsize = GetMaxFloor();
		local mapsize = GetTerrainSize();
		local coef = 1;
		if floorsize == 0 then
			if mapsize == 320 then coef = 1.2 end;
			if mapsize == 256 then coef = 1.1 end;
			if mapsize == 216 then coef = 1.1 end;
		end;
		if floorsize == 1 then
			if mapsize == 320 then coef = 1.3 end;
			if mapsize == 256 then coef = 1.2 end;
			if mapsize == 216 then coef = 1.2 end;
			if mapsize == 176 then coef = 1.1 end;
		end;
		return coef
end;

function H55_AIDifficultyCoef()
		local coef = 0.4;
		if H55_Difficulty == 3 then coef = 0.7 end;
		if H55_Difficulty == 2 then coef = 0.6 end;
		if H55_Difficulty == 1 then coef = 0.5 end;
		return coef
end;

function H55_SetEasyExperience()
		local coef = 1;
		if H55_Difficulty == 3 then coef = 1.27 end;
		if H55_Difficulty == 2 then coef = 1.18 end;
		if H55_Difficulty == 1 then coef = 1.09 end;
		SetHeroesExpCoef(coef);
		print("H55 Experience settings ignored");
end;

function H55_AITimerCoef()
	local coef = 1;
	if H55_Day >= 56 and H55_Day < 112 then coef = 1.1 end;
	if H55_Day >= 112 and H55_Day < 168 then coef = 1.2 end;
	if H55_Day >= 168 and H55_Day < 224 then coef = 1.3 end;
	if H55_Day >= 224 then coef = 1.4 end;
	return coef
end;

function H55_AICheatSetting()
	local coef = 1;
	if H55_AICheatMode == 0 then
		coef = 0.4;
	elseif H55_AICheatMode == 1 then
		coef = 0.4;
	elseif H55_AICheatMode == 2 then
		coef = 0.6;
	elseif H55_AICheatMode == 3 then
		coef = 0.8;
	elseif H55_AICheatMode == 5 then
		coef = 1.2;
	elseif H55_AICheatMode == 6 then
		coef = 1.4;
	else
		coef = 1;
	end;
	return coef
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--CONSOLE COMMANDS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_Move(hero,num)
	ChangeHeroStat(hero,STAT_MOVE_POINTS,num);
end;

function H55_NoFog(player)
	OpenCircleFog(0,0,0,9999,player);
	OpenCircleFog(0,0,1,9999,player);
end;

function H55_Speedrun(player)
	local heroes = GetPlayerHeroes(player)
	for i,hero in heroes do
		AddHeroCreatures(hero,84,999);
	end;
end;

-- by 牙姐
function H55_AIStartSetting(player)
	if (GetPlayerState(player) == 1) then
		if H55_AllAgainstOne == 1 then
			for index = 1, 8 do
				if (index == player) then
					SetPlayerTeam(index, 1);
				elseif (GetPlayerState(index) == 1) then
					SetPlayerTeam(index, 2);
				end;
			end;
			print("All players have teamed up against player "..player.."!");
		end;
		for index = 1, 8 do
			local heroes = GetPlayerHeroes(index);
			for i, hero in heroes do
				if (index ~= player) and (H55_AICheats == 1) then
					if H55_AISetBonus_Tear == 1 then
						H55_AIStartSetting_GiveTear(hero);
						print("Tear has been given!");
					end;
					-- if H55_AISetBonus_Set == 1 then
					-- 	H55_AIStartSetting_GiveSet(hero);
					-- 	print("ArtifactSet has been given!");
					-- end;
					if H55_AISetBonus_Travel == 1 then
						H55_AIStartSetting_GiveTravel(hero);
						print("Travel has been given!");
					end;
					if H55_AISetBonus_Draconic == 1 then
						H55_AIStartSetting_GiveDraconic(hero);
						print("Draconic has been given!");
					end;
					if H55_AISetBonus_Shield == 1 then
						H55_AIStartSetting_GiveShield(hero);
						print("Shield has been given!");
					end;
					if H55_AISetBonus_Angelic_Alliance == 1 then
						H55_AIStartSetting_GiveAngelicAlliance(hero);
						print("Angelic_Alliance has been given!");
					end;
					if H55_AISetBonus_Curse_Shoulder == 1 then
						H55_AIStartSetting_GiveCurseShoulder(hero);
						print("Curse_Shoulder has been given!");
					end;
					if H55_AISetBonus_Phoenix == 1 then
						H55_AIStartSetting_GivePhoenix(hero);
						print("Phoenix has been given!");
					end;
					if H55_AISkillBonusBasic == 1 then
						H55_AIStartSetting_TeachSkill_Basic(hero);
						print("BasicSkill has been teached!");
					end;
					if H55_AISkillBonusAbsolute == 1 then
						H55_AIStartSetting_TeachSkill_Absolute(hero);
						print("AbsoluteSkill has been teached!");
					end;
				end;
				if (index == player) and (H55_PlayerCheats == 1) then
					if H55_PlayerSetBonus_Tear == 1 then
						H55_AIStartSetting_GiveTear(hero);
						print("Tear has been given!");
					end;
					-- if H55_PlayerSetBonus_Set == 1 then
					-- 	H55_AIStartSetting_GiveSet(hero);
					-- 	print("ArtifactSet has been given!");
					-- end;
					if H55_PlayerSetBonus_Travel == 1 then
						H55_AIStartSetting_GiveTravel(hero);
						print("Travel has been given!");
					end;
					if H55_PlayerSetBonus_Draconic == 1 then
						H55_AIStartSetting_GiveDraconic(hero);
						print("Draconic has been given!");
					end;
					if H55_PlayerSetBonus_Shield == 1 then
						H55_AIStartSetting_GiveShield(hero);
						print("Shield has been given!");
					end;
					if H55_PlayerSetBonus_Angelic_Alliance == 1 then
						H55_AIStartSetting_GiveAngelicAlliance(hero);
						print("Angelic_Alliance has been given!");
					end;
					if H55_PlayerSetBonus_Curse_Shoulder == 1 then
						H55_AIStartSetting_GiveCurseShoulder(hero);
						print("Curse_Shoulder has been given!");
					end;
					if H55_PlayerSetBonus_Phoenix == 1 then
						H55_AIStartSetting_GivePhoenix(hero);
						print("Phoenix has been given!");
					end;
					if H55_PlayerSkillBonusBasic == 1 then
						H55_AIStartSetting_TeachSkill_Basic(hero);
						print("BasicSkill has been teached!");
					end;
					if H55_PlayerSkillBonusAbsolute == 1 then
						H55_AIStartSetting_TeachSkill_Absolute(hero);
						print("AbsoluteSkill has been teached!");
					end;
				end;
			end;
		end;
		if H55_AIArmyCoef ~= 1 then
			H55_AIKillMode = H55_AIArmyCoef;
			print("AI army is increased by "..H55_AIArmyCoef.."00%!");
		end;
		print("Good Luck player "..player.."!");
	else
		print ("Request denied, player "..player.." is not an active player!")
	end;
end;

function H55_AIStartSetting_GiveTear(s_hero)
	GiveArtefact(s_hero, 53);
end;

function H55_AIStartSetting_GiveSet(s_hero)
	local s_class = H55_GetHeroClass(s_hero);
	if s_class == "Knight" then
		GiveArtefact(s_hero, ARTIFACT_ANGELIC_ALLIANCE);
		GiveArtefact(s_hero, 31);
		GiveArtefact(s_hero, 16);
		GiveArtefact(s_hero, 11);
	end;
	if s_class == "Paladin" then
		GiveArtefact(s_hero, 48);
		GiveArtefact(s_hero, 49);
		GiveArtefact(s_hero, 50);
		GiveArtefact(s_hero, 51);
	end;
	if s_class == "Heretic" then
		GiveArtefact(s_hero, 55);
		GiveArtefact(s_hero, 33);
		GiveArtefact(s_hero, 6);
		GiveArtefact(s_hero, 70);
		GiveArtefact(s_hero, 71);
		GiveArtefact(s_hero, 83);
	end;

	if s_class == "Ranger" then
		GiveArtefact(s_hero, ARTIFACT_ANGELIC_ALLIANCE);
		GiveArtefact(s_hero,4);
		GiveArtefact(s_hero,95);
	end;
	if s_class == "Warden" then
		GiveArtefact(s_hero, ARTIFACT_ANGELIC_ALLIANCE);
		GiveArtefact(s_hero, 124);
	end;
	if s_class == "Druid" then
		GiveArtefact(s_hero, 126);
		GiveArtefact(s_hero,34);
		GiveArtefact(s_hero,35);
	end;

	if s_class == "Seer" then
		GiveArtefact(s_hero, 31);
		GiveArtefact(s_hero, 16);
		GiveArtefact(s_hero, 11);
		GiveArtefact(s_hero, 25);
		GiveArtefact(s_hero, 124);
	end;
	if s_class == "Wizard" then
		GiveArtefact(s_hero,44);
		GiveArtefact(s_hero,45);
		GiveArtefact(s_hero,46);
		GiveArtefact(s_hero,47);
		GiveArtefact(s_hero,79);
	end;
	if s_class == "Elementalist" then
		GiveArtefact(s_hero, 44);
		GiveArtefact(s_hero, 45);
		GiveArtefact(s_hero, 46);
		GiveArtefact(s_hero, 47);
		GiveArtefact(s_hero,76);
	end;

	if s_class == "Demonlord" then
		GiveArtefact(s_hero,23);
		GiveArtefact(s_hero,66);
		GiveArtefact(s_hero, ARTIFACT_ANGELIC_ALLIANCE);
	end;
	if s_class == "Gatekeeper" then
		GiveArtefact(s_hero, 48);
		GiveArtefact(s_hero, 49);
		GiveArtefact(s_hero, 50);
		GiveArtefact(s_hero, 51);
	end;
	if s_class == "Sorcerer" then
		GiveArtefact(s_hero, 126);
		GiveArtefact(s_hero, 116);
		GiveArtefact(s_hero, 117);
		GiveArtefact(s_hero, 118);
		GiveArtefact(s_hero, 119);
	end;

	if s_class == "Deathknight" then
		GiveArtefact(s_hero, 124);
		GiveArtefact(s_hero, 38);
		GiveArtefact(s_hero, 42);
		GiveArtefact(s_hero, 43);
		GiveArtefact(s_hero, 36);
	end;
	if s_class == "Reaver" then
		GiveArtefact(s_hero, 55);
		GiveArtefact(s_hero, 33);
		GiveArtefact(s_hero, 6);
		GiveArtefact(s_hero, 70);
		GiveArtefact(s_hero, 71);
		GiveArtefact(s_hero, 83);
	end;
	if s_class == "Necromancer" then
		GiveArtefact(s_hero, 55);
		GiveArtefact(s_hero, 33);
		GiveArtefact(s_hero, 6);
		GiveArtefact(s_hero, 70);
		GiveArtefact(s_hero, 71);
		GiveArtefact(s_hero, 83);
	end;

	if s_class == "Engineer" then
		GiveArtefact(s_hero, 91);
		GiveArtefact(s_hero, 41);
		GiveArtefact(s_hero, 74);
		GiveArtefact(s_hero, 75);
	end;
	if s_class == "Runemage" then
		GiveArtefact(s_hero, 2);
		GiveArtefact(s_hero, 48);
		GiveArtefact(s_hero, 49);
		GiveArtefact(s_hero, 50);
		GiveArtefact(s_hero, 51);
	end;
	if s_class == "Flamekeeper" then
		GiveArtefact(s_hero, 85);
		GiveArtefact(s_hero, 48);
		GiveArtefact(s_hero, 49);
		GiveArtefact(s_hero, 50);
		GiveArtefact(s_hero, 51);
	end;

	if s_class == "Overlord" then
		GiveArtefact(s_hero, ARTIFACT_ANGELIC_ALLIANCE);
		GiveArtefact(s_hero, 31);
		GiveArtefact(s_hero, 16);
		GiveArtefact(s_hero, 11);
	end;
	if s_class == "Assassin" then
		GiveArtefact(s_hero, 42);
		GiveArtefact(s_hero, 36);
		GiveArtefact(s_hero, 37);
		GiveArtefact(s_hero, 41);
		GiveArtefact(s_hero, 40);
		GiveArtefact(s_hero, 39);
	end;
	if s_class == "Warlock" then
		GiveArtefact(s_hero, 125);
		GiveArtefact(s_hero,81);
		GiveArtefact(s_hero,82);
	end;

	if s_class == "Barbarian" then
		GiveArtefact(s_hero, 31);
		GiveArtefact(s_hero, 16);
		GiveArtefact(s_hero, 11);
		GiveArtefact(s_hero, 74);
		GiveArtefact(s_hero, 75);
		GiveArtefact(s_hero, 57);
	end;
	if s_class == "Shaman" then
		GiveArtefact(s_hero,125);
		GiveArtefact(s_hero,34);
		GiveArtefact(s_hero,35);
	end;
	if s_class == "Witch" then
		GiveArtefact(s_hero, 126);
		GiveArtefact(s_hero, 116);
		GiveArtefact(s_hero, 117);
		GiveArtefact(s_hero, 118);
		GiveArtefact(s_hero, 119);
	end;
end;

function H55_AIStartSetting_GiveTravel(s_hero)
	GiveArtefact(s_hero, 24);
end;

function H55_AIStartSetting_GiveDraconic(s_hero)
	GiveArtefact(s_hero, 123);
end;
function H55_AIStartSetting_GiveShield(s_hero)
	GiveArtefact(s_hero, 124);
end;
function H55_AIStartSetting_GiveAngelicAlliance(s_hero)
	GiveArtefact(s_hero, 68);
end;
function H55_AIStartSetting_GiveCurseShoulder(s_hero)
	GiveArtefact(s_hero, 114);
end;
function H55_AIStartSetting_GivePhoenix(s_hero)
	GiveArtefact(s_hero, 126);
end;

function H55_AIStartSetting_TeachSkill_Basic(s_hero)
	local s_class = H55_GetHeroClass(s_hero);
	if s_class == "Knight" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,195);
	end;
	if s_class == "Paladin" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,195);
	end;
	if s_class == "Heretic" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,199);
	end;

	if s_class == "Ranger" then
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,191);
	end;
	if s_class == "Warden" then
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,195);
	end;
	if s_class == "Druid" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,203);
	end;

	if s_class == "Seer" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,191);
	end;
	if s_class == "Wizard" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
	end;
	if s_class == "Elementalist" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,18);
	end;

	if s_class == "Demonlord" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,199);
	end;
	if s_class == "Gatekeeper" then
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,203);
	end;
	if s_class == "Sorcerer" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,18);
	end;

	if s_class == "Deathknight" then
		GiveHeroSkill(s_hero,10);
		GiveHeroSkill(s_hero,199);
	end;
	if s_class == "Reaver" then
		GiveHeroSkill(s_hero,1);
		GiveHeroSkill(s_hero,203);
	end;
	if s_class == "Necromancer" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
	end;

	if s_class == "Engineer" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,191);
	end;
	if s_class == "Runemage" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
	end;
	if s_class == "Flamekeeper" then
		GiveHeroSkill(s_hero,2);
		GiveHeroSkill(s_hero,203);
	end;

	if s_class == "Overlord" then
		GiveHeroSkill(s_hero,6);
		GiveHeroSkill(s_hero,191);
	end;
	if s_class == "Assassin" then
		GiveHeroSkill(s_hero,6);
		GiveHeroSkill(s_hero,199);
	end;
	if s_class == "Warlock" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
	end;

	if s_class == "Barbarian" then
		GiveHeroSkill(s_hero,6);
		GiveHeroSkill(s_hero,195);
	end;
	if s_class == "Shaman" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
	end;
	if s_class == "Witch" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,18);
	end;
end;

function H55_AIStartSetting_TeachSkill_Absolute(s_hero)
	if H55_GetHeroClass(s_hero) == "Knight" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,13);
		GiveHeroSkill(s_hero,13);
		sleep(1);
		GiveHeroSkill(s_hero,55);
		sleep(1);
		GiveHeroSkill(s_hero,85);
		sleep(1);
		GiveHeroSkill(s_hero,75);
		sleep(1);
		GiveHeroSkill(s_hero,56);
		sleep(1);
		GiveHeroSkill(s_hero,78);
	end;
	if H55_GetHeroClass(s_hero) == "Paladin" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,11);
		GiveHeroSkill(s_hero,11);
		sleep(1);
		GiveHeroSkill(s_hero,49);
		sleep(1);
		GiveHeroSkill(s_hero,165);
		sleep(1);
		GiveHeroSkill(s_hero,75);
		sleep(1);
		GiveHeroSkill(s_hero,56);
		sleep(1);
		GiveHeroSkill(s_hero,78);
	end;
	if H55_GetHeroClass(s_hero) == "Heretic" then
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,4);
		GiveHeroSkill(s_hero,10);
		GiveHeroSkill(s_hero,10);
		sleep(1);
		GiveHeroSkill(s_hero,48);
		sleep(1);
		GiveHeroSkill(s_hero,83);
		sleep(1);
		GiveHeroSkill(s_hero,75);
		sleep(1);
		GiveHeroSkill(s_hero,56);
		sleep(1);
		GiveHeroSkill(s_hero,78);
	end;

	if H55_GetHeroClass(s_hero) == "Ranger" then
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,16);
		GiveHeroSkill(s_hero,16);
		GiveHeroSkill(s_hero,6);
		sleep(1);
		GiveHeroSkill(s_hero,32);
		sleep(1);
		GiveHeroSkill(s_hero,116);
		sleep(1);
		GiveHeroSkill(s_hero,65);
		sleep(1);
		GiveHeroSkill(s_hero,117);
		sleep(1);
		GiveHeroSkill(s_hero,36);
		sleep(1);
		GiveHeroSkill(s_hero,124);
	end;
	if H55_GetHeroClass(s_hero) == "Warden" then
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,6);
		sleep(1);
		GiveHeroSkill(s_hero,31);
		sleep(1);
		GiveHeroSkill(s_hero,39);
		sleep(1);
		GiveHeroSkill(s_hero,77);
		sleep(1);
		GiveHeroSkill(s_hero,171);
		sleep(1);
		GiveHeroSkill(s_hero,34);
		sleep(1);
		GiveHeroSkill(s_hero,124);
	end;
	if H55_GetHeroClass(s_hero) == "Druid" then
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,11);
		sleep(1);
		GiveHeroSkill(s_hero,145);
		sleep(1);
		GiveHeroSkill(s_hero,142);
		sleep(1);
		GiveHeroSkill(s_hero,42);
		sleep(1);
		GiveHeroSkill(s_hero,148);
		sleep(1);
		GiveHeroSkill(s_hero,51);
		sleep(1);
		GiveHeroSkill(s_hero,124);
	end;

	if H55_GetHeroClass(s_hero) == "Seer" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
		GiveHeroSkill(s_hero,3);
		GiveHeroSkill(s_hero,5);
		sleep(1);
		GiveHeroSkill(s_hero,41);
		sleep(1);
		GiveHeroSkill(s_hero,119);
		sleep(1);
		GiveHeroSkill(s_hero,27);
		sleep(1);
		GiveHeroSkill(s_hero,155);
		sleep(1);
		GiveHeroSkill(s_hero,145);
		sleep(1);
		GiveHeroSkill(s_hero,137);
	end;
	if H55_GetHeroClass(s_hero) == "Wizard" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,3);
		GiveHeroSkill(s_hero,3);
		GiveHeroSkill(s_hero,17);
		sleep(1);
		GiveHeroSkill(s_hero,41);
		sleep(1);
		GiveHeroSkill(s_hero,67);
		sleep(1);
		GiveHeroSkill(s_hero,25);
		sleep(1);
		GiveHeroSkill(s_hero,79);
		sleep(1);
		GiveHeroSkill(s_hero,69);
		sleep(1);
		GiveHeroSkill(s_hero,137);
	end;
	if H55_GetHeroClass(s_hero) == "Elementalist" then
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,10);
		GiveHeroSkill(s_hero,11);
		GiveHeroSkill(s_hero,12);
		sleep(1);
		GiveHeroSkill(s_hero,41);
		sleep(1);
		GiveHeroSkill(s_hero,48);
		sleep(1);
		GiveHeroSkill(s_hero,49);
		sleep(1);
		GiveHeroSkill(s_hero,53);
		sleep(1);
		GiveHeroSkill(s_hero,44);
		sleep(1);
		GiveHeroSkill(s_hero,137);
	end;

	if H55_GetHeroClass(s_hero) == "Demonlord" then
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,1);
		GiveHeroSkill(s_hero,1);
		sleep(1);
		GiveHeroSkill(s_hero,89);
		sleep(1);
		GiveHeroSkill(s_hero,86);
		sleep(1);
		GiveHeroSkill(s_hero,20);
		sleep(1);
		GiveHeroSkill(s_hero,138);
		sleep(1);
		GiveHeroSkill(s_hero,98);
	end;
	if H55_GetHeroClass(s_hero) == "Gatekeeper" then
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,1);
		GiveHeroSkill(s_hero,1);
		sleep(1);
		GiveHeroSkill(s_hero,89);
		sleep(1);
		GiveHeroSkill(s_hero,86);
		sleep(1);
		GiveHeroSkill(s_hero,20);
		sleep(1);
		GiveHeroSkill(s_hero,138);
		sleep(1);
		GiveHeroSkill(s_hero,98);
	end;
	if H55_GetHeroClass(s_hero) == "Sorcerer" then
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,14);
		GiveHeroSkill(s_hero,1);
		GiveHeroSkill(s_hero,1);
		sleep(1);
		GiveHeroSkill(s_hero,89);
		sleep(1);
		GiveHeroSkill(s_hero,86);
		sleep(1);
		GiveHeroSkill(s_hero,20);
		sleep(1);
		GiveHeroSkill(s_hero,138);
		sleep(1);
		GiveHeroSkill(s_hero,98);
	end;

	if H55_GetHeroClass(s_hero) == "Deathknight" then
		GiveHeroSkill(s_hero,15);
		GiveHeroSkill(s_hero,15);
		GiveHeroSkill(s_hero,10);
		GiveHeroSkill(s_hero,10);
		sleep(1);
		GiveHeroSkill(s_hero,63);
		sleep(1);
		GiveHeroSkill(s_hero,48);
		sleep(1);
		GiveHeroSkill(s_hero,83);
		sleep(1);
		GiveHeroSkill(s_hero,111);
	end;
	if H55_GetHeroClass(s_hero) == "Reaver" then
		GiveHeroSkill(s_hero,15);
		GiveHeroSkill(s_hero,15);
		GiveHeroSkill(s_hero,8);
		GiveHeroSkill(s_hero,10);
		sleep(1);
		GiveHeroSkill(s_hero,63);
		sleep(1);
		GiveHeroSkill(s_hero,41);
		sleep(1);
		GiveHeroSkill(s_hero,47);
		sleep(1);
		GiveHeroSkill(s_hero,111);
	end;
	if H55_GetHeroClass(s_hero) == "Necromancer" then
		GiveHeroSkill(s_hero,15);
		GiveHeroSkill(s_hero,15);
		GiveHeroSkill(s_hero,3);
		GiveHeroSkill(s_hero,3);
		sleep(1);
		GiveHeroSkill(s_hero,63);
		sleep(1);
		GiveHeroSkill(s_hero,25);
		sleep(1);
		GiveHeroSkill(s_hero,140);
		sleep(1);
		GiveHeroSkill(s_hero,111);
	end;

	if H55_GetHeroClass(s_hero) == "Engineer" then
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,151);
		sleep(1);
		GiveHeroSkill(s_hero,39);
		sleep(1);
		GiveHeroSkill(s_hero,31);
		sleep(1);
		GiveHeroSkill(s_hero,103);
		sleep(1);
		GiveHeroSkill(s_hero,161);
		sleep(1);
		GiveHeroSkill(s_hero,167);
	end;
	if H55_GetHeroClass(s_hero) == "Runemage" then
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,11);
		GiveHeroSkill(s_hero,11);
		sleep(1);
		GiveHeroSkill(s_hero,38);
		sleep(1);
		GiveHeroSkill(s_hero,31);
		sleep(1);
		GiveHeroSkill(s_hero,103);
		sleep(1);
		GiveHeroSkill(s_hero,49);
		sleep(1);
		GiveHeroSkill(s_hero,165);
		sleep(1);
		GiveHeroSkill(s_hero,167);
	end;
	if H55_GetHeroClass(s_hero) == "Flamekeeper" then
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,7);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,5);
		GiveHeroSkill(s_hero,13);
		sleep(1);
		GiveHeroSkill(s_hero,39);
		sleep(1);
		GiveHeroSkill(s_hero,77);
		sleep(1);
		GiveHeroSkill(s_hero,31);
		sleep(1);
		GiveHeroSkill(s_hero,103);
		sleep(1);
		GiveHeroSkill(s_hero,55);
		sleep(1);
		GiveHeroSkill(s_hero,167);
	end;

	if H55_GetHeroClass(s_hero) == "Overlord" then
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,18);
		GiveHeroSkill(s_hero,18);
		GiveHeroSkill(s_hero,18);
		sleep(1);
		GiveHeroSkill(s_hero,43);
		sleep(1);
		GiveHeroSkill(s_hero,44);
		sleep(1);
		GiveHeroSkill(s_hero,45);
		sleep(1);
		GiveHeroSkill(s_hero,70);
		sleep(1);
		GiveHeroSkill(s_hero,72);
		sleep(1);
		GiveHeroSkill(s_hero,150);
	end;
	if H55_GetHeroClass(s_hero) == "Assassin" then
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,18);
		GiveHeroSkill(s_hero,18);
		GiveHeroSkill(s_hero,18);
		sleep(1);
		GiveHeroSkill(s_hero,43);
		sleep(1);
		GiveHeroSkill(s_hero,44);
		sleep(1);
		GiveHeroSkill(s_hero,45);
		sleep(1);
		GiveHeroSkill(s_hero,70);
		sleep(1);
		GiveHeroSkill(s_hero,72);
		sleep(1);
		GiveHeroSkill(s_hero,150);
	end;
	if H55_GetHeroClass(s_hero) == "Warlock" then
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,9);
		GiveHeroSkill(s_hero,18);
		GiveHeroSkill(s_hero,18);
		GiveHeroSkill(s_hero,18);
		sleep(1);
		GiveHeroSkill(s_hero,43);
		sleep(1);
		GiveHeroSkill(s_hero,44);
		sleep(1);
		GiveHeroSkill(s_hero,45);
		sleep(1);
		GiveHeroSkill(s_hero,70);
		sleep(1);
		GiveHeroSkill(s_hero,72);
		sleep(1);
		GiveHeroSkill(s_hero,150);
	end;

	if H55_GetHeroClass(s_hero) == "Barbarian" then
		GiveHeroSkill(s_hero,172);
		GiveHeroSkill(s_hero,172);
		GiveHeroSkill(s_hero,172);
		GiveHeroSkill(s_hero,6);
		GiveHeroSkill(s_hero,6);
		GiveHeroSkill(s_hero,4);
		sleep(1);
		GiveHeroSkill(s_hero,174);
		sleep(1);
		GiveHeroSkill(s_hero,178);
		sleep(1);
		GiveHeroSkill(s_hero,36);
		sleep(1);
		GiveHeroSkill(s_hero,76);
		sleep(1);
		GiveHeroSkill(s_hero,75);
		sleep(1);
		GiveHeroSkill(s_hero,176);
	end;
end;

-- HireHero
H55_HireHero_Status = 0;
function H55_HireHero_Step1(i_player)
	if H55_HireHero_Status == 0 then
		AllowPlayerTavernRace(i_player, 0, 0);
		AllowPlayerTavernRace(i_player, 1, 0);
		AllowPlayerTavernRace(i_player, 2, 0);
		AllowPlayerTavernRace(i_player, 3, 0);
		AllowPlayerTavernRace(i_player, 4, 0);
		AllowPlayerTavernRace(i_player, 5, 0);
		AllowPlayerTavernRace(i_player, 6, 0);
		AllowPlayerTavernRace(i_player, 7, 0);
		AllowPlayerTavernHero(i_player, H55_ChooseHero_Name, 1);
		H55_HireHero_Status = 1;
	end;
end;
function H55_HireHero_Step2(i_player)
	if H55_HireHero_Status == 1 then
		AllowPlayerTavernRace(i_player, 0, 1);
		AllowPlayerTavernRace(i_player, 1, 1);
		AllowPlayerTavernRace(i_player, 2, 1);
		AllowPlayerTavernRace(i_player, 3, 1);
		AllowPlayerTavernRace(i_player, 4, 1);
		AllowPlayerTavernRace(i_player, 5, 1);
		AllowPlayerTavernRace(i_player, 6, 1);
		AllowPlayerTavernRace(i_player, 7, 1);
		H55_HireHero_Status = 2;
	end;
end;
function H55_HireHero1(i_player, str_choosehero_name)
	AllowPlayerTavernRace(i_player, 0, 0);
	AllowPlayerTavernRace(i_player, 1, 0);
	AllowPlayerTavernRace(i_player, 2, 0);
	AllowPlayerTavernRace(i_player, 3, 0);
	AllowPlayerTavernRace(i_player, 4, 0);
	AllowPlayerTavernRace(i_player, 5, 0);
	AllowPlayerTavernRace(i_player, 6, 0);
	AllowPlayerTavernRace(i_player, 7, 0);
	AllowPlayerTavernHero(i_player, str_choosehero_name, 1);
end;
function H55_HireHero2(i_player)
	AllowPlayerTavernRace(i_player, 0, 1);
	AllowPlayerTavernRace(i_player, 1, 1);
	AllowPlayerTavernRace(i_player, 2, 1);
	AllowPlayerTavernRace(i_player, 3, 1);
	AllowPlayerTavernRace(i_player, 4, 1);
	AllowPlayerTavernRace(i_player, 5, 1);
	AllowPlayerTavernRace(i_player, 6, 1);
	AllowPlayerTavernRace(i_player, 7, 1);
end;
--end

function H55_TearPlaced()
	H55_PuzzleQuest = 1;
end;

function H55_TC_On()
	H55_TownConvEnabled = 1;
end;

function H55_TC_Off()
	H55_TownConvEnabled = 0;
end;

function H55_IDNearbyTown(hero)
	local towns = GetObjectNamesByType("TOWN");
	local distance = 0;
	local townid = "No Town Nearby";
	for i,town in towns do
		if H55_GetDistance(hero,town) <= 12 then
		 distance = H55_GetDistance(hero,town);
		 townid = town
		end;
	end;
	print(distance);
	print(townid);
end;

function H55_Dbg()
	print("Index: "..H55_DbgTxt[1].." Chapter: "..H55_DbgTxt[2].." Player: "..H55_DbgTxt[3].." Hero: "..H55_DbgTxt[4]);
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--TABLE FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_IndexArtifacts()
	for i,minorartifact in H55_MinorArtifacts do
		if contains(H55_RemoveTheseArtifactsFromBanks,minorartifact) == nil then
			H55_Insert(H55_MinorArtifactsUsed,minorartifact);
		end;
	end;
	for i,majorartifact in H55_MajorArtifacts do
		if contains(H55_RemoveTheseArtifactsFromBanks,majorartifact) == nil then
			H55_Insert(H55_MajorArtifactsUsed,majorartifact);
		end;
	end;
	for i,relicartifact in H55_RelicArtifacts do
		if contains(H55_RemoveTheseArtifactsFromBanks,relicartifact) == nil then
			H55_Insert(H55_RelicArtifactsUsed,relicartifact);
		end;
	end;
	for i,ultimateartifact in H55_UltimateArtifacts do
		if contains(H55_RemoveTheseArtifactsFromBanks,ultimateartifact) == nil then
			H55_Insert(H55_UltimateArtifactsUsed,ultimateartifact);
		end;
	end;
	H55_ArtifactsIndexed = 1;
	print("H55 Day 2 Artifacts indexation complete!")
end;

function H55_GetHeroClass(hero)
	local class = "Undetermined"
	if contains(H55_Knights,hero) ~= nil then class = "Knight" end;
	if contains(H55_Paladins,hero) ~= nil then class = "Paladin" end;
	if contains(H55_Heretics,hero) ~= nil then class = "Heretic" end;
	if contains(H55_Demonlords,hero) ~= nil then class = "Demonlord" end;
	if contains(H55_Gatekeepers,hero) ~= nil then class = "Gatekeeper" end;
	if contains(H55_Sorcerers,hero) ~= nil then class = "Sorcerer" end;
	if contains(H55_DeathKnights,hero) ~= nil then class = "Deathknight" end;
	if contains(H55_Reavers,hero) ~= nil then class = "Reaver" end;
	if contains(H55_Necromancers,hero) ~= nil then class = "Necromancer" end;
	if contains(H55_Rangers,hero) ~= nil then class = "Ranger" end;
	if contains(H55_Wardens,hero) ~= nil then class = "Warden" end;
	if contains(H55_Druids,hero) ~= nil then class = "Druid" end;
	if contains(H55_Seers,hero) ~= nil then class = "Seer" end;
	if contains(H55_Wizards,hero) ~= nil then class = "Wizard" end;
	if contains(H55_Elementalists,hero) ~= nil then class = "Elementalist" end;
	if contains(H55_Overlords,hero) ~= nil then class = "Overlord" end;
	if contains(H55_Assassins,hero) ~= nil then class = "Assassin" end;
	if contains(H55_Warlocks,hero) ~= nil then class = "Warlock" end;
	if contains(H55_Engineers,hero) ~= nil then class = "Engineer" end;
	if contains(H55_Flamekeepers,hero) ~= nil then class = "Flamekeeper" end;
	if contains(H55_Runemages,hero) ~= nil then class = "Runemage" end;
	if contains(H55_Barbarians,hero) ~= nil then class = "Barbarian" end;
	if contains(H55_Shamans,hero) ~= nil then class = "Shaman" end;
	if contains(H55_Witches,hero) ~= nil then class = "Witch" end;
	return class
end;

function H55_GetHeroClassType(hero)
	local type = "Mind"
	if contains(H55_Knights,hero) ~= nil
		or contains(H55_Demonlords,hero) ~= nil
		or contains(H55_DeathKnights,hero) ~= nil
		or contains(H55_Rangers,hero) ~= nil
		or contains(H55_Overlords,hero) ~= nil
		or contains(H55_Engineers,hero) ~= nil
		or contains(H55_Flamekeepers,hero) ~= nil
		or contains(H55_Seers,hero) ~= nil then type = "Might"
	elseif contains(H55_Heretics,hero) ~= nil
		or contains(H55_Sorcerers,hero) ~= nil
		or contains(H55_Necromancers,hero) ~= nil
		or contains(H55_Warlocks,hero) ~= nil
		or contains(H55_Druids,hero) ~= nil
		or contains(H55_Shamans,hero) ~= nil
		or contains(H55_Witches,hero) ~= nil
		or contains(H55_Elementalists,hero) ~= nil then type = "Magic"
	elseif contains(H55_Barbarians,hero) ~= nil then type = "Barbarian"
	else type = "Mind"
	end;
	return type
end;

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

-- by 牙姐 2021-04-02 04:34:05
-- begin 英雄类型
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
-- end

function H55_GetTownRace(town)
	local towntype = 0;
	if contains(GetObjectNamesByType("TOWN_HEAVEN"),town) ~= nil then towntype = 1 end;
	if contains(GetObjectNamesByType("TOWN_PRESERVE"),town) ~= nil then towntype = 2 end;
	if contains(GetObjectNamesByType("TOWN_INFERNO"),town) ~= nil then towntype = 3 end;
	if contains(GetObjectNamesByType("TOWN_NECROMANCY"),town) ~= nil then towntype = 4 end;
	if contains(GetObjectNamesByType("TOWN_ACADEMY"),town) ~= nil then towntype = 5 end;
	if contains(GetObjectNamesByType("TOWN_DUNGEON"),town) ~= nil then towntype = 6 end;
	if contains(GetObjectNamesByType("TOWN_FORTRESS"),town) ~= nil then towntype = 7 end;
	if contains(GetObjectNamesByType("TOWN_STRONGHOLD"),town) ~= nil then towntype = 8 end;
	return towntype
end;

function H55_GetTownRaceID(num)
	local townid = TOWN_HEAVEN;
	if num == 1 then townid = TOWN_HEAVEN end;
	if num == 2 then townid = TOWN_PRESERVE end;
	if num == 3 then townid = TOWN_INFERNO end;
	if num == 4 then townid = TOWN_NECROMANCY end;
	if num == 5 then townid = TOWN_ACADEMY end;
	if num == 6 then townid = TOWN_DUNGEON end;
	if num == 7 then townid = TOWN_FORTRESS end;
	if num == 8 then townid = TOWN_STRONGHOLD end;
	return townid
end;

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

function H55_GetHeroRace(hero)
	local race = "Undetermined";
	if contains(H55_HavenHeroes,hero) ~= nil then race = "Haven" end;
	if contains(H55_SylvanHeroes,hero) ~= nil then race = "Sylvan" end;
	if contains(H55_AcademyHeroes,hero) ~= nil then race = "Academy" end;
	if contains(H55_FortressHeroes,hero) ~= nil then race = "Fortress" end;
	if contains(H55_InfernoHeroes,hero) ~= nil then race = "Inferno" end;
	if contains(H55_NecropolisHeroes,hero) ~= nil then race = "Necropolis" end;
	if contains(H55_DungeonHeroes,hero) ~= nil then race = "Dungeon" end;
	if contains(H55_StrongholdHeroes,hero) ~= nil then race = "Stronghold" end;
	return race
end;

function H55_GetRaceElementalType(cityrace)
	local elemtype = 87;
	if cityrace == "Haven" then elemtype = 88 end;
	if cityrace == "Academy" then elemtype = 88 end;
	if cityrace == "Stronghold" then elemtype = 87 end;
	if cityrace == "Necropolis" then elemtype = 86 end;
	if cityrace == "Dungeon" then elemtype = 87 end;
	if cityrace == "Sylvan" then elemtype = 86 end;
	if cityrace == "Fortress" then elemtype = 85 end;
	if cityrace == "Inferno" then elemtype = 85 end;
	return elemtype
end;

function H55_GetRaceElementalTypeID(cityrace)
	local elemtype = 87;
	if cityrace == 1 then elemtype = 88 end;
	if cityrace == 5 then elemtype = 88 end;
	if cityrace == 8 then elemtype = 87 end;
	if cityrace == 4 then elemtype = 86 end;
	if cityrace == 6 then elemtype = 87 end;
	if cityrace == 2 then elemtype = 86 end;
	if cityrace == 7 then elemtype = 85 end;
	if cityrace == 3 then elemtype = 85 end;
	return elemtype
end;

function H55_GetRaceCasterTypes(cityrace)
	local castertypes = {10,110,9};
	if cityrace == "Haven" then castertypes = {10,110,9} end;
	if cityrace == "Academy" then castertypes = {64,162,63} end;
	if cityrace == "Stronghold" then castertypes = {124,176,123} end;
	if cityrace == "Necropolis" then castertypes = {38,156,37} end;
	if cityrace == "Dungeon" then castertypes = {82,143,81} end;
	if cityrace == "Sylvan" then castertypes = {50,148,49} end;
	if cityrace == "Fortress" then castertypes = {101,170,100} end;
	if cityrace == "Inferno" then castertypes = {26,136,25} end;
	return castertypes
end;

function H55_GetLegionCap(hero)
		local cap = 0;
		if (HasArtefact(hero,ARTIFACT_LEGION_T1,0) ~= nil) then cap = 1 end;
		if (HasArtefact(hero,ARTIFACT_LEGION_T2,0) ~= nil) then cap = 2 end;
		if (HasArtefact(hero,ARTIFACT_LEGION_T3,0) ~= nil) then cap = 3 end;
		if (HasArtefact(hero,ARTIFACT_LEGION_T4,0) ~= nil) then cap = 4 end;
		if (HasArtefact(hero,ARTIFACT_LEGION_T5,0) ~= nil) then cap = 5 end;
		if (HasArtefact(hero,ARTIFACT_LEGION_T6,0) ~= nil) then cap = 6 end;
		if (HasArtefact(hero,ARTIFACT_LEGION_T7,0) ~= nil) then cap = 7 end;
		return cap
end;

function H55_GetAmountAlignedTowns(racenum)
	local amountcities = 0;
	if racenum == 1 then amountcities = length(GetObjectNamesByType("TOWN_HEAVEN")) end;
	if racenum == 5 then amountcities = length(GetObjectNamesByType("TOWN_ACADEMY")) end;
	if racenum == 8 then amountcities = length(GetObjectNamesByType("TOWN_STRONGHOLD")) end;
	if racenum == 4 then amountcities = length(GetObjectNamesByType("TOWN_NECROMANCY")) end;
	if racenum == 6 then amountcities = length(GetObjectNamesByType("TOWN_DUNGEON")) end;
	if racenum == 2 then amountcities = length(GetObjectNamesByType("TOWN_PRESERVE")) end;
	if racenum == 7 then amountcities = length(GetObjectNamesByType("TOWN_FORTRESS")) end;
	if racenum == 3 then amountcities = length(GetObjectNamesByType("TOWN_INFERNO")) end;
	return amountcities;
end;

function H55_GetHallTrialLevel(hero,player)
	local level = 0;
	local towns = H55_GetAlignedTownsOwned(hero,player);
	if towns ~= nil then
		for i,town in towns do
			local hall = GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1);
			if hall > level then
				level = hall;
			end;
		end;
	end;
	return level;
end;

function H55_GetWalkerHutLevel(hero,player)
	local level = 0;
	local towns = H55_GetAlignedTownsOwned(hero,player);
	if towns ~= nil then
		for i,town in towns do
			local hall = GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_3);
			if hall > level then
				level = hall;
			end;
		end;
	end;
	return level;
end;

function H55_GetPlayerTowns(player)
	local cities = {};
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if GetObjectOwner(town) == player then
			H55_Insert(cities,town);
		end;
	end;
	return cities;
end;

function H55_GetAlignedTownsOwned(hero,player)
	local cities = {};
	local cityrace = H55_GetHeroRace(hero);
	if cityrace == "Haven" then
		local haventowns = GetObjectNamesByType("TOWN_HEAVEN");
		if length(haventowns) ~= 0 then
			for i, town in haventowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Academy" then
		local academytowns = GetObjectNamesByType("TOWN_ACADEMY");
		if length(academytowns) ~= 0 then
			for i, town in academytowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Stronghold" then
		local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");
		if length(strongholdtowns) ~= 0 then
			for i, town in strongholdtowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Dungeon" then
		local dungeontowns = GetObjectNamesByType("TOWN_DUNGEON");
		if length(dungeontowns) ~= 0 then
			for i, town in dungeontowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Sylvan" then
		local sylvantowns = GetObjectNamesByType("TOWN_PRESERVE");
		if length(sylvantowns) ~= 0 then
			for i, town in sylvantowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Necropolis" then
		local necropolistowns = GetObjectNamesByType("TOWN_NECROMANCY");
		if length(necropolistowns) ~= 0 then
			for i, town in necropolistowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Inferno" then
		local infernotowns = GetObjectNamesByType("TOWN_INFERNO");
		if length(infernotowns) ~= 0 then
			for i, town in infernotowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	elseif cityrace == "Fortress" then
		local fortresstowns = GetObjectNamesByType("TOWN_FORTRESS");
		if length(fortresstowns) ~= 0 then
			for i, town in fortresstowns do
				if GetObjectOwner(town) == player then
					H55_Insert(cities,town);
				end;
			end;
		end;
	else
		cities = {};
	end;
	return cities;
end;

function H55_IsNativeTownNearby(hero,player)
	local answer = 0;
	local towns = H55_GetAlignedTownsOwned(hero,player);
	for i,town in towns do
		if H55_GetDistance(hero,town) <= 50 then
			answer = 1;
		end;
	end;
	return answer;
end;

function H55_GetJoinSpecMultiplier(hero,player)
	local multiplier = 1;
	local amount = length(H55_GetAlignedTownsOwned(hero,player));
	if amount == 2 then
		multiplier = 1.75;
	elseif amount == 3 then
		multiplier = 2.5;
	elseif amount >= 4 then
		multiplier = 3.5;
	end;
	return multiplier;
end;

function H55_GetPlayerShatterStrength(player)
	local heroes = GetPlayerHeroes(player);
	local shatterstrength = 0;
	for i,hero in heroes do
		local level = GetHeroLevel(hero);
		local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
		if (HasArtefact(hero,60,0) ~= nil) then
			level = (level+(0.5*knowledge));
			knowledge = (knowledge+(0.3*knowledge));
		end;
		local levelcoef = level/25;
		local knowledgecoef = knowledge/15;
		if HasHeroSkill(hero,HERO_SKILL_SHATTER_DESTRUCTIVE_MAGIC) and (GetHeroSkillMastery(hero,HERO_SKILL_SHATTER_DESTRUCTIVE_MAGIC) >= 2) then
			shatterstrength = (shatterstrength + (levelcoef*1));
		end;
		if HasHeroSkill(hero,HERO_SKILL_SHATTER_SUMMONING_MAGIC) and (GetHeroSkillMastery(hero,HERO_SKILL_SHATTER_SUMMONING_MAGIC) >= 2) then
			shatterstrength = (shatterstrength + (levelcoef*1));
		end;
		if HasHeroSkill(hero,HERO_SKILL_SHATTER_LIGHT_MAGIC) and (GetHeroSkillMastery(hero,HERO_SKILL_SHATTER_LIGHT_MAGIC) >= 2) then
			shatterstrength = (shatterstrength + (levelcoef*1));
		end;
		if HasHeroSkill(hero,HERO_SKILL_SHATTER_DARK_MAGIC) and (GetHeroSkillMastery(hero,HERO_SKILL_SHATTER_DARK_MAGIC) >= 2) then
			shatterstrength = (shatterstrength + (levelcoef*1));
		end;
		if HasHeroSkill(hero,KNIGHT_FEAT_ELEMENTAL_BALANCE) then
			shatterstrength = (shatterstrength + (levelcoef*1));
		end;
		if (HasArtefact(hero,ARTIFACT_TWISTING_NEITHER,0) ~= nil) then
			shatterstrength = (shatterstrength + (knowledgecoef*1));
		end;
	end;
	if shatterstrength > 5 then shatterstrength = 5 end;
	return shatterstrength;
end;

function H55_GetHeroEnlightenmentStrength(hero)
	local strength = 1;
	if HasHeroSkill(hero,SKILL_LEARNING) then
		strength = strength + ((GetHeroSkillMastery(hero,SKILL_LEARNING) * 0.05));
	elseif HasHeroSkill(hero,HERO_SKILL_BARBARIAN_LEARNING) then
		strength = strength + ((GetHeroSkillMastery(hero,HERO_SKILL_BARBARIAN_LEARNING) * 0.05));
	end;
	if HasArtefact(hero,34,1) ~= nil then
		strength = strength+0.1;
	end;
	if HasArtefact(hero,35,1) ~= nil then
		strength = strength+0.2;
	end;
	return strength;
end;

function H55_GetOccultismPower(hero)
	local power = 0;
	if (HasHeroSkill(hero,SKILL_INVOCATION) ~= nil) then
		if (GetHeroSkillMastery(hero,SKILL_INVOCATION) == 1) then
			power = 1;
		end;
		if (GetHeroSkillMastery(hero,SKILL_INVOCATION) == 2) then
			power = 2;
		end;
		if (GetHeroSkillMastery(hero,SKILL_INVOCATION) == 3) then
			power = 3;
		end;
	end;
	if (HasHeroSkill(hero,SKILL_INVOCATION) ~= nil) and (HasHeroSkill(hero,SKILL_DESTRUCTIVE_MAGIC) == nil) then
		power = power*2;
	end;
	return power;
end;

function H55_GetMonkSetCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,116,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,117,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,118,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,119,1) ~= nil) then gainedartifacts[4] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetOgreSetCount(hero)
	local gainedartifacts = {0,0};
	if (HasArtefact(hero,74,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,75,1) ~= nil) then gainedartifacts[2] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetRunicSetCount(hero)
	local gainedartifacts = {0,0};
	if (HasArtefact(hero,81,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,82,1) ~= nil) then gainedartifacts[2] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetInfernoSetCount(hero)
	local gainedartifacts = {0,0};
	if (HasArtefact(hero,23,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,66,1) ~= nil) then gainedartifacts[2] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetDwarvenSetCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,48,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,49,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,50,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,51,1) ~= nil) then gainedartifacts[4] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetDwarvenOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,48,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,49,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,50,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,51,0) ~= nil) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength
end;

function H55_ExchangeDwarvenSet(hero)
	RemoveArtefact(hero,48);
	RemoveArtefact(hero,49);
	RemoveArtefact(hero,50);
	RemoveArtefact(hero,51);
	GiveArtefact(hero,124);
end;

function H55_GetLionSetCount(hero)
	local gainedartifacts = {0,0,0};
	if (HasArtefact(hero,11,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,16,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,31,1) ~= nil) then gainedartifacts[3] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetVestmentSetCount(hero)
	local gainedartifacts = {0,0};
	if (HasArtefact(hero,34,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,35,1) ~= nil) then gainedartifacts[2] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetNecroSetCount(hero)
	local gainedartifacts = {0,0,0,0,0,0};
	if (HasArtefact(hero,6,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,70,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,71,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,33,1) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,55,1) ~= nil) then gainedartifacts[5] = 1 end;
	if (HasArtefact(hero,83,1) ~= nil) then gainedartifacts[6] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetSarIssusSetCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,44,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,45,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,46,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,47,1) ~= nil) then gainedartifacts[4] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetSarIssusOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,44,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,45,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,46,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,47,0) ~= nil) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength
end;

function H55_ExchangeSarIssusSet(hero)
	RemoveArtefact(hero,44);
	RemoveArtefact(hero,45);
	RemoveArtefact(hero,46);
	RemoveArtefact(hero,47);
	GiveArtefact(hero,125);
end;

function H55_GetLegionOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0,0};
	if (HasArtefact(hero,103,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,104,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,105,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,106,0) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,107,0) ~= nil) then gainedartifacts[5] = 1 end;
	if (HasArtefact(hero,108,0) ~= nil) then gainedartifacts[6] = 1 end;
	if (HasArtefact(hero,109,0) ~= nil) then gainedartifacts[7] = 1 end;
	if (HasArtefact(hero,29,0) ~= nil) then gainedartifacts[8] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]+gainedartifacts[8]);
	return setstrength
end;

function H55_ExchangeLegionSet(hero)
	RemoveArtefact(hero,103);
	RemoveArtefact(hero,104);
	RemoveArtefact(hero,105);
	RemoveArtefact(hero,106);
	RemoveArtefact(hero,107);
	RemoveArtefact(hero,108);
	RemoveArtefact(hero,109);
	RemoveArtefact(hero,29);
	GiveArtefact(hero,53);
end;

function H55_GetDragonishSetCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0,0};
	if (HasArtefact(hero,36,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,37,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,38,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,39,1) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,40,1) ~= nil) then gainedartifacts[5] = 1 end;
	if (HasArtefact(hero,41,1) ~= nil) then gainedartifacts[6] = 1 end;
	if (HasArtefact(hero,42,1) ~= nil) then gainedartifacts[7] = 1 end;
	if (HasArtefact(hero,43,1) ~= nil) then gainedartifacts[8] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]+gainedartifacts[8]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_GetDragonishOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0,0,0};
	if (HasArtefact(hero,36,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,37,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,38,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,39,0) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,40,0) ~= nil) then gainedartifacts[5] = 1 end;
	if (HasArtefact(hero,41,0) ~= nil) then gainedartifacts[6] = 1 end;
	if (HasArtefact(hero,42,0) ~= nil) then gainedartifacts[7] = 1 end;
	if (HasArtefact(hero,43,0) ~= nil) then gainedartifacts[8] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]+gainedartifacts[7]+gainedartifacts[8]);
	return setstrength
end;

function H55_ExchangeDragonishSet(hero)
	RemoveArtefact(hero,36);
	RemoveArtefact(hero,37);
	RemoveArtefact(hero,38);
	RemoveArtefact(hero,39);
	RemoveArtefact(hero,40);
	RemoveArtefact(hero,41);
	RemoveArtefact(hero,42);
	RemoveArtefact(hero,43);
	GiveArtefact(hero,123);
end;

function H55_GetSaintSetCount(hero)
	local gainedartifacts = {0,0,0,0,0};
	if (HasArtefact(hero,112,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,113,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,114,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,115,1) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,68,1) ~= nil) then gainedartifacts[5] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]);
	return setstrength
end;

function H55_GetSaintOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0};
	if (HasArtefact(hero,112,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,113,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,114,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,115,0) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,68,0) ~= nil) then gainedartifacts[5] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]);
	return setstrength
end;

function H55_ExchangeSaintSet(hero)
	RemoveArtefact(hero,112);
	RemoveArtefact(hero,113);
	RemoveArtefact(hero,114);
	RemoveArtefact(hero,115);
	RemoveArtefact(hero,68);
	GiveArtefact(hero,126);
end;

function H55_GetTomesOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,76,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,77,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,78,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,79,0) ~= nil) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength
end;

function H55_ExchangeTomesSet(hero)
	RemoveArtefact(hero,76);
	RemoveArtefact(hero,77);
	RemoveArtefact(hero,78);
	RemoveArtefact(hero,79);
	GiveArtefact(hero,126);
end;

function H55_GetGuardianSetCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,13,1) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,120,1) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,121,1) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,122,1) ~= nil) then gainedartifacts[4] = 1 end;
	local pendantofstardust = 0;
	if (HasArtefact(hero,113,1) ~= nil) then pendantofstardust = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	if setstrength > 0 then
		setstrength = setstrength + pendantofstardust;
	end
	return setstrength
end;

function H55_ExchangeGuardianSet(hero)
	RemoveArtefact(hero,13);
	RemoveArtefact(hero,120);
	RemoveArtefact(hero,121);
	RemoveArtefact(hero,122);
	GiveArtefact(hero,ARTIFACT_ANGELIC_ALLIANCE);
end;

function H55_GetGuardianOwnCount(hero)
	local gainedartifacts = {0,0,0,0};
	if (HasArtefact(hero,13,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,120,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,121,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,122,0) ~= nil) then gainedartifacts[4] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]);
	return setstrength
end;

function H55_GetCornucopiaOwnCount(hero)
	local gainedartifacts = {0,0,0,0,0,0};
	if (HasArtefact(hero,97,0) ~= nil) then gainedartifacts[1] = 1 end;
	if (HasArtefact(hero,98,0) ~= nil) then gainedartifacts[2] = 1 end;
	if (HasArtefact(hero,99,0) ~= nil) then gainedartifacts[3] = 1 end;
	if (HasArtefact(hero,100,0) ~= nil) then gainedartifacts[4] = 1 end;
	if (HasArtefact(hero,101,0) ~= nil) then gainedartifacts[5] = 1 end;
	if (HasArtefact(hero,102,0) ~= nil) then gainedartifacts[6] = 1 end;
	local setstrength = (gainedartifacts[1]+gainedartifacts[2]+gainedartifacts[3]+gainedartifacts[4]+gainedartifacts[5]+gainedartifacts[6]);
	return setstrength
end;

function H55_ExchangeCornucopia(hero)
	RemoveArtefact(hero,97);
	RemoveArtefact(hero,98);
	RemoveArtefact(hero,99);
	RemoveArtefact(hero,100);
	RemoveArtefact(hero,101);
	RemoveArtefact(hero,102);
	GiveArtefact(hero,92);
end;

function H55_HasHeroCultMaster(hero)
	local multiplier = 1;
	if (HasHeroSkill(hero,DEMON_FEAT_EXPLODING_CORPSES) ~= nil) then
		multiplier = 2;
	end;
	return multiplier
end;

function H55_HasHeroDefendUs(hero)
	local multiplier = 1;
	if (HasHeroSkill(hero,HERO_SKILL_DEFEND_US_ALL) ~= nil) then
		multiplier = 2;
	end;
	return multiplier
end;

function H55_GetSpecialNecroReq(hero)
	local req = 0;
	if H55_GetHeroRaceNum(hero) == 4 and HasHeroSkill(hero,KNIGHT_FEAT_ROAD_HOME) == nil then
		req = 1;
	end;
	return req;
end;

function H55_GetHeroResurrectionCoef(hero)
	local coef = 0.3+((GetHeroStat(hero,STAT_KNOWLEDGE))*0.01);
	-- if HasHeroSkill(hero,PERK_FIRST_AID) ~= nil then
		-- coef = coef+0.05;
	-- end;
	if HasHeroSkill(hero,NECROMANCER_FEAT_LAST_AID) and HasHeroWarMachine(hero,3) then
		coef = coef+0.1;
	end;
	if HasHeroSkill(hero,KNIGHT_FEAT_ROAD_HOME) then
		coef = coef+0.1;
	end;
	if coef >= 0.9 then
		coef = 0.9;
	end;
	return coef;
end;

function H55_WeeklyReinforce(s_hero, i_player, i_tlevel, i_stat_id, i_spec_creature_id, i_spec_skill_id)
	local i_race = H55_GetHeroRaceNum(s_hero);
	local i_level = GetHeroLevel(s_hero);
	local i_stat = GetHeroStat(s_hero, i_stat_id);
	local i_city = length(H55_GetPlayerTowns(i_player));
	local b_skill = 1;
	if i_spec_skill_id ~= -1 then
		if HasHeroSkill(s_hero, i_spec_skill_id) ~= nil then
			b_skill = 1.5;
		end;
	end;
	local b_legion = 1;
	if HasArtefact(s_hero, H55_ARTIFACT_LEGION_LIST[i_tlevel], 0) ~= nil then
		b_legion = 1.5;
	end;
	local i_value = (i_level + 1.5 * i_stat + 2.5 * i_city) * b_skill * b_legion;
	local i_growth = H55_Ceil(H55_COEF_LIST[i_tlevel] * i_value / 2);
	-- by 牙姐 2020-04-15 22:34:56
	-- begin AI的兵种特在每周增兵时按玩家设置的增兵倍数翻倍
		if H55_IsThisAIPlayer(i_player) == 1 then
			i_growth = H55_Ceil(i_growth * H55_AIArmyCoef);
		end;
	--end
	if  (H55_WeeklyReinforce_List[s_hero] ~= 1) and (i_growth >= 1) then
		if i_spec_creature_id ~= -1 then
			AddHeroCreatures(s_hero, i_spec_creature_id, i_growth);
		else
			local b_has_reinforce = 0;
			for i = 0, 6 do
				if b_has_reinforce == 1 then
					break;
				end;
				local type = H55_ArmyInfoSimple(s_hero);
				for j = 1, 3 do
					if type[i] == H55_Creatures[i_race][i_tlevel][j] and b_has_reinforce == 0 then
						AddHeroCreatures(s_hero, H55_Creatures[i_race][i_tlevel][j], i_growth);
						b_has_reinforce = 1;
						break;
					end;
				end;
			end;
			if b_has_reinforce == 0 then
				AddHeroCreatures(s_hero, H55_Creatures[i_race][i_tlevel][1], i_growth);
				b_has_reinforce = 1;
			end;
		end;
		if H55_IsThisAIPlayer(i_player) ~= 1 and H55_IsHeroInAnyTown(s_hero) == 0 then
			ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, s_hero, i_player, 5);
			sleep(8);
		elseif H55_IsThisAIPlayer(i_player) ~= 1 then
			sleep(2);
		end;
		H55_WeeklyReinforce_List[s_hero] = 1;
	end;
end;

function H55_InfernalLoom(hero,player,u1,u2,u3,coef,multiplier)
	local type = H55_ArmyInfoSimple(hero);
	local level = GetHeroLevel(hero);
	local growth = H55_Round(multiplier*(coef*level));
	if growth >= 1 then
		for i = 0,6 do
			if (type[i] == u1) and (H55_InfernalLoomTable[hero] ~= 1) then
				AddHeroCreatures(hero,u1,growth);
				H55_InfernalLoomTable[hero] = 1;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					sleep(8);
				end;
			elseif (type[i] ==u2) and (H55_InfernalLoomTable[hero] ~= 1) then
				AddHeroCreatures(hero,u2,growth);
				H55_InfernalLoomTable[hero] = 1;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					sleep(8);
				end;
			elseif (type[i] ==u3) and (H55_InfernalLoomTable[hero] ~= 1) then
				AddHeroCreatures(hero,u3,growth);
				H55_InfernalLoomTable[hero] = 1;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					sleep(8);
				end;
			end;
		end;
	end
end;

function H55_DefendUsDaily(hero,player,u1,u2,u3,growth)
	local type = H55_ArmyInfoSimple(hero);
	--local level = GetHeroLevel(hero);
	if growth >= 1 then
		for i = 0,6 do
			if (type[i] == u1) and (H55_DefendUsTable[hero] ~= 1) then
				AddHeroCreatures(hero,u1,growth);
				H55_DefendUsTable[hero] = 1;
				-- if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					-- ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					-- sleep(8);
				-- end;
			elseif (type[i] ==u2) and (H55_DefendUsTable[hero] ~= 1) then
				AddHeroCreatures(hero,u2,growth);
				H55_DefendUsTable[hero] = 1;
				-- if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					-- ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					-- sleep(8);
				-- end;
			elseif (type[i] ==u3) and (H55_DefendUsTable[hero] ~= 1) then
				AddHeroCreatures(hero,u3,growth);
				H55_DefendUsTable[hero] = 1;
				-- if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					-- ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					-- sleep(8);
				-- end;
			end;
		end;
	end;
	H55_DefendUsTable[hero] = 0;
end;

function H55_AdjustStatSpec(player,hero,stat,multiplier)
	local level = GetHeroLevel(hero);
	-- if H55_StatSpecReceived[hero] == nil then
		-- H55_StatSpecReceived[hero] = 99;
	-- end;
	if multiplier == 7 then
		for i=1,8 do
			if (H55_StatSpecNumbersA[i] == level) and (H55_StatSpecReceived[hero] ~= i) then
				ChangeHeroStat(hero,stat,1);
				H55_StatSpecReceived[hero] = i;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					if stat == 1 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
					if stat == 2 then ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5) end;
					if stat == 3 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
					if stat == 4 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
			end;
		end;
	elseif multiplier == 8 then
		for j=1,8 do
			if  ((H55_StatSpecNumbersA[j]+j) == level) and (H55_StatSpecReceived[hero] ~= j) then
				ChangeHeroStat(hero,stat,1);
				H55_StatSpecReceived[hero] = j;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					if stat == 1 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
					if stat == 2 then ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5) end;
					if stat == 3 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
					if stat == 4 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
			end;
		end;
	end;
end;

function H55_SetGlobalWeeklyPayouts(player,num)
	H55_GlobalWeeklyWoodPayout[player] = num;
	H55_GlobalWeeklyOrePayout[player] = num;
	H55_GlobalWeeklyMercuryPayout[player] = num;
	H55_GlobalWeeklyCrystalPayout[player] = num;
	H55_GlobalWeeklySulphurPayout[player] = num;
	H55_GlobalWeeklyGemPayout[player] = num;
	H55_GlobalWeeklyGoldPayout[player] = num;
end;

function H55_SetGlobalDailyPayouts(player,num)
	H55_GlobalDailyWoodPayout[player] = num;
	H55_GlobalDailyOrePayout[player] = num;
	H55_GlobalDailyMercuryPayout[player] = num;
	H55_GlobalDailyCrystalPayout[player] = num;
	H55_GlobalDailySulphurPayout[player] = num;
	H55_GlobalDailyGemPayout[player] = num;
	H55_GlobalDailyGoldPayout[player] = num;
end;

-- function H55_PayoutThisPlayer(player)
-- 	if (H55_GlobalDailyGoldPayout[player] + H55_GlobalWeeklyGoldPayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,6,(H55_GlobalDailyGoldPayout[player]+H55_GlobalWeeklyGoldPayout[player]));
-- 	end;
-- 	if (H55_GlobalDailyWoodPayout[player] + H55_GlobalWeeklyWoodPayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,0,(H55_GlobalDailyWoodPayout[player]+H55_GlobalWeeklyWoodPayout[player]));
-- 	end;
-- 	if (H55_GlobalDailyOrePayout[player] + H55_GlobalWeeklyOrePayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,1,(H55_GlobalDailyOrePayout[player]+H55_GlobalWeeklyOrePayout[player]));
-- 	end;
-- 	if (H55_GlobalDailyMercuryPayout[player] + H55_GlobalWeeklyMercuryPayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,2,(H55_GlobalDailyMercuryPayout[player]+H55_GlobalWeeklyMercuryPayout[player]));
-- 	end;
-- 	if (H55_GlobalDailyCrystalPayout[player] + H55_GlobalWeeklyCrystalPayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,3,(H55_GlobalDailyCrystalPayout[player]+H55_GlobalWeeklyCrystalPayout[player]));
-- 	end;
-- 	if (H55_GlobalDailySulphurPayout[player] + H55_GlobalWeeklySulphurPayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,4,(H55_GlobalDailySulphurPayout[player]+H55_GlobalWeeklySulphurPayout[player]));
-- 	end;
-- 	if (H55_GlobalDailyGemPayout[player] + H55_GlobalWeeklyGemPayout[player]) > 0 then
-- 		H55_GiveResourcesSilent(player,5,(H55_GlobalDailyGemPayout[player]+H55_GlobalWeeklyGemPayout[player]));
-- 	end;
-- end;
function H55_PayoutThisPlayer(player)
	H55_SetResourcesSilent(player,6,(H55_GlobalDailyGoldPayout[player]+H55_GlobalWeeklyGoldPayout[player]));
	H55_SetResourcesSilent(player,0,(H55_GlobalDailyWoodPayout[player]+H55_GlobalWeeklyWoodPayout[player]));
	H55_SetResourcesSilent(player,1,(H55_GlobalDailyOrePayout[player]+H55_GlobalWeeklyOrePayout[player]));
	H55_SetResourcesSilent(player,2,(H55_GlobalDailyMercuryPayout[player]+H55_GlobalWeeklyMercuryPayout[player]));
	H55_SetResourcesSilent(player,3,(H55_GlobalDailyCrystalPayout[player]+H55_GlobalWeeklyCrystalPayout[player]));
	H55_SetResourcesSilent(player,4,(H55_GlobalDailySulphurPayout[player]+H55_GlobalWeeklySulphurPayout[player]));
	H55_SetResourcesSilent(player,5,(H55_GlobalDailyGemPayout[player]+H55_GlobalWeeklyGemPayout[player]));
end;


function H55_ApplyMoveCorrection(hero)
	--This function can only be invoked when the hero is not in a town!
	local player = GetObjectOwner(hero);
	if H55_IsNativeTownNearby(hero,player) == 1 then
		if (H55_GetHeroRaceNum(hero) == 1) then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,-100);
		end;
		if (H55_GetHeroRaceNum(hero) == 2) then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,-100);
		end;
		if (H55_GetHeroRaceNum(hero) == 8) then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,-100);
		end;
		if (H55_GetHeroRaceNum(hero) == 5) then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,100);
		end;
		if (H55_GetHeroRaceNum(hero) == 7) then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,100);
		end;
		if (H55_GetHeroRaceNum(hero) == 3) and (H55_GetHeroClass(hero) == "Gatekeeper") then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,-100);
		end;
		if (H55_GetHeroRaceNum(hero) == 6) and (H55_GetHeroClass(hero) == "Warlock") then
			ChangeHeroStat(hero,STAT_MOVE_POINTS,-100);
		end;
	end;
end;

function H55_ZombieCarryArmy(player, hero, ci)
	local s_hero = 'Straker';
	if hero == s_hero then
		if H55_CI_Zombie_Straker ~= ci then
			H55_CI_Zombie_Straker = ci;
			if GetSavedCombatArmyHero(ci, 1) == s_hero then
				local iLevel = GetHeroLevel(s_hero);
				local iCoef = 0.4 + iLevel * 0.02;
				local iCountStacks = GetSavedCombatArmyCreaturesCount(ci, 1);
				for i = 0, iCountStacks - 1, 1 do
					local iCreature, iCountCreature, iCountCreatureDeath = GetSavedCombatArmyCreatureInfo(ci, 1, i);
					if iCountCreatureDeath > 0 and H55_Town_Zombie_Straker ~= 0 and H55_GetTownRace(H55_Town_Zombie_Straker) == 4 then
						local townrace = H55_GetTownRace(H55_Town_Zombie_Straker);
						local town = H55_Town_Zombie_Straker;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 then
							if iCreature == H55_Creatures[townrace][1][1] or iCreature == H55_Creatures[townrace][1][2] or iCreature == H55_Creatures[townrace][1][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 then
							if iCreature == H55_Creatures[townrace][2][1] or iCreature == H55_Creatures[townrace][2][2] or iCreature == H55_Creatures[townrace][2][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 then
							if iCreature == H55_Creatures[townrace][3][1] or iCreature == H55_Creatures[townrace][3][2] or iCreature == H55_Creatures[townrace][3][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 then
							if iCreature == H55_Creatures[townrace][4][1] or iCreature == H55_Creatures[townrace][4][2] or iCreature == H55_Creatures[townrace][4][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 then
							if iCreature == H55_Creatures[townrace][5][1] or iCreature == H55_Creatures[townrace][5][2] or iCreature == H55_Creatures[townrace][5][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 then
							if iCreature == H55_Creatures[townrace][6][1] or iCreature == H55_Creatures[townrace][6][2] or iCreature == H55_Creatures[townrace][6][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 then
							if iCreature == H55_Creatures[townrace][7][1] or iCreature == H55_Creatures[townrace][7][2] or iCreature == H55_Creatures[townrace][7][3] then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) + (H55_Ceil(iCoef * iCountCreatureDeath)));
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;

function H55_ResurrectArmy(player,hero,ci,tier,manacost)
	local stackscount = GetSavedCombatArmyCreaturesCount(ci,1);
	local race = H55_GetHeroRaceNum(hero);
	local reduction = 0;
	local coef = H55_GetHeroResurrectionCoef(hero);
	if H55_GetSaintSetCount(hero) >= 3 then reduction = 2 end;
	-- if manacost == 0 then reduction = 0 end;
	if manacost ~= 0 then
		for i = 0,stackscount-1,1 do
			cr,cnt,died = GetSavedCombatArmyCreatureInfo(ci,1,i);
			if died > 0 then
				local resurrect = 0;
				local bodies = coef*died;
				if bodies >= 0.5 then resurrect = H55_Round(coef*died) end;
				if resurrect >= 1 then
					if cr == H55_Creatures[race][tier][2] then
						if (GetHeroStat(hero,STAT_MANA_POINTS)<(manacost-reduction)) then
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/NoManaResurrect.txt"},hero,player,5);
								sleep(8);
							end;
						else
							AddHeroCreatures(hero,H55_Creatures[race][tier][2],resurrect);
							if manacost ~= 0 then ChangeHeroStat(hero,STAT_MANA_POINTS,(-manacost+reduction)) end;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Resurrection.txt"; num=resurrect},hero,player,5);
								sleep(8);
							end;
						end;
					end;
					if cr == H55_Creatures[race][tier][3] then
						if (GetHeroStat(hero,STAT_MANA_POINTS)<(manacost-reduction)) then
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/NoManaResurrect.txt"},hero,player,5);
								sleep(8);
							end;
						else
							AddHeroCreatures(hero,H55_Creatures[race][tier][3],resurrect);
							if manacost ~= 0 then ChangeHeroStat(hero,STAT_MANA_POINTS,(-manacost+reduction)) end;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Resurrection.txt"; num=resurrect},hero,player,5);
								sleep(8);
							end;
						end;
					end;
					if cr == H55_Creatures[race][tier][1] then
						if (GetHeroStat(hero,STAT_MANA_POINTS)<(manacost-reduction)) then
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/NoManaResurrect.txt"},hero,player,5);
								sleep(8);
							end;
						else
							AddHeroCreatures(hero,H55_Creatures[race][tier][1],resurrect);
							if manacost ~= 0 then ChangeHeroStat(hero,STAT_MANA_POINTS,(-manacost+reduction)) end;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Resurrection.txt"; num=resurrect},hero,player,5);
								sleep(8);
							end;
						end;
					end;
				end;
			end;
		end;
	else
		for i = 0,stackscount-1,1 do
			cr,cnt,died = GetSavedCombatArmyCreatureInfo(ci,1,i);
			if died > 0 then
				local resurrect = 0;
				local bodies = coef*died;
				if bodies >= 0.5 then resurrect = H55_Round(coef*died) end;
				if resurrect >= 1 then
					if cr == H55_Creatures[race][tier][2] then
						AddHeroCreatures(hero,H55_Creatures[race][tier][2],resurrect);
						if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
							ShowFlyingSign({"/Text/Game/Scripts/Resurrection.txt"; num=resurrect},hero,player,5);
							sleep(8);
						end;
					end;
					if cr == H55_Creatures[race][tier][3] then
						AddHeroCreatures(hero,H55_Creatures[race][tier][3],resurrect);
						if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
							ShowFlyingSign({"/Text/Game/Scripts/Resurrection.txt"; num=resurrect},hero,player,5);
							sleep(8);
						end;
					end;
					if cr == H55_Creatures[race][tier][1] then
						AddHeroCreatures(hero,H55_Creatures[race][tier][1],resurrect);
						if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
							ShowFlyingSign({"/Text/Game/Scripts/Resurrection.txt"; num=resurrect},hero,player,5);
							sleep(8);
						end;
					end;
				end;
			end;
		end;
	end;
end;

-----------------------------------------------------------------------------------------------------------------------------------------------------
--TOWN MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_Spinlock()
	H55_SpinSwitch = 1;
	while H55_SpinSwitch == 1 do
		sleep(5);
		print("H55 Spinlocking...");
	end;
end;

function H55_EndSpinlock()
	H55_SpinSwitch = 0;
end;

function H55_EnableATP()
	H55_TownGateEnabled = 1;
end;

function H55_EnableGovernance()
	H55_GovernanceEnabled = 1;
end;

function H55_IsAnyHeroInTown(town,player)
	local answer = 0;
	local heroes = GetPlayerHeroes(player);
	for i,hero in heroes do
		if (H55_GetDistance(hero,town) == 0) then
			answer = answer+1;
		end;
	end;
	return answer;
end;

function H55_IsHeroInAnyGate(hero)
	local answer = 0;
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if (IsHeroInTown(hero,town,1,0) == not nil) then
			answer = answer+1;
		end;
	end;
	return answer;
end;

function H55_IsHeroInAnyTown(hero)
	local answer = 0;
	local towns = GetObjectNamesByType("TOWN");
	for i,town in towns do
		if (H55_GetDistance(hero,town) == 0) then
			answer = answer+1;
		end;
	end;
	return answer;
end;

function H55_GetHeroMovement(hero)
	local movement = 2500;
	if (HasHeroSkill(hero,SKILL_LOGISTICS) ~= nil) then
		if (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 1) then
			movement = 2749;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 2) then
			movement = 2999;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 3) then
			movement = 3249;
		end;
	end;
	if (HasArtefact(hero,ARTIFACT_BOOTS_OF_SPEED,1) ~= nil) then movement=H55_Round(movement*1.25) end;
	return movement;
end;

function H55_InfoHeroMovement(hero)
	local movement = 2500;
	if (HasHeroSkill(hero,SKILL_LOGISTICS) ~= nil) then
		if (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 1) then
			movement = 2749;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 2) then
			movement = 2999;
		elseif (GetHeroSkillMastery(hero,SKILL_LOGISTICS) == 3) then
			movement = 3249;
		end;
	end;
	if (HasArtefact(hero,ARTIFACT_BOOTS_OF_SPEED,1) ~= nil) then movement=H55_Round(movement*1.25) end;
	if H55_Governors[hero] == 1 then movement=H55_Round(movement*0.6) end;
	return movement;
end;

function H55_InfoHeroManaRegen(hero)
	local mana = (GetHeroStat(hero,STAT_KNOWLEDGE));
	if (HasHeroSkill(hero,PERK_MYSTICISM) ~= nil) then mana=mana*2 end;
	if (HasHeroSkill(hero,WARLOCK_FEAT_PAYBACK) ~= nil) then mana=mana+4 end;
	if (HasArtefact(hero,ARTIFACT_MONK_01,1) ~= nil) then mana=mana+6 end;
	if (HasArtefact(hero,ARTIFACT_MONK_02,1) ~= nil) then mana=mana+4 end;
	if (HasArtefact(hero,ARTIFACT_EIGHTFOLD,1) ~= nil) then	mana=mana+10 end;
	return mana;
end;

function H55_InfoElementals(hero)
	local player = GetObjectOwner(hero);
	local elementals = 0;
	if H55_GetPlayerShatterStrength(player) >= 0.03 then
		local towns = H55_GetPlayerTowns(player);
		local multiplier = H55_GetPlayerShatterStrength(player);
		if (length(towns) > 0) then
			for i,town in towns do
				local townrace = H55_GetTownRace(town);
				--local elemtype = H55_GetRaceElementalTypeID(townrace);
				if townrace == 8 then
					local growth = 2+(GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1))+(GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_3));
					local totalgrowth = H55_Round(multiplier*growth);
					--if totalgrowth >= 1 then
						elementals = elementals+totalgrowth;
					--end;
				else
					local growth = 1+GetTownBuildingLevel(town, TOWN_BUILDING_MAGIC_GUILD);
					local totalgrowth = H55_Round(multiplier*growth);
					--if totalgrowth >= 1 then
						elementals = elementals+totalgrowth;
					--end;
				end;
			end;
		end;
	else
		elementals = 0;
	end;
	return elementals;
end;

function H55_InfoLegion(hero)
	local cap = H55_GetLegionCap(hero)
	local growth = 0;
	local bonus = 0;
	if HasHeroSkill(hero,PERK_RECRUITMENT) ~= nil then bonus = bonus+5 end;
	if HasArtefact(hero,ARTIFACT_CROWN_OF_LEADER,1) ~= nil and HasHeroSkill(hero,PERK_RECRUITMENT) ~= nil then bonus = bonus+5 end;
	if H55_Governors[hero] == 1 then bonus = bonus+5 end;
	if cap == 1 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1)
	elseif cap == 2 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/1.5)
	elseif cap == 3 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/2)
	elseif cap == 4 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/3)
	elseif cap == 5 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/4)
	elseif cap == 6 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/6)
	elseif cap == 7 then growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE)+bonus)/12)
	else growth = 0
	end;
	if cap ~= 0 then
		if growth < 1 then growth = 1 end;
	end;
	return growth;
end;

function H55_InfoSkeletonTaxes(hero)
	local type,count = H55_ArmyInfo(hero);
	local amount = 0;
	local taxes = 0;
	for i = 0,6 do
		if (type[i] == 30) then
			amount = amount + count[i]
		elseif (type[i] ==152) then
			amount = amount + count[i]
		elseif (type[i] ==29) then
			amount = amount + count[i]
		end;
	end;
	if amount > 0 then
		taxes = H55_Round(amount/2);
	end;
	return taxes;
end;

function H55_InfoGoblinTaxes(hero)
	local type,count = H55_ArmyInfo(hero);
	local amount = 0;
	local taxes = 0;
	for i = 0,6 do
		if (type[i] == 118) then
			amount = amount + count[i]
		elseif (type[i] ==173) then
			amount = amount + count[i]
		elseif (type[i] ==117) then
			amount = amount + count[i]
		end;
	end;
	if amount > 0 then
		taxes = H55_Round(amount/2);
	end;
	return taxes;
end;

function H55_InfoGoldIncome(hero)
	local gold = 0;
	if (HasHeroSkill(hero,PERK_ESTATES) ~= nil) then gold = gold+(H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)*25)) end;
	if (HasHeroSkill(hero,NECROMANCER_FEAT_LORD_OF_UNDEAD) ~= nil) then gold = gold+H55_InfoSkeletonTaxes(hero) end;
	if (HasHeroSkill(hero,HERO_SKILL_GOBLIN_SUPPORT) ~= nil) then gold = gold+H55_InfoGoblinTaxes(hero) end;
	-- if (HasArtefact(hero,ARTIFACT_ENDLESS_SACK_OF_GOLD,0) ~= nil) then gold = gold+(H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)*50)) end;
	-- if (HasArtefact(hero,ARTIFACT_ENDLESS_BAG_OF_GOLD,0) ~= nil) then gold = gold+(H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)*75)) end;
	return gold;
end;

function H55_InfoGovEnabled()
	if H55_GovernanceEnabled == 1 then
		return H55_TM_Txt_Enabled;
	else
		return H55_TM_Txt_Disabled;
	end;
end;

function H55_InfoTCEnabled()
	if H55_TownConvEnabled == 1 then
		return H55_TM_Txt_Enabled;
	else
		return H55_TM_Txt_Disabled;
	end;
end;

function H55_InfoOccupation(hero)
	if H55_Governors[hero] == 1 then
		return H55_TM_Txt_Governor;
	else
		return H55_TM_Txt_Conquest;
	end;
end;

function H55_InfoWages(player)
	local heroes = GetPlayerHeroes(player);
	local totaltax = 0;
	for i,hero in heroes do
		totaltax = totaltax+H55_Round(H55_GetHeroTaxRate(hero));
	end;
	return totaltax;
end;

function H55_AbortTC(hero)
	print("H55 Player Takes No Action");
	-- if HasArtefact(hero,47,1) and HasHeroSkill(hero,42) then
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,8);
	-- elseif HasArtefact(hero,47,1) then
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,10);
	-- elseif HasHeroSkill(hero,42) then
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,16);
	-- else
		-- ChangeHeroStat(hero,STAT_MANA_POINTS,20);
	-- end;
end;

function TTH_FunctionManagement(strHero)
	local iPlayer = GetObjectOwner(strHero);
	local iPlayerRace = H55_GetPlayerRace(iPlayer);
	local iHeroRace = H55_GetHeroRaceNum(strHero);

	QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
	, "/Text/Game/Scripts/TownPortal/TTH_TM_or_AF.txt"
	, "H55_TownManagement('"..iPlayer.."','"..iPlayerRace.."','"..strHero.."','"..iHeroRace.."')"
	, "TTH_ArtifactManagement('"..iPlayer.."','"..iPlayerRace.."','"..strHero.."','"..iHeroRace.."')");
end;

function TTH_ArtifactManagement(iPlayer, iPlayerRace, strHero, iHeroRace)
	iPlayer = iPlayer * 1;
	iPlayerRace = iPlayerRace * 1;
	iHeroRace = iHeroRace * 1;
	local arrGate = GetObjectNamesByType("TOWN");
	local strTown = nil;
	local iTownRace = 0;
	for i, strGate in arrGate do
		if (GetObjectOwner(strGate) == iPlayer) and (IsHeroInTown(strHero, strGate, 1, 0) == not nil) then
			strTown = strGate;
			iTownRace = H55_GetTownRace(strGate);
		end;
	end;

	-- by 牙姐 2018-8-21 16:53:24
	-- begin 宝物合成
	if strTown ~= nil then
		local iCombine = TTH_TM_Combine_or_Close(strHero, strTown);
		-- end
		if iCombine == 1 then
			return
		end;
	end;

	-- by 牙姐 2018-8-21 16:53:24
	-- begin 军团宝物 城市加成
	if strTown ~= nil then
		local iAddition = TTH_TM_AdditionCity_or_Close(strHero, strTown);
		-- end
		if iAddition == 1 then
			return
		end;
	end;

	-- by 牙姐 2021-2-24 22:26:42
	-- begin 军团宝物 领袖特
	if strTown == nil then
		local iLeaderHero = TTH_TM_LeaderHero_or_Close(strHero, strTown);
		-- end
		if iLeaderHero == 1 then
			return
		end;
	end;

	-- by 牙姐 2018-8-22 18:24:07
	-- begin 资源宝物 矿产加成
	if 1 == 1 then
		local iAddition = TTH_TM_AdditionMine_or_Close(strHero);
		-- end
		if iAddition == 1 then
			return
		end;
	end;

	-- by 牙姐 2018-9-12 18:19:17
	-- begin 皇家遗物
	if 1 == 1 then
		local iAddition = TTH_TM_UseDoppelganger_or_Close(strHero);
		-- end
		if iAddition == 1 then
			return
		end;
	end;

	MessageBoxForPlayers(GetPlayerFilter(iPlayer),"/Text/Game/Scripts/TownPortal/TTH_AF_NoArtifact.txt");
end;

function H55_TownManagement(iPlayer, iPlayerRace, strHero, iHeroRace)
	iPlayer = iPlayer * 1;
	iPlayerRace = iPlayerRace * 1;
	iHeroRace = iHeroRace * 1;
	local arrGate = GetObjectNamesByType("TOWN");
	local strTown = nil;
	local iTownRace = 0;
	for i, strGate in arrGate do
		if (GetObjectOwner(strGate) == iPlayer) and (IsHeroInTown(strHero, strGate, 1, 0) == not nil) then
			strTown = strGate;
			iTownRace = H55_GetTownRace(strGate);
		end;
	end;

	if H55_TownManageOwners[strHero] == 1 then
		if H55_TownGateEnabled == 0 then
			if strTown ~= nil and iTownRace ~= iHeroRace then --hero is in strange town
				-- if H55_TownConvEnabled == 1 and iHeroRace == iPlayerRace then
				--  by 牙姐 convert anyrace
				if H55_TownConvEnabled == 1 then
					H55_TM_Conv_or_Close(strHero, strTown);
				else
					H55_TM_InfoOnly(strHero, strTown);
				end;
			elseif strTown ~= nil and iTownRace == iHeroRace then --hero is in native town
				if H55_GovernanceEnabled == 1 and H55_Governors[strHero] == nil and iTownRace == iHeroRace then
					H55_TM_Gov_or_Close(strHero, strTown);
				elseif H55_GovernanceEnabled == 1 and H55_Governors[strHero] ~= nil and H55_GovernorsWithTown[strHero] == strTown then
					H55_TM_End_or_Close(strHero, strTown);
				else
					H55_TM_InfoOnly(strHero, strTown);
				end;
			else
				-- if iHeroRace == 8 and GetHeroLevel(strHero) >= 2 then
					-- H55_TM_Wtp_or_Close(strHero, strTown);
				-- else
					H55_TM_InfoOnly(strHero, strTown);
				-- end;
			end;
		else
			if iHeroRace ~= 3 then
				if strTown ~= nil and iTownRace ~= iHeroRace then --hero is in strange town
					-- if H55_TownConvEnabled == 1 and iHeroRace == iPlayerRace then
					--  by 牙姐 convert anyrace
					if H55_TownConvEnabled == 1 then
						H55_TM_Conv_or_Tele(strHero, strTown);
					else
						H55_TM_Tele_or_Close(strHero, strTown);
					end;
				elseif strTown ~= nil and iTownRace == iHeroRace then --hero is in native town
					if H55_GovernanceEnabled == 1 and H55_Governors[strHero] == nil and iTownRace == iHeroRace then
						H55_TM_Gov_or_Tele(strHero, strTown);
					elseif H55_GovernanceEnabled == 1 and H55_Governors[strHero] ~= nil and H55_GovernorsWithTown[strHero] == strTown then
						H55_TM_End_or_Close(strHero, strTown);
					else
						H55_TM_Tele_or_Close(strHero, strTown);
					end;
				else
					-- if iHeroRace == 8 and GetHeroStat(strHero,STAT_MOVE_POINTS) < 2000 and GetHeroLevel(strHero) >= 2 then
						-- H55_TM_Wtp_or_Close(strHero, strTown);
					-- else
						H55_TM_Tele_or_Close(strHero, strTown);
					-- end;
				end;
			else
				if strTown ~= nil then
					if iTownRace ~= iHeroRace then
						if H55_TownConvEnabled == 1 then
							H55_TM_Conv_or_Close(strHero, strTown);
						else
							H55_TM_InfoOnly(strHero, strTown);
						end;
					else
						if H55_GovernanceEnabled == 1 then
							if H55_Governors[strHero] == nil then
								H55_TM_Gov_or_TeleInferno(strHero, strTown);
							else
								if H55_GovernorsWithTown[strHero] == strTown then
									H55_TM_End_or_Close(strHero, strTown);
								else
									H55_TM_TeleInferno_or_Close(strHero, strTown);
								end;
							end;
						else
							H55_TM_TeleInferno_or_Close(strHero, strTown);
						end;
					end;
				else
					H55_TM_InfoOnly(strHero, strTown);
				end;
			end;
		end;
	end;
end;

function H55_TM_Gov_or_TeleInferno(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Gov_or_TeleInferno.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_TGStartQuestionBox('"..hero.."','"..town.."')","H55_ATP_Inferno_QuestionBox('"..hero.."','"..town.."')");
end;

function H55_TM_TeleInferno_or_Close(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	--local v_wages = H55_GetHeroTaxRate(hero);
	--local v_allwages = H55_InfoWages(player);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_TeleInferno_or_Close.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,    --wages=v_wages,allwages=v_allwages,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_ATP_Inferno_QuestionBox('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
end;

function H55_ATP_Inferno_QuestionBox(hero,strCurrentTown)
	H55_TeleportStatus[hero] = 1;
	local player = GetObjectOwner(hero);
	local towns = GetObjectNamesByType("TOWN");
	local targets = 0;
	if (GetTownBuildingLevel(strCurrentTown, TOWN_BUILDING_SPECIAL_1) == 1) then
		for i,town in towns do
			if (player == GetObjectOwner(town)) and (town ~= strCurrentTown) and (H55_GetTownRace(town) == 3) and (GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1) == 1) then
				targets = targets+1
			end;
		end;
		if targets > 0 then
			for i,town in towns do
				if H55_TeleportStatus[hero] == 1 then
					if (player == GetObjectOwner(town)) and (town ~= strCurrentTown) and (H55_GetTownRace(town) == 3) and (GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1) == 1) then
						local x,y,z=GetObjectPosition(town);
						MoveCamera(x,y,z,50,H55_Pi/2,1,1,1,1);
						sleep(4);
						QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
						"H55_Teleport_Inferno_Now('"..hero.."','"..town.."')","H55_EndSpinlock");
						H55_Spinlock();
					end;
				end;
			end;
		else
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets_Inferno.txt", hero, player, 5);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoRequire_Inferno.txt", hero, player, 5);
	end;
end;

function H55_Teleport_Inferno_Now(hero,town)
	local player = GetObjectOwner(hero);
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);
	local x,y,z=GetObjectPosition(town);
	H55_TeleportStatus[hero] = 2;
	-- ChangeHeroStat(hero,STAT_MOVE_POINTS,(-1*movepoints));
	-- ChangeHeroStat(hero,STAT_MANA_POINTS,-25);
	print("H55 Performing Teleport..");
	Play2DSoundForPlayers(GetPlayerFilter(player), H55_SndTPStart);
	PlayVisualEffect("/Effects/_(Effect)/Spells/townportal_start.xdb#xpointer(/Effect)",town,"",0,0,0,0,z);
	SetObjectPosition(hero,x,y,z);
	H55_EndSpinlock();
	sleep(8);
	Play2DSoundForPlayers(GetPlayerFilter(player), H55_SndTPEnd);
end;

function H55_TM_InfoOnly(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	MessageBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Info_Only.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_AbortTC('"..hero.."')");
end;

function H55_TM_Conv_or_Tele(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Conv_or_Tele.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_TCQuestionBox('"..hero.."','"..town.."')","H55_ATPQuestionBox('"..hero.."')");
end;

function H55_TM_Conv_or_Close(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Conv_or_Close.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_TCQuestionBox('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
end;

function H55_TM_Gov_or_Tele(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Gov_or_Tele.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_TGStartQuestionBox('"..hero.."','"..town.."')","H55_ATPQuestionBox('"..hero.."')");
end;

function H55_TM_Tele_or_Close(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	--local v_wages = H55_GetHeroTaxRate(hero);
	--local v_allwages = H55_InfoWages(player);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Tele_or_Close.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,    --wages=v_wages,allwages=v_allwages,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_ATPQuestionBox('"..hero.."')","H55_AbortTC('"..hero.."')");
end;

function H55_TM_Wtp_or_Close(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Wtp_or_Close.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,    --wages=v_wages,allwages=v_allwages,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_WTPQuestionBox('"..hero.."')","H55_AbortTC('"..hero.."')");
end;

function H55_TM_Gov_or_Close(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_Gov_or_Close.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_TGStartQuestionBox('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
end;

function H55_TM_End_or_Close(hero,town)
	local player = GetObjectOwner(hero);
	local v_movement = GetHeroStat(hero,STAT_MOVE_POINTS);
	local v_mana = H55_InfoHeroManaRegen(hero);
	local v_occupation = H55_InfoOccupation(hero);
	local v_estates = H55_InfoGoldIncome(hero);
	local v_summons = H55_InfoElementals(hero);
	local v_artifactsummons_tier = H55_GetLegionCap(hero);
	local v_artifactsummons = H55_InfoLegion(hero);
	local v_tier1 = 0;
	local v_tier2 = 0;
	local v_tier3 = 0;
	local v_tier4 = 0;
	local v_tier5 = 0;
	local v_tier6 = 0;
	local v_tier7 = 0;
	local v_governance = H55_InfoGovEnabled();
	local v_conversion = H55_InfoTCEnabled();
	local v_maxtowns = H55_MaxTownsPerFaction;
	local v_t1d = H55_MaxDwellingsT1;
	local v_t2d = H55_MaxDwellingsT2;
	local v_t3d = H55_MaxDwellingsT3;
	local v_t4d = H55_MaxDwellingsT4;
	if H55_GovernanceTier1[hero] ~= nil then v_tier1 = H55_GovernanceTier1[hero] end;
	if H55_GovernanceTier2[hero] ~= nil then v_tier2 = H55_GovernanceTier2[hero] end;
	if H55_GovernanceTier3[hero] ~= nil then v_tier3 = H55_GovernanceTier3[hero] end;
	if H55_GovernanceTier4[hero] ~= nil then v_tier4 = H55_GovernanceTier4[hero] end;
	if H55_GovernanceTier5[hero] ~= nil then v_tier5 = H55_GovernanceTier5[hero] end;
	if H55_GovernanceTier6[hero] ~= nil then v_tier6 = H55_GovernanceTier6[hero] end;
	if H55_GovernanceTier7[hero] ~= nil then v_tier7 = H55_GovernanceTier7[hero] end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TM_End_or_Close.txt";
	occupation=v_occupation,movement=v_movement,mana=v_mana,estates=v_estates,artifactsummons_tier=v_artifactsummons_tier,artifactsummons=v_artifactsummons,
	summons=v_summons,tier1=v_tier1,tier2=v_tier2,tier3=v_tier3,tier4=v_tier4,tier5=v_tier5,tier6=v_tier6,tier7=v_tier7,
	governance=v_governance,conversion=v_conversion,maxtowns=v_maxtowns,t1d=v_t1d,t2d=v_t2d,t3d=v_t3d,t4d=v_t4d},
	"H55_TGEndQuestionBox('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
end;

function H55_TGStartQuestionBox(hero,town)
	local player = GetObjectOwner(hero);
	if H55_TownsWithGovernor[town] ~= nil then
		if IsObjectExists(H55_TownsWithGovernor[town]) == 1 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TM_TownAlready.txt", hero, player, 5);
		else
			H55_ResetConquestHero(H55_TownsWithGovernor[town],town);
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TG_StartQuestion.txt"},
			"H55_StartGovernor('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
		end;
	else
		QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TG_StartQuestion.txt"},
		"H55_StartGovernor('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
	end;
end;

function H55_TGEndQuestionBox(hero,town)
	local player = GetObjectOwner(hero);
	local term = (H55_Day-H55_GovernorInaugurationDay[hero])
	local v_fine = 0;
	if term <= 27 then v_fine = (28-term)*(GetHeroLevel(hero)*100) end;
	QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TG_EndQuestion.txt";fine=v_fine},
	"H55_EndGovernor('"..hero.."','"..town.."')","H55_AbortTC('"..hero.."')");
end;

function H55_StartGovernor(hero,town)
	local player = GetObjectOwner(hero);
	H55_Governors[hero] = 1;
	H55_GovernorsWithTown[hero] = town;
	H55_TownsWithGovernor[town] = hero;
	H55_GovernorInaugurationDay[hero] = H55_Day;
	H55_CastleDefenseOwners[hero] = 0;
	H55_MageGuildBonusOwners[hero] = 0;
	H55_SpecialAttackOwners[hero] = 0;
	H55_SpecialKnowledgeOwners[hero] = 0;
	H55_SpecialSpellPowerOwners[hero] = 0;
	H55_RunicShrineBonusOwners[hero] = 0;
	ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Inaugurated.txt", hero, player, 5);
end;

function H55_EndGovernor(hero,town)
	local player = GetObjectOwner(hero);
	local term = (H55_Day-H55_GovernorInaugurationDay[hero])
	local fine = 0;
	if term <= 27 then fine = (28-term)*(GetHeroLevel(hero)*100) end;
	if fine > 0 then
		if GetPlayerResource(player,6) >= fine then
			H55_TakeResourcesSilent(player,6,fine);
			H55_ResetConquestHero(hero,town);
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Resigned.txt", hero, player, 5);
		else
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_ResignRefuse.txt", hero, player, 5);
		end;
	else
		H55_ResetConquestHero(hero,town);
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Resigned.txt", hero, player, 5);
	end;
end;

function H55_ResetConquestHero(hero,town)
	H55_Governors[hero] = nil;
	H55_GovernorsWithTown[hero] = nil;
	H55_TownsWithGovernor[town] = nil;
	H55_GovernorInaugurationDay[hero] = nil;
	if IsObjectExists(hero) == 1 then
		H55_AdjustGovernorDefense(hero,nil);
	end;
	H55_CastleDefenseOwners[hero] = 0;
	H55_MageGuildBonusOwners[hero] = 0;
	H55_SpecialAttackOwners[hero] = 0;
	H55_SpecialKnowledgeOwners[hero] = 0;
	H55_SpecialSpellPowerOwners[hero] = 0;
	H55_RunicShrineBonusOwners[hero] = 0;
end;

function H55_ATPQuestionBox(hero)
	H55_TeleportStatus[hero] = 1;
	local player = GetObjectOwner(hero);
	local towns = GetObjectNamesByType("TOWN");
	local targets = 0;
	if H55_Governors[hero] == 1 then
		if GetHeroStat(hero,STAT_MOVE_POINTS) < 2000 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMovement.txt", hero, player, 5);
		elseif GetHeroStat(hero,STAT_MANA_POINTS) < 25 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMana.txt", hero, player, 5);
		else
			local hometown = H55_GovernorsWithTown[hero];
			if (player == GetObjectOwner(hometown)) and H55_GetTownRace(hometown) ~= 8 and (GetTownBuildingLevel(hometown,TOWN_BUILDING_MAGIC_GUILD) == 5) then
				local x,y,z=GetObjectPosition(hometown);
				MoveCamera(x,y,z,50,H55_Pi/2,1,1,1,1);
				sleep(4);
				QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
				"H55_TeleportNow('"..hero.."','"..hometown.."')","H55_EndSpinlock");
				H55_Spinlock();
			elseif (player == GetObjectOwner(hometown)) and H55_GetTownRace(hometown) == 8 and (GetTownBuildingLevel(hometown,TOWN_BUILDING_SPECIAL_1) == 3) and (GetTownBuildingLevel(hometown,TOWN_BUILDING_SPECIAL_3) == 1) then
				local x,y,z=GetObjectPosition(hometown);
				MoveCamera(x,y,z,50,H55_Pi/2,1,1,1,1);
				sleep(4);
				QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
				"H55_TeleportNow('"..hero.."','"..hometown.."')","H55_EndSpinlock");
				H55_Spinlock();
			else
				ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets.txt", hero, player, 5);
			end;
		end;
	else
		if GetHeroStat(hero,STAT_MOVE_POINTS) < 2000 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMovement.txt", hero, player, 5);
		elseif GetHeroStat(hero,STAT_MANA_POINTS) < 25 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMana.txt", hero, player, 5);
		else
			for i,town in towns do
				if (player == GetObjectOwner(town)) and H55_GetTownRace(town) ~= 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD) == 5) then
					targets = targets+1
				end;
				if (player == GetObjectOwner(town)) and H55_GetTownRace(town) == 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 3) and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3) == 1) then
					targets = targets+1
				end;
			end;
			if targets > 0 then
				for i,town in towns do
					if H55_TeleportStatus[hero] == 1 then
						if (player == GetObjectOwner(town)) then
							if H55_GetTownRace(town) ~= 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD) == 5) then
								local x,y,z=GetObjectPosition(town);
								MoveCamera(x,y,z,50,H55_Pi/2,1,1,1,1);
								sleep(4);
								QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
								"H55_TeleportNow('"..hero.."','"..town.."')","H55_EndSpinlock");
								H55_Spinlock();
							elseif H55_GetTownRace(town) == 8 and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 3) and (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3) == 1) then
								local x,y,z=GetObjectPosition(town);
								MoveCamera(x,y,z,50,H55_Pi/2,1,1,1,1);
								sleep(4);
								QuestionBoxForPlayers(GetPlayerFilter(player),"/Text/Game/Scripts/TownPortal/TP_Question.txt",
								"H55_TeleportNow('"..hero.."','"..town.."')","H55_EndSpinlock");
								H55_Spinlock();
							end;
						end;
					end;
				end;
			else
				ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets.txt", hero, player, 5);
			end;
		end;
	end;
end;

function H55_WTPQuestionBox(hero)
	local player = GetObjectOwner(hero);
	local towns = H55_GetPlayerTowns(player);
	local distances = {};
	local distancesbytown = {};
	for i=1,length(towns)-1 do
		distances[i] = H55_GetDistanceUG(hero,towns[i]);
	end;
	for i,town in towns do
		distancesbytown[town] = H55_GetDistanceUG(hero,town);
	end;
	-- for i,town in towns do
		--if (player == GetObjectOwner(town)) then
			-- distances[town] = H55_GetDistanceUG(hero,town);
		--end;
	-- end;
	if distances ~= nil then
		local target = H55_LowestSample(distances);
		for i, town in towns do
			if (distancesbytown[town] == target) then
				targettown = town;
			end;
		end;
		print(targettown);
		if GetHeroStat(hero,STAT_MANA_POINTS) < 10 then
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoMana.txt", hero, player, 5);
		else
			H55_TeleportNow(hero,targettown);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TP_NoTargets.txt", hero, player, 5);
	end;
end;

function H55_TeleportNow(hero,town)
	local player = GetObjectOwner(hero);
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);
	local x,y,z=GetObjectPosition(town);
	H55_TeleportStatus[hero] = 2;
	ChangeHeroStat(hero,STAT_MOVE_POINTS,(-1*movepoints));
	ChangeHeroStat(hero,STAT_MANA_POINTS,-25);
	print("H55 Performing Teleport..");
	Play2DSoundForPlayers(GetPlayerFilter(player), H55_SndTPStart);
	PlayVisualEffect("/Effects/_(Effect)/Spells/townportal_start.xdb#xpointer(/Effect)",town,"",0,0,0,0,z);
	SetObjectPosition(hero,x,y,z);
	H55_EndSpinlock();
	sleep(8);
	Play2DSoundForPlayers(GetPlayerFilter(player), H55_SndTPEnd);
end;

function H55_TCQuestionBox(hero,town)
	local player = GetObjectOwner(hero);
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);
	local x,y,z=GetObjectPosition(town);
	local playerrace = H55_GetPlayerRace(player);
	local townrace = H55_GetTownRace(town);
	if H55_GetAmountAlignedTowns(playerrace) < H55_MaxTownsPerFaction then
		if (GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL) ~= 4) then
			local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
			local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
			local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
			local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
			local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
			local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
			local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
			local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
			local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
			local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
			local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
			local guild = 0;
			if townrace ~= 8 then
				guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			end;
			local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
			local special1 = 0;
			local special2 = 0;
			local special3 = 0;
			local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
			local special5 = 0;
			if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
				special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
			end;
			if townrace == 2 then
				special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
			else
				special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			end;
			if townrace == 6 then
				special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
			else
				special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
			end;
			if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
				special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
			else
				special5 = 0;
			end;

			local townvalue = tavern+marketplace+blacksmith+fort+townhall+dwelling1+dwelling2+dwelling3+dwelling4+dwelling5+dwelling6+dwelling7+shipyard+guild+grail+special1+special2+special3+special4+special5;

			-- local gold_qty = 3000+(townvalue*3000);
			-- local wood_qty = 3+(townvalue*3);
			-- local ore_qty = 3+(townvalue*3);
			-- local mercury_qty = 1+(townvalue*1);
			-- local crystal_qty = 1+(townvalue*1);
			-- local sulphur_qty = 1+(townvalue*1);
			-- local gem_qty = 1+(townvalue*1);

			local gold_qty = 1500+(townvalue*1500);
			local wood_qty = 2+(townvalue*2);
			local ore_qty = 2+(townvalue*2);
			local mercury_qty = 1+(townvalue*1);
			local crystal_qty = 1+(townvalue*1);
			local sulphur_qty = 1+(townvalue*1);
			local gem_qty = 1+(townvalue*1);

			MoveCamera(x,y,z,50,H55_Pi/2,1,1,1,1);
			sleep(4);
			QuestionBoxForPlayers(GetPlayerFilter(player),{"/Text/Game/Scripts/TownPortal/TC_Question.txt";gold=gold_qty,wood=wood_qty,ore=ore_qty,mercury=mercury_qty,crystal=crystal_qty,sulphur=sulphur_qty,gem=gem_qty},
			"H55_ConvertNow('"..hero.."','"..town.."','"..townvalue.."')","H55_AbortTC('"..hero.."')");
		else
			ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoTarget.txt", hero, player, 5);
		end;
	else
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_Limit.txt", hero, player, 5);
	end;
end;

function H55_ConvertNow(hero,town,townvalue)
	local herorace = H55_GetHeroRaceNum(hero);
	local towntype = H55_GetTownRaceID(herorace);
	local townrace = H55_GetTownRace(town);
	local player = GetObjectOwner(hero);
	local movepoints = GetHeroStat(hero,STAT_MOVE_POINTS);

	local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
	local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
	local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);
	local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
	local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
	local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
	local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
	local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
	local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
	local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
	local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
	local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
	local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
	local guild = 0;
	if townrace ~= 8 then
		guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
	end;
	local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
	local special1 = 0;
	local special2 = 0;
	local special3 = 0;
	local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
	local special5 = 0;
	if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
		special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
	end;
	if townrace == 2 then
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
	else
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
	end;
	if townrace == 6 then
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
	else
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
	end;
	if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
		special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
	else
		special5 = 0;
	end;
	local guildconversionpoints = special1+special3+1;

	local x,y,z=GetObjectPosition(town);

	-- local gold_qty = 3000+(townvalue*3000);
	-- local wood_qty = 3+(townvalue*3);
	-- local ore_qty = 3+(townvalue*3);
	-- local mercury_qty = 1+(townvalue*1);
	-- local crystal_qty = 1+(townvalue*1);
	-- local sulphur_qty = 1+(townvalue*1);
	-- local gem_qty = 1+(townvalue*1);

	local gold_qty = 1500+(townvalue*1500);
	local wood_qty = 2+(townvalue*2);
	local ore_qty = 2+(townvalue*2);
	local mercury_qty = 1+(townvalue*1);
	local crystal_qty = 1+(townvalue*1);
	local sulphur_qty = 1+(townvalue*1);
	local gem_qty = 1+(townvalue*1);

	if GetPlayerResource(player,0) < wood_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,1) < ore_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,2) < mercury_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,3) < crystal_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,4) < sulphur_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,5) < gem_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	elseif GetPlayerResource(player,6) < gold_qty then
		ShowFlyingSign("/Text/Game/Scripts/TownPortal/TC_NoRes.txt", hero, player, 5);
		H55_EndSpinlock();
	else
		ChangeHeroStat(hero,STAT_MOVE_POINTS,(-1*movepoints));

		print("H55 Performing Town Conversion..");

		H55_TakeResourcesSilent(player,0,wood_qty);
		H55_TakeResourcesSilent(player,1,ore_qty);
		H55_TakeResourcesSilent(player,2,mercury_qty);
		H55_TakeResourcesSilent(player,3,crystal_qty);
		H55_TakeResourcesSilent(player,4,sulphur_qty);
		H55_TakeResourcesSilent(player,5,gem_qty);
		H55_TakeResourcesSilent(player,6,gold_qty);

		Play2DSoundForPlayers(GetPlayerFilter(player),"/Maps/Scenario/A2C2M1/Siege_WallCrash02sound.xdb#xpointer(/Sound)");
		TransformTown(town,towntype);

		sleep(1);

			if tavern == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1) end;
			if marketplace == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1)
		elseif marketplace == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) end;
			if blacksmith == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1) end;
			if fort == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1)
		elseif fort == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1)
		elseif fort == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) end;
			if townhall == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1)
		elseif townhall == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) end;
			if dwelling1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1)
		elseif dwelling1 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) end;
			if dwelling2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1)
		elseif dwelling2 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) end;
			if dwelling3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1)
		elseif dwelling3 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) end;
			if dwelling4 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1)
		elseif dwelling4 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) end;
			if dwelling5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1)
		elseif dwelling5 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) end;
			if dwelling6 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1)
		elseif dwelling6 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) end;
			if dwelling7 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1)
		elseif dwelling7 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) end;
			if shipyard == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SHIPYARD,1) end;
			if grail == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_GRAIL,1) end;

			if herorace ~= 8 and townrace ~= 8 then
					if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
			end;

			if herorace ~= 8 and townrace == 8 then
					if guildconversionpoints == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
				elseif guildconversionpoints == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
			end;

			if herorace == 8 then
					if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
				elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
				elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1)
				elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
				elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
			end;

			--Special buildings
			if herorace ~= 1 and herorace ~= 2 and herorace ~= 3 and herorace ~= 8 then
				if special3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) end;
			end;
			if herorace == 2 then
				if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_0,1) end;
			elseif herorace ~= 8 then
				if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
			end;
			if herorace == 6 then
				if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_6,1) end;
			else
				if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_2,1) end;
			end;
			if herorace ~= 4 and herorace ~= 5 and herorace ~= 6 then
				if special5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_5,1) end;
			end;

			--Crash Protection
			if herorace == 5 then SetTownBuildingLimitLevel(town,TOWN_BUILDING_SPECIAL_3,1) end;
			if herorace == 6 then SetTownBuildingLimitLevel(town,TOWN_BUILDING_SPECIAL_4,1) end;

		H55_EndSpinlock();
		sleep(3);
	end;
end;

function H55_ConvertNowAI(town,player,playerrace)
	local towntype = H55_GetTownRaceID(playerrace);
	local townrace = H55_GetTownRace(town);

	local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
	local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
	local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);
	local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
	local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
	local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
	local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
	local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
	local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
	local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
	local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
	local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
	local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
	local guild = 0;
	if townrace ~= 8 then
		guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
	end;
	local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
	local special1 = 0;
	local special2 = 0;
	local special3 = 0;
	local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
	local special5 = 0;
	if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
		special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
	end;
	if townrace == 2 then
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
	else
		special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
	end;
	if townrace == 6 then
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
	else
		special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
	end;
	if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
		special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
	else
		special5 = 0;
	end;
	local guildconversionpoints = special1+special3+1;

	TransformTown(town,towntype);

	H55_AmountAIConversions = H55_AmountAIConversions+1;

	sleep(1);

		if tavern == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_TAVERN,1) end;
		if marketplace == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1)
	elseif marketplace == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) UpgradeTownBuilding(town,TOWN_BUILDING_MARKETPLACE,1) end;
		if blacksmith == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_BLACKSMITH,1) end;
		if fort == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1)
	elseif fort == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1)
	elseif fort == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) UpgradeTownBuilding(town,TOWN_BUILDING_FORT,1) end;
		if townhall == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1)
	elseif townhall == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) UpgradeTownBuilding(town,TOWN_BUILDING_TOWN_HALL,1) end;
		if dwelling1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1)
	elseif dwelling1 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_1,1) end;
		if dwelling2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1)
	elseif dwelling2 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_2,1) end;
		if dwelling3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1)
	elseif dwelling3 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_3,1) end;
		if dwelling4 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1)
	elseif dwelling4 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_4,1) end;
		if dwelling5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1)
	elseif dwelling5 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_5,1) end;
		if dwelling6 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1)
	elseif dwelling6 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_6,1) end;
		if dwelling7 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1)
	elseif dwelling7 == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) UpgradeTownBuilding(town,TOWN_BUILDING_DWELLING_7,1) end;
		if shipyard == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SHIPYARD,1) end;
		if grail == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_GRAIL,1) end;

		if playerrace ~= 8 and townrace ~= 8 then
				if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
		end;

		if playerrace ~= 8 and townrace == 8 then
				if guildconversionpoints == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1)
			elseif guildconversionpoints == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) UpgradeTownBuilding(town,TOWN_BUILDING_MAGIC_GUILD,1) end;
		end;

		if playerrace == 8 then
				if guild == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
			elseif guild == 2 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
			elseif guild == 3 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1)
			elseif guild == 4 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1)
			elseif guild == 5 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
		end;

		--Special buildings
		if playerrace ~= 1 and playerrace ~= 2 and playerrace ~= 3 and playerrace ~= 8 then
			if special3 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_3,1) end;
		end;
		if playerrace == 2 then
			if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_0,1) end;
		elseif playerrace ~= 8 then
			if special1 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_1,1) end;
		end;
		if playerrace == 6 then
			if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_6,1) end;
		else
			if special2 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_2,1) end;
		end;
		if playerrace ~= 4 and playerrace ~= 5 and playerrace ~= 6 then
			if special5 == 1 then UpgradeTownBuilding(town,TOWN_BUILDING_SPECIAL_5,1) end;
		end;

		--Crash Protection
		if playerrace == 5 then DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_3,0,0) end;
		if playerrace == 6 then DestroyTownBuildingToLevel(town,TOWN_BUILDING_SPECIAL_4,0,0) end;
end;

----------------------------------------------------------------------------------------------------------------------------------------------------
--WEEKLY CONTINUES EVENT
----------------------------------------------------------------------------------------------------------------------------------------------------

function H55_WeeklyEvents(player)

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {1,"AI Cheating",player,""};--------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	local alltowns = GetObjectNamesByType("TOWN");
	local haventowns = GetObjectNamesByType("TOWN_HEAVEN");
	local sylvantowns = GetObjectNamesByType("TOWN_PRESERVE");
	local academytowns = GetObjectNamesByType("TOWN_ACADEMY");
	local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");
	local dungeontowns = GetObjectNamesByType("TOWN_DUNGEON");
	local necropolistowns = GetObjectNamesByType("TOWN_NECROMANCY");
	local infernotowns = GetObjectNamesByType("TOWN_INFERNO");
	local fortresstowns = GetObjectNamesByType("TOWN_FORTRESS");

	if H55_GameMode == 0 and H55_IsThisAIPlayer(player) == 1 then
		local currentamount = GetPlayerResource(player,6);
		local difficulty = GetDifficulty();
		local mapsizecoef = H55_AIMapSizeCoef();
		local difficultycoef = H55_AIDifficultyCoef();
		local timercoef = H55_AITimerCoef();
		local killercoef = H55_AIKillMode;
		local cheatcoef = H55_AICheatSetting();
		local growthcoef = mapsizecoef*difficultycoef*timercoef*cheatcoef*killercoef;
		local towncoef = 0.5 + (0.5 * (length(H55_GetPlayerTowns(player))));
		local addedamount = H55_Round(growthcoef*(towncoef*20000));
		--local addedamount = H55_Round( towncoef*( (10000*killercoef) + (difficulty*(5000*killercoef)) ) );
		H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+addedamount;
		H55_AICheatValue = growthcoef; --Testing Purpose
		for i,town in alltowns do
			if (GetObjectOwner(town) == player) then
				local townrace = H55_GetTownRace(town);
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][1]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][2]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][3]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][4]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][5]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and (difficulty >=1) then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][6]))));
				end;
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and (difficulty >=2) then
					SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) + (H55_Round(growthcoef*(H55_CreaturesGrowth[townrace][7]))));
				end;
			end;
		end;
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {2,"Suppliers",player,""};----------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if H55_MysticalGardens ~= nil then
		local gardengold = 0;
		local gardengems = 0;
		local gardenbonus = H55_NetworkSkillAmount[player];
		for i,garden in H55_MysticalGardens do
			if H55_MysticalGardensOwned[garden] == player then
				if H55_WeeklyMysticalGardenRes[garden] == 0 then
					gardengold = gardengold + 500;
					if gardenbonus >= 1 then
						gardengold = gardengold + (gardenbonus*250);
					end;
				elseif H55_WeeklyMysticalGardenRes[garden] == 1 then
					gardengems = gardengems + 5 + gardenbonus;
				end;
			end;
		end;
		if gardengold > 0 then
			H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+gardengold;
		end;
		if gardengems > 0 then
			H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+gardengems;
		end;
	end;

	if H55_SiegeWorkshops ~= nil then
		local workshopwood = 0;
		local workshopore = 0;
		local workshopbonus = H55_NetworkSkillAmount[player];
		for i,workshop in H55_SiegeWorkshops do
			if H55_SiegeWorkshopsOwned[workshop] == player then
				workshopwood = workshopwood + H55_WeeklySiegeWorkshopResQty[workshop] + workshopbonus;
				workshopore = workshopore + H55_WeeklySiegeWorkshopResQty[workshop] + workshopbonus;
			end;
		end;
		if workshopwood > 0 then
			H55_GlobalWeeklyWoodPayout[player] = H55_GlobalWeeklyWoodPayout[player]+workshopwood;
		end;
		if workshopore > 0 then
			H55_GlobalWeeklyOrePayout[player] = H55_GlobalWeeklyOrePayout[player]+workshopore;
		end;
	end;

	if H55_Windmills ~= nil then
		local millore = 0;
		local millmercury = 0;
		local millcrystal = 0;
		local millsulphur = 0;
		local millgems = 0;
		local millbonus = H55_NetworkSkillAmount[player];
		for i,mill in H55_Windmills do
			if H55_WindmillsOwned[mill] == player then
				if H55_WeeklyWindmillRes[mill] == 1 then
					millore = millore + H55_WeeklyWindmillResQty[mill] + millbonus;
				elseif H55_WeeklyWindmillRes[mill] == 2 then
					millmercury = millmercury + H55_WeeklyWindmillResQty[mill] + millbonus;
				elseif H55_WeeklyWindmillRes[mill] == 3 then
					millcrystal = millcrystal + H55_WeeklyWindmillResQty[mill] + millbonus;
				elseif H55_WeeklyWindmillRes[mill] == 4 then
					millsulphur = millsulphur + H55_WeeklyWindmillResQty[mill] + millbonus;
				else
					millgems = millgems + H55_WeeklyWindmillResQty[mill] + millbonus;
				end;
			end;
		end;
		if millore > 0 then
			H55_GlobalWeeklyOrePayout[player] = H55_GlobalWeeklyOrePayout[player]+millore;
		end;
		if millmercury > 0 then
			H55_GlobalWeeklyMercuryPayout[player] = H55_GlobalWeeklyMercuryPayout[player]+millmercury;
		end;
		if millcrystal > 0 then
			H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+millcrystal;
		end;
		if millsulphur > 0 then
			H55_GlobalWeeklySulphurPayout[player] = H55_GlobalWeeklySulphurPayout[player]+millsulphur;
		end;
		if millgems > 0 then
			H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+millgems;
		end;
	end;

	if H55_Waterwheels ~= nil then
		local wheelgold = 0;
		local wheelbonus = H55_NetworkSkillAmount[player];
		for i,wheel in H55_Waterwheels do
			if H55_WaterwheelsOwned[wheel] == player then
				wheelgold = wheelgold + 1000;
				if wheelbonus >= 1 then
					wheelgold = wheelgold + (wheelbonus*500);
				end;
			end;
		end;
		if wheelgold > 0 then
			H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player]+wheelgold;
		end;
	end;

	if H55_GetPlayerShatterStrength(player) >= 0.03 then
		--local race = H55_GetPlayerRace(player);
		local towns = H55_GetPlayerTowns(player);
		--local elemtype = H55_GetRaceElementalType(race);
		local multiplier = H55_GetPlayerShatterStrength(player);
		if (length(towns) > 0) then
			for i,town in towns do
				local townrace = H55_GetTownRace(town);
				local elemtype = H55_GetRaceElementalTypeID(townrace);
				if townrace == 8 then
					local growth = 2+(GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_1))+(GetTownBuildingLevel(town, TOWN_BUILDING_SPECIAL_3));
					local totalgrowth = H55_Round(multiplier*growth);
					if totalgrowth >= 1 then
						AddObjectCreatures(town,elemtype,totalgrowth);
						if H55_IsThisAIPlayer(player) ~= 1 then
							ShowFlyingSign({"/Text/Game/Scripts/Garrison.txt"; num=totalgrowth},town,player,5);
							sleep(1);
						end;
					end;
				else
					local growth = 1+GetTownBuildingLevel(town, TOWN_BUILDING_MAGIC_GUILD);
					local totalgrowth = H55_Round(multiplier*growth);
					if totalgrowth >= 1 then
						AddObjectCreatures(town,elemtype,totalgrowth);
						if H55_IsThisAIPlayer(player) ~= 1 then
							ShowFlyingSign({"/Text/Game/Scripts/Garrison.txt"; num=totalgrowth},town,player,5);
							sleep(1);
						end;
					end;
				end;
			end;
		end;
	end;

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {3,"Economic Weekly",player,""};----------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	local heroes = GetPlayerHeroes(player);
	if heroes~=nil then

		--Economic specs

		-- by 牙姐
		--begin
		if contains(heroes,"Jenova") ~= nil then
			if H55_JenovaReceived == 0 then
				local i_level = GetHeroLevel("Jenova");
				local i_gold = 1500 + i_level * 150;
				H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player] + i_gold;
				H55_JenovaReceived = 1;
			end;
		end;
		if contains(heroes,"Quroq") ~= nil then
			if H55_QuroqReceived == 0 then
				local i_level = GetHeroLevel("Quroq");
				local i_city = length(strongholdtowns);
				local i_slave = 0;
				if i_city > 0 then
					for i, town in strongholdtowns do
						if (GetObjectOwner(town) == player) then
							if GetTownBuildingLevel(town, TOWN_BUILDING_STRONGHOLD_SLAVE_MARKET) ~= 0 then
								i_slave = i_slave + 1;
							end;
						end;
					end;
				end;
				local type = H55_ArmyInfoSimple("Quroq");
				local i_race_0 = 0;
				local i_race_1 = 0;
				local i_race_2 = 0;
				local i_race_3 = 0;
				local i_race_4 = 0;
				local i_race_5 = 0;
				local i_race_6 = 0;
				local i_race_7 = 0;
				local i_race_8 = 0;

				for i = 0, 6 do
					for j = 1, 8 do
						for k = 1, 7 do
							for l = 1, 3 do
								if type[i] == H55_Creatures[j][k][l] then
									if j == 1 then
										i_race_1 = 1;
									elseif j == 2 then
										i_race_2 = 1;
									elseif j == 3 then
										i_race_3 = 1;
									elseif j == 4 then
										i_race_4 = 1;
									elseif j == 5 then
										i_race_5 = 1;
									elseif j == 6 then
										i_race_6 = 1;
									elseif j == 7 then
										i_race_7 = 1;
									elseif j == 8 then
										i_race_8 = 1;
									end;
								end;
							end;
						end;
					end;
				end;
				for i = 0, 6 do
					for j = 1, 9 do
						if type[i] == H55_NeutralCreatures[j] then
							i_race_0 = 1;
						end;
					end;
				end;
				local i_race = i_race_0 + i_race_1 + i_race_2 + i_race_3 + i_race_4 + i_race_5 + i_race_6 + i_race_7 + i_race_8;
				local i_gold = H55_Round((500 + i_level * 50) * (1 + i_slave * 0.5) * (1 + i_race * 0.5));
				H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player] + i_gold;
				H55_QuroqReceived = 1;
			end;
		end;
		if contains(heroes,"Ufretin") ~= nil then
			if H55_UfretinReceived == 0 then
				local i_level = GetHeroLevel("Ufretin");
				local i_city = length(H55_GetPlayerTowns(player));
				local i_gold = 500 + H55_Floor(GetPlayerResource(player, 6) * (0.01 * i_level + 0.1 * i_city));
				H55_GlobalWeeklyGoldPayout[player] = H55_GlobalWeeklyGoldPayout[player] + i_gold;
				H55_UfretinReceived = 1;
			end;
		end;
		if contains(heroes,"RedHeavenHero06") ~= nil then
			print("-------------------------------------------------------------------------------")
			print("RedHeavenHero06 Event begin")
			local i_level = GetHeroLevel("RedHeavenHero06");
			if H55_RedHeavenHero06Received == 0 then
				H55_GlobalWeeklySulphurPayout[player] = H55_GlobalWeeklySulphurPayout[player] + i_level;
				H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player] + i_level;
				H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player] + i_level;
				H55_GlobalWeeklyMercuryPayout[player] = H55_GlobalWeeklyMercuryPayout[player] + i_level;
				H55_RedHeavenHero06Received = 1;
			end;
			print("RedHeavenHero06 Event end")
			print("-------------------------------------------------------------------------------")
		end;
		--end

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {4,"Reinforcements",player,""};-----------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		----  by 牙姐
		-- if contains(heroes,"Archilus") ~= nil then
		-- 	H55_WeeklyReinforce("Archilus", player, 6, STAT_KNOWLEDGE, 90, -1);
		-- end;
		-- if contains(heroes,"Thant") ~= nil then
		-- 	H55_WeeklyReinforce("Thant", player, 5, STAT_KNOWLEDGE, 116, DEMON_FEAT_EXPLODING_CORPSES);
		-- end;
		-- if contains(heroes,"Azar") ~= nil then
		-- 	H55_WeeklyReinforce("Azar", player, 4, STAT_ATTACK, 113, HERO_SKILL_DEFEND_US_ALL);
		-- end;
		-- if contains(heroes,"Gelu") ~= nil then
		-- 	H55_WeeklyReinforce("Gelu", player, 7, STAT_ATTACK, 114, -1);
		-- end;
		-- if contains(heroes,"Welygg") ~= nil then
		-- 	H55_WeeklyReinforce("Welygg", player, 6, STAT_ATTACK, 115, PERK_DIPLOMACY);
		-- end;
		-- if contains(heroes,"Davius") ~= nil then
		-- 	H55_WeeklyReinforce("Davius", player, 6, STAT_ATTACK, -1, -1);
		-- end;

			--heaven
			if contains(heroes, "Nathaniel") ~= nil then
				H55_WeeklyReinforce("Nathaniel", player, 1, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Orrin") ~= nil then
				H55_WeeklyReinforce("Orrin", player, 2, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Mardigo") ~= nil then
				H55_WeeklyReinforce("Mardigo", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Ving") ~= nil then
				H55_WeeklyReinforce("Ving", player, 4, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Sarge") ~= nil then
				H55_WeeklyReinforce("Sarge", player, 6, STAT_KNOWLEDGE, -1, -1);
			end;
			--preserve
			if contains(heroes, "Gillion") ~= nil then
				H55_WeeklyReinforce("Gillion", player, 2, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Ossir") ~= nil then
				H55_WeeklyReinforce("Ossir", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Itil") ~= nil then
				H55_WeeklyReinforce("Itil", player, 5, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Gelu") ~= nil then
				H55_WeeklyReinforce("Gelu", player, 6, STAT_KNOWLEDGE, 114, -1);
			end;
			--necropolis
			if contains(heroes, "Straker") ~= nil then
				H55_WeeklyReinforce("Straker", player, 2, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Muscip") ~= nil then
				H55_WeeklyReinforce("Muscip", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Tamika") ~= nil then
				H55_WeeklyReinforce("Tamika", player, 4, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Thant") ~= nil then
				H55_WeeklyReinforce("Thant", player, 5, STAT_KNOWLEDGE, 116, DEMON_FEAT_EXPLODING_CORPSES);
			end;
			if contains(heroes, "Adelaide") ~= nil then
				H55_WeeklyReinforce("Adelaide", player, 5, STAT_KNOWLEDGE, 935, DEMON_FEAT_EXPLODING_CORPSES);
			end;
			if contains(heroes, "Archilus") ~= nil then
				H55_WeeklyReinforce("Archilus", player, 6, STAT_KNOWLEDGE, 90, -1);
			end;
			--fortress
			if contains(heroes, "Ingvar") ~= nil then
				H55_WeeklyReinforce("Ingvar", player, 1, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Skeggy") ~= nil then
				H55_WeeklyReinforce("Skeggy", player, 2, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Bersy") ~= nil then
				H55_WeeklyReinforce("Bersy", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Egil") ~= nil then
				H55_WeeklyReinforce("Egil", player, 5, STAT_KNOWLEDGE, -1, -1);
			end;
			--stronghold
			if contains(heroes, "Hero9") ~= nil then
				H55_WeeklyReinforce("Hero9", player, 1, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Hero7") ~= nil then
				H55_WeeklyReinforce("Hero7", player, 2, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Hero8") ~= nil then
				H55_WeeklyReinforce("Hero8", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Azar") ~= nil then
				H55_WeeklyReinforce("Azar", player, 4, STAT_KNOWLEDGE, 113, HERO_SKILL_DEFEND_US_ALL);
			end;
			if contains(heroes, "Hero6") ~= nil then
				H55_WeeklyReinforce("Hero6", player, 6, STAT_KNOWLEDGE, -1, -1);
			end;
			--inferno
			if contains(heroes, "Calid") ~= nil then
				H55_WeeklyReinforce("Calid", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Oddrema") ~= nil then
				H55_WeeklyReinforce("Oddrema", player, 4, STAT_KNOWLEDGE, -1, -1);
			end;
			--academy
			if contains(heroes, "Havez") ~= nil then
				H55_WeeklyReinforce("Havez", player, 1, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Isher") ~= nil then
				H55_WeeklyReinforce("Isher", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Razzak") ~= nil then
				H55_WeeklyReinforce("Razzak", player, 4, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Davius") ~= nil then
				H55_WeeklyReinforce("Davius", player, 6, STAT_KNOWLEDGE, -1, -1);
			end;
			--dungeon
			if contains(heroes, "Ohtarig") ~= nil then
				H55_WeeklyReinforce("Ohtarig", player, 1, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Urunir") ~= nil then
				H55_WeeklyReinforce("Urunir", player, 2, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Menel") ~= nil then
				H55_WeeklyReinforce("Menel", player, 3, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Ferigl") ~= nil then
				H55_WeeklyReinforce("Ferigl", player, 4, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Eruina") ~= nil then
				H55_WeeklyReinforce("Eruina", player, 6, STAT_KNOWLEDGE, -1, -1);
			end;
			if contains(heroes, "Welygg") ~= nil then
				H55_WeeklyReinforce("Welygg", player, 6, STAT_KNOWLEDGE, 115, PERK_DIPLOMACY);
			end;

		---- end

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {5,"Recruits",player,""};-----------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------




		for i,hero in heroes do

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {6,"Summons",player,hero};----------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

			if H55_GetHeroClass(hero) == "Demonlord" or H55_GetHeroClass(hero) == "Sorcerer" then
				if HasHeroSkill(hero,SKILL_GATING) == nil then
					local cities = H55_GetAlignedTownsOwned(hero,player)
					local multiplier = 0;
					if cities ~= nil then
						for i,city in cities do
							if GetTownBuildingLevel(city,TOWN_BUILDING_SPECIAL_1) == 1 then
								multiplier = multiplier+1;
							end;
						end;
					end;
					if multiplier >= 1 then
						H55_InfernalLoom(hero,player,20,133,19,H55_T3_COEF,multiplier);
					end;
				end;
			end;
			if contains(H55_NecropolisHeroes,hero) ~= nil and GetHeroLevel(hero) >= 20 then
				if HasHeroSkill(hero,PERK_NO_REST_FOR_THE_WICKED) ~= nil then
					local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
					if knowledge >= 1 then
						H55_DefendUsDaily(hero,player,30,152,29,knowledge);
					end;
				end;
			end;
			if (HasHeroSkill(hero,KNIGHT_FEAT_GUARDIAN_ANGEL) ~= nil) and (H55_GuardianAngelOwners[hero] ~= 1) then
				H55_GuardianAngelOwners[hero] = 1;
			end;
			if (HasHeroSkill(hero,KNIGHT_FEAT_GUARDIAN_ANGEL) == nil) and (H55_GuardianAngelOwners[hero] == 1) then
				H55_GuardianAngelOwners[hero] = 0;
			end;
			if H55_GuardianAngelOwners[hero] == 1 and H55_DivineGuardiansReceived[player] ~= 1 then
				local level = GetHeroLevel(hero);
				local race = H55_GetHeroRaceNum(hero);
				local towns = H55_GetAlignedTownsOwned(hero,player);
				local growth = 1;
				if length(towns) >= 1 then
					for i,town in towns do
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[race][7][1], GetObjectDwellingCreatures(town,H55_Creatures[race][7][1]) + growth);
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Recruits.txt"; num=growth},hero,player,5);
								sleep(8);
							else
								sleep(2);
							end;
						end;
					end;
				end;
				H55_DivineGuardiansReceived[player] = 1;
			end;
			if (HasHeroSkill(hero,DEMON_FEAT_EXPLODING_CORPSES) ~= nil) and (H55_ExplodingCorpsesOwners[hero] ~= 1) then
				H55_ExplodingCorpsesOwners[hero] = 1;
			end;
			if (HasHeroSkill(hero,DEMON_FEAT_EXPLODING_CORPSES) == nil) and (H55_ExplodingCorpsesOwners[hero] == 1) then
				H55_ExplodingCorpsesOwners[hero] = 0;
			end;
			if H55_ExplodingCorpsesOwners[hero] == 1 then
				local type = H55_ArmyInfoSimple(hero);
				local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
				--local multiplier = H55_GetJoinSpecMultiplier(hero,player);
				local racenum = H55_GetHeroRaceNum(hero);
				-- local coef = 0.4;
				local coef = 0.25;
				-- if racenum == 2 then
				-- 	coef = 0.33;
				-- end;
				if racenum == 3 or racenum == 6 then
					coef = 0.17;
				end;
				if racenum == 5 or racenum == 8 then
					coef = 0.42;
				end;
				local growth = H55_Round(coef*knowledge);
				if growth >= 1 then
					local cityrace = H55_GetHeroRace(hero);
					local castertypes = H55_GetRaceCasterTypes(cityrace);
					for i = 0,6 do
						if((type[i] == castertypes[1]) and (H55_SpellcastersReceived[player] ~= 1) and (growth >= 1)) then
							AddHeroCreatures(hero,castertypes[1],growth);
							H55_SpellcastersReceived[player] = 1;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5)
								sleep(8);
							end;
						elseif((type[i] == castertypes[2]) and (H55_SpellcastersReceived[player] ~= 1) and (growth >= 1)) then
							AddHeroCreatures(hero,castertypes[2],growth);
							H55_SpellcastersReceived[player] = 1;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5)
								sleep(8);
							end;
						elseif((type[i] ==castertypes[3]) and (H55_SpellcastersReceived[player] ~= 1) and (growth >= 1)) then
							AddHeroCreatures(hero,castertypes[3],growth);
							H55_SpellcastersReceived[player] = 1;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5)
								sleep(8);
							end;
						end;
					end;
				end;
			end;

			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {7,"Artifacts",player,hero};--------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------

			if (HasArtefact(hero,ARTIFACT_RES_WOOD,0) ~= nil) and (H55_ArtWoodReceived[hero] ~= 1) then
				local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyWoodPayout[player] = H55_GlobalWeeklyWoodPayout[player]+amount;
				H55_ArtWoodReceived[hero] = 1;
			end;
			if (HasArtefact(hero,ARTIFACT_RES_ORE,0) ~= nil) and (H55_ArtOreReceived[hero] ~= 1) then
				local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyOrePayout[player] = H55_GlobalWeeklyOrePayout[player]+amount;
				H55_ArtOreReceived[hero] = 1;
			end;
			if (HasArtefact(hero,ARTIFACT_RES_SULPHUR,0) ~= nil) and (H55_ArtSulphurReceived[hero] ~= 1) then
				local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklySulphurPayout[player] = H55_GlobalWeeklySulphurPayout[player]+amount;
				H55_ArtSulphurReceived[hero] = 1;
			end;
			if (HasArtefact(hero,ARTIFACT_RES_CRYSTAL,0) ~= nil) and (H55_ArtCrystalReceived[hero] ~= 1) then
				local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyCrystalPayout[player] = H55_GlobalWeeklyCrystalPayout[player]+amount;
				H55_ArtCrystalReceived[hero] = 1;
			end;
			if (HasArtefact(hero,ARTIFACT_RES_GEM,0) ~= nil) and (H55_ArtGemReceived[hero] ~= 1) then
				local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyGemPayout[player] = H55_GlobalWeeklyGemPayout[player]+amount;
				H55_ArtGemReceived[hero] = 1;
			end;
			if (HasArtefact(hero,ARTIFACT_RES_MERCURY,0) ~= nil) and (H55_ArtMercuryReceived[hero] ~= 1) then
				local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)/2);
				if amount < 1 then amount = 1 end;
				H55_GlobalWeeklyMercuryPayout[player] = H55_GlobalWeeklyMercuryPayout[player]+amount;
				H55_ArtMercuryReceived[hero] = 1;
			end;

			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {8,"Regalia",player,hero};--------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------

			local i_regalia_bonus = 0;
			if HasHeroSkill(hero, PERK_RECRUITMENT) ~= nil then i_regalia_bonus = i_regalia_bonus + 5 end;
			if HasArtefact(hero, ARTIFACT_CROWN_OF_LEADER, 1) ~= nil and HasHeroSkill(hero, PERK_RECRUITMENT) ~= nil then i_regalia_bonus = i_regalia_bonus + 5 end;
			if H55_Governors[hero] == 1 then
				i_regalia_bonus = i_regalia_bonus + 5;
				local town = H55_GovernorsWithTown[hero];
				local townrace = H55_GetTownRace(town);
				local herorace = H55_GetHeroRaceNum(hero);
				if IsObjectExists(hero) ~= 1 then
					H55_ResetConquestHero(hero);
				elseif GetObjectOwner(town) ~= player then
					H55_ResetConquestHero(hero);
				else
					for k = 1, 7 do
						if HasArtefact(hero,H55_ARTIFACT_LEGION_LIST[k],0) ~= nil then
							local i_growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE) + i_regalia_bonus) * H55_COEF_LIST[k]);
							if i_growth < 1 then i_growth = 1 end;
							if GetTownBuildingLevel(town, H55_TOWN_BUILDING_DWELLING_LIST[k]) >= 1 and i_growth >= 1 then
								SetObjectDwellingCreatures(town, H55_Creatures[townrace][k][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][k][1]) + i_growth);
							end;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
								ShowFlyingSign({"/Text/Game/Scripts/Recruits.txt"; num = i_growth},hero,player,5);
								sleep(8);
							else
								sleep(2);
							end;
						end;
					end;
				end;
			else
				for k = 1, 7 do
					if HasArtefact(hero, H55_ARTIFACT_LEGION_LIST[k], 0) ~= nil then
						local type = H55_ArmyInfoSimple(hero);
						local i_growth = H55_Round((GetHeroStat(hero,STAT_KNOWLEDGE) + i_regalia_bonus) * H55_COEF_LIST[k]);
						if i_growth < 1 then i_growth = 1 end;
						local i_race = H55_GetHeroRaceNum(hero);
						for i = 0, 6 do
							if type[i] == H55_Creatures[i_race][k][2] then
								AddHeroCreatures(hero, H55_Creatures[i_race][k][2], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num = i_growth}, hero, player, 5);
									sleep(8);
								end;
								break;
							elseif type[i] == H55_Creatures[i_race][k][3] then
								AddHeroCreatures(hero, H55_Creatures[i_race][k][3], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num = i_growth}, hero, player, 5);
									sleep(8);
								end;
								break;
							elseif type[i] == H55_Creatures[i_race][k][1] then
								AddHeroCreatures(hero, H55_Creatures[i_race][k][1], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num = i_growth}, hero, player, 5);
									sleep(8);
								end;
								break;
							end;
						end;
					end;
				end;
			end;

			------------------------------------------------------------------------------------------------------------------------------------------------
			H55_DEBUG = {8,"Governance",player,hero};-------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------

			H55_GovernanceTier1[hero] = 0;
			H55_GovernanceTier2[hero] = 0;
			H55_GovernanceTier3[hero] = 0;
			H55_GovernanceTier4[hero] = 0;
			H55_GovernanceTier5[hero] = 0;
			H55_GovernanceTier6[hero] = 0;
			H55_GovernanceTier7[hero] = 0;

			if H55_IsThisAIPlayer(player) ~= 1 and H55_GovernanceEnabled == 1 and H55_Governors[hero] == 1 then
				local town = H55_GovernorsWithTown[hero];
				local townrace = H55_GetTownRace(town);
				local herorace = H55_GetHeroRaceNum(hero);
				local growthcoef = 1 + (GetHeroLevel(hero) * 0.033);
				if IsObjectExists(hero) ~= 1 then
					H55_ResetConquestHero(hero);
				elseif GetObjectOwner(town) ~= player then
					H55_ResetConquestHero(hero);
				else
					local tier1 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][1])) - (2 * H55_CreaturesGrowth[townrace][1]);
					local tier2 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][2])) - (2 * H55_CreaturesGrowth[townrace][2]);
					local tier3 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][3])) - (2 * H55_CreaturesGrowth[townrace][3]);
					local tier4 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][4])) - (2 * H55_CreaturesGrowth[townrace][4]);
					local tier5 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][5])) - (2 * H55_CreaturesGrowth[townrace][5]);
					local tier6 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][6])) - (2 * H55_CreaturesGrowth[townrace][6]);
					local tier7 = H55_Round(growthcoef * (2 * H55_CreaturesGrowth[townrace][7])) - (2 * H55_CreaturesGrowth[townrace][7]);

					H55_GovernanceTier1[hero] = H55_GovernanceTier1[hero] + tier1;
					H55_GovernanceTier2[hero] = H55_GovernanceTier2[hero] + tier2;
					H55_GovernanceTier3[hero] = H55_GovernanceTier3[hero] + tier3;
					H55_GovernanceTier4[hero] = H55_GovernanceTier4[hero] + tier4;
					H55_GovernanceTier5[hero] = H55_GovernanceTier5[hero] + tier5;
					H55_GovernanceTier6[hero] = H55_GovernanceTier6[hero] + tier6;
					H55_GovernanceTier7[hero] = H55_GovernanceTier7[hero] + tier7;

					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 and tier1 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) + tier1);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 and tier2 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) + tier2);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 and tier3 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) + tier3);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 and tier4 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) + tier4);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 and tier5 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) + tier5);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and tier6 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) + tier6);
					end;
					if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and tier7 >= 1 then
						SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) + tier7)
					end;
				end;
			end;

			if H55_IsThisAIPlayer(player) ~= 1 then
				for i, town in alltowns do
					if GetObjectOwner(town) == player and TTH_TOWN_BONUS_WEEK[town] ~= nil then
						local townrace = H55_GetTownRace(town);
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) >= 1 and  TTH_TOWN_BONUS_WEEK[town][0] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][1][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][1][1]) * 1.1));
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_2) >= 1 and  TTH_TOWN_BONUS_WEEK[town][1] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][2][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][2][1]) * 1.1));
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_3) >= 1 and  TTH_TOWN_BONUS_WEEK[town][2] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][3][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][3][1]) * 1.1));
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_4) >= 1 and  TTH_TOWN_BONUS_WEEK[town][3] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][4][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][4][1]) * 1.1));
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_5) >= 1 and  TTH_TOWN_BONUS_WEEK[town][4] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][5][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][5][1]) * 1.1));
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_6) >= 1 and  TTH_TOWN_BONUS_WEEK[town][5] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][6][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][6][1]) * 1.1));
						end;
						if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_7) >= 1 and  TTH_TOWN_BONUS_WEEK[town][6] == 1 then
							SetObjectDwellingCreatures(town, H55_Creatures[townrace][7][1], H55_Round(GetObjectDwellingCreatures(town,H55_Creatures[townrace][7][1]) * 1.1));
						end;
					end;
				end;
			end;
		end;
	end;
	H55_WeeklyEventsDone[player] = 1;
end;

function H55_ResetWeeklyEvents()

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {9,"Reset",0,""};-------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	H55_JenovaReceived = 0;
	H55_QuroqReceived = 0;
	H55_RedHeavenHero06Received = 0;
	-- H55_SephinrothReceived = 0;
	H55_UfretinReceived = 0;

	H55_WeeklyReinforce_List = {};
	H55_InfernalLoomTable = {};
	H55_MatewaReceived = 0;

	H55_HydrasReceived = 0;
	H55_DjinnsReceived = 0;
	H55_RakshasasReceived = 0;
	H55_ClericsReceived = 0;
	H55_TreantsReceived = 0;
	H55_NightmaresReceived = 0;
	H55_PitFiendsReceived = 0;
	H55_WitchesReceived = 0;
	H55_WightsReceived = 0;
	H55_LichesReceived = 0;
	H55_ThanesReceived = 0;

	-- by 牙姐
	H55_BlackKnightReceived = 0;
	H55_MummyReceived = 0;
	H55_WolfReceived = 0;

	H55_ManticoresReceived = 0;
	H55_MummiesReceived = 0;
	H55_WolvesReceived = 0;

	H55_ArtWoodReceived = {};
	H55_ArtOreReceived = {};
	H55_ArtCrystalReceived = {};
	H55_ArtSulphurReceived = {};
	H55_ArtMercuryReceived = {};
	H55_ArtGemReceived = {};
	H55_ArtInterestReceived = {};

	H55_LegionT1Received = {};
	H55_LegionT2Received = {};
	H55_LegionT3Received = {};
	H55_LegionT4Received = {};
	H55_LegionT5Received = {};
	H55_LegionT6Received = {};
	H55_LegionT7Received = {};

	H55_SpellcastersReceived = {};
	H55_ElementalsReceived = {};
	H55_CodexReceived = {};
	H55_DivineGuardiansReceived = {0,0,0,0,0,0,0,0};

	for i,garden in H55_MysticalGardens do
		H55_WeeklyMysticalGardenRes[garden] = random(2);
	end;
	for i,mill in H55_Windmills do
		H55_WeeklyWindmillRes[mill] = 1+random(5);
		H55_WeeklyWindmillResQty[mill] = 3+random(5);
	end;
	for i,workshop in H55_SiegeWorkshops do
		H55_WeeklySiegeWorkshopResQty[workshop] = 2+random(3);
	end;

	H55_WeeklyEventsDone = {};
end;

-----------------------------------------------------------------------------------------------------------------------------------------------------
--CONTINUES EVENT
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- function  by 牙姐
function H55_fun_start_creatures_bonus(arr_hero, s_hero, i_creature_id, i_num)
	if contains(arr_hero, s_hero) ~= nil and H55_flag_startbonus[s_hero] == nil then
		AddHeroCreatures(s_hero, i_creature_id, i_num);
		H55_flag_startbonus[s_hero] = 1;
	end;
end;

function H55_fun_hero_stat_bonus(i_player, arr_hero, s_hero, i_step, i_stat_id)
	if H55_Hero_Stat_List[s_hero] == nil then
		H55_Hero_Stat_List[s_hero] = 0;
	end;
	if contains(arr_hero, s_hero) ~= nil then
		local i_level = GetHeroLevel(s_hero);
		if ((mod(i_level, i_step) == 0) and (i_level / i_step > H55_Hero_Stat_List[s_hero])) then
			print("H55 "..s_hero.." processed match");
			ChangeHeroStat(s_hero, i_stat_id, H55_Floor(i_level / i_step) - H55_Hero_Stat_List[s_hero]);
			print("H55 "..s_hero.." processed worked");
			if H55_IsThisAIPlayer(i_player) ~= 1 and H55_IsHeroInAnyTown(s_hero) == 0 then
				local str_url = "";
				if i_stat_id == STAT_ATTACK then
					str_url = "/Text/Game/Scripts/Attack.txt";
				elseif i_stat_id == STAT_DEFENCE then
					str_url = "/Text/Game/Scripts/Defense.txt";
				elseif i_stat_id == STAT_SPELL_POWER then
					str_url = "/Text/Game/Scripts/Spellpower.txt";
				elseif i_stat_id == STAT_KNOWLEDGE then
					str_url = "/Text/Game/Scripts/Knowledge.txt";
				end;
				ShowFlyingSign(str_url, s_hero, i_player, 5);
			end;
			H55_Hero_Stat_List[s_hero] = H55_Floor(i_level / i_step);
		end
	end;
end;

function H55_fun_hero_stat_bonus_special(i_player, arr_hero, s_hero, i_step, i_stat_id, i_type)
	local s_hero_flag = s_hero..i_stat_id;
	if H55_Hero_Stat_List[s_hero_flag] == nil then
		H55_Hero_Stat_List[s_hero_flag] = 0;
	end;
	if contains(arr_hero, s_hero) ~= nil then
		if i_type == 1 then
			local i_num_magic = H55_GetNumberKnowHeroSpell(s_hero);
			if i_num_magic / i_step > H55_Hero_Stat_List[s_hero_flag] then
				print("H55 "..s_hero.." processed match");
				ChangeHeroStat(s_hero, i_stat_id, H55_Ceil(i_num_magic / i_step) - H55_Hero_Stat_List[s_hero_flag]);
				print("H55 "..s_hero.." processed worked");
				if H55_IsThisAIPlayer(i_player) ~= 1 and H55_IsHeroInAnyTown(s_hero) == 0 then
					local str_url = "";
					if i_stat_id == STAT_ATTACK then
						str_url = "/Text/Game/Scripts/Attack.txt";
					elseif i_stat_id == STAT_DEFENCE then
						str_url = "/Text/Game/Scripts/Defense.txt";
					elseif i_stat_id == STAT_SPELL_POWER then
						str_url = "/Text/Game/Scripts/Spellpower.txt";
					elseif i_stat_id == STAT_KNOWLEDGE then
						str_url = "/Text/Game/Scripts/Knowledge.txt";
					end;
					ShowFlyingSign(str_url, s_hero, i_player, 5);
				end;
				H55_Hero_Stat_List[s_hero_flag] = H55_Ceil(i_num_magic / i_step);
			end;
		end;
	end;
end;

function H55_GetNumberKnowHeroSpell(s_hero)
	local iNumber = 0;
	for i1 = 1, length(H55_SpellsL1) do
		if KnowHeroSpell(s_hero, H55_SpellsL1[i1]) ~= nil then iNumber = iNumber + 1 end;
	end;
	for i2 = 1, length(H55_SpellsL2) do
		if KnowHeroSpell(s_hero, H55_SpellsL2[i2]) ~= nil then iNumber = iNumber + 1 end;
	end;
	for i3 = 1, length(H55_SpellsL3) do
		if KnowHeroSpell(s_hero, H55_SpellsL3[i3]) ~= nil then iNumber = iNumber + 1 end;
	end;
	for i4 = 1, length(H55_SpellsL4) do
		if KnowHeroSpell(s_hero, H55_SpellsL4[i4]) ~= nil then iNumber = iNumber + 1 end;
	end;
	for i5 = 1, length(H55_SpellsL5) do
		if KnowHeroSpell(s_hero, H55_SpellsL5[i5]) ~= nil then iNumber = iNumber + 1 end;
	end;
	return iNumber;
end;

function H55_func_special_creature_return(i_player, s_special_hero, i_creature_id)
	if H55_IsThisAIPlayer(i_player) ~= 1 then
		local heroes = GetPlayerHeroes(i_player);
		local b_isexist = 0;
		for i, s_hero in heroes do
			if s_hero == s_special_hero then
				b_isexist = 1;
				break;
			end;
		end;
		if b_isexist == 1 then
			for i, s_hero in heroes do
				if s_hero ~= s_special_hero then
					local type, count = H55_ArmyInfo(s_hero);
					for i = 0, 6 do
						if type[i] == i_creature_id then
							RemoveHeroCreatures(s_hero, type[i], count[i]);
							AddHeroCreatures(s_special_hero, type[i], count[i]);
						end;
					end
				end;
			end;
		end;
	end;
end;

function TTH_FixedCreatureToHero(iPlayer, strSpecialHero, iCreatureId, bMinCount)
	if H55_IsThisAIPlayer(iPlayer) ~= 1 then
		local arrHero = GetPlayerHeroes(iPlayer);
		local bExist = 0;
		for i, strHero in arrHero do
			if strHero == strSpecialHero then
				bExist = 1;
				local typeSpecial, countSpecial = H55_ArmyInfo(strSpecialHero);
				local iLenArmy = 0;
				for j = 0, 6 do
					if countSpecial[j] > 0 and typeSpecial[j] ~= iCreatureId then
						iLenArmy = iLenArmy + 1;
					end;
				end;
				if iLenArmy < 7 then
					local bExistSpecial = 0;
					local iCountSpecial = 0;
					for k = 0, 6 do
						if typeSpecial[k] == iCreatureId then
							bExistSpecial = 1;
							iCountSpecial = countSpecial[k];
							break;
						end;
					end
					if bMinCount == 1 then
						local iHeroLevel = GetHeroLevel(strSpecialHero);
						local iNumber = H55_Ceil(iHeroLevel / 2);
						if bExistSpecial == 0 then
							AddHeroCreatures(strSpecialHero, iCreatureId, iNumber);
						end;
						if bExistSpecial == 1 and iCountSpecial < iNumber then
							AddHeroCreatures(strSpecialHero, iCreatureId, iNumber - iCountSpecial);
						end;
					end;
				end;
				break;
			end;
		end;
		if bExist == 1 then
			for iHero, strHero in arrHero do
				if strHero ~= strSpecialHero then
					local type, count = H55_ArmyInfo(strHero);
					for i = 0, 6 do
						if type[i] == iCreatureId then
							RemoveHeroCreatures(strHero, type[i], count[i]);
							if bMinCount == 0 then
								AddHeroCreatures(strSpecialHero, type[i], count[i]);
							end;
						end;
					end
				end;
			end;
		end;
	end;
end;

function H55_set_cs(s_hero)
	SetHeroCombatScript(s_hero, "/scripts/H55_CombatScript.xdb#xpointer(/Script)");
end;
function H55_reset_cs(s_hero)
	ResetHeroCombatScript(s_hero);
end;
-- end

function H55_ContinuesEvent(player)

	------------------------------------------------------------------------------------------------------------------------------------------------
	--H55_DEBUG = {10,"Primaries",player,""};-------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	local heroes = GetPlayerHeroes(player);

	local alltowns = GetObjectNamesByType("TOWN");
	local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");
	local dungeontowns = GetObjectNamesByType("TOWN_DUNGEON");
	local sylvantowns = GetObjectNamesByType("TOWN_PRESERVE");
	local necromancytowns = GetObjectNamesByType("TOWN_NECROMANCY");

	ci = GetLastSavedCombatIndex();

	if H55_IsThisAIPlayer(player) == 1 then
		H55_AmountCyclesAI = H55_AmountCyclesAI+1;
	end;

	-- if heroes ~= nil and H55_IsThisAIPlayer(player) ~= 1 then
	if heroes ~= nil then
		if H55_length_playerheroes_script[player] ~= length(heroes) then
			H55_length_playerheroes_script[player] = length(heroes);
			for i, s_hero in heroes do
				ResetHeroCombatScript(s_hero);
				SetHeroCombatScript(s_hero, "/scripts/H55_CombatScript.xdb#xpointer(/Script)");
			end;
		end;
	end;

	-- by 牙姐 2018-7-27 15:55:33
	-- begin 兵种特城市兵种还原
	if necromancytowns ~= nil then
		for i, town in necromancytowns do
			if GetObjectOwner(town) == player and H55_IsAnyHeroInTown(town, player) == 0 then
				local iRace = H55_GetTownRace(town);
				if GetTownBuildingLevel(town, TOWN_BUILDING_DWELLING_1) == 2 then
					local type, count = H55_MonsterInfo(town);
					for idArmy = 0, 6 do
						if type[idArmy] >= 958 and type[idArmy] <= 971 then
							if count[6] == 0 then
								AddObjectCreatures(town, H55_Creatures[iRace][1][1], count[idArmy]);
								RemoveObjectCreatures(town, type[idArmy], count[idArmy]);
							else
								RemoveObjectCreatures(town, type[idArmy], count[idArmy]);
								AddObjectCreatures(town, H55_Creatures[iRace][1][1], count[idArmy]);
							end;
						end;
						if type[idArmy] >= 972 and type[idArmy] <= 985 then
							if count[6] == 0 then
								AddObjectCreatures(town, H55_Creatures[iRace][1][2], count[idArmy]);
								RemoveObjectCreatures(town, type[idArmy], count[idArmy]);
							else
								RemoveObjectCreatures(town, type[idArmy], count[idArmy]);
								AddObjectCreatures(town, H55_Creatures[iRace][1][2], count[idArmy]);
							end;
						end;
						if type[idArmy] >= 986 and type[idArmy] <= 999 then
							if count[6] == 0 then
								AddObjectCreatures(town, H55_Creatures[iRace][1][3], count[idArmy]);
								RemoveObjectCreatures(town, type[idArmy], count[idArmy]);
							else
								RemoveObjectCreatures(town, type[idArmy], count[idArmy]);
								AddObjectCreatures(town, H55_Creatures[iRace][1][3], count[idArmy]);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	--end

	-- by 牙姐
	-- 初始生物奖励
	if heroes ~= nil and H55_IsThisAIPlayer(player) ~= 1 then
		if H55_length_playerheroes[player] ~= length(heroes) then
			H55_length_playerheroes[player] = length(heroes);
			--heaven
				H55_fun_start_creatures_bonus(heroes, "Nathaniel", 1, 22);
				H55_fun_start_creatures_bonus(heroes, "Orrin", 3, 12);
				H55_fun_start_creatures_bonus(heroes, "Mardigo", 5, 10);
				H55_fun_start_creatures_bonus(heroes, "Ving", 7, 2);
				H55_fun_start_creatures_bonus(heroes, "Sarge", 11, 1);
			--preserve
				H55_fun_start_creatures_bonus(heroes, "Gillion", 45, 9);
				H55_fun_start_creatures_bonus(heroes, "Ossir", 47, 7);
				H55_fun_start_creatures_bonus(heroes, "Gelu", 114, 1);
			--necropolis
				H55_fun_start_creatures_bonus(heroes, "Karissa", 29, 22);
				H55_fun_start_creatures_bonus(heroes, "Straker", 31, 15);
				H55_fun_start_creatures_bonus(heroes, "Tamika", 35, 2);
				H55_fun_start_creatures_bonus(heroes, "Thant", 116, 1);
				H55_fun_start_creatures_bonus(heroes, "Adelaide", 935, 7);
				H55_fun_start_creatures_bonus(heroes, "Archilus", 90, 1);
			--fortress
				H55_fun_start_creatures_bonus(heroes, "Ingvar", 92, 18);
				H55_fun_start_creatures_bonus(heroes, "Skeggy", 94, 14);
				H55_fun_start_creatures_bonus(heroes, "Bersy", 96, 7);
				H55_fun_start_creatures_bonus(heroes, "Egil", 100, 2);
			--stronghold
				H55_fun_start_creatures_bonus(heroes, "Hero9", 117, 25);
				H55_fun_start_creatures_bonus(heroes, "Hero7", 119, 14);
				H55_fun_start_creatures_bonus(heroes, "Hero8", 121, 11);
				H55_fun_start_creatures_bonus(heroes, "Azar", 113, 5);
				H55_fun_start_creatures_bonus(heroes, "Hero6", 127, 1);
			--inferno
				H55_fun_start_creatures_bonus(heroes, "Calid", 19, 8);
				H55_fun_start_creatures_bonus(heroes, "Oddrema", 21, 2);
			--academy
				H55_fun_start_creatures_bonus(heroes, "Havez", 57, 20);
				H55_fun_start_creatures_bonus(heroes, "Isher", 61, 9);
				H55_fun_start_creatures_bonus(heroes, "Razzak", 63, 2);
				H55_fun_start_creatures_bonus(heroes, "Davius", 67, 1);
			--dungeon
				H55_fun_start_creatures_bonus(heroes, "Ohtarig", 71, 7);
				H55_fun_start_creatures_bonus(heroes, "Urunir", 73, 5);
				H55_fun_start_creatures_bonus(heroes, "Menel", 75, 6);
				H55_fun_start_creatures_bonus(heroes, "Ferigl", 77, 2);
				H55_fun_start_creatures_bonus(heroes, "Eruina", 81, 1);
				H55_fun_start_creatures_bonus(heroes, "Welygg", 115, 1);

		end;
	end;
	-- end


	-- by 牙姐
	-- 初始生物奖励
	if heroes ~= nil and H55_IsThisAIPlayer(player) ~= 1 then
		--heaven
			TTH_FixedCreatureToHero(player, "Jeddite", 953, 1);
			TTH_FixedCreatureToHero(player, "Cyrus", 934, 0);
	end;

	if heroes~=nil then
		-- H55_fun_hero_stat_bonus(player, heroes, "Crag", 4, STAT_ATTACK);
		H55_fun_hero_stat_bonus(player, heroes, "Nadaur", 5, STAT_ATTACK);
		H55_fun_hero_stat_bonus(player, heroes, "Mephala", 3, STAT_DEFENCE);
		H55_fun_hero_stat_bonus(player, heroes, "Tazar", 3, STAT_DEFENCE);
		H55_fun_hero_stat_bonus_special(player, heroes, "Sandro", 5, STAT_SPELL_POWER, 1);
		H55_fun_hero_stat_bonus_special(player, heroes, "Sandro", 5, STAT_KNOWLEDGE, 1);
		H55_fun_hero_stat_bonus(player, heroes, "Maahir", 3, STAT_KNOWLEDGE);
		H55_fun_hero_stat_bonus(player, heroes, "Almegir", 3, STAT_KNOWLEDGE);
		H55_fun_hero_stat_bonus(player, heroes, "Elleshar", 3, STAT_KNOWLEDGE);
		H55_fun_hero_stat_bonus(player, heroes, "Vinrael", 3, STAT_KNOWLEDGE);
		H55_fun_hero_stat_bonus(player, heroes, "Una", 3, STAT_KNOWLEDGE);
		-- H55_fun_hero_stat_bonus(player, heroes, "Ildar", 4, STAT_SPELL_POWER);

		if contains(heroes,"Vinrael") ~= nil then
			local level = GetHeroLevel("Vinrael");
			-- by 牙姐
			-- begin
			if level > H55_VinraelMana_Level then
				local i_diff = 0;
				local s_hero = "Vinrael";
				local i_mana = GetHeroStat(s_hero, STAT_MANA_POINTS);
				local i_knowledge = GetHeroStat(s_hero, STAT_KNOWLEDGE);
				local i_mana_total = 10 * i_knowledge;
				if HasHeroSkill(s_hero, PERK_INTELLIGENCE) ~= nil then
					i_mana_total = 15 * i_knowledge;
				end;
				if i_mana < i_mana_total then
					i_diff = i_mana_total - i_mana;
					ChangeHeroStat(s_hero, STAT_MANA_POINTS, i_diff);
				end;
				H55_VinraelMana_Level = level;
			end
			--end
		end;

		for i,hero in heroes do
			-- by 牙姐 2018-10-15 19:35:44
			-- begin 英雄通用技能3
			if TTH_HeroCustomAbilityOwner3[hero] ~= 1 then
				if contains(TTH_TABLE_HeroCustomAbilityOwner3, hero) ~= nil then
					ControlHeroCustomAbility(hero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_ENABLED);
					if contains(TTH_TABLE_HeroCustomAbility_CastCreature, hero) ~= nil then
						TTH_HeroCustomAbility_CastCreature_GCD[hero] = 0;
						print('Gcd-init:'..TTH_HeroCustomAbility_CastCreature_GCD[hero]);
					end;
					print(hero.." custom ability has been given");
					TTH_HeroCustomAbilityOwner3[hero] = 1;
				end;
			end;
			--end

			-- by 牙姐 2019-5-18 19:06:04
			-- begin 士气<-5 转化为亡灵巫师
				if TTH_Necromancer[hero] == nil and GetHeroStat(hero, STAT_MORALE) <= -5 then
					MakeHeroNecromancer(hero, 3);
					TTH_Necromancer[hero] = 1;
					print(hero.." had been changed to a Necromancer");
				end;
			-- end

			-- by 牙姐 2018-7-27 10:15:58
			-- begin 卡里萨 骷髅
			if hero ~= "Karissa" then
				local iRace = H55_GetHeroRaceNum("Karissa");
				local type, count = H55_ArmyInfo(hero);
				for idArmy = 0, 6 do
					if type[idArmy] >= 958 and type[idArmy] <= 971 then
						if count[6] == 0 then
							AddHeroCreatures(hero, H55_Creatures[iRace][1][1], count[idArmy]);
							sleep(1);
							RemoveHeroCreatures(hero, type[idArmy], count[idArmy]);
							sleep(1);
							break;
						else
							RemoveHeroCreatures(hero, type[idArmy], count[idArmy]);
							sleep(1);
							AddHeroCreatures(hero, H55_Creatures[iRace][1][1], count[idArmy]);
							sleep(1);
							break;
						end;
					elseif type[idArmy] >= 972 and type[idArmy] <= 985 then
						if count[6] == 0 then
							AddHeroCreatures(hero, H55_Creatures[iRace][1][2], count[idArmy]);
							sleep(1);
							RemoveHeroCreatures(hero, type[idArmy], count[idArmy]);
							sleep(1);
							break;
						else
							RemoveHeroCreatures(hero, type[idArmy], count[idArmy]);
							sleep(1);
							AddHeroCreatures(hero, H55_Creatures[iRace][1][2], count[idArmy]);
							sleep(1);
							break;
						end;
					elseif type[idArmy] >= 986 and type[idArmy] <= 999 then
						if count[6] == 0 then
							AddHeroCreatures(hero, H55_Creatures[iRace][1][3], count[idArmy]);
							sleep(1);
							RemoveHeroCreatures(hero, type[idArmy], count[idArmy]);
							sleep(1);
							break;
						else
							RemoveHeroCreatures(hero, type[idArmy], count[idArmy]);
							sleep(1);
							AddHeroCreatures(hero, H55_Creatures[iRace][1][3], count[idArmy]);
							sleep(1);
							break;
						end;
					end;
				end;
			else
				local strHero = "Karissa";
				local iLevelHero = GetHeroLevel(strHero);
				local iRace = H55_GetHeroRaceNum(strHero);
				local lenListKarissaLevel = length(H55SMOD_ListKarissaLevel);
				local idLevel = 0;
				for i = 1, lenListKarissaLevel do
					if iLevelHero >= H55SMOD_ListKarissaLevel[i] then
						idLevel = i;
					end;
				end;
				local type, count = H55_ArmyInfo(strHero);
				for idArmy = 0, 6 do
					if (type[idArmy] == H55_Creatures[iRace][1][1] or (type[idArmy] >= 958 and type[idArmy] <= 971)) and type[idArmy] ~= 958 + idLevel - 1 then
						if count[6] == 0 then
							AddHeroCreatures(strHero, 958 + idLevel - 1, count[idArmy]);
							sleep(1);
							RemoveHeroCreatures(strHero, type[idArmy], count[idArmy]);
							sleep(1);
							break;
						else
							RemoveHeroCreatures(strHero, type[idArmy], count[idArmy]);
							sleep(1);
							AddHeroCreatures(strHero, 958 + idLevel - 1, count[idArmy]);
							sleep(1);
							break;
						end;
					elseif (type[idArmy] == H55_Creatures[iRace][1][2] or (type[idArmy] >= 972 and type[idArmy] <= 985)) and type[idArmy] ~= 972 + idLevel - 1 then
						if count[6] == 0 then
							AddHeroCreatures(strHero, 972 + idLevel - 1, count[idArmy]);
							sleep(1);
							RemoveHeroCreatures(strHero, type[idArmy], count[idArmy]);
							sleep(1);
							break;
						else
							RemoveHeroCreatures(strHero, type[idArmy], count[idArmy]);
							sleep(1);
							AddHeroCreatures(strHero, 972 + idLevel - 1, count[idArmy]);
							sleep(1);
							break;
						end;
					elseif (type[idArmy] == H55_Creatures[iRace][1][3] or (type[idArmy] >= 986 and type[idArmy] <= 999)) and type[idArmy] ~= 986 + idLevel - 1 then
						if count[6] == 0 then
							AddHeroCreatures(strHero, 986 + idLevel - 1, count[idArmy]);
							sleep(1);
							RemoveHeroCreatures(strHero, type[idArmy], count[idArmy]);
							sleep(1);
							break;
						else
							RemoveHeroCreatures(strHero, type[idArmy], count[idArmy]);
							sleep(1);
							AddHeroCreatures(strHero, 986 + idLevel - 1, count[idArmy]);
							sleep(1);
							break;
						end;
					end;
				end;
			end;
			--end

			H55_DEBUG = {11,"TownGain",player,hero};
				if H55_IsThisAIPlayer(player) ~= 1 then
					if H55_TownConvEnabled == 1 or H55_TownGateEnabled == 1 or H55_GovernanceEnabled == 1 then
						if H55_TownManageOwners[hero] ~= 1 then
							ControlHeroCustomAbility(hero,CUSTOM_ABILITY_4,CUSTOM_ABILITY_ENABLED);
							H55_TownManageOwners[hero] = 1;
						end;
					end;
				end;
				if H55_GetHeroClass(hero) == "Shaman" or H55_GetHeroClass(hero) == "Witch" then
					if strongholdtowns ~= nil then
						for i, town in strongholdtowns do
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) >= 1) and H55_HallTrialStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_DEFENCE,2);
								H55_HallTrialStudent[hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5);
								end;
							end;
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) >= 2) and H55_HallCourageStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_DEFENCE,2);
								H55_HallCourageStudent[hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5);
								end;
							end;
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 3) and H55_HallMightStudent[hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_DEFENCE,2);
								H55_HallMightStudent[hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5);
								end;
							end;
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4) == 1) and H55_PileSkullsStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
								H55_PileSkullsStudent[town][hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5);
								end;
							end;
						end;
					end;
				end;
				if H55_GetHeroClass(hero) == "Overlord" then
					if dungeontowns ~= nil then
						for i, town in dungeontowns do
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6) == 1) and H55_HallIntrigueStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_DEFENCE,1);
								H55_HallIntrigueStudent[town][hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5);
								end;
							end;
						end;
					end;
				end;
				if H55_GetHeroClass(hero) == "Assassin" then
					if dungeontowns ~= nil then
						for i, town in dungeontowns do
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6) == 1) and H55_HallIntrigueStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
								H55_HallIntrigueStudent[town][hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5);
								end;
							end;
						end;
					end;
				end;
				if H55_GetHeroClass(hero) == "Assassin" or H55_GetHeroClass(hero) == "Overlord" then
					if dungeontowns ~= nil then
						for i, town in dungeontowns do
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) == 2) and H55_PrimalAltarStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_ATTACK,1);
								H55_PrimalAltarStudent[town][hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5);
								end;
							end;
						end;
					end;
				end;
				if H55_GetHeroClass(hero) == "Druid" then
					if sylvantowns ~= nil then
						for i, town in sylvantowns do
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2) == 2) and H55_FountainStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_SPELL_POWER,1);
								H55_FountainStudent[town][hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5);
								end;
							end;
						end;
					end;
				end;
				if H55_GetHeroClass(hero) == "Warden" then
					if sylvantowns ~= nil then
						for i, town in sylvantowns do
							if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0) == 2) and H55_BrotherhoodStudent[town][hero] ~= 1 and (H55_GetDistance(hero,town) <= 6) then
								ChangeHeroStat(hero,STAT_DEFENCE,1);
								H55_BrotherhoodStudent[town][hero]=1;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
									ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5);
								end;
							end;
						end;
					end;
				end;

			for iIndexHavenHero = 1, length(H55SMOD_HavenHeroes) do
				local strHero = H55SMOD_HavenHeroes[iIndexHavenHero];
				if H55SMOD_HeroSkill[strHero] == nil then
					H55SMOD_HeroSkill[strHero] = {};
				end;
				if HasHeroSkill(strHero, SKILL_ABSOLUTE_MORALE) ~= nil then
					if H55SMOD_HeroSkill[strHero][SKILL_ABSOLUTE_MORALE] ~= 1 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_ABSOLUTE_MORALE, 1);
						H55SMOD_HeroSkill[strHero][SKILL_ABSOLUTE_MORALE] = 1;
					end;
				else
					if H55SMOD_HeroSkill[strHero][SKILL_ABSOLUTE_MORALE] ~= 0 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_ABSOLUTE_MORALE, 0);
						H55SMOD_HeroSkill[strHero][SKILL_ABSOLUTE_MORALE] = 0;
					end;
				end;
			end;
			if contains(heroes, "Kastore") ~= nil then
				local strHero = "Kastore";
				if H55SMOD_HeroSkill[strHero] == nil then
					H55SMOD_HeroSkill[strHero] = {};
				end;
				if HasHeroSkill(strHero, SKILL_MASTER_OF_ICE) ~= nil then
					if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] ~= 1 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_ICE, 1);
						H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] = 1;
					end;
				else
					if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] ~= 0 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_ICE, 0);
						H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] = 0;
					end;
				end;
				if HasHeroSkill(strHero, SKILL_MASTER_OF_FIRE) ~= nil then
					if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] ~= 1 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_FIRE, 1);
						H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] = 1;
					end;
				else
					if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] ~= 0 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_FIRE, 0);
						H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] = 0;
					end;
				end;
				if HasHeroSkill(strHero, SKILL_MASTER_OF_LIGHTNINGS) ~= nil then
					if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] ~= 1 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_LIGHTNINGS, 1);
						H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] = 1;
					end;
				else
					if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] ~= 0 then
						SetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_LIGHTNINGS, 0);
						H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] = 0;
					end;
				end;
			end;

			------------------------------------------------------------------------------------------------------------------------------------------------
			--H55_DEBUG = {12,"ArtSets",player,hero};-------------------------------------------------------------------------------------------------------
			------------------------------------------------------------------------------------------------------------------------------------------------

			if H55_IsHeroInAnyTown(hero) == 0 then
				TTH_Artifact_Bonus_Check(hero);
			end;

			if (HasHeroSkill(hero,PERK_PRAYER) ~= nil) and (H55_GetHeroRaceNum(hero) == 4) then
				TeachHeroSpell(hero,SPELL_MASS_BLESS);
			end;

			-- 根据英雄技能赠送魔法相关
			for iIndexGmbs, objGmbs in TTH_TABLE_GIVE_MAGIC_BY_SKILL do
				TTH_GiveMagic8Skill(hero, player, objGmbs);
			end;

			if (HasHeroSkill(hero,PERK_WISDOM) ~= nil) then
				if H55_TeachSpell_L3[hero] == nil then
					local index_l3 = 0;
					local arr_spell_l3 = {};
					local arr_text_l3 = {};
					if KnowHeroSpell(hero, H55_SpellsL4[5]) == nil then
						arr_spell_l3[index_l3] = H55_SpellsL4[5];
						arr_text_l3[index_l3] = H55_SpellsTextL4[5];
						index_l3 = index_l3 + 1;
					end;
					if KnowHeroSpell(hero, H55_SpellsL1[2]) == nil then
						arr_spell_l3[index_l3] = H55_SpellsL1[2];
						arr_text_l3[index_l3] = H55_SpellsTextL1[2];
						index_l3 = index_l3 + 1;
					end;
					if KnowHeroSpell(hero, H55_SpellsL3[9]) == nil then
						arr_spell_l3[index_l3] = H55_SpellsL3[9];
						arr_text_l3[index_l3] = H55_SpellsTextL3[9];
						index_l3 = index_l3 + 1;
					end;
					if KnowHeroSpell(hero, H55_SpellsL4[4]) == nil then
						arr_spell_l3[index_l3] = H55_SpellsL4[4];
						arr_text_l3[index_l3] = H55_SpellsTextL4[4];
						index_l3 = index_l3 + 1;
					end;
					if index_l3 > 0 then
						local i_ran = random(length(arr_spell_l3));
						TeachHeroSpell(hero, arr_spell_l3[i_ran]);
						H55_TeachSpell_L3[hero] = 1;
						if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=arr_text_l3[i_ran]},hero,player,7) sleep(4) end;
					end;
				end;

				if (HasArtefact(hero, ARTIFACT_BOOK_OF_POWER, 1) ~= nil) then
					if H55_TeachSpell_L4[hero] == nil then
						local index_l4 = 0;
						local arr_spell_l4 = {};
						local arr_text_l4 = {};
						if KnowHeroSpell(hero, H55_SpellsL5[6]) == nil then
							arr_spell_l4[index_l4] = H55_SpellsL5[6];
							arr_text_l4[index_l4] = H55_SpellsTextL5[6];
							index_l4 = index_l4 + 1;
						end;
						if KnowHeroSpell(hero, H55_SpellsL4[1]) == nil then
							arr_spell_l4[index_l4] = H55_SpellsL4[1];
							arr_text_l4[index_l4] = H55_SpellsTextL4[1];
							index_l4 = index_l4 + 1;
						end;
						if KnowHeroSpell(hero, H55_SpellsL4[9]) == nil then
							arr_spell_l4[index_l4] = H55_SpellsL4[9];
							arr_text_l4[index_l4] = H55_SpellsTextL4[9];
							index_l4 = index_l4 + 1;
						end;
						if KnowHeroSpell(hero, H55_SpellsL5[5]) == nil then
							arr_spell_l4[index_l4] = H55_SpellsL5[5];
							arr_text_l4[index_l4] = H55_SpellsTextL5[5];
							index_l4 = index_l4 + 1;
						end;
						if index_l4 > 0 then
							local i_ran = random(length(arr_spell_l4));
							TeachHeroSpell(hero, arr_spell_l4[i_ran]);
							H55_TeachSpell_L4[hero] = 1;
							if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=arr_text_l4[i_ran]},hero,player,7) sleep(4) end;
						end;
					end;
				end;
			end;

			H55_DEBUG = {14,"Skills",player,hero};
				if (HasHeroSkill(hero,DEMON_FEAT_DEMONIC_FLAME) ~= nil) and (H55_DemonicFlameOwners[hero] ~= 1) then
					H55_DemonicFlameOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_DEFENCE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_DEMONIC_FLAME) == nil) and (H55_DemonicFlameOwners[hero] == 1) then
					H55_DemonicFlameOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_DEFENCE,-2);
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_CASTER_CERTIFICATE) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_CertificateOwners[hero] ~= 1) then
					H55_CertificateOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_CASTER_CERTIFICATE) == nil) and (H55_CertificateOwners[hero] == 1) then
					H55_CertificateOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_TWILIGHT) ~= nil) and (GetHeroLevel(hero) >= 30) and (H55_TwilightOwners[hero] ~= 1) then
					H55_TwilightOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,3);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_TWILIGHT) == nil) and (H55_TwilightOwners[hero] == 1) then
					H55_TwilightOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-3);
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_PARIAH) ~= nil) and (GetHeroLevel(hero) >= 30) and (H55_PariahOwners[hero] ~= 1) then
					H55_PariahOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,5);
					ChangeHeroStat(hero,STAT_LUCK,-1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_PARIAH) == nil) and (H55_PariahOwners[hero] == 1) then
					H55_PariahOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-5);
					ChangeHeroStat(hero,STAT_LUCK,1);
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_CHILLING_BONES) ~= nil) and (H55_ChillingBonesOwners[hero] ~= 1) then
					H55_ChillingBonesOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_DEFENCE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_CHILLING_BONES) == nil) and (H55_ChillingBonesOwners[hero] == 1) then
					H55_ChillingBonesOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_DEFENCE,-2);
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_DEMONIC_RETALIATION) ~= nil) and (H55_DemonicRetaliationOwners[hero] ~= 1) then
					H55_DemonicRetaliationOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_DEMONIC_RETALIATION) == nil) and (H55_DemonicRetaliationOwners[hero] == 1) then
					H55_DemonicRetaliationOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-2);
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_DARK_REVELATION) ~= nil) and (H55_RunicKnowledgeOwners[hero] ~= 1) then
					H55_RunicKnowledgeOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_DARK_REVELATION) == nil) and (H55_RunicKnowledgeOwners[hero] == 1) then
					H55_RunicKnowledgeOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_BARBARIAN_DARK_REVELATION) ~= nil) and (H55_DarkRevelationOwners[hero] ~= 1) then
					H55_DarkRevelationOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_BARBARIAN_DARK_REVELATION) == nil) and (H55_DarkRevelationOwners[hero] == 1) then
					H55_DarkRevelationOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_ELITE_CASTERS) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_RefinedManaOwners[hero] ~= 1) then
					H55_RefinedManaOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_ELITE_CASTERS) == nil) and (H55_RefinedManaOwners[hero] == 1) then
					H55_RefinedManaOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_BARBARIAN_ELITE_CASTERS) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_BRefinedManaOwners[hero] ~= 1) then
					H55_BRefinedManaOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_BARBARIAN_ELITE_CASTERS) == nil) and (H55_BRefinedManaOwners[hero] == 1) then
					H55_BRefinedManaOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
				end;
				if (HasHeroSkill(hero,RANGER_FEAT_CUNNING_OF_THE_WOODS) ~= nil) and (H55_KnowYourEnemyOwners[hero] ~= 1) then
					H55_KnowYourEnemyOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,RANGER_FEAT_CUNNING_OF_THE_WOODS) == nil) and (H55_KnowYourEnemyOwners[hero] == 1) then
					H55_KnowYourEnemyOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
				end;
				if (HasHeroSkill(hero,RANGER_FEAT_FOREST_RAGE) ~= nil) and (H55_ForestRageOwners[hero] ~= 1) then
					H55_ForestRageOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_LUCK,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Luck.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,RANGER_FEAT_FOREST_RAGE) == nil) and (H55_ForestRageOwners[hero] == 1) then
					H55_ForestRageOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_LUCK,-1);
				end;
				if (HasHeroSkill(hero,PERK_LUCKY_STRIKE) ~= nil) and (H55_GetHeroRaceNum == 5) and (H55_LuckyStrikeOwners[hero] ~= 1) then
					H55_LuckyStrikeOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_LUCK,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Luck.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,PERK_LUCKY_STRIKE) == nil) and (H55_GetHeroRaceNum == 5) and (H55_LuckyStrikeOwners[hero] == 1) then
					H55_LuckyStrikeOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_LUCK,-1);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_DEATH_TO_NONEXISTENT) ~= nil) and (H55_BackToVoidOwners[hero] ~= 1) then
					H55_BackToVoidOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_DEATH_TO_NONEXISTENT) == nil) and (H55_BackToVoidOwners[hero] == 1) then
					H55_BackToVoidOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-2);
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_LORD_OF_UNDEAD) ~= nil) and (H55_LordOfUndeadOwners[hero] ~= 1) then
					H55_LordOfUndeadOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
						ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5);
					end;
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_LORD_OF_UNDEAD) == nil) and (H55_LordOfUndeadOwners[hero] == 1) then
					H55_LordOfUndeadOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
				end;
				if (HasHeroSkill(hero,PERK_RAISE_ARCHERS) ~= nil) and (H55_RaiseArchersOwners[hero] ~= 1) then
					H55_RaiseArchersOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,1);
					ChangeHeroStat(hero,STAT_SPELL_POWER,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
						ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5);
						ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5);
					end;
				end;
				if (HasHeroSkill(hero,PERK_RAISE_ARCHERS) == nil) and (H55_RaiseArchersOwners[hero] == 1) then
					H55_RaiseArchersOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-1);
					ChangeHeroStat(hero,STAT_SPELL_POWER,-1);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_OFFENSIVE_FORMATION) ~= nil) and (H55_OffensiveFormationOwners[hero] ~= 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_OffensiveFormationOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_OFFENSIVE_FORMATION) == nil) and (H55_OffensiveFormationOwners[hero] == 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_OffensiveFormationOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-2);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_OFFENSIVE_FORMATION) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_OffensiveFormationPlusOwners[hero] ~= 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_OffensiveFormationPlusOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_OFFENSIVE_FORMATION) == nil) and (H55_OffensiveFormationPlusOwners[hero] == 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_OffensiveFormationPlusOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_DEFENSIVE_FORMATION) ~= nil) and (H55_DefensiveFormationOwners[hero] ~= 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_DefensiveFormationOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_DEFENCE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_DEFENSIVE_FORMATION) == nil) and (H55_DefensiveFormationOwners[hero] == 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_DefensiveFormationOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_DEFENCE,-2);
				end;
				if (HasHeroSkill(hero,HERO_SKILL_DEFENSIVE_FORMATION) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_DefensiveFormationPlusOwners[hero] ~= 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_DefensiveFormationPlusOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_DEFENCE,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,HERO_SKILL_DEFENSIVE_FORMATION) == nil) and (H55_DefensiveFormationPlusOwners[hero] == 1) and (H55_GetHeroRaceNum(hero) ~= 7) then
					H55_DefensiveFormationPlusOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_DEFENCE,-1);
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_RETRIBUTION) ~= nil) and (H55_RetributionOwners[hero] ~= 1) and (H55_GetHeroRaceNum(hero) == 4) then
					H55_RetributionOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_RETRIBUTION) == nil) and (H55_RetributionOwners[hero] == 1) and (H55_GetHeroRaceNum(hero) == 4) then
					H55_RetributionOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-2);
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_ELEMENTAL_OVERKILL) ~= nil) and (H55_OverkillOwners[hero] ~= 1) then
					H55_OverkillOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_ELEMENTAL_OVERKILL) == nil) and (H55_OverkillOwners[hero] == 1) then
					H55_OverkillOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_ELEMENTAL_OVERKILL) ~= nil) and (HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) ~= nil) and (H55_OverkillSumOwners[hero] ~= 1) then
					H55_OverkillSumOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_ELEMENTAL_OVERKILL) == nil) and (H55_OverkillSumOwners[hero] == 1) then
					H55_OverkillSumOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
				end;
				if (HasHeroSkill(hero,SKILL_SUMMONING_MAGIC) == nil) and (H55_OverkillSumOwners[hero] == 1) then
					H55_OverkillSumOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_MASTER_OF_SECRETS) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_ArcaneExaltationOwners[hero] ~= 1) then
					H55_ArcaneExaltationOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_MASTER_OF_SECRETS) == nil) and (H55_ArcaneExaltationOwners[hero] == 1) then
					H55_ArcaneExaltationOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_SECRETS_OF_DESTRUCTION) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_SecretsDestructionOwners[hero] ~= 1) then
					H55_SecretsDestructionOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,WARLOCK_FEAT_SECRETS_OF_DESTRUCTION) == nil) and (H55_SecretsDestructionOwners[hero] == 1) then
					H55_SecretsDestructionOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_KNOWLEDGE,-2);
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_DEADLY_COLD) ~= nil) and (GetHeroLevel(hero) >= 20) and (H55_ColdDeathOwners[hero] ~= 1) then
					H55_ColdDeathOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_SPELL_POWER,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,NECROMANCER_FEAT_DEADLY_COLD) == nil) and (H55_ColdDeathOwners[hero] == 1) then
					H55_ColdDeathOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_SPELL_POWER,-2);
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) ~= nil) and (HasHeroWarMachine(hero,4) ~= nil) and (H55_TripleCatapultOwners[hero] ~= 1) then
					H55_TripleCatapultOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,2);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) == nil) and (H55_TripleCatapultOwners[hero] == 1) then
					H55_TripleCatapultOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-2);
				end;
				if (HasHeroWarMachine(hero,4) == nil) and (H55_TripleCatapultOwners[hero] == 1) then
					H55_TripleCatapultOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-2);
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) ~= nil) and GetHeroSkillMastery(hero,SKILL_WAR_MACHINES) == 3 and (HasHeroWarMachine(hero,4) ~= nil) and (H55_TripleCatapultExpertOwners[hero] ~= 1) then
					H55_TripleCatapultExpertOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) == nil) and (H55_TripleCatapultExpertOwners[hero] == 1) then
					H55_TripleCatapultExpertOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if GetHeroSkillMastery(hero,SKILL_WAR_MACHINES) < 3 and (H55_TripleCatapultExpertOwners[hero] == 1) then
					H55_TripleCatapultExpertOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if (HasHeroWarMachine(hero,4) == nil) and (H55_TripleCatapultExpertOwners[hero] == 1) then
					H55_TripleCatapultExpertOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) ~= nil) and (HasHeroWarMachine(hero,4) ~= nil) and (HasArtefact(hero,ARTIFACT_RING_OF_MACHINE_AFFINITY,1) ~= nil) and (H55_TripleCatapultRingOwners[hero] ~= 1) then
					H55_TripleCatapultRingOwners[hero] = 1;
					ChangeHeroStat(hero,STAT_ATTACK,1);
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
				end;
				if (HasHeroSkill(hero,DEMON_FEAT_TRIPLE_CATAPULT) == nil) and (H55_TripleCatapultRingOwners[hero] == 1) then
					H55_TripleCatapultRingOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if (HasArtefact(hero,ARTIFACT_RING_OF_MACHINE_AFFINITY,1) == nil) and (H55_TripleCatapultRingOwners[hero] == 1) then
					H55_TripleCatapultRingOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if (HasHeroWarMachine(hero,4) == nil) and (H55_TripleCatapultRingOwners[hero] == 1) then
					H55_TripleCatapultRingOwners[hero] = 0;
					ChangeHeroStat(hero,STAT_ATTACK,-1);
				end;
				if (HasHeroSkill(hero,KNIGHT_FEAT_STUDENT_AWARD) ~= nil) and (H55_StudentAwardOwners[hero] ~= 1) then
					H55_StudentAwardOwners[hero] = 1;
					GiveExp(hero,(GetHeroLevel(hero)*250));
				end;
				if (HasHeroSkill(hero,WIZARD_FEAT_ACADEMY_AWARD) ~= nil) and (H55_AcademyAwardOwners[hero] ~= 1) then
					H55_AcademyAwardOwners[hero] = 1;
					if H55_IsThisAIPlayer(player) ~= 1 then sleep(1) end;
					H55_GiveResources(player,6,(GetHeroLevel(hero)*250),hero);
				end;
				if (HasHeroSkill(hero,PERK_FORTUNATE_ADVENTURER) ~= nil) and (H55_DwarvenNetworkOwners[hero] ~= 1) then
					H55_DwarvenNetworkOwners[hero] = 1;
					H55_NetworkSkillAmount[player] = H55_NetworkSkillAmount[player]+1;
				end;
				if (HasHeroSkill(hero,PERK_FORTUNATE_ADVENTURER) == nil) and (H55_DwarvenNetworkOwners[hero] == 1) then
					H55_DwarvenNetworkOwners[hero] = 0;
					H55_NetworkSkillAmount[player] = H55_NetworkSkillAmount[player]-1;
				end;
				if (HasHeroSkill(hero,SKILL_INVOCATION) ~= nil) and H55_OccultismPowerOwners[hero] == nil then
					H55_OccultismPowerOwners[hero] = 0;
				end;
				if (HasHeroSkill(hero,SKILL_INVOCATION) == nil) and H55_OccultismPowerOwners[hero] ~= nil then
					if H55_OccultismPowerOwners[hero] > 0 then
						ChangeHeroStat(hero,STAT_SPELL_POWER,-H55_OccultismPowerOwners[hero]);
						H55_OccultismPowerOwners[hero] = nil;
					end;
				end;
				if H55_OccultismPowerOwners[hero] ~= nil then
					local power = H55_GetOccultismPower(hero);
					if H55_OccultismPowerOwners[hero] < power then
						ChangeHeroStat(hero,STAT_SPELL_POWER,(power-H55_OccultismPowerOwners[hero]));
						H55_OccultismPowerOwners[hero] = power;
					end;
					if H55_OccultismPowerOwners[hero] > power then
						ChangeHeroStat(hero,STAT_SPELL_POWER,-(H55_OccultismPowerOwners[hero]-power));
						H55_OccultismPowerOwners[hero] = power;
					end;
				end;
				if contains(H55_NecropolisHeroes,hero) ~= nil then
					if (HasHeroSkill(hero,SKILL_LEADERSHIP) ~= nil) then
						H55_BaseLeadershipOwners[hero] = 1;
						if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 1) and ((H55_LeadershipOwners[hero] == nil) or (H55_LeadershipOwners[hero] == 0)) then
							H55_LeadershipOwners[hero] = 1;
							ChangeHeroStat(hero,STAT_ATTACK,2);
							if H55_IsThisAIPlayer(player) ~= 1 and H55_Day ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
						end;
						if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 2) and (H55_LeadershipOwners[hero] == 1) then
							H55_LeadershipOwners[hero] = 2;
							ChangeHeroStat(hero,STAT_ATTACK,2);
							if H55_IsThisAIPlayer(player) ~= 1 and H55_Day ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
						end;
						if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 3) and (H55_LeadershipOwners[hero] == 2) then
							H55_LeadershipOwners[hero] = 3;
							ChangeHeroStat(hero,STAT_ATTACK,2);
							if H55_IsThisAIPlayer(player) ~= 1 and H55_Day ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/Attack.txt",hero,player,5) end;
						end;
					end;
					if (H55_BaseLeadershipOwners[hero] == 1) then
						if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 2) and (H55_LeadershipOwners[hero] == 3) then
							H55_LeadershipOwners[hero] = 2;
							ChangeHeroStat(hero,STAT_ATTACK,-2);
						end;
						if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 1) and (H55_LeadershipOwners[hero] == 3) then
							H55_LeadershipOwners[hero] = 1;
							ChangeHeroStat(hero,STAT_ATTACK,-4);
						end;
						if (GetHeroSkillMastery(hero,SKILL_LEADERSHIP) == 1) and (H55_LeadershipOwners[hero] == 2) then
							H55_LeadershipOwners[hero] = 1;
							ChangeHeroStat(hero,STAT_ATTACK,-2);
						end;
					end;
					if (HasHeroSkill(hero,SKILL_LEADERSHIP) == nil) and (H55_BaseLeadershipOwners[hero] == 1) then
						H55_BaseLeadershipOwners[hero] = 0;
						if (H55_LeadershipOwners[hero] == 3) then
							H55_LeadershipOwners[hero] = 0;
							ChangeHeroStat(hero,STAT_ATTACK,-6);
						end;
						if (H55_LeadershipOwners[hero] == 2) then
							H55_LeadershipOwners[hero] = 0;
							ChangeHeroStat(hero,STAT_ATTACK,-4);
						end;
						if (H55_LeadershipOwners[hero] == 1) then
							H55_LeadershipOwners[hero] = 0;
							ChangeHeroStat(hero,STAT_ATTACK,-2);
						end;
					end;
				end;

			H55_ZombieCarryArmy(player,hero,ci);

			if (HasArtefact(hero,ARTIFACT_MONK_03,1)) ~= nil and (H55_ArtMoveReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				ChangeHeroStat(hero,STAT_MOVE_POINTS,350 * (1 + 0.5 * TTH_Monk_Move_Bonus(hero)));
				H55_ArtMoveReceived[hero] = ci;
			end;
			local i_total_mana = 0;
			if (HasArtefact(hero,ARTIFACT_EIGHTFOLD,1)) ~= nil and (H55_EightFoldManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 10;
				else
					i_total_mana = i_total_mana + 20;
				end;
				H55_EightFoldManaReceived[hero] = ci;
			end;
			if (HasArtefact(hero,ARTIFACT_MONK_01,1)) ~= nil and (H55_Monk1ManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 4;
				else
					i_total_mana = i_total_mana + 8;
				end;
				H55_Monk1ManaReceived[hero] = ci;
			end;
			if (HasArtefact(hero,ARTIFACT_MONK_02,1)) ~= nil and (H55_Monk2ManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 2;
				else
					i_total_mana = i_total_mana + 4;
				end;
				H55_Monk2ManaReceived[hero] = ci;
			end;
			if (HasArtefact(hero,ARTIFACT_MONK_04,1)) ~= nil and (H55_Monk4ManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 3;
				else
					i_total_mana = i_total_mana + 6;
				end;
				H55_Monk4ManaReceived[hero] = ci;
			end;
			if HasHeroSkill(hero, HERO_SKILL_ETERNAL_LIGHT) ~= nil and (H55_EternalLightManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 2;
				else
					i_total_mana = i_total_mana + 4;
				end;
				H55_EternalLightManaReceived[hero] = ci;
			end;
			if HasHeroSkill(hero, WARLOCK_FEAT_PAYBACK) ~= nil and (H55_PayBackManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 2;
				else
					i_total_mana = i_total_mana + 4;
				end;
				H55_PayBackManaReceived[hero] = ci;
			end;
			if HasHeroSkill(hero, WARLOCK_FEAT_SECRETS_OF_DESTRUCTION) ~= nil and (H55_SecretsOfDestructionManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 2;
				else
					i_total_mana = i_total_mana + 4;
				end;
				H55_SecretsOfDestructionManaReceived[hero] = ci;
			end;
			if HasHeroSkill(hero, PERK_DARK_RITUAL) ~= nil and (H55_RitualManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + 4;
				else
					i_total_mana = i_total_mana + 8;
				end;
				H55_RitualManaReceived[hero] = ci;
			end;
			if (H55_SkillMasteryManaReceived[hero] ~= ci) and (GetSavedCombatArmyHero(ci,1)==hero) then
				local i_level_light = GetHeroSkillMastery(hero, SKILL_LIGHT_MAGIC);
				local i_level_dark = GetHeroSkillMastery(hero, SKILL_DARK_MAGIC);
				local i_level_summoning = GetHeroSkillMastery(hero, SKILL_SUMMONING_MAGIC);
				local i_level_destructive = GetHeroSkillMastery(hero, SKILL_DESTRUCTIVE_MAGIC);
				local i_level_total = i_level_light + i_level_dark + i_level_summoning + i_level_destructive;
				-- local i_level_calc = H55_Ceil(i_level_total / 2);
				local i_level_calc = i_level_total;
				if HasHeroSkill(hero, PERK_MYSTICISM) == nil then
					i_total_mana = i_total_mana + i_level_calc;
				else
					i_total_mana = i_total_mana + i_level_calc * 2;
				end;
				H55_SkillMasteryManaReceived[hero] = ci;
			end;
			if i_total_mana > 0 then
				i_total_mana = i_total_mana  * (1 + 0.5 * TTH_Monk_Mana_Bonus(hero));
				ChangeHeroStat(hero, STAT_MANA_POINTS, i_total_mana);
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/CombatManaReceived.txt"; num = i_total_mana}, hero, player, 5);
					sleep(8);
				elseif H55_IsThisAIPlayer(player) ~= 1 then
					sleep(2);
				end;
			end;
			---------------------------------------------------------------------------------------------------------------------
			-- by 牙姐
			if H55_IsThisAIPlayer(player) ~= 1 then
				if H55_CI_Inheritance[hero] ~= ci and GetSavedCombatArmyHero(ci, 1) == hero and HasArtefact(hero, ARTIFACT_INHERITANCE, 1) ~= nil then
					if h55_FortuitousSanctuarys_Qty > 0 then
						for i, obj in h55_FortuitousSanctuarys do
							MakeHeroInteractWithObject(hero, obj);
							H55_CI_Inheritance[hero] = ci;
							break;
						end;
					end;
				end;

				if hero == "Sovereign" and GetSavedCombatArmyHero(ci, 1) == "Sovereign" and H55_CI_Sovereign ~= ci then
					print("---------------------------------------------------------------------");
					print("H55 Sovereign Event begin");

					local i_level = GetHeroLevel(hero);

					if h55_FontainOfFortunes_Qty > 0 then
						for i, obj in h55_FontainOfFortunes do
							MakeHeroInteractWithObject(hero, obj);
							break;
						end;
					end;
					if i_level >= 5 then
						if h55_Temples_Qty > 0 then
							for i, obj in h55_Temples do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 9 then
						if h55_FortuitousSanctuarys_Qty > 0 then
							for i, obj in h55_FortuitousSanctuarys do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 13 then
						if h55_FontainOfYouths_Qty > 0 then
							for i, obj in h55_FontainOfYouths do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 17 then
						if h55_FaerieRings_Qty > 0 then
							for i, obj in h55_FaerieRings do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 21 then
						if h55_NomadsShamans_Qty > 0 then
							for i, obj in h55_NomadsShamans do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 25 then
						if h55_RallyFlags_Qty > 0 then
							for i, obj in h55_RallyFlags do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 29 then
						if h55_IdolOfFortunes_Qty > 0 then
							for i, obj in h55_IdolOfFortunes do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 33 then
						if h55_MagicWells_Qty > 0 then
							for i, obj in h55_MagicWells do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					if i_level >= 37 then
						if h55_Oasises_Qty > 0 then
							for i, obj in h55_Oasises do
								MakeHeroInteractWithObject(hero, obj);
								break;
							end;
						end;
					end;
					H55_CI_Sovereign = ci;

					print("H55 Sovereign Event end");
					print("---------------------------------------------------------------------");
				end

				if GetSavedCombatArmyHero(ci, 1) == hero then
					if HasArtefact(hero, ARTIFACT_REINCARNATION, 0) ~= nil and H55_CIReincarnation_newest[hero] == nil then
						print("---------------------------------------------------------------------");
						print("H55 Reincarnation Init begin");
						H55_CIReincarnation[hero] = -1;
						H55_CIReincarnation_newest[hero] = -1;
						print("H55 Reincarnation Init end");
						print("---------------------------------------------------------------------");
					end;
					if HasArtefact(hero, ARTIFACT_REINCARNATION, 1) ~= nil and H55_CIReincarnation_newest[hero] == nil then
						print("---------------------------------------------------------------------");
						print("H55 Reincarnation Init begin");
						H55_CIReincarnation[hero] = -1;
						H55_CIReincarnation_newest[hero] = -1;
						print("H55 Reincarnation Init end");
						print("---------------------------------------------------------------------");
					end;
					if H55_CIReincarnation_newest[hero] ~= nil and H55_CIReincarnation_newest[hero] ~= ci then
						print("---------------------------------------------------------------------");
						print("H55 Reincarnation Event begin");
						H55_CIReincarnation_newest[hero] = ci;
						print("H55 Reincarnation power is full");
						print("H55 Reincarnation Event end");
						print("---------------------------------------------------------------------");
					end;
				end;
				if H55_CIReincarnation_newest[hero] ~= nil then
					if HasArtefact(hero, ARTIFACT_REINCARNATION, 1) ~= nil and H55_CIReincarnation_newest[hero] > H55_CIReincarnation[hero] then
						print("---------------------------------------------------------------------");
						print("H55 Reincarnation Event begin");
						local type, count = H55_ArmyInfo(hero);
						for i = 1, 7 do
							for j = 1, 8 do
								if type[0] == H55_Creatures[j][i][2] or type[0] == H55_Creatures[j][i][3] then
									if type[0] == H55_Creatures[j][i][2] then
										AddHeroCreatures(hero, H55_Creatures[j][i][3], count[0]);
										sleep(1);
										RemoveHeroCreatures(hero, H55_Creatures[j][i][2], count[0]);
										H55_CIReincarnation[hero] = H55_CIReincarnation_newest[hero];
										print("H55 Reincarnation power is empty");
										break;
									end
									if type[0] == H55_Creatures[j][i][3] then
										AddHeroCreatures(hero, H55_Creatures[j][i][2], count[0]);
										sleep(1);
										RemoveHeroCreatures(hero, H55_Creatures[j][i][3], count[0]);
										H55_CIReincarnation[hero] = H55_CIReincarnation_newest[hero];
										print("H55 Reincarnation power is empty");
										break;
									end
								end
							end
						end
						if H55_CIReincarnation_newest[hero] > H55_CIReincarnation[hero] then
							print("H55 Reincarnation first creature can't be reincarnated");
						end;
						print("H55 Reincarnation Event end");
						print("---------------------------------------------------------------------");
					end;
				end;

				if hero == "Pelt" and GetSavedCombatArmyHero(ci, 1) == "Pelt" and H55_CINecromancy_Pelt ~= ci then
					print("---------------------------------------------------------------------");
					print("H55 Pelt Event begin");
					print("H55 Pelt Event ci:"..ci);
					print("H55 Pelt Event H55_CINecromancy_Pelt:"..H55_CINecromancy_Pelt);
					local type = H55_ArmyInfoSimple(hero);
					local i_race = H55_GetHeroRaceNum(hero);
					local i_cannecromancylevel = H55_GetNecroSetCount(hero) + 1;
					local i_creaturelevel = H55_GetNecroSetCount(hero) + 1;
					local i_level = GetHeroLevel(hero);
					local i_knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
					local i_city = length(H55_GetPlayerTowns(player));

					print("H55 Pelt Event CanNecromancyLevel:"..i_cannecromancylevel);
					local i_ismummy = 0;
					local i_isdk = 0;
					if type[0] == 116 and i_cannecromancylevel >= 5 then
						i_ismummy = 1;
						i_creaturelevel = 5;
					end
					if type[0] == 90 and i_cannecromancylevel >= 6 then
						i_isdk = 1;
						i_creaturelevel = 6;
					end
					if i_ismummy == 0 and i_isdk == 0 then
						for k = 1, 7 do
							if type[0] == H55_Creatures[i_race][k][1] or type[0] == H55_Creatures[i_race][k][2] or type[0] == H55_Creatures[i_race][k][3] then
								if i_cannecromancylevel >= k then
									i_creaturelevel = k;
								end
								break;
							end
						end
					end
					print("H55 Pelt Event ChooseNecromancyLevel:"..i_creaturelevel);

					H55_PowerNecromancy_Pelt = H55_PowerNecromancy_Pelt + H55_Round((30 * i_knowledge + 50 * i_city) * (1 + i_cannecromancylevel * 0.1));
					print("H55 Pelt Event H55_PowerNecromancy_Pelt:"..H55_PowerNecromancy_Pelt);

					if i_creaturelevel > 0 then
						for i = 0, 6 do
							for j = 1, 3 do
								if type[i] == H55_Creatures[i_race][i_creaturelevel][j] then
									local i_growth = H55_Floor(H55_PowerNecromancy_Pelt / H55_Creatures_Power[i_race][i_creaturelevel][j]);
									H55_PowerNecromancy_Pelt = H55_PowerNecromancy_Pelt - i_growth * H55_Creatures_Power[i_race][i_creaturelevel][j];
									print("H55 Pelt Event i_growth:"..i_growth);
									if i_growth > 0 then
										if i_ismummy == 1 then
											AddHeroCreatures(hero, 116, i_growth);
										elseif i_isdk == 1 then
											AddHeroCreatures(hero, 90, i_growth);
										else
											AddHeroCreatures(hero, H55_Creatures[i_race][i_creaturelevel][j], i_growth);
										end;
										if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
											ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
											sleep(8);
										elseif H55_IsThisAIPlayer(player) ~= 1 then
											sleep(2);
										end;
									end;
									H55_CINecromancy_Pelt = ci;
								end
							end
						end
						if H55_CINecromancy_Pelt ~= ci then
							local i_growth = H55_Floor(H55_PowerNecromancy_Pelt / H55_Creatures_Power[i_race][i_creaturelevel][1]);
							print("H55 Pelt Event i_growth:"..i_growth);
							H55_PowerNecromancy_Pelt = H55_PowerNecromancy_Pelt - i_growth * H55_Creatures_Power[i_race][i_creaturelevel][1];
							if i_growth > 0 then
								if i_ismummy == 1 then
									AddHeroCreatures(hero, 116, i_growth);
								elseif i_isdk == 1 then
									AddHeroCreatures(hero, 90, i_growth);
								else
									AddHeroCreatures(hero, H55_Creatures[i_race][i_creaturelevel][1], i_growth);
								end;
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
							H55_CINecromancy_Pelt = ci;
						end
					end
					print("H55 Pelt Event H55_PowerNecromancy_Pelt:"..H55_PowerNecromancy_Pelt);
					print("H55 Pelt Event ci:"..ci);
					print("H55 Pelt Event H55_CINecromancy_Pelt:"..H55_CINecromancy_Pelt);
					print("H55 Pelt Event end");
					print("---------------------------------------------------------------------");
				end

				if GetSavedCombatArmyHero(ci, 1) == hero and HasHeroSkill(hero, KNIGHT_FEAT_GRAIL_VISION) ~= nil then
					if H55_CI_Grail_Last[hero] == nil or H55_CI_Grail_Last[hero] ~= ci then
						H55_CI_Grail_Last[hero] = ci;
					end;
				end;

				if contains(TTH_TABLE_HeroCustomAbility_CastCreature, hero) ~= nil and GetSavedCombatArmyHero(ci, 1) == hero then
					if TTH_HeroCustomAbility_CI[hero] ~= ci then
						TTH_HeroCustomAbility_CastCreature_GCD[hero] = TTH_HeroCustomAbility_CastCreature_GCD[hero] - 1;
						print('Gcd-combatIndex:'..TTH_HeroCustomAbility_CastCreature_GCD[hero]);
						TTH_HeroCustomAbility_CI[hero] = ci;
					end;
				end;

				if hero == "Kyrre" and GetSavedCombatArmyHero(ci, 1) == "Kyrre" and H55_CI_Kyrre ~= ci then
					local i_level = GetHeroLevel(hero);
					ChangeHeroStat(hero, STAT_MOVE_POINTS, i_level * 10 * (1 + 0.5 * TTH_Monk_Move_Bonus(hero)));
					H55_CI_Kyrre = ci;
				end
				if hero == "Hero2" and GetSavedCombatArmyHero(ci, 1) == "Hero2" and H55_CI_Hero2 ~= ci then
					local i_level = GetHeroLevel(hero);
					ChangeHeroStat(hero, STAT_MOVE_POINTS, i_level * 10 * (1 + 0.5 * TTH_Monk_Move_Bonus(hero)));
					H55_CI_Hero2 = ci;
				end
				if hero == "Melodia" and GetSavedCombatArmyHero(ci, 1) == "Melodia" and H55_CI_Melodia ~= ci then
					if H55_MelodiaReceived == 0 then
						local i_four_leaf_clover = 0;
						if HasArtefact(hero, ARTIFACT_FOUR_LEAF_CLOVER, 1) ~= nil then
							i_four_leaf_clover = 1;
						end
						local i_tarot_deck = 0;
						if HasArtefact(hero, ARTIFACT_TAROT_DECK, 1) ~= nil then
							i_tarot_deck = 1;
						end
						local i_guardian_02 = 0;
						if HasArtefact(hero, ARTIFACT_GUARDIAN_02, 1) ~= nil then
							i_guardian_02 = 1;
						end
						local i_h55_getguardiansetcount = 0;
						if H55_GetGuardianSetCount(hero) >= 4 then
							i_h55_getguardiansetcount = 1;
						end
						local i_golden_horseshoe = 0;
						if HasArtefact(hero, ARTIFACT_GOLDEN_HORSESHOE, 1) ~= nil then
							i_golden_horseshoe = 2;
						end
						local i_crown_of_courage = 0;
						if HasArtefact(hero, ARTIFACT_CROWN_OF_COURAGE, 1) ~= nil then
							i_crown_of_courage = 2;
						end
						local i_angel_wings = 0;
						if HasArtefact(hero, ARTIFACT_ANGEL_WINGS, 1) ~= nil then
							i_angel_wings = 2;
						end
						local i_ranger_feat_forest_rage = 0;
						if HasHeroSkill(hero, RANGER_FEAT_FOREST_RAGE) ~= nil then
							i_ranger_feat_forest_rage = 1;
						end
						local i_luck = GetHeroSkillMastery(hero,SKILL_LUCK) + 1 + i_four_leaf_clover + i_tarot_deck + i_guardian_02 + i_h55_getguardiansetcount + i_golden_horseshoe + i_crown_of_courage + i_angel_wings + i_ranger_feat_forest_rage;
						print("i_luck "..i_luck);
						local i_ran10 = random(10);
						print("i_ran10 "..i_ran10);
						if i_luck > i_ran10 then
							H55_MelodiaReceived = 1;
							local i_level = GetHeroLevel(hero);
							local i_gear = H55_Ceil(i_level / 4);
							print("i_gear "..i_gear);
							local i_ran = random(length(H55_Melodia_Artifacts[i_gear])) + 1;
							print("i_ran "..i_ran);
							GiveArtefact(hero, H55_Melodia_Artifacts[i_gear][i_ran], 0);
							ShowFlyingSign({"/Text/Game/Scripts/Artefact.txt"}, hero, player, 5);
							sleep(8);
						end
					end
					H55_CI_Melodia = ci;
				end
			end
		end;
	end;

	--  by 牙姐
	-- Wulfstan
	local strDay = GetDate(DAY);
	local strHero = 'Wulfstan';
	if contains(heroes, strHero) ~= nil then
		if H55SMOD_Wulfstan[strDay] == nil then
			H55SMOD_Wulfstan[strDay] = {};
		end;
		for i, town in alltowns do
			if H55_IsThisAIPlayer(player) ~= 1 and GetObjectOwner(town) == player then
				if H55SMOD_Wulfstan[strDay]['flag'] == nil and GetHeroStat(strHero, STAT_MOVE_POINTS) <= 200 and H55_GetDistance(strHero, town) <= H55_GetHeroMovement(strHero) * 2 / 100 then
					H55SMOD_Wulfstan[strDay]['flag'] = 1;
					H55_Move(strHero, H55_Round(H55_GetHeroMovement(strHero) * 0.5 * (1 + 0.5 * TTH_Monk_Move_Bonus(strHero))));
					sleep(1);
				end;
			end;
		end;
	end;
	-- end

	-- by 牙姐 2018-9-7 13:21:22
	-- 死亡行军 Death_Tread
		if H55_IsThisAIPlayer(player) ~= 1 then
			for indexHero, strHero in heroes do
				if GetHeroStat(strHero, STAT_MOVE_POINTS) <= 200 and HasHeroSkill(strHero, NECROMANCER_FEAT_DEATH_TREAD) ~= nil then
					if TTH_DEATH_TREAD[strDay] == nil then
						TTH_DEATH_TREAD[strDay] = {};
					end;
					if TTH_DEATH_TREAD[strDay][strHero] == nil then
						TTH_DEATH_TREAD[strDay][strHero] = {};
					end;
					for indexTown, strTown in alltowns do
						if H55_GetDistance(strHero, strTown) <= 24 then
							if GetObjectOwner(strTown) ~= player and TTH_DEATH_TREAD[strDay][strHero]['flag_foe'] == nil then
								TTH_DEATH_TREAD[strDay][strHero]['flag_foe'] = 1;
								H55_Move(strHero, H55_Round(H55_GetHeroMovement(strHero) * 0.12 * GetHeroSkillMastery(strHero, SKILL_LOGISTICS) * (1 + 0.5 * TTH_Monk_Move_Bonus(strHero))));
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(strHero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/DeathTreadFoe.txt"}, strHero, player, 5);
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
							if GetObjectOwner(strTown) == player and TTH_DEATH_TREAD[strDay][strHero]['flag_me'] == nil then
								TTH_DEATH_TREAD[strDay][strHero]['flag_me'] = 1;
								H55_Move(strHero, H55_Round(H55_GetHeroMovement(strHero) * 0.12 * GetHeroSkillMastery(strHero, SKILL_LOGISTICS) * (1 + 0.5 * TTH_Monk_Move_Bonus(strHero))));
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(strHero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/DeathTreadMe.txt"}, strHero, player, 5);
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	-- end

	-- by 牙姐 2020-4-5 18:52:49
	-- 娜瑞莎 士气
		-- if heroes ~= nil then
		-- 	local strHero = 'Ildar';
		-- 	if contains(heroes, strHero) ~= nil then
		-- 		local listArmyType = H55_ArmyInfoSimple(strHero);
		-- 		local listRace = {};
		-- 		for iArmyType = 0, 6 do
		-- 			for iRace = 1, 8 do
		-- 				for iLevel = 1, 7 do
		-- 					for iType = 1, 3 do
		-- 						if listArmyType[iArmyType] == H55_Creatures[iRace][iLevel][iType] then
		-- 							if contains(listRace, iRace) == nil then
		-- 								H55_Insert(listRace, iRace);
		-- 							end;
		-- 						end;
		-- 					end;
		-- 				end;
		-- 			end;
		-- 		end;
		-- 		local iLenRace = length(listRace);
		-- 		if TTH_Ildar_Race4Morale ~= iLenRace then
		-- 			local iPlayer = GetObjectOwner(strHero);
		-- 			ChangeHeroStat(strHero, STAT_MORALE, iLenRace - TTH_Ildar_Race4Morale);
		-- 			if iLenRace - TTH_Ildar_Race4Morale > 0 then
		-- 				ShowFlyingSign("/Text/Game/Scripts/Attribute/MoraleIncrease.txt", strHero, iPlayer, 5);
		-- 			else
		-- 				ShowFlyingSign("/Text/Game/Scripts/Attribute/MoraleReduce.txt", strHero, iPlayer, 5);
		-- 			end;
		-- 			TTH_Ildar_Race4Morale = iLenRace;
		-- 		end;
		-- 	end;
		-- end;
	-- end
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--DAILY EVENTS
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_AdjustGovernorDefense(hero,town)

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {17,"GovDefense",0,hero};-----------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	if town == nil then
		ChangeHeroStat(hero,STAT_DEFENCE,-H55_CastleDefenseOwners[hero]);
		ChangeHeroStat(hero,STAT_SPELL_POWER,-H55_MageGuildBonusOwners[hero]);
		ChangeHeroStat(hero,STAT_ATTACK,-H55_SpecialAttackOwners[hero]);
		ChangeHeroStat(hero,STAT_KNOWLEDGE,-H55_SpecialKnowledgeOwners[hero]);
		ChangeHeroStat(hero,STAT_SPELL_POWER,-H55_SpecialSpellPowerOwners[hero]);
		ChangeHeroStat(hero,STAT_KNOWLEDGE,-H55_RunicShrineBonusOwners[hero]);
		H55_CastleDefenseOwners[hero] = 0;
		H55_MageGuildBonusOwners[hero] = 0;
		H55_SpecialAttackOwners[hero] = 0;
		H55_SpecialKnowledgeOwners[hero] = 0;
		H55_SpecialSpellPowerOwners[hero] = 0;
		H55_RunicShrineBonusOwners[hero] = 0;
	else
		local townrace = H55_GetTownRace(town)
		if townrace == 8 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local shrine = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local hut = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
			local pile = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
			if pile == 1 then pile = 2 end;
			if hut == 1 then hut = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if shrine > H55_RunicShrineBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(shrine-H55_RunicShrineBonusOwners[hero]));
				H55_RunicShrineBonusOwners[hero] = shrine;
			end;
			if pile > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(pile-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = pile;
			end;
			if hut > H55_SpecialSpellPowerOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(hut-H55_SpecialSpellPowerOwners[hero]));
				H55_SpecialSpellPowerOwners[hero] = hut;
			end;
		elseif townrace == 7 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local shrine = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if shrine > H55_RunicShrineBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(shrine-H55_RunicShrineBonusOwners[hero]));
				H55_RunicShrineBonusOwners[hero] = shrine;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 6 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 5 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialKnowledgeOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(altar-H55_SpecialKnowledgeOwners[hero]));
				H55_SpecialKnowledgeOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 4 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialKnowledgeOwners[hero] then
				ChangeHeroStat(hero,STAT_KNOWLEDGE,(altar-H55_SpecialKnowledgeOwners[hero]));
				H55_SpecialKnowledgeOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 3 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		elseif townrace == 2 then
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		else
			local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
			local altar = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
			local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
			if altar == 1 then altar = 2 end;
			if fort > H55_CastleDefenseOwners[hero] then
				ChangeHeroStat(hero,STAT_DEFENCE,(fort-H55_CastleDefenseOwners[hero]));
				H55_CastleDefenseOwners[hero] = fort;
			end;
			if altar > H55_SpecialAttackOwners[hero] then
				ChangeHeroStat(hero,STAT_ATTACK,(altar-H55_SpecialAttackOwners[hero]));
				H55_SpecialAttackOwners[hero] = altar;
			end;
			if guild > H55_MageGuildBonusOwners[hero] then
				ChangeHeroStat(hero,STAT_SPELL_POWER,(guild-H55_MageGuildBonusOwners[hero]));
				H55_MageGuildBonusOwners[hero] = guild;
			end;
		end;
	end;
end;

function H55_DailyEvents(player)

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {18,"Dwellings",player,""};---------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------

	local playerrace = H55_PlayerFactions[player];
	local dwellingrace = H55_GetTownRaceID(playerrace);
	local alltowns = GetObjectNamesByType("TOWN");
	local strongholdtowns = GetObjectNamesByType("TOWN_STRONGHOLD");
	local townsofrace = H55_GetAmountAlignedTowns(playerrace);

	-- begin by 牙姐 2018-8-26 9:02:12
	-- 军团金像
	if H55_IsThisAIPlayer(player) ~= 1 then
		for i, town in alltowns do
			if i == 0 then
			end;
			if GetObjectOwner(town) == player and TTH_TOWN_BONUS_WEEK[town] ~= nil and TTH_TOWN_BONUS_WEEK[town][7] ~= nil then
				local townrace = H55_GetTownRace(town);
				local townhall = GetTownBuildingLevel(town, TOWN_BUILDING_TOWN_HALL);
				local grail = GetTownBuildingLevel(town, TOWN_BUILDING_GRAIL);
				local iGold = 0;
				if townhall == 1 then
					iGold = 500;
				elseif townhall == 2 then
					iGold = 1000;
				elseif townhall == 3 then
					iGold = 2000;
				elseif townhall == 4 then
					iGold = 4000;
				end
				if grail > 0 then
					iGold = iGold + 5000;
				end;
				H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player] + iGold * 0.5;
			end;
			if GetObjectOwner(town) == player and TTH_TOWN_BONUS_WEEK[town] ~= nil and TTH_TOWN_BONUS_WEEK[town][8] ~= nil then
				H55_GlobalDailyWoodPayout[player] = H55_GlobalDailyWoodPayout[player] + 4;
				H55_GlobalDailyOrePayout[player] = H55_GlobalDailyOrePayout[player] + 4;
				H55_GlobalDailySulphurPayout[player] = H55_GlobalDailySulphurPayout[player] + 2;
				H55_GlobalDailyGemPayout[player] = H55_GlobalDailyGemPayout[player] + 2;
				H55_GlobalDailyMercuryPayout[player] = H55_GlobalDailyMercuryPayout[player] + 2;
				H55_GlobalDailyCrystalPayout[player] = H55_GlobalDailyCrystalPayout[player] + 2;
			end;
		end;
	end;
	-- end

	if H55_IsThisAIPlayer(player) == 1 and H55_TownConvEnabled == 1 then


		local amountT1dwellings = length(GetObjectNamesByType(H55_T1DwellingTypes[playerrace]));
		local amountT2dwellings = length(GetObjectNamesByType(H55_T2DwellingTypes[playerrace]));
		local amountT3dwellings = length(GetObjectNamesByType(H55_T3DwellingTypes[playerrace]));
		local amountT4dwellings = length(GetObjectNamesByType(H55_T4DwellingTypes[playerrace]));

		local allT1dwellings = {};
		local allT2dwellings = {};
		local allT3dwellings = {};
		local allT4dwellings = {};

		for i=1,8 do
			allT1dwellings[i] = GetObjectNamesByType(H55_T1DwellingTypes[i])
			allT2dwellings[i] = GetObjectNamesByType(H55_T2DwellingTypes[i])
			allT3dwellings[i] = GetObjectNamesByType(H55_T3DwellingTypes[i])
			allT4dwellings[i] = GetObjectNamesByType(H55_T4DwellingTypes[i])
		end;

		if amountT1dwellings < H55_MaxDwellingsT1 then
			for i=1,8 do
				for j,dwelling in allT1dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT1DwellingRace(dwelling) ~= playerrace)  then
						ReplaceDwelling(dwelling,dwellingrace);
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;
					end;
				end;
			end;
		end;
		if amountT2dwellings < H55_MaxDwellingsT2 then
			for i=1,8 do
				for j,dwelling in allT2dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT2DwellingRace(dwelling) ~= playerrace)  then
						ReplaceDwelling(dwelling,dwellingrace);
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;
					end;
				end;
			end;
		end;
		if amountT3dwellings < H55_MaxDwellingsT3 then
			for i=1,8 do
				for j,dwelling in allT3dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT3DwellingRace(dwelling) ~= playerrace) and contains(H55_UniqueDwellings,dwelling) == nil then
						if H55_GetT3DwellingRace(dwelling) == 2 then
							ReplaceDwelling(dwelling,dwellingrace);
							if H55_GetT3DwellingRace(dwelling) == 2 and playerrace ~= 2 then H55_Insert(H55_UniqueDwellings,dwelling) end;
						else
							ReplaceDwelling(dwelling,dwellingrace);
						end;
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;
					end;
				end;
			end;
		end;
		if amountT4dwellings < H55_MaxDwellingsT4 then
			for i=1,8 do
				for j,dwelling in allT4dwellings[i] do
					if GetObjectOwner(dwelling) == player and (H55_GetT4DwellingRace(dwelling) ~= playerrace) and contains(H55_UniqueDwellings,dwelling) == nil then
						if H55_GetT4DwellingRace(dwelling) == 2 then
							ReplaceDwelling(dwelling,dwellingrace);
							if H55_GetT4DwellingRace(dwelling) == 2 and playerrace ~= 2 then H55_Insert(H55_UniqueDwellings,dwelling) end;
						elseif H55_GetT4DwellingRace(dwelling) == 4 then
							ReplaceDwelling(dwelling,dwellingrace);
							if H55_GetT4DwellingRace(dwelling) == 4 and playerrace ~= 4 then H55_Insert(H55_UniqueDwellings,dwelling) end;
						else
							ReplaceDwelling(dwelling,dwellingrace);
						end;
						H55_AmountAIDwellingConversions = H55_AmountAIDwellingConversions+1;
					end;
				end;
			end;
		end;
	end;

	if H55_IsThisAIPlayer(player) == 1 then
		for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
			if GetObjectOwner(academy) == player then
				DestroyTownBuildingToLevel(academy,TOWN_BUILDING_SPECIAL_3,0,0);
			end;
		end;
		for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
			if GetObjectOwner(dungeon) == player then
				DestroyTownBuildingToLevel(dungeon,TOWN_BUILDING_SPECIAL_4,0,0);
			end;
		end;
	else
		for i, academy in (GetObjectNamesByType("TOWN_ACADEMY")) do
			if GetObjectOwner(academy) == player then
				SetTownBuildingLimitLevel(academy,TOWN_BUILDING_SPECIAL_3,1);
				-- UpgradeTownBuilding(academy,TOWN_BUILDING_SPECIAL_3,1);
			end;
		end;
		for i, dungeon in (GetObjectNamesByType("TOWN_DUNGEON")) do
			if GetObjectOwner(dungeon) == player then
				SetTownBuildingLimitLevel(dungeon,TOWN_BUILDING_SPECIAL_4,1);
				-- UpgradeTownBuilding(dungeon,TOWN_BUILDING_SPECIAL_4,1);
			end;
		end;
	end;

	--Check if governors have died

	-- if length(H55_Governors) > 0 then
		-- for i,governor in H55_Governors do
			-- if H55_Governors[i] == 1 then
				-- if IsObjectExists(i) ~= 1 then
					-- local town = H55_GovernorsWithTown[i];
					-- H55_ResetConquestHero(i,town);
				-- end;
			-- end;
		-- end;
	-- end;

	local heroes = GetPlayerHeroes(player);
	--local payout = 0;

	for i,hero in heroes do

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {19,"GovExp",player,hero};----------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		if H55_IsThisAIPlayer(player) == 1 and H55_GovernanceEnabled == 1 and H55_Day >= 21 then
			local level = GetHeroLevel(hero);
			local amount = H55_Round(300+((1+(level/10))*(level*level)));
			GiveExp(hero,amount);
		end;
		if H55_IsThisAIPlayer(player) ~= 1 and H55_Governors[hero] == 1 then
			local town = H55_GovernorsWithTown[hero];
			local herorace = H55_GetHeroRaceNum(hero)
			local townrace = H55_GetTownRace(town)
			local herolevel = GetHeroLevel(hero);
			if IsObjectExists(hero) ~= 1 then
				H55_ResetConquestHero(hero,town);
			elseif GetObjectOwner(town) ~= player then
				H55_ResetConquestHero(hero,town);
			elseif townrace ~= herorace then
				H55_ResetConquestHero(hero,town);
			else
				local movement = GetHeroStat(hero,STAT_MOVE_POINTS);
				local movereduction1 = H55_Round(movement*0.25);
				local movereduction2 = H55_Round(movement*0.50);
				local movereduction3 = H55_Round(movement*0.75);
				local distance = H55_GetDistance(hero,town);
				local expgain = H55_GetHeroEnlightenmentStrength(hero);
				local tavern = GetTownBuildingLevel(town,TOWN_BUILDING_TAVERN);
				local marketplace = GetTownBuildingLevel(town,TOWN_BUILDING_MARKETPLACE);
				local blacksmith = GetTownBuildingLevel(town,TOWN_BUILDING_BLACKSMITH);
				local fort = GetTownBuildingLevel(town,TOWN_BUILDING_FORT);
				local townhall = GetTownBuildingLevel(town,TOWN_BUILDING_TOWN_HALL);
				local guild = GetTownBuildingLevel(town,TOWN_BUILDING_MAGIC_GUILD);
				local shipyard = GetTownBuildingLevel(town,TOWN_BUILDING_SHIPYARD);
				local dwelling1 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_1);
				local dwelling2 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_2);
				local dwelling3 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_3);
				local dwelling4 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_4);
				local dwelling5 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_5);
				local dwelling6 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_6);
				local dwelling7 = GetTownBuildingLevel(town,TOWN_BUILDING_DWELLING_7);
				local grail = GetTownBuildingLevel(town,TOWN_BUILDING_GRAIL);
				local special1 = 0;
				local special2 = 0;
				local special3 = 0;
				local special4 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_4);
				local special5 = 0;
				if townrace ~= 1 and townrace ~= 2 and townrace ~= 3 then
					special3 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_3);
				end;
				if townrace == 2 then
					special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_0);
				else
					special1 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1);
				end;
				if townrace == 6 then
					special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_6);
				else
					special2 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_2);
				end;
				if townrace ~= 4 and townrace ~= 5 and townrace ~= 6 then
					special5 = GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_5);
				else
					special5 = 0;
				end;
				local townvalue = tavern+marketplace+blacksmith+fort+townhall+guild+shipyard+dwelling1+dwelling2+dwelling3+dwelling4+dwelling5+dwelling6+dwelling7+grail+special1+special2+special3+special4+special5;

				local experience = H55_Round(H55_GovernorExpCoef*(expgain* ( (townvalue*10)+((1+(herolevel/10))*(herolevel*herolevel)) ) ) );
				if townhall == 4 then experience = experience+90 end;
				if distance >= 50 and distance < 75 then
					H55_AdjustGovernorDefense(hero,nil);
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction1);
					if herolevel < 40 then
						GiveExp(hero,(H55_Round(0.5*experience)));
					end;
					if H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_LittleFar.txt",hero,player,5) end;
				elseif distance >= 75 and distance < 100 then
					H55_AdjustGovernorDefense(hero,nil);
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction2);
					if H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Far.txt",hero,player,5) end;
				elseif distance >= 100 then
					H55_AdjustGovernorDefense(hero,nil);
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction3);
					if H55_IsHeroInAnyTown(hero) == 0 then ShowFlyingSign("/Text/Game/Scripts/TownPortal/TG_Lost.txt",hero,player,5) end;
				elseif distance < 50 and herolevel < 5 then
					ChangeHeroStat(hero,STAT_MOVE_POINTS,-movereduction1);
					H55_AdjustGovernorDefense(hero,town);
					GiveExp(hero,experience);
				else
					H55_AdjustGovernorDefense(hero,town);
					if herolevel < 40 then
						GiveExp(hero,experience);
					end;
				end;
			end;
		end;

		if strongholdtowns ~= nil then
			local deficit = 0;
			local mana = GetHeroStat(hero,STAT_MANA_POINTS);
			local manatotal = 10 * GetHeroStat(hero,STAT_KNOWLEDGE);
			if HasHeroSkill(hero,PERK_INTELLIGENCE) ~= nil then
				manatotal = (H55_Round(1.5*manatotal))-1;
			end;
			if mana < manatotal then
				deficit = manatotal-mana;
				for i, town in strongholdtowns do
					if (GetTownBuildingLevel(town,TOWN_BUILDING_SPECIAL_1) >= 1) and (H55_GetDistance(hero,town) <= 6) then
						ChangeHeroStat(hero,STAT_MANA_POINTS,deficit);
						--if H55_IsThisAIPlayer(player) ~= 1 and H55_GetDistance(hero,town) ~= 0 then
							--ShowFlyingSign("/Text/Game/Scripts/Defense.txt",hero,player,5);
						--end;
					end;
				end;
			end;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20,"ArtDaily",player,hero};--------------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		-- if (HasArtefact(hero,ARTIFACT_MONK_01,1) ~= nil) then
		-- 	ChangeHeroStat(hero,STAT_MANA_POINTS,6);
		-- end;
		-- if (HasArtefact(hero,ARTIFACT_MONK_02,1) ~= nil) then
		-- 	ChangeHeroStat(hero,STAT_MANA_POINTS,4);
		-- end;
		-- if (HasArtefact(hero,ARTIFACT_EIGHTFOLD,1) ~= nil) then
		-- 	ChangeHeroStat(hero,STAT_MANA_POINTS,10);
		-- end;
		if (HasArtefact(hero,34,1) ~= nil) and (HasArtefact(hero,35,1) ~= nil) then
			GiveExp(hero,(H55_Day*10));
		end;
		-- if (HasArtefact(hero,ARTIFACT_ENDLESS_SACK_OF_GOLD,0) ~= nil) then
		-- 	local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)*50);
		-- 	H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player] + 500 + amount;
		-- end;
		-- if (HasArtefact(hero,ARTIFACT_ENDLESS_BAG_OF_GOLD,0) ~= nil) then
		-- 	local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)*75);
		-- 	H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player] + 1000 + amount;
		-- end;
		if (HasArtefact(hero,ARTIFACT_HORN_OF_PLENTY,0) ~= nil) then
			local amount1 = H55_Round(GetHeroStat(hero, STAT_KNOWLEDGE) / 4) + 1;
			local amount2 = H55_Round(GetHeroStat(hero, STAT_KNOWLEDGE) / 8) + 1;
			local goldamount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE) * 500);
			H55_GlobalDailyWoodPayout[player] = H55_GlobalDailyWoodPayout[player] + amount1;
			H55_GlobalDailyOrePayout[player] = H55_GlobalDailyOrePayout[player] + amount1;
			H55_GlobalDailySulphurPayout[player] = H55_GlobalDailySulphurPayout[player] + amount2;
			H55_GlobalDailyGemPayout[player] = H55_GlobalDailyGemPayout[player] + amount2;
			H55_GlobalDailyMercuryPayout[player] = H55_GlobalDailyMercuryPayout[player] + amount2;
			H55_GlobalDailyCrystalPayout[player] = H55_GlobalDailyCrystalPayout[player] + amount2;
			H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player] + goldamount;
		end;

		if hero == "Rissa" then
			if H55_RissaReceived == 0 then
				local s_hero = "Rissa";
				local i_level = GetHeroLevel(s_hero);
				local i_knowledge = GetHeroStat(s_hero, STAT_KNOWLEDGE);
				local i_amount = 1 + H55_Round((i_level + 1.5 * i_knowledge) / 20);

				H55_GlobalDailyGemPayout[player] = H55_GlobalDailyGemPayout[player] + i_amount;
				if i_level >= 5 then
					H55_GlobalDailyMercuryPayout[player] = H55_GlobalDailyMercuryPayout[player] + i_amount;
				end;
				if i_level >= 10 then
					H55_GlobalDailyCrystalPayout[player] = H55_GlobalDailyCrystalPayout[player] + i_amount;
				end;
				if i_level >= 15 then
					H55_GlobalDailySulphurPayout[player] = H55_GlobalDailySulphurPayout[player] + i_amount;
				end;
				if i_level >= 20 then
					H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player] + i_amount * 500;
				end;
				H55_RissaReceived = 1;
			end;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20161123," by 牙姐 Draconic",player,hero};-------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (HasArtefact(hero,ARTIFACT_DRACONIC,1) ~= nil) then
			local type = H55_ArmyInfoSimple(hero);
			local growth = 1;
			local race = H55_GetHeroRaceNum(hero);
			for i = 0,6 do
				if (type[i] == H55_Creatures[race][7][2]) and (H55_DraconicReceived[hero] ~= 1) then
					AddHeroCreatures(hero,H55_Creatures[race][7][2],growth);
					H55_DraconicReceived[hero] = 1;
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
						ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
						sleep(8);
					end;
				elseif (type[i] == H55_Creatures[race][7][3]) and (H55_DraconicReceived[hero] ~= 1) then
					AddHeroCreatures(hero,H55_Creatures[race][7][3],growth);
					H55_DraconicReceived[hero] = 1;
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
						ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
						sleep(8);
					end;
				elseif (type[i] == H55_Creatures[race][7][1]) and (H55_DraconicReceived[hero] ~= 1) then
					AddHeroCreatures(hero,H55_Creatures[race][7][1],growth);
					H55_DraconicReceived[hero] = 1;
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
						ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
						sleep(8);
					end;
				end;
			end;
			if H55_DraconicReceived[hero] ~= 1 then
				AddHeroCreatures(hero,H55_Creatures[race][7][2],growth);
				H55_DraconicReceived[hero] = 1;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					sleep(8);
				end;
			end;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170405," by 牙姐 ARTIFACT_CODEX",player,hero};-------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (HasArtefact(hero,ARTIFACT_CODEX,1) ~= nil) then
			local type = H55_ArmyInfoSimple(hero);
			local growth = 1;
			if H55_PhoenixReceived[hero] ~= 1 then
				AddHeroCreatures(hero,91,growth);
				H55_PhoenixReceived[hero] = 1;
				if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/Reinforcements.txt"; num=growth},hero,player,5);
					sleep(8);
				end;
			end;
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170113," by 牙姐 Hangvul",player,hero};--------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (hero == "Hangvul") then
			print("---------------------------------------------------------------------");
			print("H55 Hangvul Event begin");
			local type = H55_ArmyInfoSimple(hero);
			local i_race = H55_GetHeroRaceNum(hero);
			local i_level = GetHeroLevel(hero);
			local i_defence = GetHeroStat(hero,STAT_KNOWLEDGE);
			local i_city = length(H55_GetPlayerTowns(player));
			local i_set = H55_GetDwarvenSetCount(hero);
			if HasArtefact(hero, 2, 1) ~= nil then
				i_set = i_set + 1;
			end

			local iLeaderHeroBonus = 1;
			if TTH_LeaderHero_Bonus[hero] ~= nil then
				for i = 1, TTH_LeaderHero_Bonus[hero] do
					iLeaderHeroBonus = iLeaderHeroBonus * 1.1;
				end;
			end;
			print("LeaderHero level is "..iLeaderHeroBonus);

			H55_Power_Hangvul = H55_Power_Hangvul + H55_Round((20 * i_level + 30 * i_defence + 50 * i_city) * (1 + (i_set * 0.2)) * iLeaderHeroBonus);
			print("H55 Hangvul Event H55_Power_Hangvul:"..H55_Power_Hangvul);

			if H55_Reset_Hangvul == 0 then
				for i = 1, 7 do
					for j = 1, 3 do
						if H55_Reset_Hangvul == 0 and type[0] == H55_Creatures[i_race][i][j] then
							local i_growth = H55_Floor(H55_Power_Hangvul / H55_Creatures_Power[i_race][i][j]);
							H55_Power_Hangvul = H55_Power_Hangvul - i_growth * H55_Creatures_Power[i_race][i][j];
							print("H55 Hangvul Event i_growth:"..i_growth);
							if i_growth > 0 then
								AddHeroCreatures(hero, H55_Creatures[i_race][i][j], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
							H55_Reset_Hangvul = 1;
						end
					end
				end
			end
			print("H55 Hangvul Event H55_Power_Hangvul:"..H55_Power_Hangvul);
			print("H55 Hangvul Event end");
			print("---------------------------------------------------------------------");
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170305," by 牙姐 Sylsai",player,hero};--------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (hero == "Sylsai") then
			print("---------------------------------------------------------------------");
			print("H55 Sylsai Event begin");
			local type = H55_ArmyInfoSimple(hero);
			local i_race = H55_GetHeroRaceNum(hero);
			local i_level = GetHeroLevel(hero);
			local i_attack = GetHeroStat(hero, STAT_KNOWLEDGE);
			local i_city = length(H55_GetPlayerTowns(player));
			local i_set = H55_GetRunicSetCount(hero);
			if HasArtefact(hero, 2, 1) ~= nil then
				i_set = i_set + 1;
			end

			local iLeaderHeroBonus = 1;
			if TTH_LeaderHero_Bonus[hero] ~= nil then
				for i = 1, TTH_LeaderHero_Bonus[hero] do
					iLeaderHeroBonus = iLeaderHeroBonus * 1.1;
				end;
			end;
			print("LeaderHero level is "..iLeaderHeroBonus);

			H55_Power_Sylsai = H55_Power_Sylsai + H55_Round((20 * i_level + 30 * i_attack + 50 * i_city) * (1 + (i_set * 0.2)) * iLeaderHeroBonus);
			print("H55 Sylsai Event H55_Power_Sylsai:"..H55_Power_Sylsai);

			if H55_Reset_Sylsai == 0 then
				for i = 1, 7 do
					for j = 1, 3 do
						if H55_Reset_Sylsai == 0 and type[0] == H55_Creatures[i_race][i][j] then
							local i_growth = H55_Floor(H55_Power_Sylsai / H55_Creatures_Power[i_race][i][j]);
							H55_Power_Sylsai = H55_Power_Sylsai - i_growth * H55_Creatures_Power[i_race][i][j];
							print("H55 Sylsai Event i_growth:"..i_growth);
							if i_growth > 0 then
								AddHeroCreatures(hero, H55_Creatures[i_race][i][j], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
							H55_Reset_Sylsai = 1;
						end
					end
				end
			end
			print("H55 Sylsai Event H55_Power_Sylsai:"..H55_Power_Sylsai);
			print("H55 Sylsai Event end");
			print("---------------------------------------------------------------------");
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170113," by 牙姐 Kunyak",player,hero};--------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (hero == "Kunyak") then
			print("---------------------------------------------------------------------");
			print("H55 Kunyak Event begin");
			local type = H55_ArmyInfoSimple(hero);
			local i_race = H55_GetHeroRaceNum(hero);
			local i_level = GetHeroLevel(hero);
			local i_attack = GetHeroStat(hero, STAT_KNOWLEDGE);
			local i_city = length(H55_GetPlayerTowns(player));
			local i_set = H55_GetOgreSetCount(hero);
			local b_defend_us_all = 1;
			if HasHeroSkill(hero, HERO_SKILL_DEFEND_US_ALL) ~= nil then
				b_defend_us_all = 1.5;
			end;

			local iLeaderHeroBonus = 1;
			if TTH_LeaderHero_Bonus[hero] ~= nil then
				for i = 1, TTH_LeaderHero_Bonus[hero] do
					iLeaderHeroBonus = iLeaderHeroBonus * 1.1;
				end;
			end;
			print("LeaderHero level is "..iLeaderHeroBonus);

			H55_Power_Kunyak = H55_Power_Kunyak + H55_Round((20 * i_level + 30 * i_attack + 50 * i_city) * (1 + (i_set * 0.2)) * b_defend_us_all * iLeaderHeroBonus);
			print("H55 Kunyak Event H55_Power_Kunyak:"..H55_Power_Kunyak);

			if H55_Reset_Kunyak == 0 then
				for i = 1, 7 do
					for j = 1, 3 do
						if H55_Reset_Kunyak == 0 and type[0] == H55_Creatures[i_race][i][j] then
							local i_growth = H55_Floor(H55_Power_Kunyak / H55_Creatures_Power[i_race][i][j]);
							H55_Power_Kunyak = H55_Power_Kunyak - i_growth * H55_Creatures_Power[i_race][i][j];
							print("H55 Kunyak Event i_growth:"..i_growth);
							if i_growth > 0 then
								AddHeroCreatures(hero, H55_Creatures[i_race][i][j], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
							H55_Reset_Kunyak = 1;
						end
					end
				end
			end
			print("H55 Kunyak Event H55_Power_Kunyak:"..H55_Power_Kunyak);
			print("H55 Kunyak Event end");
			print("---------------------------------------------------------------------");
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170211," by 牙姐 Biara",player,hero};--------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (hero == "Biara") then
			print("---------------------------------------------------------------------");
			print("H55 Biara Event begin");
			local type = H55_ArmyInfoSimple(hero);
			local i_race = H55_GetHeroRaceNum(hero);
			local i_level = GetHeroLevel(hero);
			local i_knowledge = GetHeroStat(hero, STAT_KNOWLEDGE);
			local i_city = length(H55_GetPlayerTowns(player));
			local i_set = H55_GetInfernoSetCount(hero);

			local iLeaderHeroBonus = 1;
			if TTH_LeaderHero_Bonus[hero] ~= nil then
				for i = 1, TTH_LeaderHero_Bonus[hero] do
					iLeaderHeroBonus = iLeaderHeroBonus * 1.1;
				end;
			end;
			print("LeaderHero level is "..iLeaderHeroBonus);

			H55_Power_Biara = H55_Power_Biara + H55_Round((20 * i_level + 30 * i_knowledge + 50 * i_city) * (1 + i_set * 0.5) * iLeaderHeroBonus);
			print("H55 Biara Event H55_Power_Biara:"..H55_Power_Biara);

			if H55_Reset_Biara == 0 then
				for i = 1, 7 do
					for j = 1, 3 do
						if H55_Reset_Biara == 0 and type[0] == H55_Creatures[i_race][i][j] then
							local i_growth = H55_Floor(H55_Power_Biara / H55_Creatures_Power[i_race][i][j]);
							H55_Power_Biara = H55_Power_Biara - i_growth * H55_Creatures_Power[i_race][i][j];
							print("H55 Biara Event i_growth:"..i_growth);
							if i_growth > 0 then
								AddHeroCreatures(hero, H55_Creatures[i_race][i][j], i_growth);
								if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
									ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
									sleep(8);
								elseif H55_IsThisAIPlayer(player) ~= 1 then
									sleep(2);
								end;
							end;
							H55_Reset_Biara = 1;
						end
					end
				end
			end
			print("H55 Biara Event H55_Power_Biara:"..H55_Power_Biara);
			print("H55 Biara Event end");
			print("---------------------------------------------------------------------");
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170211," by 牙姐 Calid2",player,hero};--------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (hero == "Calid2") then
			print("---------------------------------------------------------------------");
			print("H55 Calid2 Event begin");
			local i_level = GetHeroLevel(hero);
			local i_knowledge = GetHeroStat(hero, STAT_KNOWLEDGE);
			local i_set = H55_GetVestmentSetCount(hero);
			local i_exp = (i_knowledge * 75) * (1 + i_set * 0.5);

			local heroes = GetPlayerHeroes(player);
			for i, item_hero in heroes do
				GiveExp(item_hero, i_exp);
			end;

			print("H55 Calid2 Event end");
			print("---------------------------------------------------------------------");
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {20170131," by 牙姐 Hero9",player,hero};--------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------
		if (hero == "Hero9") then
			print("---------------------------------------------------------------------");
			print("H55 Hero9 Event begin");
			local type = H55_ArmyInfoSimple(hero);
			local i_level = GetHeroLevel(hero);
			local i_growth = 1 + H55_Round(i_level / 2);
			local b_defend_us_all = 1;
			if HasHeroSkill(hero, HERO_SKILL_GOBLIN_SUPPORT) ~= nil then
				b_defend_us_all = 2;
			end;
			if HasHeroSkill(hero, HERO_SKILL_DEFEND_US_ALL) ~= nil then
				b_defend_us_all = 3;
			end;
			local b_legion_t1 = 1;
			if HasArtefact(hero,ARTIFACT_LEGION_T1,0) ~= nil then
				b_legion_t1 = 1.5;
			end;
			i_growth = H55_Round(i_growth * b_defend_us_all * b_legion_t1);
			if H55_Reset_Hero9 == 0 then
				if i_growth > 0 then
					for i = 0, 6 do
						if type[i] == 118 then
							AddHeroCreatures(hero, 118, i_growth);
							break;
						elseif type[i] == 173 then
							AddHeroCreatures(hero, 173, i_growth);
							break;
						elseif type[i] == 117 then
							AddHeroCreatures(hero, 117, i_growth);
							break;
						end;
					end;
					if H55_IsThisAIPlayer(player) ~= 1 and H55_IsHeroInAnyTown(hero) == 0 then
						ShowFlyingSign({"/Text/Game/Scripts/Join.txt"; num = i_growth}, hero, player, 5)
						sleep(8);
					elseif H55_IsThisAIPlayer(player) ~= 1 then
						sleep(2);
					end;
				end;
				H55_Reset_Hero9 = 1;
			end
			print("H55 Hero9 Event end");
			print("---------------------------------------------------------------------");
		end;

		------------------------------------------------------------------------------------------------------------------------------------------------
		H55_DEBUG = {21,"SkillsDaily",player,hero};-----------------------------------------------------------------------------------------------------
		------------------------------------------------------------------------------------------------------------------------------------------------

		-- if (HasHeroSkill(hero,WARLOCK_FEAT_PAYBACK) ~= nil) then
		-- 	ChangeHeroStat(hero,STAT_MANA_POINTS,4);
		-- end;
		-- if (HasHeroSkill(hero,NECROMANCER_FEAT_LORD_OF_UNDEAD) ~= nil) then
		-- 	local type,count = H55_ArmyInfo(hero);
		-- 	local amount = 0;
		-- 	local taxes = 0;
		-- 	for i = 0,6 do
		-- 		if (type[i] == 30) then
		-- 			amount = amount + count[i]
		-- 		elseif (type[i] ==152) then
		-- 			amount = amount + count[i]
		-- 		elseif (type[i] ==29) then
		-- 			amount = amount + count[i]
		-- 		end;
		-- 	end;
		-- 	if amount > 0 then
		-- 		taxes = H55_Round(amount/2);
		-- 		H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+taxes;
		-- 	end;
		-- end;
		if (HasHeroSkill(hero,HERO_SKILL_GOBLIN_SUPPORT) ~= nil) then
			local type,count = H55_ArmyInfo(hero);
			local amount = 0;
			local taxes = 0;
			for i = 0,6 do
				if (type[i] == 118) then
					amount = amount + count[i]
				elseif (type[i] ==173) then
					amount = amount + count[i]
				elseif (type[i] ==117) then
					amount = amount + count[i]
				end;
			end;
			if amount > 0 then
				taxes = H55_Round(amount/2);
				H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+taxes;
			end;
		end;
		if (HasHeroSkill(hero,PERK_ESTATES) ~= nil) then
			local amount = H55_Round(GetHeroStat(hero,STAT_KNOWLEDGE)*25);
			H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;
		end;
		if (HasHeroSkill(hero,HERO_SKILL_DEFEND_US_ALL) ~= nil) and (GetHeroLevel(hero) >= 10)  and ((hero ~= "Azar") or (hero ~= "Kunyak") or (hero ~= "Hero9")) then
			H55_DefendUsDaily(hero,player,122,175,121,1);
		end;
		if (HasHeroSkill(hero,WIZARD_FEAT_MARCH_OF_THE_MACHINES) ~= nil) and (GetHeroLevel(hero) >= 10) then
			H55_DefendUsDaily(hero,player,62,161,61,1);
		end;
		if (HasHeroSkill(hero,WIZARD_FEAT_SPOILS_OF_WAR) ~= nil) and (GetHeroLevel(hero) >= 10) then
			H55_DefendUsDaily(hero,player,16,131,15,2);
		end;
		-- if (HasHeroSkill(hero,HERO_SKILL_GOBLIN_SUPPORT) ~= nil) and (GetHeroLevel(hero) >= 10)  then
			-- H55_DefendUsDaily(hero,player,118,173,117,3);
		-- end;
		if (HasHeroSkill(hero,DEMON_FEAT_DEMONIC_FLAME) ~= nil) and (GetHeroLevel(hero) >= 10) then
			H55_DefendUsDaily(hero,player,93,166,92,2);
		end;
		if (HasHeroSkill(hero,RANGER_FEAT_FOREST_GUARD_EMBLEM) ~= nil) and (GetHeroLevel(hero) >= 10) then
			H55_DefendUsDaily(hero,player,46,146,45,1);
		end;
		-- if (HasHeroSkill(hero,NECROMANCER_FEAT_HAUNT_MINE) ~= nil) and (GetHeroLevel(hero) >= 10) then
			-- H55_DefendUsDaily(hero,player,34,154,33,1);
		-- end;
		if (HasHeroSkill(hero,KNIGHT_FEAT_GRAIL_VISION) ~= nil) then
			local rndchoice = random(7);
			local knowledge = GetHeroStat(hero,STAT_KNOWLEDGE);
			local amount = 1;
			if knowledge >= 20 then amount = 2 end;
			if rndchoice == 0 then
				H55_GlobalDailyWoodPayout[player] = H55_GlobalDailyWoodPayout[player]+amount;
			elseif rndchoice == 1 then
				H55_GlobalDailyOrePayout[player] = H55_GlobalDailyOrePayout[player]+amount;
			elseif rndchoice == 2 then
				H55_GlobalDailyMercuryPayout[player] = H55_GlobalDailyMercuryPayout[player]+amount;
			elseif rndchoice == 3 then
				H55_GlobalDailyCrystalPayout[player] = H55_GlobalDailyCrystalPayout[player]+amount;
			elseif rndchoice == 4 then
				H55_GlobalDailySulphurPayout[player] = H55_GlobalDailySulphurPayout[player]+amount;
			elseif rndchoice == 5 then
				H55_GlobalDailyGemPayout[player] = H55_GlobalDailyGemPayout[player]+amount;
			else
				H55_GlobalDailyGoldPayout[player] = H55_GlobalDailyGoldPayout[player]+amount;
			end;
		end;
	end;

	H55_DailyEventsCounter[player] = H55_DailyEventsCounter[player]+1;

	if H55_IsThisAIPlayer(player) == 1 and H55_TownConvEnabled == 1 then
		if townsofrace < H55_MaxTownsPerFaction then
			for i,town in alltowns do
				if GetObjectOwner(town) == player and (H55_GetTownRace(town) ~= playerrace) and (H55_IsAnyHeroInTown(town,player) == 0) then
					H55_ConvertNowAI(town,player,playerrace);
				end;
			end;
		end;
	end;

	if H55_IsThisAIPlayer(player) ~= 1 then
		if H55_Switch_Bank_Restday == 0 then
			H55_Switch_Bank_Restday = 1;

			for i_wagon = 0, H55_WagonsQty - 1 do
				local obj_wagon = H55_Wagons[i_wagon];
				local i_restday = H55_GetBank_Restday(obj_wagon);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_wagon, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;

			for i_skeleton = 0, H55_SkeletonsQty - 1 do
				local obj_skeleton = H55_Skeletons[i_skeleton];
				local i_restday = H55_GetBank_Restday(obj_skeleton);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_skeleton, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;

			for i_crypt = 0, H55_CryptsQty - 1 do
				local obj_crypt = H55_Crypts[i_crypt];
				local i_restday = H55_GetBank_Restday(obj_crypt);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_crypt, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_utopia = 0, H55_UtopiasQty - 1 do
				local obj_utopia = H55_Utopias[i_utopia];
				local i_restday = H55_GetBank_Restday(obj_utopia);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_utopia, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_stonevault = 0, H55_StoneVaultsQty - 1 do
				local obj_stonevault = H55_StoneVaults[i_stonevault];
				local i_restday = H55_GetBank_Restday(obj_stonevault);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_stonevault, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_dwarventreasure = 0, H55_DwarvenTreasuresQty - 1 do
				local obj_dwarventreasure = H55_DwarvenTreasures[i_dwarventreasure];
				local i_restday = H55_GetBank_Restday(obj_dwarventreasure);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_dwarventreasure, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_stockpile = 0, H55_StockpilesQty - 1 do
				local obj_stockpile = H55_Stockpiles[i_stockpile];
				local i_restday = H55_GetBank_Restday(obj_stockpile);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_stockpile, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_sunkentemple = 0, H55_SunkenTemplesQty - 1 do
				local obj_sunkentemple = H55_SunkenTemples[i_sunkentemple];
				local i_restday = H55_GetBank_Restday(obj_sunkentemple);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_sunkentemple, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_witchtemple = 0, H55_WitchTemplesQty - 1 do
				local obj_witchtemple = H55_WitchTemples[i_witchtemple];
				local i_restday = H55_GetBank_Restday(obj_witchtemple);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_witchtemple, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_magevault = 0, H55_MageVaultsQty - 1 do
				local obj_magevault = H55_MageVaults[i_magevault];
				local i_restday = H55_GetBank_Restday(obj_magevault);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_magevault, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_thicket = 0, H55_ThicketsQty - 1 do
				local obj_thicket = H55_Thickets[i_thicket];
				local i_restday = H55_GetBank_Restday(obj_thicket);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_thicket, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_pyramid = 0, H55_PyramidsQty - 1 do
				local obj_pyramid = H55_Pyramids[i_pyramid];
				local i_restday = H55_GetBank_Restday(obj_pyramid);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_pyramid, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_orctunnel = 0, H55_OrcTunnelsQty - 1 do
				local obj_orctunnel = H55_OrcTunnels[i_orctunnel];
				local i_restday = H55_GetBank_Restday(obj_orctunnel);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_orctunnel, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_unkempt = 0, H55_UnkemptsQty - 1 do
				local obj_unkempt = H55_Unkempts[i_unkempt];
				local i_restday = H55_GetBank_Restday(obj_unkempt);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_unkempt, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_demolish = 0, H55_DemolishsQty - 1 do
				local obj_demolish = H55_Demolishs[i_demolish];
				local i_restday = H55_GetBank_Restday(obj_demolish);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_demolish, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_demontower = 0, H55_DemonTowersQty - 1 do
				local obj_demontower = H55_DemonTowers[i_demontower];
				local i_restday = H55_GetBank_Restday(obj_demontower);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_demontower, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
			for i_foresttower = 0, H55_ForestTowersQty - 1 do
				local obj_foresttower = H55_ForestTowers[i_foresttower];
				local i_restday = H55_GetBank_Restday(obj_foresttower);
				local i_type = 1;
				if i_restday == 0 then
					i_type = 0;
				end;
				if i_restday ~= 9999 and i_restday >= 0 then
					-- print('i_restday: '..i_restday);
					-- print('H55_BankTipsTextDay[i_restday + 1]: '..H55_BankTipsTextDay[i_restday + 1]);
					OverrideObjectTooltipNameAndDescription(obj_foresttower, H55_BankTipsTextType[i_type + 1], H55_BankTipsTextDay[i_restday + 1]);
				end;
			end;
		end;
	end;

	if H55_IsThisAIPlayer(player) ~= 1 then
		for strMine, objMine in TTH_RES_BONUS_DAILY do
			local iPlayer = GetObjectOwner(strMine);
			if player == iPlayer then
				if objMine['type'] + 0 == ARTIFACT_RES_WOOD then
					H55_GlobalDailyWoodPayout[iPlayer] = H55_GlobalDailyWoodPayout[iPlayer] + 2 * objMine['level'];
				elseif objMine['type'] + 0 == ARTIFACT_RES_ORE then
					H55_GlobalDailyOrePayout[iPlayer] = H55_GlobalDailyOrePayout[iPlayer] + 2 * objMine['level'];
				elseif objMine['type'] + 0 == ARTIFACT_RES_SULPHUR then
					H55_GlobalDailySulphurPayout[iPlayer] = H55_GlobalDailySulphurPayout[iPlayer] + 1 * objMine['level'];
				elseif objMine['type'] + 0 == ARTIFACT_RES_CRYSTAL then
					H55_GlobalDailyCrystalPayout[iPlayer] = H55_GlobalDailyCrystalPayout[iPlayer] + 1 * objMine['level'];
				elseif objMine['type'] + 0 == ARTIFACT_RES_GEM then
					H55_GlobalDailyGemPayout[iPlayer] = H55_GlobalDailyGemPayout[iPlayer] + 1 * objMine['level'];
				elseif objMine['type'] + 0 == ARTIFACT_RES_MERCURY then
					H55_GlobalDailyMercuryPayout[iPlayer] = H55_GlobalDailyMercuryPayout[iPlayer] + 1 * objMine['level'];
				elseif objMine['type'] + 0 == ARTIFACT_ENDLESS_SACK_OF_GOLD then
					H55_GlobalDailyGoldPayout[iPlayer] = H55_GlobalDailyGoldPayout[iPlayer] + 1000 * objMine['level'];
				end;
			end;
		end;
	end;

	print("H55 Daily Event "..H55_DailyEventsCounter[player].." Finished");
end;

function H55_ResetDailyEvents(iPlayer)
	local listHero = GetPlayerHeroes(iPlayer);

	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DEBUG = {20161123," by 牙姐 ResetDaily",0,""};-------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	H55_DraconicReceived = {};
	H55_SentinelReceived = {};
	H55_PhoenixReceived = {};
	H55_BlackKnightReceived_Change = 0
	H55_MummyReceived_Change = 0
	H55_HeavenReceived_Change = 0;
	H55_WolfReceived_Change = 0;
	H55_Reset_Hangvul = 0;
	H55_Reset_Sylsai = 0;
	H55_Reset_Welygg = 0;
	H55_Reset_Gelu = 0;
	H55_Reset_Kunyak = 0;
	H55_Reset_Biara = 0;
	H55_Reset_Cyrus = 0;
	H55_Reset_KujinMP = 0;
	H55_Reset_Hero9 = 0;
	H55_MelodiaReceived = 0;
	H55_RissaReceived = 0;

	H55_Switch_Bank_Restday = 0;

	-- begin by 牙姐 2018-10-16 20:31:14
	-- 每天恢复使用次数 转化生物
	for iIndex, objItem in TTH_TABLE_HeroCustomAbility_Recovery do
		ControlHeroCustomAbility(objItem, CUSTOM_ABILITY_3, CUSTOM_ABILITY_ENABLED);
		print(objItem.." custom ability3 has been recovery");
	end;
	-- end

	-- begin by 牙姐 2021-02-16 00:51:09
	-- 每天减少1CD 转化生物
	for iIndex, objItem in TTH_TABLE_HeroCustomAbility_CastCreature do
		if TTH_HeroCustomAbility_CastCreature_GCD[objItem] ~= nil and TTH_HeroCustomAbility_CastCreature_GCD_Reduce8Daily[objItem] ~= H55_Day then
			TTH_HeroCustomAbility_CastCreature_GCD_Reduce8Daily[objItem] = H55_Day;
			TTH_HeroCustomAbility_CastCreature_GCD[objItem] = TTH_HeroCustomAbility_CastCreature_GCD[objItem] - 1;
			print('Gcd-daily:'..TTH_HeroCustomAbility_CastCreature_GCD[objItem]);
			print(objItem.." custom ability3 for cast-creature has been reduced");
		end;
	end;
	-- end

	-- begin by 牙姐 2020-04-15 21:12:40
	-- 娜瑞莎若属于AI，则每天自动转换光暗形态
	local listHero = GetPlayerHeroes(iPlayer);
	if listHero ~= nil then
		local strHero = 'Ildar';
		if contains(listHero, strHero) ~= nil and H55_IsThisAIPlayer(iPlayer) == 1 then
			TTH_HeroCustomAbility_Ildar_Callback(strHero);
		end;
	end;
	-- end

end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--TROUBLESHOOTING
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_UseNewDayTrigger()
	H55_NewDayTrigger = 1;
end;

function H55_CrashProtection()
	sleep(1);
	local currentdate = GetDate(DAY);
	sleep(1);
	if H55_Switch ~= 0 then
		if H55_Day < currentdate then
			print("The H55 script engine has crashed, reloading...");
			H55_AmountCrashes = H55_AmountCrashes+1;
			H55_Switch = 1;
			H55_DbgTxt = H55_DEBUG;
			startThread(H55_ContinuesActivator);
			--sleep(2)
			print("The H55 script engine has been restarted!");
		else
			--print("H55 crash protection is active!");
			print("H55 Player Configuration: "..H55_PlayerStatus[1]..H55_PlayerStatus[2]..H55_PlayerStatus[3]..H55_PlayerStatus[4]..H55_PlayerStatus[5]..H55_PlayerStatus[6]..H55_PlayerStatus[7]..H55_PlayerStatus[8].." - "..H55_GameMode.." - "..H55_CycleSpeed);
			print("H55 Amount of Recovered Crashes: "..H55_AmountCrashes);
			--print("Amount of AI Script Cycles: "..H55_AmountCyclesAI);
			--print("H55 Amount of AI TownConversions: "..H55_AmountAIConversions);
			--print("H55 Amount of AI DwellingConversions: "..H55_AmountAIDwellingConversions);
			--print("H55 Amount of AI Bank Visits: "..H55_AmountAIBankVisits);
		end;
	else
		print("H55 is switched off by the user")
	end;
	if H55_NewDayTrigger == 1 then
		H55_TriggerDaily();
	end;
end;

function H55_On()
	print("reloading script engine..");
	H55_Switch = 1;
	startThread(H55_ContinuesActivator);
	sleep(2);
	print("The H55 script engine has been restarted!");
end;

function H55_OnSilent()
	H55_Switch = 1;
end;

function H55_Off()
	H55_Switch = 0;
	print("The H55 script engine is shutdown!");
end;

function H55_WTF()
	print("please wait, investigating...")
	sleep(3);
	local currentdate = GetDate(DAY);
	sleep(7);
	if H55_Day == currentdate then
		print("H55 is running fine")
	end;
	if H55_Day < currentdate then
		print("The H55 script engine has crashed, sorry for the inconvenience, trying to reload...");
		H55_Switch = 1;
		startThread(H55_ContinuesActivator);
		sleep(2);
		print("The H55 script engine has been restarted!");
	end;
end;

function H55_TeamUpQuestion()
	local status = H55_DetectTeamConfig()
	local answering = 1
	for id = 1,8 do
		if IsPlayerCurrent(id) then
			answering = id
		end;
	end;
	if status == 1 then
		QuestionBoxForPlayers(GetPlayerFilter(answering),"/Text/Game/Scripts/Teamquestion.txt","H55_TeamHumansvsAI","H55_NoTeams");
	else
		print("H55 Team up question skipped.");
	end;
	H55_AIStartSetting(answering);
	TTH_Starting_ChooseArtifact(answering);
	TTH_Starting_Resource(answering);
	TTH_Init();
end;

function H55_ShowTimer()
	print("Day of Week "..H55_Workday);
	print("Day "..H55_Day);
	print("Week "..H55_Week);
	print("Month "..H55_Month);
end;

function H55_HasGovernor(player)
	local heroes = GetPlayerHeroes(player);
	local check = 0;
	for i, hero in heroes do
		if H55_Governors[hero] == 1 then
			check = check+1;
		end;
	end;
	return check
end;

------------------------------------------------------------------------------------------------------------------------------------------------------
--MAIN EVENT
------------------------------------------------------------------------------------------------------------------------------------------------------

function H55_ContinuesActivator()
	while (H55_Switch == 1) do

		H55_Day = GetDate(DAY);
		H55_Week = GetDate(WEEK);
		H55_Month = GetDate(MONTH);
		H55_AbsoluteWeek = (H55_Month - 1) * 4 + H55_Week;
		H55_Workday = GetDate(DAY_OF_WEEK);

		sleep(H55_CycleSpeed);

		for i = 1,8 do
			if (GetPlayerState(i) == 1) then
				if (IsPlayerCurrent(i)) and (H55_Workday == 1) and (H55_Day ~= 1) and (H55_WeeklyEventsDone[i] ~= 1) then
					H55_SetGlobalWeeklyPayouts(i,0);
					H55_WeeklyEvents(i);
				else
					H55_SetGlobalWeeklyPayouts(i,0);
				end;
				if (IsPlayerCurrent(i)) and (H55_Day ~= 1) and (H55_DailyEventsCounter[i] < H55_Day) then
					H55_SetGlobalDailyPayouts(i,0);
					H55_DailyEvents(i);
					H55_ResetDailyEvents(i);
					H55_PayoutThisPlayer(i);
				end;
				if (IsPlayerCurrent(i)) and H55_ChooseHero_Switch == 1 then
					if H55_Day == 1 then
						if H55_IsThisAIPlayer(i) ~= 1 then
							H55_HireHero_Step1(i);
						end;
					end;
					if H55_Day == 2 then
						if H55_IsThisAIPlayer(i) ~= 1 then
							H55_HireHero_Step2(i);
						end;
					end;
				end;
				if (H55_ArtifactsIndexed ~= 1) and (H55_Workday == 2) then
					H55_IndexArtifacts();
				end;
				if (IsPlayerCurrent(i)) and (H55_Workday == 2) then
					H55_ResetWeeklyEvents(i);
				end;
				if (IsPlayerCurrent(i)) then
					H55_ContinuesEvent(i);
				end;
			end;
		end;

		TTH_SetHeroLevelToGameVar();
		TTH_SetHeroArtifactToGameVar();
	end;
end;

-- begin  by 牙姐
-- function H55_Hero_Levelup(strHero)
-- 	sleep(1);
-- 	print(strHero);
-- end;
-- end
------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT ACTIVATION
------------------------------------------------------------------------------------------------------------------------------------------------------

startThread(H55_DetectP1AI);
startThread(H55_DetectP2AI);
startThread(H55_DetectP3AI);
startThread(H55_DetectP4AI);
startThread(H55_DetectP5AI);
startThread(H55_DetectP6AI);
startThread(H55_DetectP7AI);
startThread(H55_DetectP8AI);
startThread(H55_DetectPlayerFactions);
startThread(H55_DetectPlayerFactionsSecond);
startThread(H55_UpdateGameMode);
startThread(H55_UpdateTownQtyDifficulty);

doFile("/scripts/H55-AdvMap.lua");

startThread(H55_TeamUpQuestion);
startThread(H55_ContinuesActivator);
Trigger(CUSTOM_ABILITY_TRIGGER,"TTH_HeroCustomAbility");
Trigger(NEW_DAY_TRIGGER,"H55_CrashProtection");
-- Trigger(HERO_LEVELUP_TRIGGER,"Ving","H55_Hero_Levelup");


------------------------------------------------------------------------------------------------------------------------------------------------------
--APPENDIX
------------------------------------------------------------------------------------------------------------------------------------------------------

-- by 牙姐 2018-8-11 21:12:04
-- begin 英雄接触野怪 触发器
	TTH_FUNC_HERO_TOUCH_CREATURE = {};
	TTH_LIST_HERO_TOUCH_CREATURE = {"Welygg", "Rolf", "Markal", "Berein"};
	function TTH_FUNC_HERO_TOUCH_CREATURE.Welygg(strHero, strCreature)
		TTH_HeroSpec_Courtier(strHero, strCreature);
	end;
	function TTH_FUNC_HERO_TOUCH_CREATURE.Rolf(strHero, strCreature)
		TTH_HeroSpec_Courtier(strHero, strCreature);
		local type, count = H55_MonsterInfo(strCreature);
		local iLevel = GetHeroLevel(strHero);
		for i = 0, 6 do
			if type[i] > 0 then
				local iCount = H55_Round(count[i] * 0.005 * iLevel);
				if iCount <= 1 then
					iCount = 1;
				end;
				RemoveObjectCreatures(strCreature, type[i], iCount);
			end;
		end;
	end;
	function TTH_FUNC_HERO_TOUCH_CREATURE.Markal(strHero, strCreature)
		TTH_HeroSpec_Courtier(strHero, strCreature);
		local type, count = H55_MonsterInfo(strCreature);
		local iLevel = GetHeroLevel(strHero);
		for i = 0, 6 do
			if type[i] > 0 then
				local iCount = H55_Round(count[i] * 0.0025 * iLevel);
				if iCount <= 1 then
					iCount = 1;
				end;
				RemoveObjectCreatures(strCreature, type[i], iCount);
				AddHeroCreatures(strHero, type[i], iCount);
			end;
		end;
	end;
	function TTH_FUNC_HERO_TOUCH_CREATURE.Berein(strHero, strCreature)
		TTH_HeroSpec_Courtier(strHero, strCreature);
		local type, count = H55_MonsterInfo(strCreature);
		local iLevel = GetHeroLevel(strHero);
		for i = 0, 6 do
			if type[i] > 0 then
				local iCount = H55_Round(count[i] * 0.0025 * iLevel);
				if iCount <= 1 then
					iCount = 1;
				end;
				RemoveObjectCreatures(strCreature, type[i], iCount);
				local iLenNecCreatures = length(List_Nec_AllCreatures);
				for iIndexNecCreatures = 1, iLenNecCreatures do
					if contains(List_Nec_AllCreatures[iIndexNecCreatures][1], type[i]) ~= nil then
						AddHeroCreatures(strHero, List_Nec_AllCreatures[iIndexNecCreatures][2], iCount);
					end;
				end;
			end;
		end;
	end;
	function TTH_HeroSpec_Courtier(strHero, strCreature)
		SetMonsterCourageAndMood(strCreature, GetObjectOwner(strHero), MONSTER_COURAGE_CAN_FLEE_JOIN, MONSTER_MOOD_AGGRESSIVE);
	end;

	function TTH_TRIGGER_HERO_TOUCH_CREATURE(strHero, strCreature)
		if H55_IsThisAIPlayer(GetObjectOwner(strHero)) ~= 1 then
			if IsObjectExists(strCreature) == not nil then
				for i, itemHero in  TTH_LIST_HERO_TOUCH_CREATURE do
					if IsHeroAlive(itemHero) == true   then
						if (strHero == itemHero) then
							TTH_FUNC_HERO_TOUCH_CREATURE[itemHero](strHero, strCreature);
							break;
						end;
					end;
				end;
				Trigger(OBJECT_TOUCH_TRIGGER, strCreature, nil);
				SetObjectEnabled(strCreature, true);
				sleep(0.1);
				MakeHeroInteractWithObject(strHero, strCreature);
				Trigger(OBJECT_TOUCH_TRIGGER, strCreature, "TTH_TRIGGER_HERO_TOUCH_CREATURE");
			end;
		else
			SetObjectEnabled(strCreature, true);
			sleep(0.1);
			MakeHeroInteractWithObject(strHero, strCreature);
		end;
	end;

	H55_TriggerToObjectType("CREATURE", OBJECT_TOUCH_TRIGGER, "TTH_TRIGGER_HERO_TOUCH_CREATURE", nil);

	function TTH_UNITY_CONCAT(arr1,arr2)
	  local retArr;
	  local lenArr1 = length(arr1);
	  local lenArr2 = length(arr2);
	    for i = (lenArr1), (lenArr1 + lenArr2) do
	        arr1[i] = arr2[i - lenArr1];
	    end;
	  retArr = arr1;
	  return retArr
	end;

	TTH_NAMES_OBJECTS = {};
	TTH_NAMES_OBJECTS.ALL_CREATURES = GetObjectNamesByType("CREATURE");

	-- 解决双向传送门失效问题
	function TTH_FUNC_HERO_TOUCH__PORTAL_CREATURE()
		local arrObjectPortal = TTH_UNITY_CONCAT(GetObjectNamesByType("MONOLITH"),GetObjectNamesByType("SUBTERRA_GATE"));
		if arrObjectPortal ~= nil then
			for j, itemObjectPortal in arrObjectPortal do
				for i, itemObjectCreature in TTH_NAMES_OBJECTS.ALL_CREATURES do
					if (itemObjectPortal ~= nil and itemObjectCreature ~= nil) then
						local xP, yP, zP = GetObjectPosition(itemObjectPortal);
						local xC, yC, zC = GetObjectPosition(itemObjectCreature);
						if zP == zC then
							local dx = sqrt((xP - xC) * (xP - xC));
							local dy = sqrt((yP - yC) * (yP - yC));
							if ((dx <= 3) and (dy <= 3)) then
								TTH_NAMES_OBJECTS.ALL_CREATURES[i] = nil;
								SetObjectEnabled(itemObjectCreature, true);
								-- startThread(Trigger, "TTH", OBJECT_TOUCH_TRIGGER, itemObjectCreature, nil);
								Trigger(OBJECT_TOUCH_TRIGGER, itemObjectCreature, nil);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	sleep(0.1);
	startThread(TTH_FUNC_HERO_TOUCH__PORTAL_CREATURE);
-- end

-- by 牙姐 2018-8-21 16:53:24
-- begin 宝物合成
	TTH_ARTIFACT_SETS = {
		["DRAGONISH"] = {
			["ID"] = {
				[0] = ARTIFACT_DRAGON_SCALE_ARMOR
				, [1] = ARTIFACT_DRAGON_SCALE_SHIELD
				, [2] = ARTIFACT_DRAGON_BONE_GRAVES
				, [3] = ARTIFACT_DRAGON_WING_MANTLE
				, [4] = ARTIFACT_DRAGON_TEETH_NECKLACE
				, [5] = ARTIFACT_DRAGON_TALON_CROWN
				, [6] = ARTIFACT_DRAGON_EYE_RING
				, [7] = ARTIFACT_DRAGON_FLAME_TONGUE
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Dragon_scale_armor/Name.txt"
				, [1] = "/Text/Game/Artifacts/DragonscaleShield/Name.txt"
				, [2] = "/Text/Game/Artifacts/Dragon_bone_greaves/Name.txt"
				, [3] = "/Text/Game/Artifacts/Dragon_wing_mantle/Name.txt"
				, [4] = "/Text/Game/Artifacts/Dragon_teeth_necklace/Name.txt"
				, [5] = "/Text/Game/Artifacts/Dragon_talon_crown/Name.txt"
				, [6] = "/Text/Game/Artifacts/Dragon_eye_ring/Name.txt"
				, [7] = "/Text/Game/Artifacts/Dragon_flame_tongue/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_DRACONIC
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Draconic/Name.txt"
		}
		, ["DWARVEN"] = {
			["ID"] = {
				[0] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
				, [1] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
				, [2] = ARTIFACT_DWARVEN_MITHRAL_HELMET
				, [3] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Dwarven_mithral_cuirass/Name.txt"
				, [1] = "/Text/Game/Artifacts/Dwarven_mithral_greaves/Name.txt"
				, [2] = "/Text/Game/Artifacts/Dwarven_mithral_helmet/Name.txt"
				, [3] = "/Text/Game/Artifacts/Dwarven_mithral_shield/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_SENTINEL
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Sentinel/Name.txt"
			, [3] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 2
				, [STAT_KNOWLEDGE] = 2
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [4] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 8
				, [STAT_SPELL_POWER] = 0
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["LIONS"] = {
			["ID"] = {
				[0] = ARTIFACT_CROWN_OF_COURAGE
				, [1] = ARTIFACT_LION_HIDE_CAPE
				, [2] = ARTIFACT_NECKLACE_OF_BRAVERY
			}
			, [2] = {
				[STAT_ATTACK] = 4
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 0
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["MAGIS"] = {
			["ID"] = {
				[0] = ARTIFACT_ROBE_OF_MAGI
				, [1] = ARTIFACT_STAFF_OF_MAGI
				, [2] = ARTIFACT_CROWN_OF_MAGI
				, [3] = ARTIFACT_RING_OF_MAGI
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Robe_of_magi/Name.txt"
				, [1] = "/Text/Game/Artifacts/Staff_of_magi/Name.txt"
				, [2] = "/Text/Game/Artifacts/Crown_of_magi/Name.txt"
				, [3] = "/Text/Game/Artifacts/Ring_of_magi/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_EIGHTFOLD
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Eightfold/Name.txt"
			, [3] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 6
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["NECROMANCERS"] = {
			["ID"] = {
				[0] = ARTIFACT_CLOAK_OF_MOURNING
				, [1] = ARTIFACT_STAFF_OF_VEXINGS
				, [2] = ARTIFACT_RING_OF_DEATH
				, [3] = ARTIFACT_NECROMANCER_PENDANT
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Cloak_of_mourning/Name.txt"
				, [1] = "/Text/Game/Artifacts/Staff_of_vexing/Name.txt"
				, [2] = "/Text/Game/Artifacts/Ring_of_Death/Name.txt"
				, [3] = "/Text/Game/Artifacts/Necromancer_Pendant/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_CURSE_SHOULDER
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Curse_Shoulder/Name.txt"
			, [3] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 3
				, [STAT_KNOWLEDGE] = 3
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["EDUCATIONAL"] = {
			["ID"] = {
				[0] = ARTIFACT_HELM_OF_ENLIGHTMENT
				, [1] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
			}
		}
		, ["HUNTERS"] = {
			["ID"] = {
				[0] = ARTIFACT_UNICORN_HORN_BOW
				, [1] = ARTIFACT_TREEBORN_QUIVER
			}
		}
		, ["OGRES"] = {
			["ID"] = {
				[0] = ARTIFACT_OGRE_CLUB
				, [1] = ARTIFACT_OGRE_SHIELD
			}
		}
		, ["RUNIC"] = {
			["ID"] = {
				[0] = ARTIFACT_RUNIC_WAR_AXE
				, [1] = ARTIFACT_RUNIC_WAR_HARNESS
			}
		}
		, ["DEMONIC"] = {
			["ID"] = {
				[0] = ARTIFACT_PENDANT_OF_STARDUST
				, [1] = ARTIFACT_HELM_OF_CHAOS
			}
		}
		, ["MONK"] = {
			["ID"] = {
				[0] = ARTIFACT_MONK_01
				, [1] = ARTIFACT_MONK_02
				, [2] = ARTIFACT_MONK_03
				, [3] = ARTIFACT_MONK_04
			}
			, [3] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 3
				, [STAT_KNOWLEDGE] = 3
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["GUARDIAN"] = {
			["ID"] = {
				[0] = ARTIFACT_GUARDIAN_01
				, [1] = ARTIFACT_GUARDIAN_02
				, [2] = ARTIFACT_GUARDIAN_03
				, [3] = ARTIFACT_PLATE_MAIL_OF_STABILITY
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Guardian_Helmet/Name.txt"
				, [1] = "/Text/Game/Artifacts/Guardian_Boots/Name.txt"
				, [2] = "/Text/Game/Artifacts/Guardian_Shield/Name.txt"
				, [3] = "/Text/Game/Artifacts/PlateMailOfStability/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_ANGELIC_ALLIANCE
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Angelic_Alliance/Name.txt"
			, [2] = {
				[STAT_ATTACK] = 1
				, [STAT_DEFENCE] = 1
				, [STAT_SPELL_POWER] = 1
				, [STAT_KNOWLEDGE] = 1
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [3] = {
				[STAT_ATTACK] = 1
				, [STAT_DEFENCE] = 1
				, [STAT_SPELL_POWER] = 1
				, [STAT_KNOWLEDGE] = 1
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [4] = {
				[STAT_ATTACK] = 1
				, [STAT_DEFENCE] = 1
				, [STAT_SPELL_POWER] = 1
				, [STAT_KNOWLEDGE] = 1
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["ROOKIE"] = {
			["ID"] = {
				[0] = ARTIFACT_SWORD_OF_RUINS
				, [1] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
				, [2] = ARTIFACT_SKULL_HELMET
				, [3] = ARTIFACT_BUCKLER
				, [4] = ARTIFACT_BOOTS_OF_INTERFERENCE
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/SwordOfRuin/Name.txt"
				, [1] = "/Text/Game/Artifacts/Breastplate_of_petrified_wood/Name.txt"
				, [2] = "/Text/Game/Artifacts/Skull_Helmet/Name.txt"
				, [3] = "/Text/Game/Artifacts/Buckler/Name.txt"
				, [4] = "/Text/Game/Artifacts/Boots_of_interference/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_PLATE_MAIL_OF_STABILITY
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/PlateMailOfStability/Name.txt"
			, [2] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 1
				, [STAT_SPELL_POWER] = 0
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [3] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 0
				, [STAT_KNOWLEDGE] = 1
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [4] = {
				[STAT_ATTACK] = 1
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 0
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [5] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 1
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["ELEMENT"] = {
			["ID"] = {
				[0] = ARTIFACT_TITANS_TRIDENT
				, [1] = ARTIFACT_EVERCOLD_ICICLE
				, [2] = ARTIFACT_PHOENIX_FEATHER_CAPE
				, [3] = ARTIFACT_EARTHSLIDERS
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Titan`s_trident/Name.txt"
				, [1] = "/Text/Game/Artifacts/Evercold_icicle/Name.txt"
				, [2] = "/Text/Game/Artifacts/Phoenix_feather_cape/Name.txt"
				, [3] = "/Text/Game/Artifacts/Earthsliders/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_TOME_OF_DESTRUCTION
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Tome_of_Destruction/Name.txt"
			, [2] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 2
				, [STAT_KNOWLEDGE] = 0
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
			, [4] = {
				[STAT_ATTACK] = 0
				, [STAT_DEFENCE] = 0
				, [STAT_SPELL_POWER] = 0
				, [STAT_KNOWLEDGE] = 2
				, [STAT_LUCK] = 0
				, [STAT_MORALE] = 0
			}
		}
		, ["CODEX"] = {
			["ID"] = {
				[0] = ARTIFACT_TOME_OF_DESTRUCTION
				, [1] = ARTIFACT_TOME_OF_LIGHT_MAGIC
				, [2] = ARTIFACT_TOME_OF_DARK_MAGIC
				, [3] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Tome_of_Destruction/Name.txt"
				, [1] = "/Text/Game/Artifacts/Tome_of_Light_Magic/Name.txt"
				, [2] = "/Text/Game/Artifacts/Tome_of_Dark_Magic/Name.txt"
				, [3] = "/Text/Game/Artifacts/Tome_of_Summoning_Magic/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_CODEX
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Codex/Name.txt"
		}
		, ["RESOURCE"] = {
			["ID"] = {
				[0] = ARTIFACT_RES_WOOD
				, [1] = ARTIFACT_RES_ORE
				, [2] = ARTIFACT_RES_SULPHUR
				, [3] = ARTIFACT_RES_CRYSTAL
				, [4] = ARTIFACT_RES_GEM
				, [5] = ARTIFACT_RES_MERCURY
				, [6] = ARTIFACT_ENDLESS_SACK_OF_GOLD
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Res_Wood/Name.txt"
				, [1] = "/Text/Game/Artifacts/Res_Ore/Name.txt"
				, [2] = "/Text/Game/Artifacts/Res_Sulphur/Name.txt"
				, [3] = "/Text/Game/Artifacts/Res_Crystal/Name.txt"
				, [4] = "/Text/Game/Artifacts/Res_Gem/Name.txt"
				, [5] = "/Text/Game/Artifacts/Res_Mercury/Name.txt"
				, [6] = "/Text/Game/Artifacts/EndlessSackOfGold/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_HORN_OF_PLENTY
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Horn_Of_Plenty/Name.txt"
		}
		, ["GRAAL"] = {
			["ID"] = {
				[0] = ARTIFACT_LEGION_T1
				, [1] = ARTIFACT_LEGION_T2
				, [2] = ARTIFACT_LEGION_T3
				, [3] = ARTIFACT_LEGION_T4
				, [4] = ARTIFACT_LEGION_T5
				, [5] = ARTIFACT_LEGION_T6
				, [6] = ARTIFACT_LEGION_T7
				, [7] = ARTIFACT_ENDLESS_BAG_OF_GOLD
			}
			, ["NAME"] = {
				[0] = "/Text/Game/Artifacts/Legion_T1/Name.txt"
				, [1] = "/Text/Game/Artifacts/Legion_T2/Name.txt"
				, [2] = "/Text/Game/Artifacts/Legion_T3/Name.txt"
				, [3] = "/Text/Game/Artifacts/Legion_T4/Name.txt"
				, [4] = "/Text/Game/Artifacts/Legion_T5/Name.txt"
				, [5] = "/Text/Game/Artifacts/Legion_T6/Name.txt"
				, [6] = "/Text/Game/Artifacts/Legion_T7/Name.txt"
				, [7] = "/Text/Game/Artifacts/Legion_T8/Name.txt"
			}
			, ["COMBINE_ID"] = ARTIFACT_GRAAL
			, ["COMBINE_NAME"] = "/Text/Game/Artifacts/Graal/Name.txt"
		}
	}
	TTH_COMBINE_HERO_DISABLE = {};
	function TTH_TM_Combine_or_Close(strHero, strTown)
		local iPlayer = GetObjectOwner(strHero);
		for indexSet, objSet in TTH_ARTIFACT_SETS do
			if objSet ~= nil and objSet["ID"] ~= nil and objSet["COMBINE_ID"] ~= nil then
				if TTH_COMBINE_HERO_DISABLE[strHero] == nil or
					(TTH_COMBINE_HERO_DISABLE[strHero] ~= nil and TTH_COMBINE_HERO_DISABLE[strHero][indexSet] == nil) then
					local iCheckCombine = 1;
					for indexId, iId in objSet["ID"] do
						if (HasArtefact(strHero, iId, 0) == nil) then
							iCheckCombine = 0
							break;
						end;
					end;
					if iCheckCombine == 1 then
						local iIndex = 0;
						local valueComponent = {};
						for indexName, iName in objSet["NAME"] do
							valueComponent[iIndex] = iName;
							iIndex = iIndex + 1;
						end;
						if length(valueComponent) < 8 then
							local iStart = length(valueComponent);
							for i = iStart, 7 do
								valueComponent[i] = "/Text/Game/Artifacts/None/Name.txt";
							end
						end;
						local valueCombine = objSet["COMBINE_NAME"];
						QuestionBoxForPlayers(GetPlayerFilter(iPlayer),{"/Text/Game/Scripts/TownPortal/TTH_TM_Combine_or_Close.txt";
						component0=valueComponent[0],component1=valueComponent[1],component2=valueComponent[2],component3=valueComponent[3],
						component4=valueComponent[4],component5=valueComponent[5],component6=valueComponent[6],component7=valueComponent[7],
						combine=valueCombine},
						"TTH_TM_CB_Combine_Request('"..strHero.."','"..indexSet.."')","TTH_TM_CB_Combine_Abort('"..strHero.."','"..indexSet.."')");
						return 1;
					end;
				end;
			end;
		end;
		return 0;
	end;
	function TTH_TM_CB_Combine_Request(strHero, indexSet)
		for indexId, iId in TTH_ARTIFACT_SETS[indexSet]["ID"] do
			RemoveArtefact(strHero, iId);
		end;
		GiveArtefact(strHero, TTH_ARTIFACT_SETS[indexSet]["COMBINE_ID"]);
	end;
	function TTH_TM_CB_Combine_Abort(strHero, indexSet)
		if TTH_COMBINE_HERO_DISABLE[strHero] == nil then
			TTH_COMBINE_HERO_DISABLE[strHero] = {};
		end;
		TTH_COMBINE_HERO_DISABLE[strHero][indexSet] = 1;
	end;
-- end

-- by 牙姐 2018-9-7 13:00:48
-- begin 先知法衣属性加成
	function TTH_Monk_Mana_Bonus(strHero)
		local iCount = 0;
		for indexId, iId in TTH_ARTIFACT_SETS["MONK"]["ID"] do
			if HasArtefact(strHero, iId, 1) ~= nil then
				iCount = iCount + 1;
			end;
		end;
		if HasArtefact(strHero, ARTIFACT_PENDANT_OF_STARDUST, 1) ~= nil then
			iCount = iCount + 1;
		end;
		if iCount >= 2 then
			return 1;
		else
			return 0;
		end;
	end;
	function TTH_Monk_Move_Bonus(strHero)
		local iCount = 0;
		for indexId, iId in TTH_ARTIFACT_SETS["MONK"]["ID"] do
			if HasArtefact(strHero, iId, 1) ~= nil then
				iCount = iCount + 1;
			end;
		end;
		if HasArtefact(strHero, ARTIFACT_PENDANT_OF_STARDUST, 1) ~= nil then
			iCount = iCount + 1;
		end;
		if iCount >= 4 then
			return 1;
		else
			return 0;
		end;
	end;
-- end

-- by 牙姐 2018-8-22 18:33:39
-- begin 英雄套装属性加成
	TTH_ARTIFACT_BONUS_HERO = {};
	function TTH_Artifact_Bonus_Check(strHero)
		local iPlayer = GetObjectOwner(strHero);
		for indexSet, objSet in TTH_ARTIFACT_SETS do
			local iCount = 0;
			for indexId, iId in objSet["ID"] do
				if HasArtefact(strHero, iId, 1) ~= nil then
					iCount = iCount + 1;
				end;
			end;
			if HasArtefact(strHero, ARTIFACT_PENDANT_OF_STARDUST, 1) ~= nil then
				iCount = iCount + 1;
			end;
			if TTH_ARTIFACT_BONUS_HERO[strHero] == nil then
				TTH_ARTIFACT_BONUS_HERO[strHero] = {};
			end;
			if TTH_ARTIFACT_BONUS_HERO[strHero][indexSet] == nil then
				TTH_ARTIFACT_BONUS_HERO[strHero][indexSet] = {};
			end;
			for i = 1, 8 do
				if objSet[i] ~= nil then
					if iCount >= i then
						if TTH_ARTIFACT_BONUS_HERO[strHero][indexSet][i] == nil then
							for indexStat, iNumStat in objSet[i] do
								if iNumStat ~= 0 then
									ChangeHeroStat(strHero, indexStat, iNumStat);
								end;
							end;
							TTH_ARTIFACT_BONUS_HERO[strHero][indexSet][i] = 1;
							TTH_ShowArtifactFlyingSign(strHero, iPlayer, 1);
						end;
					end;
					if iCount < i then
						if TTH_ARTIFACT_BONUS_HERO[strHero][indexSet][i] == 1 then
							for indexStat, iNumStat in objSet[i] do
								if iNumStat ~= 0 then
									ChangeHeroStat(strHero, indexStat, iNumStat * -1);
								end;
							end;
							TTH_ARTIFACT_BONUS_HERO[strHero][indexSet][i] = nil;
							TTH_ShowArtifactFlyingSign(strHero, iPlayer, 0);
						end;
					end;
				end;
			end;
		end;
	end;
-- end

-- by 牙姐 2018-10-17 11:12:23
-- begin 套装属性获得及失去的飘字效果
	function TTH_ShowArtifactFlyingSign(strHero, iPlayer, iShowType)
		if H55_IsThisAIPlayer(iPlayer) ~= 1 and H55_IsHeroInAnyTown(strHero) == 0 then
			if iShowType == 0 then
				ShowFlyingSign("/Text/Game/Scripts/SetLost.txt",strHero,iPlayer,5);
			else
				ShowFlyingSign("/Text/Game/Scripts/SetBonus.txt",strHero,iPlayer,5);
			end;
			sleep(2);
		end;
	end;
-- end

-- by 牙姐 2018-8-21 16:53:24
-- begin 军团宝物 城市加成
	TTH_TOWN_BONUS_SET = {
		["ID"] = {
			[0] = ARTIFACT_LEGION_T1
			, [1] = ARTIFACT_LEGION_T2
			, [2] = ARTIFACT_LEGION_T3
			, [3] = ARTIFACT_LEGION_T4
			, [4] = ARTIFACT_LEGION_T5
			, [5] = ARTIFACT_LEGION_T6
			, [6] = ARTIFACT_LEGION_T7
			, [7] = ARTIFACT_ENDLESS_BAG_OF_GOLD
			, [8] = ARTIFACT_HORN_OF_PLENTY
		}
		, ["NAME"] = {
			[0] = "/Text/Game/Artifacts/Legion_T1/Name.txt"
			, [1] = "/Text/Game/Artifacts/Legion_T2/Name.txt"
			, [2] = "/Text/Game/Artifacts/Legion_T3/Name.txt"
			, [3] = "/Text/Game/Artifacts/Legion_T4/Name.txt"
			, [4] = "/Text/Game/Artifacts/Legion_T5/Name.txt"
			, [5] = "/Text/Game/Artifacts/Legion_T6/Name.txt"
			, [6] = "/Text/Game/Artifacts/Legion_T7/Name.txt"
			, [7] = "/Text/Game/Artifacts/Legion_T8/Name.txt"
			, [8] = "/Text/Game/Artifacts/Horn_Of_Plenty/Name.txt"
		}
		, ["DESC"] = {
			[0] = "/Text/Game/Scripts/TownPortal/Legion_T1.txt"
			, [1] = "/Text/Game/Scripts/TownPortal/Legion_T2.txt"
			, [2] = "/Text/Game/Scripts/TownPortal/Legion_T3.txt"
			, [3] = "/Text/Game/Scripts/TownPortal/Legion_T4.txt"
			, [4] = "/Text/Game/Scripts/TownPortal/Legion_T5.txt"
			, [5] = "/Text/Game/Scripts/TownPortal/Legion_T6.txt"
			, [6] = "/Text/Game/Scripts/TownPortal/Legion_T7.txt"
			, [7] = "/Text/Game/Scripts/TownPortal/Legion_T8.txt"
			, [8] = "/Text/Game/Scripts/TownPortal/Legion_T9.txt"
		}
	};
	TTH_TOWN_BONUS_WEEK = {};
	TTH_TOWN_BONUS_HERO_DISABLE = {};
	function TTH_TM_AdditionCity_or_Close(strHero, strTown)
		local iPlayer = GetObjectOwner(strHero);
		for i = 0, 8 do
			if TTH_TOWN_BONUS_HERO_DISABLE[strTown] == nil
				or (
					(
						TTH_TOWN_BONUS_HERO_DISABLE[strTown][strHero] == nil
						or (
								TTH_TOWN_BONUS_HERO_DISABLE[strTown][strHero] ~= nil
								and TTH_TOWN_BONUS_HERO_DISABLE[strTown][strHero][i] == nil
						)
					)
					and (
						TTH_TOWN_BONUS_HERO_DISABLE[strTown]['flag'] == nil
						or (
							TTH_TOWN_BONUS_HERO_DISABLE[strTown]['flag'] ~= nil
							and TTH_TOWN_BONUS_HERO_DISABLE[strTown]['flag'][i] == nil
						)
					)
				)
				then
				if (HasArtefact(strHero, TTH_TOWN_BONUS_SET["ID"][i], 0) ~= nil) then
					if TTH_TOWN_BONUS_WEEK[strTown] == nil
						or (TTH_TOWN_BONUS_WEEK[strTown] ~= nil and TTH_TOWN_BONUS_WEEK[strTown][strHero] == nil)
						or (TTH_TOWN_BONUS_WEEK[strTown] ~= nil and TTH_TOWN_BONUS_WEEK[strTown][strHero] ~= nil and TTH_TOWN_BONUS_WEEK[strTown][strHero][i] == nil) then
						QuestionBoxForPlayers(GetPlayerFilter(iPlayer),{"/Text/Game/Scripts/TownPortal/TTH_TM_AdditionCity_or_Close.txt";
						name=TTH_TOWN_BONUS_SET["NAME"][i],desc=TTH_TOWN_BONUS_SET["DESC"][i]},
						"TTH_TM_CB_AdditionCity_Request('"..strHero.."','"..strTown.."','"..i.."')","TTH_TM_CB_AdditionCity_Abort('"..strHero.."','"..strTown.."','"..i.."')");
						return 1;
					end;
				end;
			end;
		end;
		return 0;
	end;
	function TTH_TM_CB_AdditionCity_Request(strHero, strTown, i)
		RemoveArtefact(strHero, TTH_TOWN_BONUS_SET["ID"][i + 0]);
		if TTH_TOWN_BONUS_WEEK[strTown] == nil then
			TTH_TOWN_BONUS_WEEK[strTown] = {};
		end;
		TTH_TOWN_BONUS_WEEK[strTown][i * 1] = 1;
		if TTH_TOWN_BONUS_HERO_DISABLE[strTown] == nil then
			TTH_TOWN_BONUS_HERO_DISABLE[strTown] = {};
		end;
		if TTH_TOWN_BONUS_HERO_DISABLE[strTown]['flag'] == nil then
			TTH_TOWN_BONUS_HERO_DISABLE[strTown]['flag'] = {};
		end;
		TTH_TOWN_BONUS_HERO_DISABLE[strTown]['flag'][i * 1] = 1;
	end;
	function TTH_TM_CB_AdditionCity_Abort(strHero, strTown, i)
		if TTH_TOWN_BONUS_HERO_DISABLE[strTown] == nil then
			TTH_TOWN_BONUS_HERO_DISABLE[strTown] = {};
		end;
		if TTH_TOWN_BONUS_HERO_DISABLE[strTown][strHero] == nil then
			TTH_TOWN_BONUS_HERO_DISABLE[strTown][strHero] = {};
		end;
		TTH_TOWN_BONUS_HERO_DISABLE[strTown][strHero][i * 1] = 1;
	end;
-- end

-- by 牙姐 2021-2-24 22:27:53
-- begin 军团宝物 领袖特
	TTH_TOWN_BONUS_SET = {
		["ID"] = {
			[0] = ARTIFACT_LEGION_T1
			, [1] = ARTIFACT_LEGION_T2
			, [2] = ARTIFACT_LEGION_T3
			, [3] = ARTIFACT_LEGION_T4
			, [4] = ARTIFACT_LEGION_T5
			, [5] = ARTIFACT_LEGION_T6
			, [6] = ARTIFACT_LEGION_T7
		}
		, ["NAME"] = {
			[0] = "/Text/Game/Artifacts/Legion_T1/Name.txt"
			, [1] = "/Text/Game/Artifacts/Legion_T2/Name.txt"
			, [2] = "/Text/Game/Artifacts/Legion_T3/Name.txt"
			, [3] = "/Text/Game/Artifacts/Legion_T4/Name.txt"
			, [4] = "/Text/Game/Artifacts/Legion_T5/Name.txt"
			, [5] = "/Text/Game/Artifacts/Legion_T6/Name.txt"
			, [6] = "/Text/Game/Artifacts/Legion_T7/Name.txt"
		}
		, ["DESC"] = {
			[0] = "/Text/Game/Scripts/TownPortal/Legion_T1.txt"
			, [1] = "/Text/Game/Scripts/TownPortal/Legion_T2.txt"
			, [2] = "/Text/Game/Scripts/TownPortal/Legion_T3.txt"
			, [3] = "/Text/Game/Scripts/TownPortal/Legion_T4.txt"
			, [4] = "/Text/Game/Scripts/TownPortal/Legion_T5.txt"
			, [5] = "/Text/Game/Scripts/TownPortal/Legion_T6.txt"
			, [6] = "/Text/Game/Scripts/TownPortal/Legion_T7.txt"
		}
	};
	TTH_TABLE_LeaderHero = {
		"Biara"
		, "Hangvul"
		, "Sylsai"
		, "Kunyak"
	};
	TTH_LeaderHero_Bonus = {};
	function TTH_TM_LeaderHero_or_Close(strHero)
		if contains(TTH_TABLE_LeaderHero, strHero) then
			local iPlayer = GetObjectOwner(strHero);
			for iIndexLegion, objLegion in TTH_TOWN_BONUS_SET["ID"] do
				if (HasArtefact(strHero, objLegion, 0) ~= nil) then
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer),{"/Text/Game/Scripts/TownPortal/TTH_TM_LeaderHero_or_Close.txt";
					name=TTH_TOWN_BONUS_SET["NAME"][iIndexLegion],desc=TTH_TOWN_BONUS_SET["DESC"][iIndexLegion]},
					"TTH_TM_CB_LeaderHero_Request('"..strHero.."','"..iIndexLegion.."')","TTH_TM_CB_LeaderHero_Abort('"..strHero.."','"..iIndexLegion.."')");
					return 1;
				end;
			end;
			return 0;
		else
			return 0;
		end;
	end;
	function TTH_TM_CB_LeaderHero_Request(strHero, iIndexLegion)
		RemoveArtefact(strHero, TTH_TOWN_BONUS_SET["ID"][iIndexLegion + 0]);
		if TTH_LeaderHero_Bonus[strHero] == nil then
			TTH_LeaderHero_Bonus[strHero] = 1;
		else
			TTH_LeaderHero_Bonus[strHero] = TTH_LeaderHero_Bonus[strHero] + 1;
		end;
	end;
	function TTH_TM_CB_LeaderHero_Abort(strHero, iIndexLegion)
	end;
-- end

-- by 牙姐 2018-9-12 18:20:55
-- begin 皇家遗物
	TTH_USEDOPPELGANGER_HERO_DISABLE = {};
	function TTH_TM_UseDoppelganger_or_Close(strHero, strTown)
		local iPlayer = GetObjectOwner(strHero);
		for i = 0, 8 do
			if TTH_USEDOPPELGANGER_HERO_DISABLE[strHero] == nil	then
				if HasArtefact(strHero, ARTIFACT_MASK_OF_DOPPELGANGER, 0) ~= nil then
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer),{"/Text/Game/Scripts/TownPortal/TTH_TM_UseDoppelganger_or_Close.txt";
					name="/Text/Game/Artifacts/Mask_Of_Doppelganger/Name.txt"},
					"TTH_TM_CB_UseDoppelganger_Request('"..strHero.."')","TTH_TM_CB_UseDoppelganger_Abort('"..strHero.."')");
					return 1;
				end;
			end;
		end;
		return 0;
	end;
	function TTH_TM_CB_UseDoppelganger_Request(strHero)
		RemoveArtefact(strHero, ARTIFACT_MASK_OF_DOPPELGANGER);
		GiveExp(strHero, 500 * 1000);
	end;
	function TTH_TM_CB_UseDoppelganger_Abort(strHero)
		TTH_USEDOPPELGANGER_HERO_DISABLE[strHero] = 1;
	end;
-- end

-- by 牙姐 2018-8-22 13:42:58
-- begin 资源宝物 矿产加成
	TTH_MINE = {};
		TTH_MINE[ARTIFACT_RES_WOOD] = GetObjectNamesByType("BUILDING_SAWMILL");
		TTH_MINE[ARTIFACT_RES_ORE] = GetObjectNamesByType("BUILDING_ORE_PIT");
		TTH_MINE[ARTIFACT_RES_SULPHUR] = GetObjectNamesByType("BUILDING_SULFUR_DUNE");
		TTH_MINE[ARTIFACT_RES_CRYSTAL] = GetObjectNamesByType("BUILDING_CRYSTAL_CAVERN");
		TTH_MINE[ARTIFACT_RES_GEM] = GetObjectNamesByType("BUILDING_GEM_POND");
		TTH_MINE[ARTIFACT_RES_MERCURY] = GetObjectNamesByType("BUILDING_ALCHEMIST_LAB");
		TTH_MINE[ARTIFACT_ENDLESS_SACK_OF_GOLD] = GetObjectNamesByType("BUILDING_GOLD_MINE");
	TTH_RES_BONUS_SET = {
		["ID"] = {
			[0] = ARTIFACT_RES_WOOD
			, [1] = ARTIFACT_RES_ORE
			, [2] = ARTIFACT_RES_SULPHUR
			, [3] = ARTIFACT_RES_CRYSTAL
			, [4] = ARTIFACT_RES_GEM
			, [5] = ARTIFACT_RES_MERCURY
			, [6] = ARTIFACT_ENDLESS_SACK_OF_GOLD
		}
		, ["NAME"] = {
			[0] = "/Text/Game/Artifacts/Res_Wood/Name.txt"
			, [1] = "/Text/Game/Artifacts/Res_Ore/Name.txt"
			, [2] = "/Text/Game/Artifacts/Res_Sulphur/Name.txt"
			, [3] = "/Text/Game/Artifacts/Res_Crystal/Name.txt"
			, [4] = "/Text/Game/Artifacts/Res_Gem/Name.txt"
			, [5] = "/Text/Game/Artifacts/Res_Mercury/Name.txt"
			, [6] = "/Text/Game/Artifacts/EndlessSackOfGold/Name.txt"
		}
		, ["DESC"] = {
			[0] = "/Text/Game/Scripts/TownPortal/Res_Wood.txt"
			, [1] = "/Text/Game/Scripts/TownPortal/Res_Ore.txt"
			, [2] = "/Text/Game/Scripts/TownPortal/Res_Sulphur.txt"
			, [3] = "/Text/Game/Scripts/TownPortal/Res_Crystal.txt"
			, [4] = "/Text/Game/Scripts/TownPortal/Res_Gem.txt"
			, [5] = "/Text/Game/Scripts/TownPortal/Res_Mercury.txt"
			, [6] = "/Text/Game/Scripts/TownPortal/Res_Gold.txt"
		}
		, ["TOOLTIP"] = {
			[0] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Wood_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Wood_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Wood_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Wood_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Wood_4.txt"
			}
			, [1] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Ore_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Ore_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Ore_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Ore_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Ore_4.txt"
			}
			, [2] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Sulphur_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Sulphur_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Sulphur_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Sulphur_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Sulphur_4.txt"
			}
			, [3] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Crystal_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Crystal_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Crystal_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Crystal_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Crystal_4.txt"
			}
			, [4] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Gem_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Gem_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Gem_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Gem_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Gem_4.txt"
			}
			, [5] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Mercury_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Mercury_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Mercury_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Mercury_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Mercury_4.txt"
			}
			, [6] = {
				[0] = "/Text/Game/Scripts/TownPortal/Tooltip_Gold_0.txt"
				, [1] = "/Text/Game/Scripts/TownPortal/Tooltip_Gold_1.txt"
				, [2] = "/Text/Game/Scripts/TownPortal/Tooltip_Gold_2.txt"
				, [3] = "/Text/Game/Scripts/TownPortal/Tooltip_Gold_3.txt"
				, [4] = "/Text/Game/Scripts/TownPortal/Tooltip_Gold_4.txt"
			}
		}
	};
	TTH_RES_BONUS_DAILY = {};
	TTH_RES_BONUS_HERO_DISABLE = {};
	function TTH_TM_AdditionMine_or_Close(strHero)
		local iPlayer = GetObjectOwner(strHero);
		for i = 0, 6 do
			if (HasArtefact(strHero, TTH_RES_BONUS_SET["ID"][i], 0) ~= nil) then
				for indexMine, objMine in TTH_MINE[TTH_RES_BONUS_SET["ID"][i]] do
					if GetObjectOwner(objMine) == iPlayer and H55_GetDistance(strHero, objMine) <= 5
						and (TTH_RES_BONUS_DAILY[objMine] == nil or TTH_RES_BONUS_DAILY[objMine]['used'] < 10) then
						local iUsed = 0;
						if TTH_RES_BONUS_DAILY[objMine] ~= nil then
							iUsed = TTH_RES_BONUS_DAILY[objMine]['used'];
						end;
						local iLevel = 0;
						if TTH_RES_BONUS_DAILY[objMine] ~= nil then
							iLevel = TTH_RES_BONUS_DAILY[objMine]['level'];
						end;
						local iCurrentLevel = iLevel + 1;
						QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/TownPortal/TTH_TM_AdditionMine_or_Close.txt";
						name=TTH_RES_BONUS_SET["NAME"][i],desc=TTH_RES_BONUS_SET["DESC"][i],used=iUsed,level=iCurrentLevel},
						"TTH_TM_CB_AdditionMine_Request('"..strHero.."','"..objMine.."','"..i.."','"..TTH_RES_BONUS_SET["ID"][i].."')","TTH_TM_CB_AdditionMine_Abort('"..strHero.."','"..objMine.."','"..i.."')");
						return 1;
					end;
				end;
			end;
		end;
		return 0;
	end;
	function TTH_TM_CB_AdditionMine_Request(strHero, objMine, i, iTypeMine)
		RemoveArtefact(strHero, TTH_RES_BONUS_SET["ID"][i + 0]);
		if TTH_RES_BONUS_DAILY[objMine] == nil then
			TTH_RES_BONUS_DAILY[objMine] = {};
			TTH_RES_BONUS_DAILY[objMine]['type'] = iTypeMine;
			TTH_RES_BONUS_DAILY[objMine]['used'] = 1;
			TTH_RES_BONUS_DAILY[objMine]['level'] = 1;
		else
			TTH_RES_BONUS_DAILY[objMine]['used'] = TTH_RES_BONUS_DAILY[objMine]['used'] + 1;
			local iUsed = TTH_RES_BONUS_DAILY[objMine]['used'];
			if iUsed >= 1 and iUsed < 3 then
				TTH_RES_BONUS_DAILY[objMine]['level'] = 1;
			elseif iUsed >= 3 and iUsed < 6 then
				TTH_RES_BONUS_DAILY[objMine]['level'] = 2;
			elseif iUsed >= 6 and iUsed < 10 then
				TTH_RES_BONUS_DAILY[objMine]['level'] = 3;
			elseif iUsed == 10 then
				TTH_RES_BONUS_DAILY[objMine]['level'] = 4;
			end;
		end;
		OverrideObjectTooltipNameAndDescription(objMine, "", TTH_RES_BONUS_SET["TOOLTIP"][i + 0][TTH_RES_BONUS_DAILY[objMine]['level']]);
	end;
	function TTH_TM_CB_AdditionMine_Abort(strHero, objMine, i)
		-- if TTH_RES_BONUS_HERO_DISABLE[objMine] == nil then
		-- 	TTH_RES_BONUS_HERO_DISABLE[objMine] = {};
		-- end;
		-- TTH_RES_BONUS_HERO_DISABLE[objMine][strHero] = 1;
	end;
-- end

-- by 牙姐 2018-9-12 17:52:38
-- begin 开局选择宝物
	TTH_ARTIFACT_STARTING = {
		[0] = ARTIFACT_RES_WOOD
		, [1] = ARTIFACT_RES_ORE
		, [2] = ARTIFACT_RES_SULPHUR
		, [3] = ARTIFACT_RES_CRYSTAL
		, [4] = ARTIFACT_RES_GEM
		, [5] = ARTIFACT_RES_MERCURY
		, [6] = ARTIFACT_SWORD_OF_RUINS
		, [7] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
		, [8] = ARTIFACT_SKULL_HELMET
		, [9] = ARTIFACT_WISPERING_RING
		, [10] = ARTIFACT_BEGINNER_MAGIC_STICK
		, [11] = ARTIFACT_EDGE_OF_BALANCE
		, [12] = ARTIFACT_STEADFAST
		, [13] = ARTIFACT_BUCKLER
		, [14] = ARTIFACT_FOUR_LEAF_CLOVER
		, [15] = ARTIFACT_GOLDEN_SEXTANT
		, [16] = ARTIFACT_CROWN_OF_MANY_EYES
		, [17] = ARTIFACT_RING_OF_LIGHTING_PROTECTION
		, [18] = ARTIFACT_BOOTS_OF_INTERFERENCE
		, [19] = ARTIFACT_RIGID_MANTLE
		, [20] = ARTIFACT_BEARHIDE_WRAPS
		, [21] = ARTIFACT_RING_OF_UNSUMMONING
		, [22] = ARTIFACT_TITANS_TRIDENT
		, [23] = ARTIFACT_RING_OF_LIFE
		, [24] = ARTIFACT_EVERCOLD_ICICLE
		, [25] = ARTIFACT_ENDLESS_SACK_OF_GOLD
		, [26] = ARTIFACT_PHOENIX_FEATHER_CAPE
		, [27] = ARTIFACT_VALORIOUS_ARMOR
		, [28] = ARTIFACT_EARTHSLIDERS
		, [29] = ARTIFACT_TAROT_DECK
		, [30] = ARTIFACT_REINCARNATION
		, [31] = ARTIFACT_WEREWOLF_CLAW_NECKLACE
		, [32] = ARTIFACT_CROWN_OF_LEADER
		, [33] = ARTIFACT_LEGION_T1
		, [34] = ARTIFACT_LEGION_T2
		, [35] = ARTIFACT_LEGION_T3
		, [36] = ARTIFACT_LEGION_T4
		, [37] = ARTIFACT_NECKLACE_OF_BRAVERY
		, [38] = ARTIFACT_LION_HIDE_CAPE
		, [39] = ARTIFACT_HELM_OF_ENLIGHTMENT
		, [40] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
		, [41] = ARTIFACT_RING_OF_DEATH
		, [42] = ARTIFACT_RUNIC_WAR_AXE
		, [43] = ARTIFACT_RUNIC_WAR_HARNESS
		, [44] = ARTIFACT_TREEBORN_QUIVER
		, [45] = ARTIFACT_MONK_01
		, [46] = ARTIFACT_MONK_02
		, [47] = ARTIFACT_MONK_03
		, [48] = ARTIFACT_MONK_04
	};
	function TTH_Starting_ChooseArtifact(iPlayer)
		if H55_ChooseArtifact_Switch == 1 and  contains(TTH_ARTIFACT_STARTING, H55_ChooseArtifact_ID) ~= nil then
			if (GetPlayerState(iPlayer) == 1) then
				for indexArtifact, objArtifact in TTH_ARTIFACT_STARTING do
					local arrHero = GetPlayerHeroes(iPlayer);
					for indexHero, strHero in arrHero do
						if HasArtefact(strHero, objArtifact, 0) ~= nil or HasArtefact(strHero, objArtifact, 1) ~= nil then
							RemoveArtefact(strHero, objArtifact);
							GiveArtefact(strHero, H55_ChooseArtifact_ID);
							print("Chosen artifact has been given");
							return nil;
						end;
					end;
				end;
			end;
		end;
	end;
	function TTH_Starting_Resource(iPlayer)
		if H55_PlayerStartResource == 0 then
			if (GetPlayerState(iPlayer) == 1) then
				SetPlayerResource(iPlayer, 0, 0);
				SetPlayerResource(iPlayer, 1, 0);
				SetPlayerResource(iPlayer, 2, 0);
				SetPlayerResource(iPlayer, 3, 0);
				SetPlayerResource(iPlayer, 4, 0);
				SetPlayerResource(iPlayer, 5, 0);
				SetPlayerResource(iPlayer, 6, 0);
				print("Player's resource has been token");
				return nil;
			end;
		end;
	end;
	function TTH_Init()
		SetGameVar('H55SMOD_Var_Ability_Ildar', 'light');
		H55SMOD_HeroAbility['Ildar'] = 'light';
	end;
-- end

-- by 牙姐 2018-10-16 16:28:58
-- begin 英雄自定义主动技能1~3
	function TTH_HeroCustomAbility1(strHero)
		print("press the button TTH_HeroCustomAbility1");
	end;
	function TTH_HeroCustomAbility2(strHero)
		print("press the button TTH_HeroCustomAbility2");
	end;
	function TTH_HeroCustomAbility3(strHero)
		if contains(TTH_TABLE_HeroCustomAbility_CastCreature, strHero) ~= nil then
			TTH_HeroCustomAbility_CastCreature(strHero);
		end;
		if strHero == "Sheltem" then
			TTH_HeroCustomAbility_Sheltem(strHero);
		end;
		if strHero == "Nathaniel" then
			TTH_HeroCustomAbility_Nathaniel(strHero);
		end;
		if strHero == "Maahir" then
			TTH_HeroCustomAbility_Maahir(strHero);
		end;
		if strHero == "Straker" then
			TTH_HeroCustomAbility_Straker(strHero);
		end;
		if strHero == "Ildar" then
			TTH_HeroCustomAbility_Ildar(strHero);
		end;
		if strHero == "Crag" then
			TTH_HeroCustomAbility_Crag(strHero);
		end;
		if strHero == "Cyrus" then
			TTH_HeroCustomAbility_Cyrus(strHero);
		end;
	end;

	function TTH_HeroCustomAbility(strHero, CUSTOM_ABILITY_ID)
		if CUSTOM_ABILITY_ID == CUSTOM_ABILITY_4 then
			TTH_FunctionManagement(strHero)
		elseif CUSTOM_ABILITY_ID == CUSTOM_ABILITY_3 then
			TTH_HeroCustomAbility3(strHero);
		elseif CUSTOM_ABILITY_ID == CUSTOM_ABILITY_2 then
			TTH_HeroCustomAbility2(strHero);
		elseif CUSTOM_ABILITY_ID == CUSTOM_ABILITY_1 then
			TTH_HeroCustomAbility1(strHero);
		end;
	end;
-- end

-- by 牙姐 2018-10-16 19:04:34
-- begin 转化生物技能
	function TTH_COMMIN_CAST_CREATURE(strHero, iTypeBefore, iCountBefore, iTypeAfter, iCountAfter)
		local type, count = H55_ArmyInfo(strHero);
		if count[6] == 0 then
			AddHeroCreatures(strHero, iTypeAfter, iCountAfter);
			sleep(1);
			RemoveHeroCreatures(strHero, iTypeBefore, iCountBefore);
			sleep(1);
		else
			RemoveHeroCreatures(strHero, iTypeBefore, iCountBefore);
			sleep(1);
			AddHeroCreatures(strHero, iTypeAfter, iCountAfter);
			sleep(1);
		end;
	end;

	function TTH_HeroCustomAbility_CastCreature(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");

		local iPlayer = GetObjectOwner(strHero);
		local iType, iCount = H55_ArmyInfo(strHero);
		local iHeroLevel = GetHeroLevel(strHero);

		-- 英雄主动技能是否在CD中
		if TTH_HeroCustomAbility_CastCreature_GCD[strHero] > 0 then
			MessageBoxForPlayers(GetPlayerFilter(iPlayer), {"/Text/Game/Scripts/HeroCustomAbility/CastCreatureWithoutGCD.txt";iGcd=TTH_HeroCustomAbility_CastCreature_GCD[strHero]}, "" ,"");
			print(strHero.." custom ability3 not as expected GCD");
		-- 若可使用，则进入转化流程
		else
			-- 获取玩家资源
			local arrResPlayer = {};
			arrResPlayer[WOOD] = GetPlayerResource(iPlayer, WOOD);
			arrResPlayer[ORE] = GetPlayerResource(iPlayer, ORE);
			arrResPlayer[MERCURY] = GetPlayerResource(iPlayer, MERCURY);
			arrResPlayer[CRYSTAL] = GetPlayerResource(iPlayer, CRYSTAL);
			arrResPlayer[SULFUR] = GetPlayerResource(iPlayer, SULFUR);
			arrResPlayer[GEM] = GetPlayerResource(iPlayer, GEM);
			arrResPlayer[GOLD] = GetPlayerResource(iPlayer, GOLD);

			local iMatch = 0;
			local arrCreatureNecessary = {};
			-- 遍历转化表
			for iIndex, objItem in TTH_TABLE_CastCreature[strHero]["CAST_MAP"] do
				-- 若英雄等级满足要求
				if iHeroLevel >= objItem["NECESSARY_HERO_LEVEL_MIN"] and iHeroLevel <= objItem["NECESSARY_HERO_LEVEL_MAX"] then
					-- 若兵力槽1中的生物ID存在于转化表中
					if iType[0] == objItem["BEFORE_CREATURE_ID"] then
						iMatch = 1;
						-- 根据 转化前后生物比例 计算 可转化生物数量
						local iCountCreature8CastScaleCreature = H55_Floor(iCount[0] / objItem["CAST_SCALE_CREATURE"]);
						-- 根据 英雄等级 计算 可转化生物数量（至少为1）
						local iCountCreature8CastScaleHero = H55_Ceil(iHeroLevel / objItem["CAST_SCALE_HERO"]);
						if iCountCreature8CastScaleHero < 1 then
							iCountCreature8CastScaleHero = 1;
						end;
						-- 根据 玩家资源及转化单个生物消耗 计算 可转化生物数量
						local arrRes = {};
						for i = 0, 6 do
							if objItem["RESOURCE"][i] == 0 then
								arrRes[i] = TTH_NUM_MAX;
							else
								arrRes[i] = H55_Floor(arrResPlayer[i] / objItem["RESOURCE"][i]);
							end;
						end;
						local iCountCreature8Resource = TTH_COMMON_MIN(arrRes);
						-- 取3个转化生物数量的最小值，若>0，则进行转化，并扣除资源，包含关联转化
						local iCountMinCreature = TTH_COMMON_MIN({iCountCreature8CastScaleCreature, iCountCreature8CastScaleHero, iCountCreature8Resource});
						if iCountMinCreature > 0 then
							-- 扣除资源
							for i = 0, 6 do
								if objItem["RESOURCE"][i] * iCountMinCreature > 0 then
									SetPlayerResource(iPlayer, i, arrResPlayer[i] - objItem["RESOURCE"][i] * iCountMinCreature, strHero);
								end;
							end;

							-- 重置转化CD
							TTH_HeroCustomAbility_CastCreature_GCD[strHero] = TTH_TABLE_CastCreature[strHero]["GCD"];
							print('Gcd-used:'..TTH_HeroCustomAbility_CastCreature_GCD[strHero]);

							-- 执行转化并提示成功
							TTH_COMMIN_CAST_CREATURE(strHero, iType[0], iCountMinCreature * objItem["CAST_SCALE_CREATURE"], objItem["AFTER_CREATURE_ID"], iCountMinCreature);
							MessageBoxForPlayers(GetPlayerFilter(iPlayer), {
								"/Text/Game/Scripts/HeroCustomAbility/CastCreatureSuccess.txt"
								;strCreatureBefore=TTH_TABLE_NCF_CREATURES[iType[0]]["NAME"]
								,strCreatureAfter=TTH_TABLE_NCF_CREATURES[objItem["AFTER_CREATURE_ID"]]["NAME"]
								,wood=objItem["RESOURCE"][0]*iCountMinCreature
								,ore=objItem["RESOURCE"][1]*iCountMinCreature
								,mercury=objItem["RESOURCE"][2]*iCountMinCreature
								,crystal=objItem["RESOURCE"][3]*iCountMinCreature
								,sulfur=objItem["RESOURCE"][4]*iCountMinCreature
								,gem=objItem["RESOURCE"][5]*iCountMinCreature
								,gold=objItem["RESOURCE"][6]*iCountMinCreature
								,iCountBeforeCreature=iCountCreature8CastScaleCreature
								,iCountHeroLevel=iCountCreature8CastScaleHero
								,iCountRec=iCountCreature8Resource
								,iCountMin=iCountMinCreature
							}, "" ,"");

							-- 若存在关联转化，则免费转化
							if objItem["LINK_CREATURE_ID"] ~= nil then
								for i = 0, 6 do
									for jIndex, jObjItem in objItem["LINK_CREATURE_ID"] do
										if iType[i] == jObjItem then
											TTH_COMMIN_CAST_CREATURE(strHero, iType[i], iCount[i], objItem["AFTER_CREATURE_ID"], iCount[i]);
										end;
									end;
								end;
							end;

							print(strHero.." custom ability3 has been used");
						-- 提示失败原因
						else
							if iCountCreature8Resource == 0 then
								MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/CastCreatureFailure8Resource.txt", "" ,"");
								print(strHero.." custom ability3 is failure by not enough resource");
							elseif iCountCreature8CastScaleCreature == 0 then
								MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/CastCreatureFailure8CastScaleCreature.txt", "" ,"");
								print(strHero.." custom ability3 is failure by not enough creature");
							end;
						end;
					-- 若不存在，则将转化表中的生物ID记录
					else
						arrCreatureNecessary[length(arrCreatureNecessary)] = objItem["BEFORE_CREATURE_ID"];
					end;
				end;
			end;

			-- 若兵力槽1中的生物ID不在所有满足要求的转化表中，则提示
			if iMatch == 0 then
				for i = 0, 19 do
					if arrCreatureNecessary[i] == nil then
						arrCreatureNecessary[i] = 0;
					end;
				end
				MessageBoxForPlayers(GetPlayerFilter(iPlayer), {
					"/Text/Game/Scripts/HeroCustomAbility/CastCreatureFailure8NotSuitableCreature.txt"
					;strCreature0=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[0]]["NAME"]
					,strCreature1=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[1]]["NAME"]
					,strCreature2=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[2]]["NAME"]
					,strCreature3=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[3]]["NAME"]
					,strCreature4=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[4]]["NAME"]
					,strCreature5=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[5]]["NAME"]
					,strCreature6=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[6]]["NAME"]
					,strCreature7=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[7]]["NAME"]
					,strCreature8=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[8]]["NAME"]
					,strCreature9=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[9]]["NAME"]
					,strCreature10=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[10]]["NAME"]
					,strCreature11=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[11]]["NAME"]
					,strCreature12=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[12]]["NAME"]
					,strCreature13=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[13]]["NAME"]
					,strCreature14=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[14]]["NAME"]
					,strCreature15=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[15]]["NAME"]
					,strCreature16=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[16]]["NAME"]
					,strCreature17=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[17]]["NAME"]
					,strCreature18=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[18]]["NAME"]
					,strCreature19=TTH_TABLE_NCF_CREATURES[arrCreatureNecessary[19]]["NAME"]
				}, "" ,"");
				print(strHero.." custom ability3 is failure by not suitable creature");
			end;
		end;

		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
-- end

-- by 牙姐 2018-10-17 11:14:47
-- begin 谢尔坦属性转化技能
	function TTH_HeroCustomAbility_Sheltem(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");
		local iPlayer = GetObjectOwner(strHero);
		local iSpellPower = GetHeroStat(strHero, STAT_SPELL_POWER);
		local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
		local iChangeSpellPower = H55_Floor(iSpellPower / 2);
		local iChangeKnowledge = H55_Floor(iKnowledge / 2);
		QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {
			"/Text/Game/Scripts/HeroCustomAbility/Inferno_Sheltem.txt"
			;iSpellPower=iSpellPower
			,iKnowledge=iKnowledge
			,iChangeSpellPower=iChangeSpellPower
			,iChangeKnowledge=iChangeKnowledge
		}, "TTH_HeroCustomAbility_Sheltem_Callback('"..strHero.."','0')" ,"TTH_HeroCustomAbility_Sheltem_Callback('"..strHero.."','1')");
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		print(strHero.." custom ability3 has been used");
		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
	function TTH_HeroCustomAbility_Sheltem_Callback(strHero, strStat)
		if strStat == "0" then
			local iSpellPower = GetHeroStat(strHero, STAT_SPELL_POWER);
			local iChangeSpellPower = H55_Floor(iSpellPower / 2);
			if iChangeSpellPower > 0 then
				ChangeHeroStat(strHero, STAT_SPELL_POWER, iChangeSpellPower * -1);
				ChangeHeroStat(strHero, STAT_KNOWLEDGE, iChangeSpellPower * 1);
			end;
		elseif strStat == "1" then
			local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
			local iChangeKnowledge = H55_Floor(iKnowledge / 2);
			if iChangeKnowledge > 0 then
				ChangeHeroStat(strHero, STAT_KNOWLEDGE, iChangeKnowledge * -1);
				ChangeHeroStat(strHero, STAT_SPELL_POWER, iChangeKnowledge * 1);
			end;
		end;
	end;
-- end

-- by 牙姐 2018-10-22 19:08:10
-- begin 埃兰妮额外建筑技能
	TTH_TABLE_ExtraBuild_Nathaniel = {
		["CONSUME"] = {
			[0] = 1
			, [1] = 2
			, [2] = 106
		}
		, ["BUILDING"] = {
			[0] = {
				["ID"] = TOWN_BUILDING_TOWN_HALL
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_HALL_1.txt"
				, ["ENABLE"] = 0
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 0
				}
			}
			, [1] = {
				["ID"] = TOWN_BUILDING_TAVERN
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_TAVERN.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 500
				}
			}
			, [2] = {
				["ID"] = TOWN_BUILDING_BLACKSMITH
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_BLACKSMITH.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 1000
				}
			}
			, [3] = {
				["ID"] = TOWN_BUILDING_MARKETPLACE
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MARKETPLACE_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 500
				}
			}
			, [4] = {
				["ID"] = TOWN_BUILDING_DWELLING_1
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_1_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 500
				}
			}
			, [5] = {
				["ID"] = TOWN_BUILDING_TOWN_HALL
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_HALL_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 2000
				}
			}
			, [6] = {
				["ID"] = TOWN_BUILDING_DWELLING_2
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_2_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 10
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 1200
				}
			}
			, [7] = {
				["ID"] = TOWN_BUILDING_DWELLING_3
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_3_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 10
					, [ORE] = 10
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 1500
				}
			}
			, [8] = {
				["ID"] = TOWN_BUILDING_MAGIC_GUILD
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MAGIC_GUILD_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 2000
				}
			}
			, [9] = {
				["ID"] = TOWN_BUILDING_HAVEN_FARMS
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_HAVEN_FARMS.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 1000
				}
			}
			, [10] = {
				["ID"] = TOWN_BUILDING_MARKETPLACE
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MARKETPLACE_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 5000
				}
			}
			, [11] = {
				["ID"] = TOWN_BUILDING_DWELLING_1
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_1_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 1500
				}
			}
			, [12] = {
				["ID"] = TOWN_BUILDING_FORT
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_FORT_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 5000
				}
			}
			, [13] = {
				["ID"] = TOWN_BUILDING_DWELLING_4
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_4_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 10
					, [ORE] = 10
					, [MERCURY] = 5
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 2500
				}
			}
			, [14] = {
				["ID"] = TOWN_BUILDING_HAVEN_TRAINING_GROUNDS
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_HAVEN_TRAINING_GROUNDS.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 10
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 5
					, [GEM] = 0
					, [GOLD] = 3500
				}
			}
			, [15] = {
				["ID"] = TOWN_BUILDING_DWELLING_2
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_2_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 2700
				}
			}
			, [16] = {
				["ID"] = TOWN_BUILDING_DWELLING_3
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_3_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 3000
				}
			}
			, [17] = {
				["ID"] = TOWN_BUILDING_MAGIC_GUILD
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MAGIC_GUILD_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 1
					, [CRYSTAL] = 1
					, [SULFUR] = 1
					, [GEM] = 1
					, [GOLD] = 1000
				}
			}
			, [18] = {
				["ID"] = TOWN_BUILDING_TOWN_HALL
				, ["LEVEL"] = 3
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_HALL_3.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 5000
				}
			}
			, [19] = {
				["ID"] = TOWN_BUILDING_FORT
				, ["LEVEL"] = 2
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_FORT_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 3500
				}
			}
			, [20] = {
				["ID"] = TOWN_BUILDING_HAVEN_STABLE
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_HAVEN_STABLE.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 10
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 2000
				}
			}
			, [21] = {
				["ID"] = TOWN_BUILDING_DWELLING_5
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_5_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 2
					, [CRYSTAL] = 2
					, [SULFUR] = 2
					, [GEM] = 2
					, [GOLD] = 3000
				}
			}
			, [22] = {
				["ID"] = TOWN_BUILDING_HAVEN_MONUMENT_TO_FALLEN_HEROES
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_HAVEN_MONUMENT_TO_FALLEN_HEROES.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 10
					, [ORE] = 5
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 5
					, [GEM] = 0
					, [GOLD] = 5000
				}
			}
			, [23] = {
				["ID"] = TOWN_BUILDING_DWELLING_4
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_4_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 5
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 4000
				}
			}
			, [24] = {
				["ID"] = TOWN_BUILDING_MAGIC_GUILD
				, ["LEVEL"] = 3
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MAGIC_GUILD_3.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 2
					, [CRYSTAL] = 2
					, [SULFUR] = 2
					, [GEM] = 2
					, [GOLD] = 1000
				}
			}
			, [25] = {
				["ID"] = TOWN_BUILDING_FORT
				, ["LEVEL"] = 3
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_FORT_3.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 10
					, [ORE] = 10
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 5000
				}
			}
			, [26] = {
				["ID"] = TOWN_BUILDING_DWELLING_6
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_6_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 15
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 10
					, [GOLD] = 6000
				}
			}
			, [27] = {
				["ID"] = TOWN_BUILDING_SHIPYARD
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_SHIPYARD.txt"
				, ["ENABLE"] = 0
				, ["RES"] = {
					[WOOD] = 20
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 2000
				}
			}
			, [28] = {
				["ID"] = TOWN_BUILDING_DWELLING_5
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_5_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 3
					, [CRYSTAL] = 3
					, [SULFUR] = 3
					, [GEM] = 3
					, [GOLD] = 8000
				}
			}
			, [29] = {
				["ID"] = TOWN_BUILDING_MAGIC_GUILD
				, ["LEVEL"] = 4
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MAGIC_GUILD_4.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 4
					, [CRYSTAL] = 4
					, [SULFUR] = 4
					, [GEM] = 4
					, [GOLD] = 1000
				}
			}
			, [30] = {
				["ID"] = TOWN_BUILDING_TOWN_HALL
				, ["LEVEL"] = 4
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_HALL_4.txt"
				, ["ENABLE"] = 0
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 10000
				}
			}
			, [31] = {
				["ID"] = TOWN_BUILDING_DWELLING_7
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_7_1.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 15
					, [MERCURY] = 0
					, [CRYSTAL] = 15
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 10000
				}
			}
			, [32] = {
				["ID"] = TOWN_BUILDING_DWELLING_6
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_6_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 15
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 10
					, [GOLD] = 9000
				}
			}
			, [33] = {
				["ID"] = TOWN_BUILDING_MAGIC_GUILD
				, ["LEVEL"] = 5
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_MAGIC_GUILD_5.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 5
					, [ORE] = 5
					, [MERCURY] = 6
					, [CRYSTAL] = 6
					, [SULFUR] = 6
					, [GEM] = 6
					, [GOLD] = 1000
				}
			}
			, [34] = {
				["ID"] = TOWN_BUILDING_DWELLING_7
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_DWELLING_7_2.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 15
					, [MERCURY] = 0
					, [CRYSTAL] = 20
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 12000
				}
			}
			, [35] = {
				["ID"] = TOWN_BUILDING_GRAIL
				, ["LEVEL"] = 1
				, ["NAME"] = "/Text/Game/Buildings/Heaven/TOWN_BUILDING_GRAIL.txt"
				, ["ENABLE"] = 1
				, ["RES"] = {
					[WOOD] = 0
					, [ORE] = 0
					, [MERCURY] = 0
					, [CRYSTAL] = 0
					, [SULFUR] = 0
					, [GEM] = 0
					, [GOLD] = 100000
				}
			}
		}
	};
	function TTH_HeroCustomAbility_Nathaniel(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");
		local iPlayer = GetObjectOwner(strHero);

		-- 是否圣堂城城门口
		local objTown = nil;
		local arrTownHeaven = GetObjectNamesByType("TOWN_HEAVEN");
		for iIndex, itemTown in arrTownHeaven do
			if (IsHeroInTown(strHero, itemTown, 1, 0) == not nil) then
				objTown = itemTown;
				break;
			end;
		end;
		if objTown == nil then
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Nathaniel/FailureNotAtGate.txt", "" ,"");
		else
			-- 第一格兵是否对应兵种
			local iType, iCount = H55_ArmyInfo(strHero);
			local iMatch = 0;
			local iCreatureId = 0;
			local iCountCreature = 0;
			for iIndex, objItem in TTH_TABLE_ExtraBuild_Nathaniel["CONSUME"] do
				if iType[0] == objItem then
					iMatch = 1;
					iCreatureId = objItem;
					iCountCreature = iCount[0];
				end;
			end;
			if iMatch == 0 then
				local i = 0;
				local arrCreatureBefore = {};
				for iIndex, objItem in TTH_TABLE_ExtraBuild_Nathaniel["CONSUME"] do
					arrCreatureBefore[i] = objItem;
					i = i + 1;
				end;
				for i = 0, 2 do
					if arrCreatureBefore[i] == nil then
						arrCreatureBefore[i] = 0;
					end;
				end
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {
					"/Text/Game/Scripts/HeroCustomAbility/Nathaniel/FailureNotMatchCreature.txt"
					;strCreature0=TTH_TABLE_NCF_CREATURES[arrCreatureBefore[0]]["NAME"]
					,strCreature1=TTH_TABLE_NCF_CREATURES[arrCreatureBefore[1]]["NAME"]
					,strCreature2=TTH_TABLE_NCF_CREATURES[arrCreatureBefore[2]]["NAME"]
				}, "" ,"");
			else
				for jIndex = 0, 35 do
					local objBuildInfo = TTH_TABLE_ExtraBuild_Nathaniel["BUILDING"][jIndex];
					if objBuildInfo["ENABLE"] == 1 then
						if GetTownBuildingLevel(objTown, objBuildInfo["ID"]) < objBuildInfo["LEVEL"] then
							local objRes = objBuildInfo["RES"];
							iCountCreatureNeedful = (objRes[WOOD] + objRes[ORE])
								+ (objRes[MERCURY] + objRes[CRYSTAL] + objRes[SULFUR] + objRes[GEM]) * 2
								+ H55_Round(objRes[GOLD] / 100);
							-- 生物是否不够支出
							local strBuildName = objBuildInfo["NAME"];
							if iCountCreatureNeedful > iCountCreature then
								QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {
									"/Text/Game/Scripts/HeroCustomAbility/Nathaniel/FailureNotEnoughCreature.txt"
									;iCountCreatureNeedful=iCountCreatureNeedful
									,iCountCreature=iCountCreature
									,strBuildName=strBuildName
								}, "" ,"");
								return nil;
							else
								local strBuildName = objBuildInfo["NAME"];
								QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {
									"/Text/Game/Scripts/HeroCustomAbility/Nathaniel/Success.txt"
									;iCountCreatureNeedful=iCountCreatureNeedful
									,iCountCreature=iCountCreature
									,strBuildName=strBuildName
								}, "TTH_HeroCustomAbility_Nathaniel_Callback('"..strHero.."','"..objTown.."','"..objBuildInfo["ID"].."','"..iCreatureId.."','"..iCountCreatureNeedful.."')" , "");
								return nil;
							end;
						end;
					end;
				end;
			end;
		end;
		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
	function TTH_HeroCustomAbility_Nathaniel_Callback(strHero, objTown, iBuildId, iCreatureId, iCountCreatureNeedful)
		RemoveHeroCreatures(strHero, iCreatureId * 1, iCountCreatureNeedful * 1);
		print(iCountCreatureNeedful.." "..iCreatureId.." has been removed from "..strHero);
		UpgradeTownBuilding(objTown, iBuildId * 1, 1);
		print(iBuildId.." has been builded at "..objTown);
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		print(strHero.." custom ability3 has been used");
	end;
-- end

-- by 牙姐 2019-05-18 13:03:56
-- begin 马希尔拉友方英雄技能
	TTH_Maahir_Switch = 0;
	function TTH_HeroCustomAbility_Maahir(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");

		--基础参数
			local iPlayer = GetObjectOwner(strHero);
			local iHeroLevel = GetHeroLevel(strHero);
			local arrCouldBePulledHero = {};
		--魔法值小于20，弹出提示
			if GetHeroStat(strHero, STAT_MANA_POINTS) < 20 then
				MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Maahir/NoMana.txt", "" ,"");
				return nil;
			end;
		--在城门无法拉人，弹出提示
			local arrGate = GetObjectNamesByType("TOWN");
			local strTown = nil;
			local iTownRace = 0;
			for i, strGate in arrGate do
				if (GetObjectOwner(strGate) == iPlayer) and (IsHeroInTown(strHero, strGate, 1, 0) == not nil) then
					MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Maahir/AtGate.txt", "" ,"");
					return nil;
				end;
			end;
		-- --没有等级符合的，弹出提示
		-- 	local arrTempHero = GetPlayerHeroes(iPlayer);
		-- 	if arrTempHero ~= nil then
		-- 		for j, strTempHero in arrTempHero do
		-- 			if strTempHero ~= strHero then
		-- 				local iTempHeroLevel = GetHeroLevel(strTempHero);
		-- 				if iTempHeroLevel <= iHeroLevel * 3 then
		-- 					H55_Insert(arrCouldBePulledHero, strTempHero);
		-- 				end;
		-- 			end;
		-- 		end;
		-- 	end;
		-- 	if length(arrCouldBePulledHero) == 0 then
		-- 		MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Maahir/NoSuitHero.txt", "" ,"");
		-- 		return nil;
		-- 	end;
		--确认拉人，消耗20点魔法值，所有移动力，被拉英雄瞬移，主动技能今天使用
			local arrCouldBePulledHero = GetPlayerHeroes(iPlayer);
			TTH_Maahir_Switch = 0;
			for i, strCouldBePulledHero in arrCouldBePulledHero do
				if strCouldBePulledHero ~= strHero and TTH_Maahir_Switch == 0 then
					local iPosX, iPosY, iPosZ = GetObjectPosition(strCouldBePulledHero);
					MoveCamera(iPosX, iPosY, iPosZ, 50, H55_Pi / 2, 1, 1, 1, 1);
					sleep(4);
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
					, {"/Text/Game/Scripts/HeroCustomAbility/Maahir/Choose.txt";strHero=TTH_TABLE_HeroName[strCouldBePulledHero]}
					, "TTH_HeroCustomAbility_Maahir_Callback('"..strHero.."','"..strCouldBePulledHero.."')"
					, "H55_EndSpinlock");
					H55_Spinlock();
				end;
			end;
		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
	function TTH_HeroCustomAbility_Maahir_Callback(strHero, strCouldBePulledHero)
		TTH_Maahir_Switch = 1;
		local iPlayer = GetObjectOwner(strHero);
		local iMovePoints = GetHeroStat(strHero, STAT_MOVE_POINTS);
		ChangeHeroStat(strHero, STAT_MOVE_POINTS, iMovePoints * -1);
		local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
		ChangeHeroStat(strHero, STAT_MANA_POINTS, -20);
		print("TTH Performing Pull..");
		Play2DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndTPStart);
		SetObjectPosition(strCouldBePulledHero, iPosX, iPosY, iPosZ);
		H55_EndSpinlock();
		sleep(8);
		Play2DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndTPEnd);
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		print(strHero.." custom ability3 has been used");
	end;
-- end

-- by 牙姐 2018-10-22 19:08:10
-- begin 奥森指定复活城镇技能
	function TTH_HeroCustomAbility_Straker(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");
		local iPlayer = GetObjectOwner(strHero);

		-- 是否墓园城城门口
		local objTown = nil;
		local arrTownNec = GetObjectNamesByType("TOWN_NECROMANCY");
		for iIndex, itemTown in arrTownNec do
			if (IsHeroInTown(strHero, itemTown, 1, 0) == not nil) then
				objTown = itemTown;
				break;
			end;
		end;
		if objTown == nil then
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Straker/FailureNotAtGate.txt", "" ,"");
		else
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer),	"/Text/Game/Scripts/HeroCustomAbility/Straker/Success.txt", "TTH_HeroCustomAbility_Straker_Callback('"..strHero.."','"..objTown.."')" , "");
			return nil;
		end;
		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
	function TTH_HeroCustomAbility_Straker_Callback(strHero, objTown)
		H55_Town_Zombie_Straker = objTown
		print(objTown.." has been appointed");
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		print(strHero.." custom ability3 has been used");
	end;
-- end

-- by 牙姐 2018-10-22 19:08:10
-- begin 娜瑞莎转换光暗属性
	function TTH_HeroCustomAbility_Ildar(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");
		print(H55SMOD_HeroAbility['Ildar']);
		local iPlayer = GetObjectOwner(strHero);
		QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
		, {"/Text/Game/Scripts/HeroCustomAbility/Ildar/ChooseLightOrDark.txt";strHeroAbilityStatus=TTH_TABLE_IldarAbilityStatus[H55SMOD_HeroAbility['Ildar']]}
		, "TTH_HeroCustomAbility_Ildar_Callback()"
		, "H55_EndSpinlock");
		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
	function TTH_HeroCustomAbility_Ildar_Callback(strHero)
		if H55SMOD_HeroAbility['Ildar'] == 'light' then
			SetGameVar('H55SMOD_Var_Ability_Ildar', 'dark');
			H55SMOD_HeroAbility['Ildar'] = 'dark';
		else
			SetGameVar('H55SMOD_Var_Ability_Ildar', 'light');
			H55SMOD_HeroAbility['Ildar'] = 'light';
		end;
		print(strHero.."'s ability status has been changed");
	end;
-- end

-- by 牙姐 2020-04-17 12:35:02
-- begin 肯洛-哈格焚毁城镇技能
	function TTH_HeroCustomAbility_Crag(strHero)
		print("---------------------------------------------------------------------");
		print("TTH "..strHero.." Event begin");
		local iPlayer = GetObjectOwner(strHero);
		-- 是否城镇门口
		local objTown = nil;
		local arrTown = GetObjectNamesByType("TOWN");
		for iIndex, itemTown in arrTown do
			if (IsHeroInTown(strHero, itemTown, 1, 0) == not nil) then
				objTown = itemTown;
				break;
			end;
		end;
		if objTown == nil then
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Crag/FailureNotAtGate.txt", "" ,"");
		else
			if TTH_IsTownBuildHall4(objTown) == 1 then
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Crag/FailureTownHasBuildHall4.txt", "" ,"");
			elseif TTH_IsTownBuildGrail(objTown) == 1 then
				QuestionBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Crag/FailureTownHasBuildGrail.txt", "" ,"");
			else
				local iTownLevel = TTH_GetTownLevel(objTown);
				local iHeroLevel = GetHeroLevel(strHero);
				local iDestroyLevel = H55_Ceil(iHeroLevel / 5);
				local iBasicNum = iHeroLevel / 12;
				local iNormalRes = H55_Floor(iBasicNum * 4);
				local iSpecialRes = H55_Floor(iBasicNum * 2);
				local iGoldRes = H55_Floor(iBasicNum * 2000);
				local iAttackStat = H55_Ceil(iBasicNum);
				if iTownLevel > iDestroyLevel then
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
						, {"/Text/Game/Scripts/HeroCustomAbility/Crag/QtyDestroyTown.txt";iTownLevel=iTownLevel,iHeroLevel=iHeroLevel,iDestroyLevel=iDestroyLevel,iNormalRes=iNormalRes,iSpecialRes=iSpecialRes,iGoldRes=iGoldRes}
						, "TTH_HeroCustomAbility_Crag_DestroyTown_Callback('"..strHero.."','"..objTown.."','"..iDestroyLevel.."')"
						, "H55_EndSpinlock");
				else
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
						, {"/Text/Game/Scripts/HeroCustomAbility/Crag/QtyRazeTown.txt";iTownLevel=iTownLevel,iNormalRes=iNormalRes,iSpecialRes=iSpecialRes,iGoldRes=iGoldRes,iAttackStat=iAttackStat}
						, "TTH_HeroCustomAbility_Crag_RazeTown_Callback('"..strHero.."','"..objTown.."')"
						, "H55_EndSpinlock");
				end;
			end;
		end;
		print("TTH "..strHero.." Event end");
		print("---------------------------------------------------------------------");
	end;
	function TTH_HeroCustomAbility_Crag_DestroyTown_Callback(strHero, objTown, iDestroyLevel)
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		local iPlayer = GetObjectOwner(strHero);
		local iHeroLevel = GetHeroLevel(strHero);
		local iBasicNum = iHeroLevel / 12;
		local iNormalRes = H55_Floor(iBasicNum * 4);
		local iSpecialRes = H55_Floor(iBasicNum * 2);
		local iGoldRes = H55_Floor(iBasicNum * 2000);
		-- 拆毁城镇建筑-按等级
		TTH_DestroyTownBuilding(objTown, iDestroyLevel);
		ShowFlyingSign("/Text/Game/Scripts/HeroCustomAbility/Crag/DestroyTown.txt", strHero, iPlayer, 5);
		print(objTown..'`s building has been destroied');
		-- 获取资源
		H55_TakeResourcesSilent(iPlayer, 0, -1 * iNormalRes);
		H55_TakeResourcesSilent(iPlayer, 1, -1 * iNormalRes);
		H55_TakeResourcesSilent(iPlayer, 2, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 3, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 4, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 5, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 6, -1 * iGoldRes);
	end;
	function TTH_HeroCustomAbility_Crag_RazeTown_Callback(strHero, objTown)
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		local iPlayer = GetObjectOwner(strHero);
		local iHeroLevel = GetHeroLevel(strHero);
		local iBasicNum = iHeroLevel / 12;
		local iNormalRes = H55_Floor(iBasicNum * 4);
		local iSpecialRes = H55_Floor(iBasicNum * 2);
		local iGoldRes = H55_Floor(iBasicNum * 2000);
		local iAttackStat = H55_Ceil(iBasicNum);
		-- 摧毁城镇
		RazeTown(objTown);
		ShowFlyingSign("/Text/Game/Scripts/HeroCustomAbility/Crag/RazeTown.txt", strHero, iPlayer, 5);
		print(objTown..' has been razed');
		-- 获取资源
		H55_TakeResourcesSilent(iPlayer, 0, -1 * iNormalRes);
		H55_TakeResourcesSilent(iPlayer, 1, -1 * iNormalRes);
		H55_TakeResourcesSilent(iPlayer, 2, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 3, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 4, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 5, -1 * iSpecialRes);
		H55_TakeResourcesSilent(iPlayer, 6, -1 * iGoldRes);
		-- 英雄提升攻击
		ChangeHeroStat(strHero, STAT_ATTACK, iAttackStat);
		ShowFlyingSign("/Text/Game/Scripts/Attack.txt", strHero, iPlayer, 5);
		print(strHero..'`s attack has been increased');
		-- 英雄提升等级
		LevelUpHero(strHero);
		print(strHero..'level up');
	end;
-- end

-- by 牙姐 2018-10-17 11:14:47
-- begin 赛勒斯机械转化技能
	TTH_TABLE_Cyrus_CastMechanicalCreature = {
		[1] = {
			["ID"] = CREATURE_FIRE_MECHANICAL
			, ["RESOURCE"] = {
				[WOOD] = 2
				, [ORE] = 0
				, [MERCURY] = 0
				, [CRYSTAL] = 0
				, [SULFUR] = 1
				, [GEM] = 0
				, [GOLD] = 0
			}
		}
		, [2] = {
			["ID"] = CREATURE_WATER_MECHANICAL
			, ["RESOURCE"] = {
				[WOOD] = 1
				, [ORE] = 1
				, [MERCURY] = 1
				, [CRYSTAL] = 0
				, [SULFUR] = 0
				, [GEM] = 0
				, [GOLD] = 0
			}
		}
		, [3] = {
			["ID"] = CREATURE_EARTH_MECHANICAL
			, ["RESOURCE"] = {
				[WOOD] = 0
				, [ORE] = 2
				, [MERCURY] = 0
				, [CRYSTAL] = 0
				, [SULFUR] = 0
				, [GEM] = 1
				, [GOLD] = 0
			}
		}
		, [4] = {
			["ID"] = CREATURE_AIR_MECHANICAL
			, ["RESOURCE"] = {
				[WOOD] = 1
				, [ORE] = 1
				, [MERCURY] = 0
				, [CRYSTAL] = 1
				, [SULFUR] = 0
				, [GEM] = 0
				, [GOLD] = 0
			}
		}
		, [5] = {
			["ID"] = CREATURE_PHOENIX_MECHANICAL
			, ["RESOURCE"] = {
				[WOOD] = 0
				, [ORE] = 0
				, [MERCURY] = 2
				, [CRYSTAL] = 2
				, [SULFUR] = 2
				, [GEM] = 2
				, [GOLD] = 0
			}
		}
	}
	function TTH_HeroCustomAbility_Cyrus(strHero)
		TTH_HeroCustomAbility_Cyrus_ChooseElement(strHero, 1);
	end;
	function TTH_HeroCustomAbility_Cyrus_ChooseElement(strHero, iElement)
		local iPlayer = GetObjectOwner(strHero);
		if iElement + 0 <= 3 then
			local iElementNext = iElement + 1;
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
				, "/Text/Game/Scripts/HeroCustomAbility/Cyrus/ChooseElement"..iElement..".txt"
				, "TTH_HeroCustomAbility_Cyrus_CastElement('"..strHero.."','"..iElement.."')"
				, "TTH_HeroCustomAbility_Cyrus_ChooseElement('"..strHero.."','"..iElementNext.."')");
		else
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
				, "/Text/Game/Scripts/HeroCustomAbility/Cyrus/ChooseElement"..iElement..".txt"
				, "TTH_HeroCustomAbility_Cyrus_CastElement('"..strHero.."','"..iElement.."')"
				, "TTH_HeroCustomAbility_Cyrus_ChoosePhoenix('"..strHero.."')");
		end;
	end;
	function TTH_HeroCustomAbility_Cyrus_ChoosePhoenix(strHero)
		local iPlayer = GetObjectOwner(strHero);
		QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
			, "/Text/Game/Scripts/HeroCustomAbility/Cyrus/ChoosePhoenix.txt"
			, "TTH_HeroCustomAbility_Cyrus_CastPhoenix('"..strHero.."')" ,"TTH_HeroCustomAbility_Cyrus_CastGiveup('"..strHero.."')");
	end;
	function TTH_HeroCustomAbility_Cyrus_CastElement(strHero, iElement)
		local iPlayer = GetObjectOwner(strHero);
		local iHeroLevel = GetHeroLevel(strHero);
		iElement = iElement + 0;
		-- 获取玩家资源
		local arrResPlayer = {};
		arrResPlayer[WOOD] = GetPlayerResource(iPlayer, WOOD);
		arrResPlayer[ORE] = GetPlayerResource(iPlayer, ORE);
		arrResPlayer[MERCURY] = GetPlayerResource(iPlayer, MERCURY);
		arrResPlayer[CRYSTAL] = GetPlayerResource(iPlayer, CRYSTAL);
		arrResPlayer[SULFUR] = GetPlayerResource(iPlayer, SULFUR);
		arrResPlayer[GEM] = GetPlayerResource(iPlayer, GEM);
		arrResPlayer[GOLD] = GetPlayerResource(iPlayer, GOLD);

		local objItem = TTH_TABLE_Cyrus_CastMechanicalCreature[iElement];
		-- 根据 玩家资源及转化单个生物消耗 计算 可转化生物数量
		local arrRes = {};
		for i = 0, 6 do
			if objItem["RESOURCE"][i] == 0 then
				arrRes[i] = TTH_NUM_MAX;
			else
				arrRes[i] = H55_Floor(arrResPlayer[i] / objItem["RESOURCE"][i]);
			end;
		end;
		local iCountCreature8Resource = TTH_COMMON_MIN(arrRes);
		if iCountCreature8Resource == 0 then
			MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/CastCreatureFailure8Resource.txt", "" ,"");
			return nil;
		end;
		-- 根据 英雄等级 计算 可转化生物数量（至少为1）
		local iCountCreature8CastScaleHero = H55_Ceil(iHeroLevel / 4);
		if iCountCreature8CastScaleHero < 1 then
			iCountCreature8CastScaleHero = 1;
		end;
		-- 取2个转化生物数量的最小值，若>0，则询问是否进行转化
		local iCountMinCreature = TTH_COMMON_MIN({iCountCreature8CastScaleHero, iCountCreature8Resource});
		if iCountMinCreature > 0 then
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {
				"/Text/Game/Scripts/HeroCustomAbility/Cyrus/CastElement.txt"
				;strCreatureAfter=TTH_TABLE_NCF_CREATURES[objItem["ID"]]["NAME"]
				,wood=objItem["RESOURCE"][WOOD]*iCountMinCreature
				,ore=objItem["RESOURCE"][ORE]*iCountMinCreature
				,mercury=objItem["RESOURCE"][MERCURY]*iCountMinCreature
				,crystal=objItem["RESOURCE"][CRYSTAL]*iCountMinCreature
				,sulfur=objItem["RESOURCE"][SULFUR]*iCountMinCreature
				,gem=objItem["RESOURCE"][GEM]*iCountMinCreature
				,gold=objItem["RESOURCE"][GOLD]*iCountMinCreature
				,iCountHeroLevel=iCountCreature8CastScaleHero
				,iCountResource=iCountCreature8Resource
				,iCountMin=iCountMinCreature
			}
			, "TTH_HeroCustomAbility_Cyrus_CastSuccess('"..strHero.."','"..iElement.."','"..iCountMinCreature.."')"
			, "TTH_HeroCustomAbility_Cyrus_CastGiveup('"..strHero.."')");
		end;
	end;
	function TTH_HeroCustomAbility_Cyrus_CastPhoenix(strHero)
		local iPlayer = GetObjectOwner(strHero);
		local iType, iCount = H55_ArmyInfo(strHero);
		local iHeroLevel = GetHeroLevel(strHero);
		local iElement = 5;
		-- 获取玩家资源
		local arrResPlayer = {};
		arrResPlayer[WOOD] = GetPlayerResource(iPlayer, WOOD);
		arrResPlayer[ORE] = GetPlayerResource(iPlayer, ORE);
		arrResPlayer[MERCURY] = GetPlayerResource(iPlayer, MERCURY);
		arrResPlayer[CRYSTAL] = GetPlayerResource(iPlayer, CRYSTAL);
		arrResPlayer[SULFUR] = GetPlayerResource(iPlayer, SULFUR);
		arrResPlayer[GEM] = GetPlayerResource(iPlayer, GEM);
		arrResPlayer[GOLD] = GetPlayerResource(iPlayer, GOLD);

		local objItem = TTH_TABLE_Cyrus_CastMechanicalCreature[iElement];
		-- 根据 转化前后生物比例 计算 可转化生物数量
		local arrCreature = {};
		arrCreature[1] = 0;
		arrCreature[2] = 0;
		arrCreature[3] = 0;
		arrCreature[4] = 0;
		for i = 0, 6 do
			for j = 1, 4 do
				if TTH_TABLE_Cyrus_CastMechanicalCreature[j]["ID"] == iType[i] then
					arrCreature[j] = iCount[i];
				end;
			end;
		end;
		local iCountCreature8CastScaleCreature = TTH_COMMON_MIN(arrCreature);
		if iCountCreature8CastScaleCreature == nil or iCountCreature8CastScaleCreature == 0 then
			MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/CastCreatureFailure8CastScaleCreature.txt", "" ,"");
			return nil;
		end;

		-- 根据 玩家资源及转化单个生物消耗 计算 可转化生物数量
		local arrRes = {};
		for i = 0, 6 do
			if objItem["RESOURCE"][i] == 0 then
				arrRes[i] = TTH_NUM_MAX;
			else
				arrRes[i] = H55_Floor(arrResPlayer[i] / objItem["RESOURCE"][i]);
			end;
		end;
		local iCountCreature8Resource = TTH_COMMON_MIN(arrRes);
		if iCountCreature8Resource == 0 then
			MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/CastCreatureFailure8Resource.txt", "" ,"");
			return nil;
		end;
		-- 根据 英雄等级 计算 可转化生物数量（至少为1）
		local iCountCreature8CastScaleHero = H55_Ceil(iHeroLevel / 7);
		if iCountCreature8CastScaleHero < 1 then
			iCountCreature8CastScaleHero = 1;
		end;
		-- 取3个转化生物数量的最小值，若>0，则询问是否进行转化
		local iCountMinCreature = TTH_COMMON_MIN({iCountCreature8CastScaleCreature, iCountCreature8CastScaleHero, iCountCreature8Resource});
		if iCountMinCreature > 0 then
			QuestionBoxForPlayers(GetPlayerFilter(iPlayer), {
				"/Text/Game/Scripts/HeroCustomAbility/Cyrus/CastPhoenix.txt"
				;strCreatureAfter=TTH_TABLE_NCF_CREATURES[objItem["ID"]]["NAME"]
				,wood=objItem["RESOURCE"][WOOD]*iCountMinCreature
				,ore=objItem["RESOURCE"][ORE]*iCountMinCreature
				,mercury=objItem["RESOURCE"][MERCURY]*iCountMinCreature
				,crystal=objItem["RESOURCE"][CRYSTAL]*iCountMinCreature
				,sulfur=objItem["RESOURCE"][SULFUR]*iCountMinCreature
				,gem=objItem["RESOURCE"][GEM]*iCountMinCreature
				,gold=objItem["RESOURCE"][GOLD]*iCountMinCreature
				,iCountBeforeCreature=iCountCreature8CastScaleCreature
				,iCountResource=iCountCreature8Resource
				,iCountHeroLevel=iCountCreature8CastScaleHero
				,iCountMin=iCountMinCreature
			}
			, "TTH_HeroCustomAbility_Cyrus_CastSuccess('"..strHero.."','"..iElement.."','"..iCountMinCreature.."')"
			, "TTH_HeroCustomAbility_Cyrus_CastGiveup('"..strHero.."')");
		end;
	end;
	function TTH_HeroCustomAbility_Cyrus_CastSuccess(strHero, iElement, iCastCount)
		local iPlayer = GetObjectOwner(strHero);
		local iHeroLevel = GetHeroLevel(strHero);
		iElement = iElement + 0;
		local objItem = TTH_TABLE_Cyrus_CastMechanicalCreature[iElement];
		-- 获取玩家资源
		local arrResPlayer = {};
		arrResPlayer[WOOD] = GetPlayerResource(iPlayer, WOOD);
		arrResPlayer[ORE] = GetPlayerResource(iPlayer, ORE);
		arrResPlayer[MERCURY] = GetPlayerResource(iPlayer, MERCURY);
		arrResPlayer[CRYSTAL] = GetPlayerResource(iPlayer, CRYSTAL);
		arrResPlayer[SULFUR] = GetPlayerResource(iPlayer, SULFUR);
		arrResPlayer[GEM] = GetPlayerResource(iPlayer, GEM);
		arrResPlayer[GOLD] = GetPlayerResource(iPlayer, GOLD);

		local iCountMinCreature = iCastCount + 0;

		-- 扣除资源
		for i = 0, 6 do
			if objItem["RESOURCE"][i] * iCountMinCreature > 0 then
				SetPlayerResource(iPlayer, i, arrResPlayer[i] - objItem["RESOURCE"][i] * iCountMinCreature, strHero);
			end;
		end;

		if iElement > 4 then
			RemoveHeroCreatures(strHero, TTH_TABLE_Cyrus_CastMechanicalCreature[1]["ID"], iCountMinCreature);
			RemoveHeroCreatures(strHero, TTH_TABLE_Cyrus_CastMechanicalCreature[2]["ID"], iCountMinCreature);
			RemoveHeroCreatures(strHero, TTH_TABLE_Cyrus_CastMechanicalCreature[3]["ID"], iCountMinCreature);
			RemoveHeroCreatures(strHero, TTH_TABLE_Cyrus_CastMechanicalCreature[4]["ID"], iCountMinCreature);
		end;
		-- 给予生物
		AddHeroCreatures(strHero, objItem["ID"], iCountMinCreature);

		local strCastCreatureAfter = TTH_TABLE_NCF_CREATURES[objItem["ID"]]["NAME"];
		-- 英雄主动技能标记为已使用
		ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
		MessageBoxForPlayers(GetPlayerFilter(iPlayer), {
			"/Text/Game/Scripts/HeroCustomAbility/Cyrus/CastSuccess.txt"
			;iCastCount=iCountMinCreature
			,strCastCreatureAfter=strCastCreatureAfter
		}, "", "");
	end;
	function TTH_HeroCustomAbility_Cyrus_CastGiveup(strHero)
		local iPlayer = GetObjectOwner(strHero);
		MessageBoxForPlayers(GetPlayerFilter(iPlayer), "/Text/Game/Scripts/HeroCustomAbility/Cyrus/CastGiveup.txt", "", "");
	end;
-- end

-- by 牙姐 2020-04-17 12:55:21
-- begin 获取当前城镇信息
	-- 获取当前城镇是否建造国会
	function TTH_IsTownBuildHall4(objTown)
		local iTownHall = GetTownBuildingLevel(objTown, TOWN_BUILDING_TOWN_HALL);
		if iTownHall == 4 then
			return 1;
		else
			return nil;
		end;
	end;
	-- 获取当前城镇是否建造奇迹
	function TTH_IsTownBuildGrail(objTown)
		local iGrail = GetTownBuildingLevel(objTown, TOWN_BUILDING_GRAIL);
		if iGrail == 1 then
			return 1;
		else
			return nil;
		end;
	end;
	-- 拆毁城镇建筑-按等级
	listTownBuildingHeaven = {TOWN_BUILDING_SPECIAL_5, TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_1};
	listTownBuildingPreserve = {TOWN_BUILDING_SPECIAL_5, TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_0};
	listTownBuildingInferno = {TOWN_BUILDING_SPECIAL_5, TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_1};
	listTownBuildingNecromancy = {TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_3, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_1};
	listTownBuildingAcademy = {TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_3, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_1};
	listTownBuildingDungeon = {TOWN_BUILDING_SPECIAL_6, TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_3, TOWN_BUILDING_SPECIAL_1};
	listTownBuildingFortress = {TOWN_BUILDING_SPECIAL_5, TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_3, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_1};
	listTownBuildingStronghold = {TOWN_BUILDING_SPECIAL_5, TOWN_BUILDING_SPECIAL_4, TOWN_BUILDING_SPECIAL_3, TOWN_BUILDING_SPECIAL_2, TOWN_BUILDING_SPECIAL_1};
	listTownBuilding = {TOWN_BUILDING_DWELLING_7, TOWN_BUILDING_DWELLING_6, TOWN_BUILDING_DWELLING_5, TOWN_BUILDING_DWELLING_4, TOWN_BUILDING_DWELLING_3, TOWN_BUILDING_DWELLING_2, TOWN_BUILDING_DWELLING_1, TOWN_BUILDING_MAGIC_GUILD, TOWN_BUILDING_TOWN_HALL, TOWN_BUILDING_FORT, TOWN_BUILDING_GRAIL, TOWN_BUILDING_SHIPYARD, TOWN_BUILDING_BLACKSMITH, TOWN_BUILDING_MARKETPLACE, TOWN_BUILDING_TAVERN};
	function TTH_DestroyTownBuilding(objTown, strDestroyLevel)
		local iTownRace = H55_GetTownRace(objTown);
		local listTownBuildingRace = {};
		if iTownRace == 1 then
			listTownBuildingRace = listTownBuildingHeaven;
		elseif iTownRace == 2 then
			listTownBuildingRace = listTownBuildingPreserve;
		elseif iTownRace == 3 then
			listTownBuildingRace = listTownBuildingInferno;
		elseif iTownRace == 4 then
			listTownBuildingRace = listTownBuildingNecromancy;
		elseif iTownRace == 5 then
			listTownBuildingRace = listTownBuildingAcademy;
		elseif iTownRace == 6 then
			listTownBuildingRace = listTownBuildingDungeon;
		elseif iTownRace == 7 then
			listTownBuildingRace = listTownBuildingFortress;
		elseif iTownRace == 8 then
			listTownBuildingRace = listTownBuildingStronghold;
		end;
		local iDestroyLevel = strDestroyLevel * 1;
		if iDestroyLevel > 0 then
			for i, objTownBuildingRace in listTownBuildingRace do
				local iLevel = GetTownBuildingLevel(objTown, objTownBuildingRace);
				if iLevel > 0 then
					if iDestroyLevel > iLevel then
						DestroyTownBuildingToLevel(objTown, objTownBuildingRace, 0, 1);
						iDestroyLevel = iDestroyLevel - iLevel;
					else
						DestroyTownBuildingToLevel(objTown, objTownBuildingRace, iLevel - iDestroyLevel, 1);
						iDestroyLevel = 0;
					end;
				end;
				if iDestroyLevel == 0 then
					break;
				end;
			end;
		end;
		if iDestroyLevel > 0 then
			for i, objTownBuilding in listTownBuilding do
				local iLevel = GetTownBuildingLevel(objTown, objTownBuilding);
				if iLevel > 0 then
					if iDestroyLevel > iLevel then
						DestroyTownBuildingToLevel(objTown, objTownBuilding, 0, 1);
						iDestroyLevel = iDestroyLevel - iLevel;
					else
						DestroyTownBuildingToLevel(objTown, objTownBuilding, iLevel - iDestroyLevel, 1);
						iDestroyLevel = 0;
					end;
				end;
				if iDestroyLevel == 0 then
					break;
				end;
			end;
		end;
	end;
	-- 获取当前城镇总等级
	function TTH_GetTownLevel(objTown)
		local iTownRace = H55_GetTownRace(objTown);
		local iTavern = GetTownBuildingLevel(objTown, TOWN_BUILDING_TAVERN);
		local iMarketplace = GetTownBuildingLevel(objTown, TOWN_BUILDING_MARKETPLACE);
		local iBlacksmith = GetTownBuildingLevel(objTown, TOWN_BUILDING_BLACKSMITH);
		local iFort = GetTownBuildingLevel(objTown, TOWN_BUILDING_FORT);
		local iTownHall = GetTownBuildingLevel(objTown, TOWN_BUILDING_TOWN_HALL);
		local iDwelling1 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_1);
		local iDwelling2 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_2);
		local iDwelling3 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_3);
		local iDwelling4 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_4);
		local iDwelling5 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_5);
		local iDwelling6 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_6);
		local iDwelling7 = GetTownBuildingLevel(objTown, TOWN_BUILDING_DWELLING_7);
		local iShipyard = GetTownBuildingLevel(objTown, TOWN_BUILDING_SHIPYARD);
		local iGuild = GetTownBuildingLevel(objTown, TOWN_BUILDING_MAGIC_GUILD);
		local iGrail = GetTownBuildingLevel(objTown, TOWN_BUILDING_GRAIL);
		local iSpecial1 = 0;
		local iSpecial2 = 0;
		local iSpecial3 = 0;
		local iSpecial4 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_4);
		local iSpecial5 = 0;
		if iTownRace ~= 1 and iTownRace ~= 2 and iTownRace ~= 3 then
			iSpecial3 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_3);
		end;
		if iTownRace == 2 then
			iSpecial1 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_0);
		else
			iSpecial1 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_1);
		end;
		if iTownRace == 6 then
			iSpecial2 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_6);
		else
			iSpecial2 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_2);
		end;
		if iTownRace ~= 4 and iTownRace ~= 5 and iTownRace ~= 6 then
			iSpecial5 = GetTownBuildingLevel(objTown, TOWN_BUILDING_SPECIAL_5);
		else
			iSpecial5 = 0;
		end;

		local iTownLevel = iTavern + iMarketplace + iBlacksmith + iFort + iTownHall + iShipyard + iGuild + iGrail
			+ iDwelling1 + iDwelling2 + iDwelling3 + iDwelling4 + iDwelling5 + iDwelling6 + iDwelling7
			+ iSpecial1 + iSpecial2 + iSpecial3 + iSpecial4 + iSpecial5;
		return iTownLevel;
	end;
-- end

-- by 牙姐 2019-02-23 23:30:53
-- begin 解决AI占领玩家城镇购买宝物BUG
	function TTH_SolveAIBuyArtifact()
		local ListTownAcademy = GetObjectNamesByType("TOWN_ACADEMY");
		local ListTownDungeon = GetObjectNamesByType("TOWN_DUNGEON");
		if length(ListTownAcademy) ~= 0 then
			for i, town in ListTownAcademy do
				DestroyTownBuildingToLevel(town, 19, 0, 0);
			end;
		end;
		if length(ListTownDungeon) ~= 0 then
			for i, town in ListTownDungeon do
				DestroyTownBuildingToLevel(town, 20, 0, 0);
			end;
		end;
	end;
	function TTH_Fix_A()
		TTH_SolveAIBuyArtifact();
	end;
-- end

-- by 牙姐 2019-04-17 23:09:03
-- begin 将当前游戏中的出场英雄等级记录到全局参数中
	function TTH_SetHeroLevelToGameVar()
		local arrHero = {};
		for i = 1, 8 do
			local arrTempHero = GetPlayerHeroes(i);
			if arrTempHero ~= nil then
				for j, strHero in arrTempHero do
					H55_Insert(arrHero, strHero);
				end;
			end;
		end;
		for iIndexHero = 1, length(H55SMOD_Heroes) do
			local strHero = H55SMOD_Heroes[iIndexHero];
			if contains(arrHero, strHero) ~= nil then
				if H55SMOD_HeroLevel[strHero] ~= GetHeroLevel(strHero) then
					SetGameVar('H55SMOD_Var_Level_'..strHero, GetHeroLevel(strHero));
					-- begin 娜瑞莎升级加咒力或知识
					-- if strHero == 'Ildar' then
					-- 	print('Ildar');
					-- 	local iLenLevel = 0;
					-- 	if H55SMOD_HeroLevel[strHero] == nil then
					-- 		iLenLevel = GetHeroLevel(strHero);
					-- 	else
					-- 		iLenLevel = GetHeroLevel(strHero) - H55SMOD_HeroLevel[strHero];
					-- 	end;
					-- 	print('iLenLevel'..iLenLevel);
					-- 	for i = 1, iLenLevel do
					-- 		local iStatRandom = random(2);
					-- 		local iPlayer = GetObjectOwner(strHero);
					-- 		if iStatRandom == 0 then
					-- 			ChangeHeroStat(strHero, STAT_SPELL_POWER, 1);
					-- 			ShowFlyingSign("/Text/Game/Scripts/Spellpower.txt", strHero, iPlayer, 5);
					-- 		else
					-- 			ChangeHeroStat(strHero, STAT_KNOWLEDGE, 1);
					-- 			ShowFlyingSign("/Text/Game/Scripts/Knowledge.txt", strHero, iPlayer, 5);
					-- 		end;
					-- 	end;
					-- end;
					-- end
					H55SMOD_HeroLevel[strHero] = GetHeroLevel(strHero);
				end;
			else
				SetGameVar('H55SMOD_Var_Level_'..strHero, '');
			end;
		end;
	end;
-- end

-- by 牙姐 2021-02-23 03:47:40
-- begin 宝物战场效果 全局参数
	TTH_ARTIFACT_EFFECT_COMBAT = {
		[0] = ARTIFACT_ANGELIC_ALLIANCE
		, [1] = ARTIFACT_CURSE_SHOULDER
		, [2] = ARTIFACT_SENTINEL
		, [3] = ARTIFACT_EIGHTFOLD
		, [4] = ARTIFACT_MOONBLADE
	};
	function TTH_SetHeroArtifactToGameVar()
		local arrHero = {};
		for i = 1, 8 do
			local arrTempHero = GetPlayerHeroes(i);
			if arrTempHero ~= nil then
				for j, strHero in arrTempHero do
					H55_Insert(arrHero, strHero);
				end;
			end;
		end;
		for iIndexHero, strHero in H55SMOD_Heroes do
			if contains(arrHero, strHero) ~= nil then
				for iIndexArtifact, objArtifact in TTH_ARTIFACT_EFFECT_COMBAT do
					local strKey = 'TTH_Artifact_Effect_Combat_'..strHero..'_'..objArtifact;
					if HasArtefact(strHero, objArtifact, 1) ~= nil then
						SetGameVar(strKey, 1);
					else
						SetGameVar(strKey, 0);
					end;
				end;
			else
				for iIndexArtifact, objArtifact in TTH_ARTIFACT_EFFECT_COMBAT do
					local strKey = 'TTH_Artifact_Effect_Combat_'..strHero..'_'..objArtifact;
					SetGameVar(strKey, 0);
				end;
			end;
		end;
	end;
-- end

-- by 牙姐 2021-03-06 02:41:16
-- begin 根据英雄技能赠送魔法相关
	function TTH_GiveMagic8Skill(strHero, iPlayer, objItem)
		if KnowHeroSpell(strHero, objItem["MAGIC"]["ID"]) == nil then
			local bCheck = 1;
			if length(objItem["SKILL_MASTERY"]) > 0 then
				for iIndexMastery, objMastery in objItem["SKILL_MASTERY"] do
					if GetHeroSkillMastery(strHero, objMastery["MASTERY"]) < objMastery["LEVEL"] then
						bCheck = 0;
						break;
					end;
				end;
			end;
			if length(objItem["SKILL_PERK"]) > 0 then
				for iIndexPerk, objPerk in objItem["SKILL_PERK"] do
					if HasHeroSkill(strHero, objPerk) == nil then
						bCheck = 0;
						break;
					end;
				end;
			end;
			if bCheck == 1 then
				TeachHeroSpell(strHero, objItem["MAGIC"]["ID"]);
				if H55_IsThisAIPlayer(iPlayer) ~= 1 and H55_IsHeroInAnyTown(strHero) == 0 then
					ShowFlyingSign({"/Text/Game/Scripts/Learnspell.txt";name=objItem["MAGIC"]["NAME"]},strHero,iPlayer,7);
					sleep(4);
				end;
			end;
		end;
	end;
-- end
