doFile('/scripts/combat-startup.lua')

-- name: 	combat-script
-- author: 	sdj
-- time: 	2018-02-14

-- 系统方法
	-- 战场进程控制
		--combatSetPause(1); 																		--暂停游戏
		--combatSetPause(nil); 																		--恢复游戏
		--EnableAutoFinish(1); 																		--自动结束战斗
		--EnableAutoFinish(nil); 																	--不自动结束战斗
	-- 战场行为
		--MoveCombatUnit(strCasterCreatureName, iPositionX, iPositionY) 							--战场行为: 生物移动(移动方式)
		--SetCombatPosition(strCasterCreatureName, iPositionX, iPositionY) 							--战场行为: 生物移动(传送方式)
		--AttackCombatUnit(strCasterCreatureName, strTargetCreatureName) 							--战场行为: 生物移动并攻击
		--ShootCombatUnit(strCasterCreatureName, strTargetCreatureName) 							--战场行为: 生物射击
		--UseCombatAbility(strCasterCreatureName) 													--战场行为: 生物使用特别能力
		--DefendCombatUnit(strCasterCreatureName) 													--战场行为: 生物防御
		--UnitCastGlobalSpell(strCasterUnitName, iSpellId); 										--战场行为: 单位施放群体魔法or技能
		--UnitCastAreaSpell(strCasterUnitName, iSpellId, iPositionX, iPositionY); 					--战场行为: 单位施放区域魔法or技能
		--UnitCastAimedSpell(strCasterUnitName, iSpellId, strTargetCreatureName); 					--战场行为: 单位施放单体魔法or技能
	-- 单位控制
		--AddCombatUnit(iSide, strCreatureType, iCreatureNumber, iPositionX, iPositionY) 			--添加单位
		--RemoveCombatUnit(strTargetCreatureName) 													--移除单位
		--SummonCreature(iSide, strCreatureType, iCreatureNumber, iPositionX, iPositionY) 			--召唤生物
		--setATB(strTargetUnitName, iATB) 															--设置单位ATB
	-- 基础获取
		--GetHeroName(strTargetHeroName) 															--获取英雄控制台名
		--GetCreatureType(strTargetCreatureName) return iCreatureType; 								--获取单位类型
		--GetWarMachineType(strTargetWarMachineName) return iWarMachineType; 						--获取战争机械类型
		--GetBuildingType(strTargetBuildingName) return iBuildingType; 								--获取建筑类型
		--GetCreatureNumber(strTargetCreatureName) return iCreatureNumber; 							--获取单位数量
		--GetUnitPosition(strTargetCreatureName) return iPositionX, iPositionY; 					--获取单位坐标
		--GetUnitMaxManaPoints(strTargetUnitName) 													--获取单位最大魔法值
		--GetUnitManaPoints(strTargetUnitName) 														--获取单位当前魔法值
		--GetRagePoints(strTargetCreatureName) 														--获取生物血怒值
		--GetRageLevel(strTargetCreatureName) 														--获取生物血怒等级
		--GetUnitSide(strTargetUnitName) 															--获取单位攻守方
		--GetUnitType(strTargetUnitName) 															--获取单位类型
		--GetUnits(iSide, iCategory) 																--获取单位列表
	-- 衍生方法 判断类
		--IsCombatUnit(strTargetUnitName) return nil/1; 											--是否战场单位
		--IsAttacker(strTargetUnitName) 															--是否属于攻方
		--IsDefender(strTargetUnitName) 															--是否属于守方
		--IsHero(strTargetUnitName) 																--是否英雄
		--IsCreature(strTargetUnitName) 															--是否生物
		--IsWarMachine(strTargetUnitName) 															--是否战争机械
		--IsBuilding(strTargetUnitName) 															--是否建筑
		--IsSpellSpawn(strTargetUnitName) 															--是否召唤物
	-- 衍生方法 获取列表类
		--GetHero(iSide) 																			--获取英雄
		--GetCreatures(iSide) 																		--获取生物列表
		--GetWarMachines(iSide) 																	--获取战争机械列表
		--GetBuildings(iSide) 																		--获取建筑列表
		--GetSpellSpawns(iSide) 																	--获取召唤物列表
		--GetAttackerHero() 																		--获取攻方英雄
		--GetDefenderHero() 																		--获取守方英雄
		--GetAttackerCreatures() 																	--获取攻方生物列表
		--GetDefenderCreatures() 																	--获取守方生物列表
		--GetAttackerWarMachines() 																	--获取攻方战争机械列表
		--GetDefenderWarMachines() 																	--获取守方战争机械列表
		--GetAttackerBuildings() 																	--获取攻方建筑列表
		--GetDefenderBuildings() 																	--获取守方建筑列表
		--GetAttackerSpellSpawns() 																	--获取攻方召唤物列表
		--GetDefenderSpellSpawns() 																	--获取守方召唤物列表
	-- 衍生方法 获取个体单位类
		--GetAttackerWarMachine(iCategory) 															--获取攻方战争机械
		--GetDefenderWarMachine(iCategory) 															--获取守方战争机械
		--GetAttackerBuilding(iCategory) 															--获取攻方建筑
		--GetDefenderBuilding(iCategory) 															--获取守方建筑

-- 常量
	TTH_FINAL = {};
	TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT = "TTH_Artifact_Effect_Combat_";
	TTH_FINAL.GAMEVAR_COMBAT_ARTIFACTSET = "TTH_ArtifactSet_Effect_Combat_";
	TTH_FINAL.GAMEVAR_COMBAT_SKILL = "TTH_Skill_Effect_Combat_";

-- 枚举
	-- 枚举: 攻守方
	ENUM_SIDE = {};
	ENUM_SIDE.ATTACKER = 0;
	ENUM_SIDE.DEFENDER = 1;
	-- 枚举: 单位类型
	ENUM_CATEGORY = {};
	ENUM_CATEGORY.HERO = 0;
	ENUM_CATEGORY.CREATURE = 1;
	ENUM_CATEGORY.WARMACHINE = 2;
	ENUM_CATEGORY.BUILDING = 3;
	ENUM_CATEGORY.SPELLSPAWN = 4;
	-- 枚举: 建筑类型
	ENUM_BUILDING_WALL = 1;
	ENUM_BUILDING_GATE = 2;
	ENUM_BUILDING_LEFT_TOWER = 3;
	ENUM_BUILDING_BIG_TOWER = 4;
	ENUM_BUILDING_MOAT = 5;
	ENUM_BUILDING_RIGHT_TOWER = 6;
	ENUM_BUILDING_MAGIC_WALL = 7;
	-- 枚举: 战争机械类型
	ENUM_WARMACHINE_BALLISTA = 1;
	ENUM_WARMACHINE_CATAPULT = 2;
	ENUM_WARMACHINE_FIRST_AID_TENT = 3;
	ENUM_WARMACHINE_AMMO_CART = 4;
	-- 枚举: 底层监听类型
	ENUM_BASICLISTENER = {};
	ENUM_BASICLISTENER.MOVE = 0;
	ENUM_BASICLISTENER.DEATH = 1;
	-- 枚举: 中间件监听类型
	ENUM_MIDDLEWARELISTENER = {};

	ENUM_MIDDLEWARELISTENER.DEATH = {};
	ENUM_MIDDLEWARELISTENER.DEATH.CREATURE = 3; 													--生物被击杀
	ENUM_MIDDLEWARELISTENER.DEATH.WARMACHINE = 4; 													--战争机械被摧毁
	ENUM_MIDDLEWARELISTENER.DEATH.BUILDING = 5; 													--建筑被摧毁
	ENUM_MIDDLEWARELISTENER.DEATH.SPELLSPAWN = 6; 													--召唤物被摧毁

	ENUM_MIDDLEWARELISTENER.KILL = {};
	ENUM_MIDDLEWARELISTENER.KILL.CREATURE = 7; 														--击杀生物
	ENUM_MIDDLEWARELISTENER.KILL.WARMACHINE = 8; 													--摧毁战争机械
	ENUM_MIDDLEWARELISTENER.KILL.BUILDING = 9; 														--摧毁建筑
	ENUM_MIDDLEWARELISTENER.KILL.SPELLSPAWN = 10; 													--摧毁召唤物

	ENUM_MIDDLEWARELISTENER.MOVE = {};
	ENUM_MIDDLEWARELISTENER.MOVE.HERO = 2; 															--英雄行动
	ENUM_MIDDLEWARELISTENER.MOVE.CREATURE = 2; 														--生物行动
	ENUM_MIDDLEWARELISTENER.MOVE.WARMACHINE = 2; 													--战争机械行动
	ENUM_MIDDLEWARELISTENER.MOVE.BUILDING = 2; 														--建筑行动
	ENUM_MIDDLEWARELISTENER.MOVE.SPELLSPAWN = 2; 													--召唤物行动

	ENUM_MIDDLEWARELISTENER.EFFECT_CREATURE = 11; 													--造成生物减员
	ENUM_MIDDLEWARELISTENER.AOE_CREATURE = 12; 														--造成多队生物减员
	ENUM_MIDDLEWARELISTENER.REVIVE_CREATURE = 13; 													--复活生物
	ENUM_MIDDLEWARELISTENER.SUMMON_CREATURE = 14; 													--召唤生物
	ENUM_MIDDLEWARELISTENER.ADD_CREATURE = 15; 														--增加生物
	ENUM_MIDDLEWARELISTENER.CORPSE_BODY = 15; 														--吞食尸体
	ENUM_MIDDLEWARELISTENER.SUMMON_SPELLSPAWN = 16; 												--召唤召唤物
	ENUM_MIDDLEWARELISTENER.UNSUMMON_CREATURE = 17; 												--击杀召唤生物
	ENUM_MIDDLEWARELISTENER.DISPLACE_CREATURE = 18; 												--使生物位移
	ENUM_MIDDLEWARELISTENER.LOSEMANA_CREATURE = 19; 												--生物失去魔法值
	ENUM_MIDDLEWARELISTENER.LOSEMANA_HERO = 20; 													--英雄失去魔法值
	ENUM_MIDDLEWARELISTENER.RAGELEVELUP_CREATURE = 21; 												--生物血怒等级提升
	-- 枚举: 技能阶段
	ENUM_STAGE = {};

	ENUM_STAGE.ONCE = {};
	ENUM_STAGE.ONCE.UNEXECUTE = 0;
	ENUM_STAGE.ONCE.EXECUTED = 1;

	-- 枚举: 新技能
	ENUM_SKILL = {};
	ENUM_SKILL.ABSOLUTEMORALE = 0;
	ENUM_SKILL.TIMER_ABSOLUTEMORALE = 3;

-- 全局参数
	-- 数组: 当前回合要改变ATB的单位列表
	ListUnitSetATB = {};
	-- 数组: 跳过中间件接口的单位列表
	ListUnitPasted = {};
	-- 数组: 触发底层接口的单位列表
	ListUnitTriggerBasicListener = {};
	-- 数组: 触发中间件接口的单位列表
	ListUnitTriggerMiddlewareListener = {};
	-- 对象: 初始的游戏快照
	ObjSnapshotInit = {};
	-- 对象: 上上回合的游戏快照
	ObjSnapshotBeforeLastTurn = {};
	-- 对象: 上回合的游戏快照
	ObjSnapshotLastTurn = {};
	-- 计数器
	H55SMOD_ICount = 1;
	-- 重复触发接口标识
	H55SMOD_IFlag = ENUM_STAGE.ONCE.UNEXECUTE;
	-- 底层监听
	H55SMOD_BasicListener = {};
	-- 中间件监听
	H55SMOD_MiddlewareListener = {};
	-- 英雄等级 全局参数
	H55SMOD_HeroLevel = {};
	-- 英雄技能 全局参数
	H55SMOD_HeroSkill = {};
	-- 英雄特技 全局参数
	H55SMOD_HeroAbility = {};
	-- 英雄宝物 全局参数
	H55SMOD_HeroArtifact = {};
	-- 是否开场第一个生物轮次
	TTH_START = 1;
	-- 是否野怪增援英雄 -1:INIT;0:ATTACKER;1:DEFENDER;
	TTH_HeroNotExistOnMap = -1;
	TTH_SwitchHeroNotExistOnMap = 0;

-- 布阵阶段
	H55SMOD_Tactics = {};

	-- KujinMP
	H55SMOD_Tactics['KujinMP'] = {};
	H55SMOD_Tactics['KujinMP']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
	function Events_Tactics_Implement_KujinMP(strHero, iSide, isReverse)
		H55SMOD_Tactics[strHero]['value'] = Thread_Command_AddCreature(getSide(iSide, isReverse), CREATURE_DEMON, 1, -1, -1);
	end;
	H55SMOD_Tactics['KujinMP']['function'] = Events_Tactics_Implement_KujinMP;

	function Events_Tactics_Interface(strHero, isReverse)
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
				if H55SMOD_Tactics[strHero]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
					H55SMOD_Tactics[strHero]['function'](strHero, iSide, isReverse);
					H55SMOD_Tactics[strHero]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
				end;
			end;
		end;
	end;

	function Events_Tactics()
		combatSetPause(1);
		Events_Tactics_Interface('KujinMP', 1);
		combatSetPause(nil);
	end;
	-- startThread(Events_Tactics);

-- 战场加载
	print("Combat script started...");
	while combatStarted() == nil do
		sleep(1)
	end;
	print("Combat is started...");

-- 战斗开始阶段
	H55SMOD_Start = {};
	H55SMOD_Start['Artifact'] = {};
	H55SMOD_Start['Skill'] = {};

	-- Sarge
		H55SMOD_Start['Sarge'] = {};
		H55SMOD_Start['Sarge']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Sarge(strHero, iSide, isReverse)
			local listCreaturesTarget = GetCreatures(iSide);
			local iLenCreaturesTarget = length(listCreaturesTarget);
			local iScale = 0.04 + 0.002 * H55SMOD_HeroLevel[strHero];
			for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget], -1);
				if itemCreature['iUnitType'] == CREATURE_FOOTMAN then
					H55SMOD_Start[strHero]['value'] = Thread_Command_SummonCreature(getSide(iSide, isReverse), CREATURE_CAVALIER, h55_ceil(itemCreature['iUnitNumber'] * iScale), itemCreature['iPositionX'], itemCreature['iPositionY']);
					print(strHero.." train "..h55_ceil(itemCreature['iUnitNumber'] * iScale).." CREATURE_CAVALIER");
					break;
				elseif itemCreature['iUnitType'] == CREATURE_SWORDSMAN then
					H55SMOD_Start[strHero]['value'] = Thread_Command_SummonCreature(getSide(iSide, isReverse), CREATURE_PALADIN, h55_ceil(itemCreature['iUnitNumber'] * iScale), itemCreature['iPositionX'], itemCreature['iPositionY']);
					print(strHero.." train "..h55_ceil(itemCreature['iUnitNumber'] * iScale).." CREATURE_PALADIN");
					break;
				elseif itemCreature['iUnitType'] == CREATURE_VINDICATOR then
					H55SMOD_Start[strHero]['value'] = Thread_Command_SummonCreature(getSide(iSide, isReverse), CREATURE_CHAMPION, h55_ceil(itemCreature['iUnitNumber'] * iScale), itemCreature['iPositionX'], itemCreature['iPositionY']);
					print(strHero.." train "..h55_ceil(itemCreature['iUnitNumber'] * iScale).." CREATURE_CHAMPION");
					break;
				end;
			end;
			if H55SMOD_Start[strHero]['value'] ~= nil then
				setATB(H55SMOD_Start[strHero]['value'], 1.25);
			end;
		end;
		H55SMOD_Start['Sarge']['function'] = Events_Start_Implement_Sarge;

	-- Maeve
		H55SMOD_Start['Maeve'] = {};
		H55SMOD_Start['Maeve']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Maeve(strHero, iSide, isReverse)
			startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_MASS_HASTE, 1);
			print(strHero.." casted SPELL_MASS_HASTE");
			sleep(20);
			setATB(GetHero(iSide), 0.7 + 0.01 * H55SMOD_HeroLevel[strHero]);
		end;
		H55SMOD_Start['Maeve']['function'] = Events_Start_Implement_Maeve;

	-- Dracon
		H55SMOD_Start['Dracon'] = {};
		H55SMOD_Start['Dracon']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Dracon(strHero, iSide, isReverse)
			local iPosX = 2;
			local iPosY = 1;
			if iSide == ENUM_SIDE.DEFENDER then
				iPosX = 13;
			end;
			local bExistEnchanter = 0;
			local arrCreature4Hero = GetCreatures(iSide);
			for i, strUnitName in arrCreature4Hero do
				if GetCreatureType(strUnitName) == CREATURE_ENCHANTER_ACADEMY then
					bExistEnchanter = 1;
					local itemCreature = geneUnitStatus(strUnitName);
					iPosX = itemCreature['iPositionX'];
					iPosY = itemCreature['iPositionY'];
					break;
				end;
			end
			if bExistEnchanter == 1 then
				local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_ENCHANTER_CASTER, 1, iPosX, iPosY);
				ShowFlyingSign(TTHCS_PATH["Talent"]["Dracon"]["EffectStart"], itemCreatureCaster, 5);
				for iIndexSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					local listCreaturesTarget = GetCreatures(iIndexSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						if IsCombatUnit(listCreaturesTarget[iIndexCreaturesTarget]) ~= nil
							and GetCreatureNumber(listCreaturesTarget[iIndexCreaturesTarget]) > 0
							and listCreaturesTarget[iIndexCreaturesTarget] ~= itemCreatureCaster then
							if IsCombatUnit(itemCreatureCaster) ~= nil and GetCreatureNumber(itemCreatureCaster) > 0 then
								startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_RANDOM_CAST_DARK_LIGHT, listCreaturesTarget[iIndexCreaturesTarget]);
								sleep(20);
							end;
						end;
					end;
				end;
				if IsCombatUnit(itemCreatureCaster) ~= nil and GetCreatureNumber(itemCreatureCaster) > 0 then
					startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
					sleep(20);
				end;
			end;
		end;
		H55SMOD_Start['Dracon']['function'] = Events_Start_Implement_Dracon;

	-- Josephine
		H55SMOD_Start['Josephine'] = {};
		H55SMOD_Start['Josephine']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		H55SMOD_Start['Josephine']['position'] = {
				{{12, 1}, {12, 4}, {12, 7}, {12, 10}}
			,	{{14, 2}, {14, 5}, {14, 8}, {14, 11}, {14, 14}}
		};
		function Events_Start_Implement_Josephine(strHero, iSide, isReverse)
			local iSize = getBattleSize() + 1;
			local iLenPositionTarget = length(H55SMOD_Start['Josephine']['position'][iSize]);
			local iPositionXCaster = -1;
			if iSide == ENUM_SIDE.ATTACKER then
				iPositionXCaster = 2;
			else
				iPositionXCaster = 13;
			end;
			local itemCreatureCaster = nil;
			for iIndexPositionTarget = 1, iLenPositionTarget do
				repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
				itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_STORM_LORD, H55SMOD_HeroLevel[strHero] * 1, iPositionXCaster, 1);
				local iPositionXTarget = H55SMOD_Start['Josephine']['position'][iSize][iIndexPositionTarget][1];
				if iSide == ENUM_SIDE.ATTACKER then
					iPositionXTarget = H55SMOD_Start['Josephine']['position'][iSize][iIndexPositionTarget][1];
				else
					if getBattleSize() == 0 then
						iPositionXTarget = 15 - H55SMOD_Start['Josephine']['position'][iSize][iIndexPositionTarget][1];
					else
						iPositionXTarget = 17 - H55SMOD_Start['Josephine']['position'][iSize][iIndexPositionTarget][1];
					end;
				end;
				if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
					startThread(Thread_Command_UnitCastAreaSpell, itemCreatureCaster, SPELL_ABILITY_CALL_STORM, iPositionXTarget, H55SMOD_Start['Josephine']['position'][iSize][iIndexPositionTarget][2], 0);
					sleep(20);
					startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
					sleep(20);
				end;
			end;
			print(strHero.." casted SPELL_MAGIC");
		end;
		H55SMOD_Start['Josephine']['function'] = Events_Start_Implement_Josephine;

	-- out of date
		-- -- Efion
		-- H55SMOD_Start['Efion'] = {};
		-- H55SMOD_Start['Efion']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		-- function Events_Start_Implement_Efion(strHero, iSide, isReverse)
		-- 	local listCreaturesTarget = GetCreatures(getSide(iSide, isReverse));
		-- 	local iLenCreaturesTarget = length(listCreaturesTarget);
		-- 	for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
		-- 		startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_FORGETFULNESS, listCreaturesTarget[iIndexCreaturesTarget], 1);
		-- 		sleep(20);
		-- 	end;
		-- 	print(strHero.." casted SPELL_MASS_FORGETFULNESS");
		-- 	sleep(20);
		-- 	setATB(GetHero(iSide), 0.7 + 0.01 * H55SMOD_HeroLevel[strHero]);
		-- end;
		-- H55SMOD_Start['Efion']['function'] = Events_Start_Implement_Efion;

	-- out of date
		-- -- Aislinn
		-- H55SMOD_Start['Aislinn'] = {};
		-- H55SMOD_Start['Aislinn']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		-- function Events_Start_Implement_Aislinn(strHero, iSide, isReverse)
		-- 	local listCreaturesTarget = GetCreatures(getSide(iSide, isReverse));
		-- 	local iLenCreaturesTarget = length(listCreaturesTarget);
		-- 	for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
		-- 		startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_FORGETFULNESS, listCreaturesTarget[iIndexCreaturesTarget], 1);
		-- 		sleep(20);
		-- 	end;
		-- 	print(strHero.." casted SPELL_MASS_FORGETFULNESS");
		-- 	sleep(20);
		-- 	setATB(GetHero(iSide), 0.7 + 0.01 * H55SMOD_HeroLevel[strHero]);
		-- end;
		-- H55SMOD_Start['Aislinn']['function'] = Events_Start_Implement_Aislinn;

	-- Vegeyr
		H55SMOD_Start['Vegeyr'] = {};
		H55SMOD_Start['Vegeyr']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Vegeyr(strHero, iSide, isReverse)
			local iPositionXCaster = -1;
			if iSide == ENUM_SIDE.ATTACKER then
				iPositionXCaster = 2;
			else
				iPositionXCaster = 13;
			end;
			local listCreaturesTarget = GetCreatures(getSide(iSide, isReverse));
			local iLenCreaturesTarget = length(listCreaturesTarget);
			local itemCreatureCaster = nil;
			for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				if IsCombatUnit(listCreaturesTarget[iIndexCreaturesTarget]) ~= nil and GetCreatureNumber(listCreaturesTarget[iIndexCreaturesTarget]) > 0 then
					repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
					itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_THUNDER_THANE, h55_ceil(H55SMOD_HeroLevel[strHero] / 2), iPositionXCaster, 1);
					if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
						startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_STORMBOLT, listCreaturesTarget[iIndexCreaturesTarget]);
						sleep(20);
						startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
						sleep(20);
					end;
				end;
			end;
		end;
		H55SMOD_Start['Vegeyr']['function'] = Events_Start_Implement_Vegeyr;

	-- Shadwyn
		H55SMOD_Start['Shadwyn'] = {};
		H55SMOD_Start['Shadwyn']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Shadwyn(strHero, iSide, isReverse)
			local listCreaturesTarget = ObjSnapshotInit['Creatures'][getSide(iSide, isReverse)];
			local listSortedCreaturesTarget = sortList(listCreaturesTarget, 'iUnitNumber');
			if length(listSortedCreaturesTarget) > 0 then
				local itemCreaturePhantom = listSortedCreaturesTarget[0];
				local iNumberCreaturePhantom = 0;
				if itemCreaturePhantom['iUnitNumber'] > H55SMOD_HeroLevel[strHero] * 1 then
					iNumberCreaturePhantom = H55SMOD_HeroLevel[strHero];
				else
					iNumberCreaturePhantom = itemCreaturePhantom['iUnitNumber'];
				end;
				H55SMOD_Start[strHero]['value'] = Thread_Command_SummonCreature(iSide, itemCreaturePhantom['iUnitType'], iNumberCreaturePhantom, itemCreaturePhantom['iPositionX'], itemCreaturePhantom['iPositionY']);
				if H55SMOD_Start[strHero]['value'] ~= nil then
					setATB(H55SMOD_Start[strHero]['value'], 1.25);
				end;
				sleep(20);
				print(strHero.." casted SPELL_PHANTOM");
			end;
		end;
		H55SMOD_Start['Shadwyn']['function'] = Events_Start_Implement_Shadwyn;

	-- Azar
		H55SMOD_Start['Azar'] = {};
		H55SMOD_Start['Azar']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Azar(strHero, iSide, isReverse)
			local listCreaturesTarget = GetCreatures(iSide);
			local iLenCreaturesTarget = length(listCreaturesTarget);
			for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget], -1);
				if itemCreature['iUnitType'] == CREATURE_WOLF then
					local strCreatureAim = Thread_Command_SummonCreature(getSide(iSide, isReverse), CREATURE_DEMON, 1, itemCreature['iPositionX'], itemCreature['iPositionY']);
					if strCreatureAim ~= nil then
						startThread(AttackCombatUnit, itemCreature['strUnitName'], strCreatureAim);
						repeat sleep(1); until iLenCreaturesTarget ~= length(GetCreatures(iSide));
						local strCreatureFriend = GetCreatures(iSide)[length(GetCreatures(iSide)) - 1];
						setATB(strCreatureFriend, 1.25);
						setATB(itemCreature['strUnitName'], 1.25);
						print(itemCreature['strUnitName'].." howl for "..strCreatureFriend);
						sleep(20);
					end;
				end;
			end;
		end;
		H55SMOD_Start['Azar']['function'] = Events_Start_Implement_Azar;

	-- KujinMP
		H55SMOD_Start['KujinMP'] = {};
		H55SMOD_Start['KujinMP']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_KujinMP(strHero, iSide, isReverse)
			if IsCombatUnit(H55SMOD_Tactics[strHero]['value']) ~= nil then
				Thread_Command_RemoveCombatUnit(getSide(iSide, isReverse), H55SMOD_Tactics[strHero]['value']);
			end;
		end;
		H55SMOD_Start['KujinMP']['function'] = Events_Start_Implement_KujinMP;

	-- Matewa
		H55SMOD_Start['Matewa'] = {};
		H55SMOD_Start['Matewa']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Matewa(strHero, iSide, isReverse)
			startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_WARCRY_BATTLECRY, 1);
			print(strHero.." casted SPELL_WARCRY_BATTLECRY");
			sleep(20);
			setATB(GetHero(iSide), 0.7 + 0.01 * H55SMOD_HeroLevel[strHero]);
		end;
		H55SMOD_Start['Matewa']['function'] = Events_Start_Implement_Matewa;

	-- Tazar
		H55SMOD_Start['Tazar'] = {};
		H55SMOD_Start['Tazar']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Tazar(strHero, iSide, isReverse)
			local pos = BattleLargeCenterPos[getBattleSize()];
			local listCreaturesTarget = GetCreatures(iSide);
			local iLenCreaturesTarget = length(listCreaturesTarget);
			local itemCreatureCaster = nil;
			for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
				if IsCombatUnit(itemCreatureTarget) ~= nil and GetCreatureNumber(itemCreatureTarget) > 0 then
					itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_CHERUBIN, H55SMOD_HeroLevel[strHero], pos['x'], pos['y']);
					if IsCombatUnit(itemCreatureCaster) ~= nil and GetCreatureNumber(itemCreatureCaster) > 0 then
						Thread_Command_UnitCastAimedSpell_IgnoreMana(itemCreatureCaster, SPELL_CELESTIAL_SHIELD, itemCreatureTarget);
						Thread_Command_RemoveCombatUnit(iSide, itemCreatureCaster);
						itemCreatureCaster = nil;
					end;
				end;
			end;
			print("CREATURE_CHERUBIN casted SPELL_CELESTIAL_SHIELD");
		end;
		H55SMOD_Start['Tazar']['function'] = Events_Start_Implement_Tazar;

	-- Nicolai
		H55SMOD_Start['Nicolai'] = {};
		H55SMOD_Start['Nicolai']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Nicolai(strHero, iSide, isReverse)
			local pos = BattleLargeCenterPos[getBattleSize()];
			local listCreaturesTarget = GetCreatures(iSide);
			local iLenCreaturesTarget = length(listCreaturesTarget);
			local itemCreatureCaster = nil;
			itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_CHERUBIN, H55SMOD_HeroLevel[strHero], pos['x'], pos['y']);
			if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
				startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_DEFLECT_ARROWS, 0);
				sleep(20);
				startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
				sleep(20);
			end;
			print("CREATURE_CHERUBIN casted SPELL_MASS_DEFLECT_ARROWS");
		end;
		H55SMOD_Start['Nicolai']['function'] = Events_Start_Implement_Nicolai;

	-- Tan
		H55SMOD_Start['Tan'] = {};
		H55SMOD_Start['Tan']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		H55SMOD_Start['Tan']['strMirrorCreature'] = '';
		function Events_Start_Implement_Tan(strHero, iSide, isReverse)
			if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
				local strHeroName = GetHero(iSide);
				if H55SMOD_Start['Tan']['strMirrorCreature'] == '' or IsCombatUnit(H55SMOD_Start['Tan']['strMirrorCreature']) == nil then
					H55SMOD_Start['Tan']['strMirrorCreature'] = '';
					local listCreaturesTarget = GetCreatures(getSide(iSide, isReverse));
					local iLenCreaturesTarget = length(listCreaturesTarget);
					if iLenCreaturesTarget > 0 then
						local itemCreature = geneUnitStatus(listCreaturesTarget[0]);
						H55SMOD_Start['Tan']['strMirrorCreature'] = Thread_Command_SummonCreature(iSide, itemCreature['iUnitType'], h55_ceil((20 + H55SMOD_HeroLevel[strHero] * 2) / 100 * itemCreature['iUnitNumber']), itemCreature['iPositionX'], itemCreature['iPositionY']);
						print(strHeroName.." mirror from "..itemCreature['strUnitName']);
					end;
				end;
			end;
		end;
		H55SMOD_Start['Tan']['function'] = Events_Start_Implement_Tan;

	-- Ildar
		H55SMOD_Start['Ildar'] = {};
		H55SMOD_Start['Ildar']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Ildar(strHero, iSide, isReverse, isMoveNow)
			local listCreaturesTarget = GetCreatures(iSide);
			local iLenCreaturesTarget = length(listCreaturesTarget);
			local iScale1 = h55_ceil(H55SMOD_HeroLevel[strHero] / 5);
			local iScale2 = h55_ceil(H55SMOD_HeroLevel[strHero] / 3);

			local List_LightOrDarkAngel_Creatures = {};
			if H55SMOD_HeroAbility[strHero] == 'Light' then
				List_LightOrDarkAngel_Creatures = List_LightAngel_Creatures;
			else
				List_LightOrDarkAngel_Creatures = List_DarkAngel_Creatures;
			end;

			local iBattleSize = getBattleSize();
			local iPositionX = 0;
			local iPositionY = 1;
			if iSide == ENUM_SIDE.ATTACKER then
				iPositionX = 2;
			else
				if iBattleSize == 0 then
				    iPositionX = 13;
				else
				    iPositionX = 15;
				end;
			end;

			local itemCreatureCaster = Thread_Command_SummonCreature(getSide(iSide, isReverse), List_LightOrDarkAngel_Creatures[iScale1], iScale2 + 1, iPositionX, iPositionY);
			if isMoveNow == nil then
				setATB(itemCreatureCaster, 1.25);
			end;
		end;
		H55SMOD_Start['Ildar']['function'] = Events_Start_Implement_Ildar;

		H55SMOD_MiddlewareListener['Ildar'] = {};
		function Events_MiddlewareListener_Implement_Ildar(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
			if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
				local iLenCreaturesLastDeath = length(listCreaturesLastDeath);
				for iIndexCreaturesLastDeath = 0, iLenCreaturesLastDeath - 1 do
					local itemCreaturesLastDeath = geneUnitStatus(listCreaturesLastDeath[iIndexCreaturesLastDeath]['strUnitName']);
					if IsCombatUnit(itemCreaturesLastDeath['strUnitName']) ~= nil and IsComputer(iSide)
						and (contains(List_LightAngel_Creatures, itemCreaturesLastDeath['iUnitType']) ~= nil or contains(List_DarkAngel_Creatures, itemCreaturesLastDeath['iUnitType']) ~= nil) then
						H55SMOD_Start[strHero]['function'](strHero, iSide, 0, 1);
						break;
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Ildar']['function'] = Events_MiddlewareListener_Implement_Ildar;

	function Events_Start_Interface(strHero, isReverse)
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
				if H55SMOD_Start[strHero]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
					H55SMOD_Start[strHero]['function'](strHero, iSide, isReverse);
					H55SMOD_Start[strHero]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
				end;
			end;
		end;
	end;

	-- Artifact
		-- ARTIFACT_ANGELIC_ALLIANCE
		function Events_Start_Artifact_Implement_Angelic_Alliance(iSide)
			local pos = BattleLargeCenterPos[getBattleSize()];
			local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_CHERUBIN, 1, pos['x'], pos['y']);
			ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_ANGELIC_ALLIANCE]["Effect"], itemCreatureCaster, 5);
			startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_HASTE);
			print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_HASTE");
			startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_BLESS);
			print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_BLESS");
			sleep(100);
			startThread(Thread_Command_RemoveCombatUnit_Uncheck, itemCreatureCaster);
			repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
			print("CREATURE_CHERUBIN has left");
		end;
		H55SMOD_Start['Artifact'][ARTIFACT_ANGELIC_ALLIANCE] = {
			[ENUM_SIDE.ATTACKER] = {
				['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
			}
			, [ENUM_SIDE.DEFENDER] = {
				['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
			}
			, ['function'] = Events_Start_Artifact_Implement_Angelic_Alliance
		};
		-- ARTIFACT_SENTINEL
		function Events_Start_Artifact_Implement_Sentinel(iSide)
			local pos = BattleLargeCenterPos[getBattleSize()];
			local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_CHERUBIN, 1, pos['x'], pos['y']);
			ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_SENTINEL]["Effect"], itemCreatureCaster, 5);
			startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_STONESKIN);
			print("ARTIFACT_SENTINEL casted SPELL_MASS_STONESKIN");
			startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_BLOODLUST);
			print("ARTIFACT_SENTINEL casted SPELL_MASS_BLOODLUST");
			sleep(100);
			startThread(Thread_Command_RemoveCombatUnit_Uncheck, itemCreatureCaster);
			repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
			print("CREATURE_CHERUBIN has left");
		end;
		H55SMOD_Start['Artifact'][ARTIFACT_SENTINEL] = {
			[ENUM_SIDE.ATTACKER] = {
				['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
			}
			, [ENUM_SIDE.DEFENDER] = {
				['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
			}
			, ['function'] = Events_Start_Artifact_Implement_Sentinel
		};
		-- ARTIFACT_CURSE_SHOULDER
		function Events_Start_Artifact_Implement_Curse_Shoulder(iSide)
			local pos = BattleLargeCenterPos[getBattleSize()];
			local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_DRAGON_KNIGHT, 1, pos['x'], pos['y']);
			ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_CURSE_SHOULDER]["Effect"], itemCreatureCaster, 5);
			startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_SLOW);
			print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_SLOW");
			startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemCreatureCaster, SPELL_MASS_WEAKNESS);
			print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_WEAKNESS");
			sleep(100);
			startThread(Thread_Command_RemoveCombatUnit_Uncheck, itemCreatureCaster);
			repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
			print("CREATURE_DRAGON_KNIGHT has left");
		end;
		H55SMOD_Start['Artifact'][ARTIFACT_CURSE_SHOULDER] = {
			[ENUM_SIDE.ATTACKER] = {
				['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
			}
			, [ENUM_SIDE.DEFENDER] = {
				['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
			}
			, ['function'] = Events_Start_Artifact_Implement_Curse_Shoulder
		};

		function Events_Start_Artifact_Interface()
			for indexArtifact, objArtifact in TTH_ARTIFACT_EFFECT_COMBAT_ONCE do
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if H55SMOD_Start['Artifact'][objArtifact][iSide]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE and TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][objArtifact] == 1 then
						H55SMOD_Start['Artifact'][objArtifact]['function'](iSide);
						H55SMOD_Start['Artifact'][objArtifact][iSide]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
					end;
				end;
			end;
		end;

		-- 元素腕带
			H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER] = {};
			H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER]['list'] = {
				[0] = CREATURE_FIRE_ELEMENTAL
				, [1] = CREATURE_WATER_ELEMENTAL
				, [2] = CREATURE_EARTH_ELEMENTAL
				, [3] = CREATURE_AIR_ELEMENTAL
			};
			function Events_Start_Implement_ARTIFACT_BAND_OF_CONJURER()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide] ~= nil and TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_BAND_OF_CONJURER] == 1 then
						combatSetPause(1);
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iSide == ENUM_SIDE.ATTACKER then
							iPositionX = 2;
						else
							if iBattleSize == 0 then
							    iPositionX = 13;
							else
							    iPositionX = 15;
							end;
						end;
						if iBattleSize == 0 then
						    iPositionY = 6;
						else
						    iPositionY = 7;
						end;

						local iOver = tth_mod(I_TIMER, 4);
						local idSummonElemental = H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER]['list'][iOver];
						local iHeroLevel = H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))];
						Thread_Command_SummonCreature(iSide, idSummonElemental, iHeroLevel * 1, iPositionX, iPositionY);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER]['function'] = Events_Start_Implement_ARTIFACT_BAND_OF_CONJURER;

		-- 冲锋战鼓
			H55SMOD_Start['Artifact'][ARTIFACT_DRUM_OF_CHARGE] = {};
			function Events_Start_Implement_ARTIFACT_DRUM_OF_CHARGE()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide] ~= nil and TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_DRUM_OF_CHARGE] == 1 then
						combatSetPause(1);
						local listCreaturesSnapshotInit = ObjSnapshotInit['Creatures'][iSide];
						local iLenCreaturesSnapshotInit = length(listCreaturesSnapshotInit);
						local iOver = tth_mod(I_TIMER, iLenCreaturesSnapshotInit);
						local itemCreatureSnapshotInit = listCreaturesSnapshotInit[iOver];
						print(itemCreatureSnapshotInit['strUnitName']..'\'s atb has been increase to 1.25');
						setATB(itemCreatureSnapshotInit['strUnitName'], 1.25);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_Start['Artifact'][ARTIFACT_DRUM_OF_CHARGE]['function'] = Events_Start_Implement_ARTIFACT_DRUM_OF_CHARGE;

		-- 幻影宝石
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM] = {};
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['function'] = {};
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['strUnitName'] = '';
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['iSide'] = ENUM_SIDE.ATTACKER;
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['existTurn'] = 3;
			function Events_Start_Implement_ARTIFACT_GEM_OF_PHANTOM_SUMMON()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide] ~= nil and TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_GEM_OF_PHANTOM] ~= nil and TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_GEM_OF_PHANTOM] > 0 then
						combatSetPause(1);
						local iParaValue = TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_GEM_OF_PHANTOM];
						local iCreatureNum = h55_floor(iParaValue / 1000);
						local iCreatureId = iParaValue - iCreatureNum * 1000;
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iSide == ENUM_SIDE.ATTACKER then
							iPositionX = 2;
						else
							if iBattleSize == 0 then
							    iPositionX = 13;
							else
							    iPositionX = 15;
							end;
						end;
						local itemCreatureGemOfPhantom  = Thread_Command_SummonCreature(iSide, iCreatureId, iCreatureNum, iPositionX, iPositionY);
						repeat sleep(1); until (itemCreatureGemOfPhantom ~= nil and IsCombatUnit(itemCreatureGemOfPhantom) ~= nil);
						H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['strUnitName'] = itemCreatureGemOfPhantom;
						H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['iSide'] = iSide;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['function']['summon'] = Events_Start_Implement_ARTIFACT_GEM_OF_PHANTOM_SUMMON;
			function Events_Start_Implement_ARTIFACT_GEM_OF_PHANTOM_MOVE(iSide, itemUnitLast)
				if itemUnitLast['iSide'] == iSide and itemUnitLast['strUnitName'] == H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['strUnitName'] then
					print('existTurn: '..H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['existTurn']);
					if H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['existTurn'] <= 0 then
						combatSetPause(1);
						if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil then
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemUnitLast['strUnitName']);
							repeat sleep(1); until IsCombatUnit(itemUnitLast['strUnitName']) == nil;
						end;
						combatSetPause(nil);
					else
						H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['existTurn'] = H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['existTurn'] - 1;
					end;
				end;
			end;
			H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['function']['move'] = Events_Start_Implement_ARTIFACT_GEM_OF_PHANTOM_MOVE;

	-- Skill
		--魔力再生: 战斗开始前英雄获得20%当前魔法值的临时魔法值 HERO_SKILL_MYSTICISM
			H55SMOD_Start['Skill'][HERO_SKILL_MYSTICISM] = {};
			function Events_Start_Implement_Skill_Mysticism()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if GetHero(iSide) ~= nil and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MYSTICISM] == 1 then
						local idHero = GetHero(iSide);
						local strHero = GetHeroName(idHero);
						local iCurrentMana = GetUnitManaPoints(idHero);
						local iMysticismMana = h55_ceil(iCurrentMana * 0.2);
						SetUnitManaPoints(idHero, iCurrentMana + iMysticismMana);
						print(idHero.." get "..iMysticismMana.." mana by [Mysticism]");
					end;
				end;
			end;
			H55SMOD_Start['Skill'][HERO_SKILL_MYSTICISM]['function'] = Events_Start_Implement_Skill_Mysticism;

		-- HERO_SKILL_GUARDIAN_ANGEL 078 天神降临
			H55SMOD_Start['Skill'][HERO_SKILL_GUARDIAN_ANGEL] = {};
			function Events_Start_Implement_Skill_GuardianAngel()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if GetHero(iSide) ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_GUARDIAN_ANGEL] ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_GUARDIAN_ANGEL] > 0 then
						local iCreatureId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_GUARDIAN_ANGEL];
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iBattleSize == 0 then
					    if iSide == ENUM_SIDE.ATTACKER then
  							iPositionX = 6;
  						else
  							iPositionX = 10;
  						end;
							iPositionY = 6;
						else
					    if iSide == ENUM_SIDE.ATTACKER then
  							iPositionX = 6;
  						else
  							iPositionX = 12;
  						end;
							iPositionY = 8;
						end;
						local iHeroLevel = H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))];
						local iCreatureCount = 1 + h55_floor(iHeroLevel / 10);
						local strCreatureFall = Thread_Command_SummonCreature(iSide, iCreatureId, iCreatureCount, iPositionX, iPositionY);
						ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_GUARDIAN_ANGEL]["Effect"], strCreatureFall, 5);
						print(strCreatureFall.." falls on the combat by [GuardianAngel]");
					end;
				end;
			end;
			H55SMOD_Start['Skill'][HERO_SKILL_GUARDIAN_ANGEL]['function'] = Events_Start_Implement_Skill_GuardianAngel;

		-- HERO_SKILL_PARIAH 083 堕落骑士
			H55SMOD_Start['Skill'][HERO_SKILL_PARIAH] = {};
			function Events_Start_Implement_Skill_Pariah()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if GetHero(iSide) ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PARIAH] ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PARIAH] > 0 then
						local iCreatureId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PARIAH];
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iBattleSize == 0 then
					    if iSide == ENUM_SIDE.ATTACKER then
  							iPositionX = 6;
  						else
  							iPositionX = 10;
  						end;
							iPositionY = 6;
						else
					    if iSide == ENUM_SIDE.ATTACKER then
  							iPositionX = 6;
  						else
  							iPositionX = 12;
  						end;
							iPositionY = 8;
						end;
						local iHeroLevel = H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))];
						local iCreatureCount = 1 + h55_floor(iHeroLevel / 10);
						local strCreatureFall = Thread_Command_SummonCreature(iSide, iCreatureId, iCreatureCount, iPositionX, iPositionY);
						ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_PARIAH]["Effect"], strCreatureFall, 5);
						print(strCreatureFall.." falls on the combat by [Pariah]");
					end;
				end;
			end;
			H55SMOD_Start['Skill'][HERO_SKILL_PARIAH]['function'] = Events_Start_Implement_Skill_Pariah;

		-- HERO_SKILL_TWILIGHT 109 微光黎明
			H55SMOD_Start['Skill'][HERO_SKILL_TWILIGHT] = {};
			function Events_Start_Implement_Skill_Twilight()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if GetHero(iSide) ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT] ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT] > 0 then
						local iCreatureId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT];
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iBattleSize == 0 then
					    if iSide == ENUM_SIDE.ATTACKER then
  							iPositionX = 6;
  						else
  							iPositionX = 10;
  						end;
							iPositionY = 6;
						else
					    if iSide == ENUM_SIDE.ATTACKER then
  							iPositionX = 6;
  						else
  							iPositionX = 12;
  						end;
							iPositionY = 8;
						end;
						local iHeroLevel = H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))];
						local iCreatureCount = 1 + h55_floor(iHeroLevel / 10);
						local strCreatureFall = Thread_Command_SummonCreature(iSide, iCreatureId, iCreatureCount, iPositionX, iPositionY);
						ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_TWILIGHT]["Effect"], strCreatureFall, 5);
						print(strCreatureFall.." falls on the combat by [Twilight]");
					end;
				end;
			end;
			H55SMOD_Start['Skill'][HERO_SKILL_TWILIGHT]['function'] = Events_Start_Implement_Skill_Twilight;

	function Events_Start()
		combatSetPause(1);
		Events_Init();
		Events_Init_HeroLevel();
		Events_Init_HeroSkill_Special();
		Events_Init_HeroSkill();
		Events_Init_HeroAbility();
		Events_Init_HeroArtifact();
		Events_Init_Interface();
		combatSetPause(nil);
	end;
	-- startThread(Events_Start);

	function Events_Init()
		-- Hero
		ObjSnapshotInit['Hero'] = {};
		ObjSnapshotInit['Hero'][ENUM_SIDE.ATTACKER] = geneUnitStatus(GetHero(ENUM_SIDE.ATTACKER), -1);
		if GetHero(ENUM_SIDE.DEFENDER) ~= nil then
			ObjSnapshotInit['Hero'][ENUM_SIDE.DEFENDER] = geneUnitStatus(GetHero(ENUM_SIDE.DEFENDER), -1);
		end;

		-- Creatures
		ObjSnapshotInit['Creatures'] = {};
		ObjSnapshotInit['Creatures'][ENUM_SIDE.ATTACKER] = {};
		local listAttackerCreatures = GetCreatures(ENUM_SIDE.ATTACKER);
		local iLenAttackerCreatures = length(listAttackerCreatures);
		for iIndexAttackerCreatures = 0, iLenAttackerCreatures - 1 do
			push(ObjSnapshotInit['Creatures'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerCreatures[iIndexAttackerCreatures], -1));
		end;
		ObjSnapshotInit['Creatures'][ENUM_SIDE.DEFENDER] = {};
		local listDefenderCreatures = GetCreatures(ENUM_SIDE.DEFENDER);
		local iLenDefenderCreatures = length(listDefenderCreatures);
		for iIndexDefenderCreatures = 0, iLenDefenderCreatures - 1 do
			push(ObjSnapshotInit['Creatures'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderCreatures[iIndexDefenderCreatures], -1));
		end;

		--WarMachines
		ObjSnapshotInit['WarMachines'] = {};
		ObjSnapshotInit['WarMachines'][ENUM_SIDE.ATTACKER] = {};
		local listAttackerWarMachines = GetWarMachines(ENUM_SIDE.ATTACKER);
		local iLenAttackerWarMachines = length(listAttackerWarMachines);
		for iIndexAttackerWarMachines = 0, iLenAttackerWarMachines - 1 do
			push(ObjSnapshotInit['WarMachines'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerWarMachines[iIndexAttackerWarMachines], -1));
		end;
		ObjSnapshotInit['WarMachines'][ENUM_SIDE.DEFENDER] = {};
		local listDefenderWarMachines = GetWarMachines(ENUM_SIDE.DEFENDER);
		local iLenDefenderWarMachines = length(listDefenderWarMachines);
		for iIndexDefenderWarMachines = 0, iLenDefenderWarMachines - 1 do
			push(ObjSnapshotInit['WarMachines'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderWarMachines[iIndexDefenderWarMachines], -1));
		end;

		--Buildings
		ObjSnapshotInit['Buildings'] = {};
		ObjSnapshotInit['Buildings'][ENUM_SIDE.ATTACKER] = {};
		local listAttackerBuildings = GetBuildings(ENUM_SIDE.ATTACKER);
		local iLenAttackerBuildings = length(listAttackerBuildings);
		for iIndexAttackerBuildings = 0, iLenAttackerBuildings - 1 do
			push(ObjSnapshotInit['Buildings'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerBuildings[iIndexAttackerBuildings], -1));
		end;
		ObjSnapshotInit['Buildings'][ENUM_SIDE.DEFENDER] = {};
		local listDefenderBuildings = GetBuildings(ENUM_SIDE.DEFENDER);
		local iLenDefenderBuildings = length(listDefenderBuildings);
		for iIndexDefenderBuildings = 0, iLenDefenderBuildings - 1 do
			push(ObjSnapshotInit['Buildings'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderBuildings[iIndexDefenderBuildings], -1));
		end;

		--SpellSpawns
		ObjSnapshotInit['SpellSpawns'] = {};
		ObjSnapshotInit['SpellSpawns'][ENUM_SIDE.ATTACKER] = {};
		local listAttackerSpellSpawns = GetSpellSpawns(ENUM_SIDE.ATTACKER);
		local iLenAttackerSpellSpawns = length(listAttackerSpellSpawns);
		for iIndexAttackerSpellSpawns = 0, iLenAttackerSpellSpawns - 1 do
			push(ObjSnapshotInit['SpellSpawns'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerSpellSpawns[iIndexAttackerSpellSpawns], -1));
		end;
		ObjSnapshotInit['SpellSpawns'][ENUM_SIDE.DEFENDER] = {};
		local listDefenderSpellSpawns = GetSpellSpawns(ENUM_SIDE.DEFENDER);
		local iLenDefenderSpellSpawns = length(listDefenderSpellSpawns);
		for iIndexDefenderSpellSpawns = 0, iLenDefenderSpellSpawns - 1 do
			push(ObjSnapshotInit['SpellSpawns'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderSpellSpawns[iIndexDefenderSpellSpawns], -1));
		end;
	end;
	function Events_Init_HeroLevel()
		for iIndexHero = 1, length(H55SMOD_Heroes) do
			local strHero = H55SMOD_Heroes[iIndexHero];
			local strHeroLevel = GetGameVar('TTH_Var_HeroLevel_'..strHero);
			if strHeroLevel == nil or strHeroLevel == '' then
				H55SMOD_HeroLevel[strHero] = 0;
			else
				H55SMOD_HeroLevel[strHero] = strHeroLevel * 1;
			end;
		end;
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil and H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] == 0 then
				-- TTH_HeroNotExistOnMap = iSide;
				-- setATB(GetHero(TTH_HeroNotExistOnMap), 0);
				if GetHero(getSide(iSide, 1)) ~= nil and H55SMOD_HeroLevel[GetHeroName(GetHero(getSide(iSide, 1)))] ~= 0 then
					H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] = H55SMOD_HeroLevel[GetHeroName(GetHero(getSide(iSide, 1)))];
				else
					H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] = 1;
				end;
			end;
		end;
	end;
	function Events_Init_HeroSkill_Special()
		for iIndexHavenHero = 1, length(H55SMOD_HavenHeroes) do
			local strHero = H55SMOD_HavenHeroes[iIndexHavenHero];
			if H55SMOD_HeroSkill[strHero] == nil then
				H55SMOD_HeroSkill[strHero] = {};
			end;
			local strHeroSkill = GetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_ABSOLUTE_MORALE);
			if strHeroSkill == nil or strHeroSkill == '' or strHeroSkill == '0' then
				H55SMOD_HeroSkill[strHero][SKILL_ABSOLUTE_MORALE] = 0;
			else
				H55SMOD_HeroSkill[strHero][SKILL_ABSOLUTE_MORALE] = strHeroSkill * 1;
			end;
		end;
	end;
	function Events_Init_HeroSkill()
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil then
				local strHero = GetHeroName(GetHero(iSide));
				for indexSkill, objSkill in TTH_SKILL_EFFECT_COMBAT do
					local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..objSkill;
					local strValue = GetGameVar(strKey);
					if strValue ~= nil and strValue ~= '' and strValue + 0 > 0 then
						TTH_SKILL_EFFECT_COMBAT_HERO[iSide][objSkill] = strValue + 0;
					end;
				end;
			end;
		end;
	end;
	function Events_Init_HeroAbility()
		if 1 == 1 then
			local strHero = 'Ildar';
			if H55SMOD_HeroAbility[strHero] == nil then
				H55SMOD_HeroAbility[strHero] = {};
			end;
			if 1 == 1 then
				local strHeroAbility = GetGameVar('TTH_Var_Talent_'..strHero);
				if strHeroAbility == nil
					or strHeroAbility == ''
					or strHeroAbility == '0' then
					H55SMOD_HeroAbility[strHero] = 'Light';
				else
					H55SMOD_HeroAbility[strHero] = 'Dark';
				end;
			end;
		end;
	end;
	function Events_Init_HeroArtifact()
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil then
				local strHero = GetHeroName(GetHero(iSide));
				for indexArtifact, objArtifact in TTH_ARTIFACT_EFFECT_COMBAT do
					local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT..strHero..'_'..objArtifact;
					local strValue = GetGameVar(strKey);
					if strValue ~= nil and strValue ~= '' and strValue + 0 > 0 then
						TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][objArtifact] = strValue + 0;
					end;
				end;
				for indexArtifactSet, objArtifactSet in TTH_ARTIFACTSET_EFFECT_COMBAT do
					local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACTSET..strHero..'_'..objArtifactSet["Id"]..'_'..objArtifactSet["Count"];
					local strValue = GetGameVar(strKey);
					if strValue ~= nil and strValue ~= '' and strValue + 0 > 0 then
						TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][objArtifactSet["Id"]..'_'..objArtifactSet["Count"]] = strValue + 0;
					end;
				end;
			end;
		end;
	end;
	function Events_Init_Interface()
		-- 前置宝物特效
		H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['function']['summon']();

		-- 前置英雄特效
		Events_Start_Interface('Sarge', 0);
		Events_Start_Interface('Shadwyn', 1);
		Events_Start_Interface('Azar', 1);
		Events_Start_Interface('KujinMP', 1);
		Events_Start_Interface('Tan', 0);
		Events_Start_Interface('Ildar', 0);

		-- 神器特效-排除Timerkhan
		if (GetHero(ENUM_SIDE.ATTACKER) ~= nil and GetHeroName(GetHero(ENUM_SIDE.ATTACKER)) ~= 'Timerkhan')
			or (GetHero(ENUM_SIDE.DEFENDER) ~= nil and GetHeroName(GetHero(ENUM_SIDE.DEFENDER)) ~= 'Timerkhan') then
			Events_Start_Artifact_Interface();
		end;

		-- 后置英雄特效
		-- Events_Start_Interface('Maeve', 0);

		Events_Start_Interface('Dracon', 1);
		Events_Start_Interface('Josephine', 1);

		-- Events_Start_Interface('Efion', 1);
		-- Events_Start_Interface('Aislinn', 1);

		Events_Start_Interface('Vegeyr', 1);
		Events_Start_Interface('Tazar', 0);
		Events_Start_Interface('Nicolai', 0);

		Events_Start_Interface('Matewa', 0);

		-- 后置宝物特效
		H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER]['function']();
		H55SMOD_Start['Artifact'][ARTIFACT_DRUM_OF_CHARGE]['function']();

		-- 后置技能特效
		H55SMOD_Start['Skill'][HERO_SKILL_MYSTICISM]['function']();
		-- H55SMOD_Start['Skill'][HERO_SKILL_GUARDIAN_ANGEL]['function']();
		H55SMOD_Start['Skill'][HERO_SKILL_PARIAH]['function']();
		H55SMOD_Start['Skill'][HERO_SKILL_TWILIGHT]['function']();
	end;

-- 监听: 单位触发接口
	function onUnitTriggerMiddlewareListener(strUnitName, iType)
		print('begin')
		print('strUnitName:'..strUnitName)

		-- -- 野怪增援中野怪英雄无法行动
		-- if TTH_SwitchHeroNotExistOnMap == 1 then
		-- 	TTH_SwitchHeroNotExistOnMap = 0;
		-- else
		-- 	TTH_SwitchHeroNotExistOnMap = 1;
		-- 	if TTH_HeroNotExistOnMap ~= -1 then
		-- 		-- startThread(Thread_Command_UnitDefend, strUnitName);
		-- 		-- DefendCombatUnit(strUnitName);
		-- 		setATB(GetHero(TTH_HeroNotExistOnMap), 0);
		-- 		return nil;
		-- 	end;
		-- end;

		-- 触发底层接口的单位
		local itemUnit = geneUnitStatus(strUnitName, iType);
		if itemUnit == nil then
			return nil;
		end;

		if iType == ENUM_BASICLISTENER.DEATH then
			-- 触发底层接口的单位列表
			push(ListUnitTriggerBasicListener, itemUnit);

			print(itemUnit["strUnitName"].." death");
			-- Skill
				H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_TRIPLE_CATAPULT]['function'](getSide(itemUnit["iSide"], 1), itemUnit);
			H55SMOD_MiddlewareListener['Adelaide']['function']['hero']('Adelaide', itemUnit["iSide"], itemUnit);
		elseif iType == ENUM_BASICLISTENER.MOVE then
			local itemUnitLast = nil;
			if length(ListUnitTriggerMiddlewareListener) > 0 then
				itemUnitLast = ListUnitTriggerMiddlewareListener[length(ListUnitTriggerMiddlewareListener) - 1];

				-- 神器特效-Timerkhan
				if length(ListUnitTriggerMiddlewareListener) == 1 and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO and GetHeroName(itemUnitLast['strUnitName']) == 'Timerkhan' then
					combatSetPause(1);
					Events_Start_Artifact_Interface();
					combatSetPause(nil);
				end;
			end;
			if itemUnitLast ~= nil and equal(itemUnit, itemUnitLast) == 1 and length(ListUnitTriggerMiddlewareListener) > 1 then
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					H55SMOD_MiddlewareListener['Skeggy']['function']['charge']('Skeggy', iSide, itemUnitLast);
				end;
				print('repeat');
				return nil;
			end;
			local iLenUnitPasted = length(ListUnitPasted);
			if iLenUnitPasted > 0 then
				for iIndexUnitPasted = 0, iLenUnitPasted - 1 do
					if ListUnitPasted[iIndexUnitPasted]['strUnitName'] == itemUnit['strUnitName'] then
						pop(ListUnitPasted, iIndexUnitPasted);
						print('pasted');
						return nil;
					end;
				end;
			end;

			-- 触发中间件接口的单位列表
			push(ListUnitTriggerMiddlewareListener, itemUnit);
			if length(ListUnitTriggerMiddlewareListener) > 1 then
				TTH_START = 0;
			end;
			-- 上上回合的游戏快照
			ObjSnapshotBeforeLastTurn = ObjSnapshotLastTurn;
			if length(ListUnitTriggerMiddlewareListener) == 1 then
				ObjSnapshotBeforeLastTurn = ObjSnapshotInit;
			end;
			-- 上回合的游戏快照
			ObjSnapshotLastTurn = {};

			-- Hero
				ObjSnapshotLastTurn['Hero'] = {};
				ObjSnapshotLastTurn['Hero'][ENUM_SIDE.ATTACKER] = geneUnitStatus(GetHero(ENUM_SIDE.ATTACKER), -1);
				if GetHero(ENUM_SIDE.DEFENDER) ~= nil then
					ObjSnapshotLastTurn['Hero'][ENUM_SIDE.DEFENDER] = geneUnitStatus(GetHero(ENUM_SIDE.DEFENDER), -1);
				end;

			-- Creatures
				ObjSnapshotLastTurn['Creatures'] = {};
				ObjSnapshotLastTurn['Creatures'][ENUM_SIDE.ATTACKER] = {};
				local listAttackerCreatures = GetCreatures(ENUM_SIDE.ATTACKER);
				local iLenAttackerCreatures = length(listAttackerCreatures);
				for iIndexAttackerCreatures = 0, iLenAttackerCreatures - 1 do
					push(ObjSnapshotLastTurn['Creatures'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerCreatures[iIndexAttackerCreatures], -1));
				end;
				ObjSnapshotLastTurn['Creatures'][ENUM_SIDE.DEFENDER] = {};
				local listDefenderCreatures = GetCreatures(ENUM_SIDE.DEFENDER);
				local iLenDefenderCreatures = length(listDefenderCreatures);
				for iIndexDefenderCreatures = 0, iLenDefenderCreatures - 1 do
					push(ObjSnapshotLastTurn['Creatures'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderCreatures[iIndexDefenderCreatures], -1));
				end;

			-- WarMachines
				ObjSnapshotLastTurn['WarMachines'] = {};
				ObjSnapshotLastTurn['WarMachines'][ENUM_SIDE.ATTACKER] = {};
				local listAttackerWarMachines = GetWarMachines(ENUM_SIDE.ATTACKER);
				local iLenAttackerWarMachines = length(listAttackerWarMachines);
				for iIndexAttackerWarMachines = 0, iLenAttackerWarMachines - 1 do
					push(ObjSnapshotLastTurn['WarMachines'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerWarMachines[iIndexAttackerWarMachines], -1));
				end;
				ObjSnapshotLastTurn['WarMachines'][ENUM_SIDE.DEFENDER] = {};
				local listDefenderWarMachines = GetWarMachines(ENUM_SIDE.DEFENDER);
				local iLenDefenderWarMachines = length(listDefenderWarMachines);
				for iIndexDefenderWarMachines = 0, iLenDefenderWarMachines - 1 do
					push(ObjSnapshotLastTurn['WarMachines'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderWarMachines[iIndexDefenderWarMachines], -1));
				end;

			-- Buildings
				ObjSnapshotLastTurn['Buildings'] = {};
				ObjSnapshotLastTurn['Buildings'][ENUM_SIDE.ATTACKER] = {};
				local listAttackerBuildings = GetBuildings(ENUM_SIDE.ATTACKER);
				local iLenAttackerBuildings = length(listAttackerBuildings);
				for iIndexAttackerBuildings = 0, iLenAttackerBuildings - 1 do
					push(ObjSnapshotLastTurn['Buildings'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerBuildings[iIndexAttackerBuildings], -1));
				end;
				ObjSnapshotLastTurn['Buildings'][ENUM_SIDE.DEFENDER] = {};
				local listDefenderBuildings = GetBuildings(ENUM_SIDE.DEFENDER);
				local iLenDefenderBuildings = length(listDefenderBuildings);
				for iIndexDefenderBuildings = 0, iLenDefenderBuildings - 1 do
					push(ObjSnapshotLastTurn['Buildings'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderBuildings[iIndexDefenderBuildings], -1));
				end;

			-- SpellSpawns
				ObjSnapshotLastTurn['SpellSpawns'] = {};
				ObjSnapshotLastTurn['SpellSpawns'][ENUM_SIDE.ATTACKER] = {};
				local listAttackerSpellSpawns = GetSpellSpawns(ENUM_SIDE.ATTACKER);
				local iLenAttackerSpellSpawns = length(listAttackerSpellSpawns);
				for iIndexAttackerSpellSpawns = 0, iLenAttackerSpellSpawns - 1 do
					push(ObjSnapshotLastTurn['SpellSpawns'][ENUM_SIDE.ATTACKER], geneUnitStatus(listAttackerSpellSpawns[iIndexAttackerSpellSpawns], -1));
				end;
				ObjSnapshotLastTurn['SpellSpawns'][ENUM_SIDE.DEFENDER] = {};
				local listDefenderSpellSpawns = GetSpellSpawns(ENUM_SIDE.DEFENDER);
				local iLenDefenderSpellSpawns = length(listDefenderSpellSpawns);
				for iIndexDefenderSpellSpawns = 0, iLenDefenderSpellSpawns - 1 do
					push(ObjSnapshotLastTurn['SpellSpawns'][ENUM_SIDE.DEFENDER], geneUnitStatus(listDefenderSpellSpawns[iIndexDefenderSpellSpawns], -1));
				end;

			-- 通用前置
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener['RedHeavenHero05']['function']['before']('RedHeavenHero05', iSide, itemUnitLast);
						-- Sylvan
						-- Academy
						-- Inferno
						-- Necropolis
							-- H55SMOD_MiddlewareListener['Nur']['function']('Nur', iSide, itemUnit);
						-- Fortress
						-- Dungeon
						-- Stronghold
					end;
				end;

			-- 英雄失去魔法值
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						if GetHero(iSide) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] > ObjSnapshotLastTurn['Hero'][iSide]['iMana'] then
							local iLossManaPoints = ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotLastTurn['Hero'][iSide]['iMana'];

							-- Haven
								H55SMOD_MiddlewareListener['RedHeavenHero03']['function']['product']('RedHeavenHero03', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Orlando']['function']('Orlando', iSide, itemUnitLast, iLossManaPoints);
							-- Sylvan
							-- Academy
								H55SMOD_MiddlewareListener['Faiz']['function']['product']('Faiz', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Nur']['function']['product']('Nur', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Cyrus']['function']('Cyrus', iSide, itemUnitLast, iLossManaPoints);
							-- Inferno
								H55SMOD_MiddlewareListener['Efion']['function']['product']('Efion', iSide, itemUnitLast, iLossManaPoints);
							-- Necropolis
								H55SMOD_MiddlewareListener['Straker']['function']('Straker', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Effig']['function']('Effig', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Nimbus']['function']('Nimbus', getSide(iSide, 1), itemUnitLast, iLossManaPoints);
							-- Fortress
							-- Dungeon
								H55SMOD_MiddlewareListener['Almegir']['function']('Almegir', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Ferigl']['function']('Ferigl', iSide, itemUnitLast, iLossManaPoints);
							-- Stronghold
								H55SMOD_MiddlewareListener['Erika']['function']('Erika', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Gottai']['function']('Gottai', iSide, itemUnitLast, iLossManaPoints);
							-- Common
								H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_ELITE_CASTERS]['function'](iSide, itemUnitLast, iLossManaPoints);
							-- ArtifactSet
								H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["function"](iSide, itemUnitLast, TTHCS_ENUM.Voice);

							if itemUnitLast['iSide'] == iSide and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO then
								H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_EIGHTFOLD]['function'](itemUnitLast, iSide);
								H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_MOONBLADE]['function'](itemUnitLast, iSide);
							end;

							-- 造成生物减员
							local listCreaturesBeEffected = {};
							local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
							local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
							for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
								for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
									if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
										and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] then
										push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
									end;
								end;
							end;
							local listCreaturesDeath = {};
							for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
								local bIsExist = 0;
								for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
									if ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] then
										bIsExist = 1;
										break;
									end;
								end;
								if bIsExist == 0 then
									push(listCreaturesDeath, ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]);
								end;
							end;
							local listCreaturesBeAnimated = {};
							local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
							local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
							for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
								for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
									if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
										and ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iUnitNumber'] < ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitNumber'] then
										push(listCreaturesBeAnimated, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
									end;
								end;
							end;
							local listCreaturesRevive = {};
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								local bIsExist = 0;
								for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
									if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
										bIsExist = 1;
										break;
									end;
								end;
								if bIsExist == 0 then
									local iLenCreaturesInit = length(ObjSnapshotInit['Creatures'][iSide]);
									for iIndexCreaturesInit = 0, iLenCreaturesInit - 1 do
										if ObjSnapshotInit['Creatures'][iSide][iIndexCreaturesInit]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
											push(listCreaturesRevive, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
										end;
									end
								end;
							end;

							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
								H55SMOD_MiddlewareListener['Aislinn']['function']('Aislinn', iSide, itemUnitLast, listCreaturesBeAnimated, listCreaturesRevive);
							-- Fortress
								H55SMOD_MiddlewareListener['Hangvul2']['function']('Hangvul2', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Dungeon
								H55SMOD_MiddlewareListener['Sephinroth']['function']('Sephinroth', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener['Eruina']['function']('Eruina', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener['Agbeth']['function']('Agbeth', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Stronghold
							-- Artifact
								H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_BOOK_OF_MALASSA]['function'](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
						end;
					end;
				end;

			-- 英雄魔法值变化
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						if GetHero(iSide) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] ~= ObjSnapshotLastTurn['Hero'][iSide]['iMana'] then
							-- Haven
							-- Sylvan
								if ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotLastTurn['Hero'][iSide]['iMana'] > 5
									or ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotLastTurn['Hero'][iSide]['iMana'] <= -10 then
									H55SMOD_MiddlewareListener['Vaniel']['function']('Vaniel', iSide, itemUnitLast, itemUnit);
									H55SMOD_MiddlewareListener['Zydar']['function']('Zydar', iSide, itemUnitLast, itemUnit);
								end;
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
								if ObjSnapshotLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] > 0 then
									local iIncreaseManaPoints = ObjSnapshotLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'];
									H55SMOD_MiddlewareListener['Egil']['function']['hero']('Egil', iSide, itemUnitLast, iIncreaseManaPoints);
								end;
							-- Dungeon
							-- Stronghold
						end;
					end;
				end;

			-- 生物失去魔法值
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesLoseMana = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iMana'] > ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iMana'] then
									local iLossManaPoints = ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iMana'] - ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iMana'];
									-- Haven
									-- Sylvan
									-- Academy
										H55SMOD_MiddlewareListener['Dracon']['function']['creature']('Dracon', iSide, itemUnitLast, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast], iLossManaPoints);
									-- Inferno
									-- Necropolis
										H55SMOD_MiddlewareListener['Thant']['function']['creature']('Thant', iSide, itemUnitLast, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast], iLossManaPoints);
										H55SMOD_MiddlewareListener['Nimbus']['function']('Nimbus', iSide, itemUnitLast, iLossManaPoints);
										H55SMOD_MiddlewareListener['Nimbus']['function']('Nimbus', getSide(iSide, 1), itemUnitLast, iLossManaPoints);
									-- Fortress
									-- Dungeon
									-- Stronghold
									-- Creature
										H55SMOD_MiddlewareListener['Enchanter']['function']['charge'](GetHero(iSide), iSide, itemUnitLast);
								end;
							end;
						end;
					end;
				end;

			-- 生物位移
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesMoved = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
									and (ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iPositionX'] ~= ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iPositionX']
										or ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iPositionY'] ~= ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iPositionY']) then
									push(listCreaturesMoved, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
								end;
							end;
						end;

						if length(listCreaturesMoved) > 0 then
							-- Haven

							-- Sylvan

							-- Academy

							-- Inferno

							-- Necropolis

							-- Fortress
								H55SMOD_MiddlewareListener['Bersy']['function']('Bersy', iSide, itemUnitLast, listCreaturesMoved);
							-- Dungeon

							-- Stronghold

						end;
					end;
				end;

			-- 造成生物减员
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesBeEffected = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitNumber'] then
									push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
								end;
							end;
						end;
						local listCreaturesDeath = {};
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							local bIsExist = 0;
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listCreaturesDeath, ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]);
							end;
						end;

						-- 多队
						if length(listCreaturesBeEffected) + length(listCreaturesDeath) > 1 then
							-- Haven
							-- Sylvan
							-- Academy
								H55SMOD_MiddlewareListener['Dracon']['function']['charge']('Dracon', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								-- H55SMOD_MiddlewareListener['Nur']['function']['creature']('Nur', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
						end;

						-- 减员
						if length(listCreaturesBeEffected) >= 1 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
								H55SMOD_MiddlewareListener['Nemor']['function']('Nemor', iSide, itemUnitLast, listCreaturesBeEffected);
								H55SMOD_MiddlewareListener['Adelaide']['function']['creature']('Adelaide', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Fortress
								H55SMOD_MiddlewareListener['Egil']['function']['creature']('Egil', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Dungeon
							-- Stronghold
								H55SMOD_MiddlewareListener['Hero9']['function']('Hero9', iSide, itemUnitLast, listCreaturesBeEffected);
						end;

						-- 单队
						if length(listCreaturesBeEffected) == 1 then
							-- 英雄平砍
							if GetHero(getSide(iSide, 1)) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][getSide(iSide, 1)]['iMana'] == ObjSnapshotLastTurn['Hero'][getSide(iSide, 1)]['iMana'] then
								-- Haven
									H55SMOD_MiddlewareListener['Orrin']['function']('Orrin', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
									H55SMOD_MiddlewareListener['RedHeavenHero05']['function']['deal']('RedHeavenHero05', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- Sylvan
								-- Academy
								-- Inferno
									H55SMOD_MiddlewareListener['Orlando2']['function']('Orlando2', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
									H55SMOD_MiddlewareListener['Calid']['function']('Calid', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- Necropolis
								-- Fortress
								-- Dungeon
								-- Stronghold
								-- Skill
									H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_WEAKENING_STRIKE]['function'](getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
									H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_SEAL_OF_PROTECTION]['function'](getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- ArtifactSet
									H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["function"](getSide(iSide, 1), itemUnitLast, TTHCS_ENUM.Combat);
							end;

							-- Haven
							-- Sylvan
								H55SMOD_MiddlewareListener['Gem']['function']['enemy']('Gem', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Academy
								H55SMOD_MiddlewareListener['Isher']['function']('Isher', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
						end;

						if length(listCreaturesBeEffected) == 1 or length(listCreaturesDeath) == 1 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
								H55SMOD_MiddlewareListener['Skeggy']['function']['consume']('Skeggy', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
							-- Dungeon
							-- Stronghold
						end;
					end;
				end;

			-- 生物恢复数量
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesBeEffected = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iUnitNumber'] < ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitNumber'] then
									push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
								end;
							end;
						end;

						-- 恢复
						if length(listCreaturesBeEffected) >= 1 then
							-- Haven
							-- Sylvan
								H55SMOD_MiddlewareListener['Itil']['function']('Itil', iSide, itemUnitLast, listCreaturesBeEffected);
								H55SMOD_MiddlewareListener['Gem']['function']['friendly']('Gem', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
						end;
					end;
				end;

			-- 击杀生物
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesLastDeath = {};
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							local bIsExist = 0;
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listCreaturesLastDeath, ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]);
							end;
						end;

						local listCreaturesBeEffected = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] then
									push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
								end;
							end;
						end;
						-- Haven
							H55SMOD_MiddlewareListener['Mardigo']['function']('Mardigo', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Sylvan
							H55SMOD_MiddlewareListener['Ildar']['function']('Ildar', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Academy
							H55SMOD_MiddlewareListener['Davius']['function']['kill']('Davius', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Inferno
							H55SMOD_MiddlewareListener['Ash']['function']['creature']('Ash', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Necropolis
							H55SMOD_MiddlewareListener['Gles']['function']('Gles', iSide, itemUnitLast, listCreaturesLastDeath);
							H55SMOD_MiddlewareListener['Giovanni']['function']['creature']('Giovanni', iSide, itemUnitLast, listCreaturesLastDeath, listCreaturesBeEffected);
							H55SMOD_MiddlewareListener['Vidomina']['function']('Vidomina', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Fortress
							H55SMOD_MiddlewareListener['Bersy']['function']('Bersy', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Dungeon
						-- Stronghold
							H55SMOD_MiddlewareListener['Hero3']['function']('Hero3', iSide, itemUnitLast, listCreaturesLastDeath);
					end;
				end;

			-- 召唤生物
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesLastSummon = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
							local bIsExist = 0;
							for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listCreaturesLastSummon, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
							end;
						end;
						-- Haven
						-- Sylvan
						-- Academy
							H55SMOD_MiddlewareListener['Zehir']['function']('Zehir', iSide, itemUnitLast, listCreaturesLastSummon);
						-- Inferno
							H55SMOD_MiddlewareListener['Calh']['function']('Calh', iSide, itemUnitLast, listCreaturesLastSummon);
							H55SMOD_MiddlewareListener['Malustar']['function']('Malustar', iSide, itemUnitLast, listCreaturesLastSummon);
						-- Necropolis
						-- Fortress
						-- Dungeon
							H55SMOD_MiddlewareListener['Kastore']['function']('Kastore', iSide, itemUnitLast, listCreaturesLastSummon);
						-- Stronghold
					end;
				end;

			-- 召唤物消失or被摧毁
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listUnitLastSummonBeDestroied = {};
						local iLenSpellSpawnsLast = length(ObjSnapshotLastTurn['SpellSpawns'][iSide]);
						local iLenSpellSpawnsBeforeLast = length(ObjSnapshotBeforeLastTurn['SpellSpawns'][iSide]);
						for iIndexSpellSpawnsBeforeLast = 0, iLenSpellSpawnsBeforeLast - 1 do
							local bIsExist = 0;
							for iIndexSpellSpawnsLast = 0, iLenSpellSpawnsLast - 1 do
								if ObjSnapshotLastTurn['SpellSpawns'][iSide][iIndexSpellSpawnsLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['SpellSpawns'][iSide][iIndexSpellSpawnsBeforeLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listUnitLastSummonBeDestroied, ObjSnapshotBeforeLastTurn['SpellSpawns'][iSide][iIndexSpellSpawnsBeforeLast]);
							end;
						end;
						-- Haven
						-- Sylvan
						-- Academy
						-- Inferno
						-- Necropolis
						-- Fortress
						-- Dungeon
							H55SMOD_MiddlewareListener['Emilia']['function']('Emilia', iSide, itemUnitLast, listUnitLastSummonBeDestroied);
						-- Stronghold
					end;
				end;

			-- 血怒变化
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listUnitLastSummonBeDestroied = {};
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] then
									local itemUnitRager = ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast];
									if itemUnitRager['iRagePoints'] ~= nil and itemUnitRager['iRageLevel'] ~= nil then
										if TTH_START == 1 and itemUnitRager['iRageLevel'] >= 1
											or (TTH_START == 0 and itemUnitRager['iRageLevel'] > ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iRageLevel'])
											or (TTH_START == 0 and itemUnitRager['iRagePoints'] - ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iRagePoints'] >= 500)
											-- or ( itemUnitRager['iRagePoints'] - ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iRagePoints'] >= 105
											-- 	and ( itemUnitRager['iUnitType'] == CREATURE_CENTAUR or itemUnitRager['iUnitType'] == CREATURE_CENTAUR_NOMAD or itemUnitRager['iUnitType'] == CREATURE_CENTAUR_MARADEUR ) )
											-- or ( itemUnitRager['iRagePoints'] - ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iRagePoints'] >= 330
											-- 	and ( itemUnitRager['iUnitType'] == CREATURE_ORC_SLAYER ) )
											-- or ( itemUnitRager['iRagePoints'] - ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iRagePoints'] >= 480
											-- 	and ( itemUnitRager['iUnitType'] == CREATURE_ORCCHIEF_BUTCHER or itemUnitRager['iUnitType'] == CREATURE_ORCCHIEF_EXECUTIONER or itemUnitRager['iUnitType'] == CREATURE_ORCCHIEF_CHIEFTAIN ) )
											-- or ( itemUnitRager['iRagePoints'] - ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iRagePoints'] >= 180
											-- 	and ( itemUnitRager['iUnitType'] ~= CREATURE_CENTAUR and itemUnitRager['iUnitType'] ~= CREATURE_CENTAUR_NOMAD and itemUnitRager['iUnitType'] ~= CREATURE_CENTAUR_MARADEUR
											-- 		and itemUnitRager['iUnitType'] ~= CREATURE_ORC_SLAYER
											-- 		and itemUnitRager['iUnitType'] ~= CREATURE_ORCCHIEF_BUTCHER and itemUnitRager['iUnitType'] ~= CREATURE_ORCCHIEF_EXECUTIONER and itemUnitRager['iUnitType'] ~= CREATURE_ORCCHIEF_CHIEFTAIN ) )
										then
											-- Haven
											-- Sylvan
											-- Academy
											-- Inferno
											-- Necropolis
											-- Fortress
											-- Dungeon
											-- Stronghold
												H55SMOD_MiddlewareListener['Shiva']['function']('Shiva', iSide, itemUnitLast, itemUnitRager);
												H55SMOD_MiddlewareListener['Zouleika']['function']('Zouleika', iSide, itemUnitLast, itemUnitRager);
												H55SMOD_MiddlewareListener['Hero4']['function']('Hero4', iSide, itemUnitLast, itemUnitRager);
										end;
									end;
								end;
							end;
						end;
					end;
				end;

			-- 圣堂新终极相关
				-- 英雄结算
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- 造成生物减员
						local listCreaturesBeEffected = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] then
									push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
								end;
							end;
						end;
						local listUnitLastDeath = {};
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							local bIsExist = 0;
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listUnitLastDeath, ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]);
							end;
						end;
						if GetHero(iSide) ~= nil then
							-- 英雄失去魔法值
							local iLossMana = ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotLastTurn['Hero'][iSide]['iMana'];

							-- 上回合行动单位为英雄 造成生物减员 英雄失去魔法值
							-- if itemUnitLast['iSide'] == iSide and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO and (length(listCreaturesBeEffected) + length(listUnitLastDeath) > 0 or iLossMana > 0) then
							-- 	H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function']['charge'](itemUnitLast, iSide);
							-- end;
						end;
					end;
				end;

			-- 英雄行动
				if itemUnit ~= nil and itemUnit['iUnitCategory'] == ENUM_CATEGORY.HERO then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Artifact
							H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND]['function'](iSide, itemUnit);

						-- Skill
							-- H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function']['consume'](itemUnit, iSide);

						-- Haven
							H55SMOD_MiddlewareListener['GodricMP']['function']('GodricMP', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Maeve']['function']('Maeve', iSide, itemUnit);
							H55SMOD_MiddlewareListener['RedHeavenHero03']['function']['consume']('RedHeavenHero03', iSide, itemUnit);
						-- Sylvan
						-- Academy
							H55SMOD_MiddlewareListener['Faiz']['function']['consume']('Faiz', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Nur']['function']['consume']('Nur', iSide, itemUnit);
							H55SMOD_Start['Tan']['function']('Tan', iSide, 0);
							H55SMOD_MiddlewareListener['Minasli']['function']['consume']('Minasli', iSide, itemUnit);
						-- Inferno
							H55SMOD_MiddlewareListener['Ash']['function']['hero']('Ash', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Efion']['function']['consume']('Efion', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Deleb']['function']['consume']('Deleb', iSide, itemUnit);
						-- Necropolis
							H55SMOD_MiddlewareListener['Giovanni']['function']['hero']('Giovanni', iSide, itemUnit);
						-- Fortress
						-- Dungeon
						-- Stronghold
							H55SMOD_MiddlewareListener['Mokka']['function']('Mokka', iSide, itemUnit);

					end;
				end;

			-- 生物行动
				if itemUnit ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener['Ving']['function']('Ving', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Jeddite']['function']('Jeddite', iSide, itemUnit);
						-- Sylvan
							H55SMOD_MiddlewareListener['Gelu']['function']('Gelu', iSide, itemUnit);
						-- Academy
							H55SMOD_MiddlewareListener['Davius']['function']['init']('Davius', iSide, itemUnit);
						-- Inferno
						-- Necropolis
							H55SMOD_MiddlewareListener['Muscip']['function']('Muscip', iSide, itemUnit);
						-- Fortress
						-- Dungeon
						-- Stronghold
							H55SMOD_MiddlewareListener['Quroq']['function']('Quroq', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Hero8']['function']['active']('Hero8', iSide, itemUnit);
						-- Creature
							H55SMOD_MiddlewareListener['LightAngel']['function']('LightAngel', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Enchanter']['function']['consume']('Enchanter', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Cherubin']['function']('Cherubin', iSide, itemUnit);
							H55SMOD_MiddlewareListener['DragonKnight']['function']('DragonKnight', iSide, itemUnit);
					end;
				end;

			-- 战争机械行动
				if itemUnit ~= nil and itemUnit['iUnitCategory'] == ENUM_CATEGORY.WARMACHINE then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
						-- Sylvan
						-- Academy
							H55SMOD_MiddlewareListener['Minasli']['function']['product']('Minasli', iSide, itemUnit);
						-- Inferno
						-- Necropolis
						-- Fortress
						-- Dungeon
						-- Stronghold
						-- Creature
					end;
				end;

			-- 上回合英雄行动
				-- if itemUnitLast ~= nil and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO then
				-- 	for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
				-- 		if GetHero(iSide) ~= nil then
				-- 			-- 上回合生物状态对比记录
				-- 				local iLenCreaturesBeforeLastNotReverse = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
				-- 				local iLenCreaturesLastNotReverse = length(ObjSnapshotLastTurn['Creatures'][iSide]);
				-- 				local iLenCreaturesBeforeLastReverse = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
				-- 				local iLenCreaturesLastReverse = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
				-- 				-- 生物减员
				-- 					local listCreaturesBeEffected = {};
				-- 					for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLastReverse - 1 do
				-- 						for iIndexCreaturesLast = 0, iLenCreaturesLastReverse - 1 do
				-- 							if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
				-- 								and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] then
				-- 								push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
				-- 							end;
				-- 						end;
				-- 					end;
				-- 				-- 生物增员
				-- 					local listCreaturesBeAnimated = {};
				-- 					for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLastNotReverse - 1 do
				-- 						for iIndexCreaturesLast = 0, iLenCreaturesLastNotReverse - 1 do
				-- 							if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
				-- 								and ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iUnitNumber'] < ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitNumber'] then
				-- 								push(listCreaturesBeAnimated, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
				-- 							end;
				-- 						end;
				-- 					end;
				-- 				-- 生物被击杀
				-- 					local listCreaturesDeath = {};
				-- 					for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLastReverse - 1 do
				-- 						local bIsExist = 0;
				-- 						for iIndexCreaturesLast = 0, iLenCreaturesLastReverse - 1 do
				-- 							if ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] then
				-- 								bIsExist = 1;
				-- 								break;
				-- 							end;
				-- 						end;
				-- 						if bIsExist == 0 then
				-- 							push(listCreaturesDeath, ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]);
				-- 						end;
				-- 					end;
				-- 				-- 生物被复活
				-- 					local listCreaturesRevive = {};
				-- 					for iIndexCreaturesLast = 0, iLenCreaturesLastNotReverse - 1 do
				-- 						local bIsExist = 0;
				-- 						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLastNotReverse - 1 do
				-- 							if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
				-- 								bIsExist = 1;
				-- 								break;
				-- 							end;
				-- 						end;
				-- 						if bIsExist == 0 then
				-- 							local iLenCreaturesInit = length(ObjSnapshotInit['Creatures'][iSide]);
				-- 							for iIndexCreaturesInit = 0, iLenCreaturesInit - 1 do
				-- 								if ObjSnapshotInit['Creatures'][iSide][iIndexCreaturesInit]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
				-- 									push(listCreaturesRevive, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
				-- 								end;
				-- 							end
				-- 						end;
				-- 					end;

				-- 			-- 英雄跳过行动
				-- 			if length(listCreaturesBeEffected) == 0
				-- 				and length(listCreaturesBeAnimated) == 0
				-- 				and length(listCreaturesDeath) == 0
				-- 				and length(listCreaturesRevive) == 0
				-- 				and ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] == ObjSnapshotLastTurn['Hero'][iSide]['iMana'] then

				-- 				-- Haven
				-- 				-- Sylvan
				-- 				-- Academy
				-- 				-- Inferno
				-- 				-- Necropolis
				-- 				-- Fortress
				-- 				-- Dungeon
				-- 				-- Stronghold
				-- 					H55SMOD_MiddlewareListener['Kraal']['function']('Kraal', iSide, itemUnitLast);
				-- 			end;
				-- 		end;
				-- 	end;
				-- end;

			-- 上回合生物行动
				if itemUnitLast ~= nil and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.CREATURE then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- 造成生物战损（至少为1）
						local listCreaturesBeEffectedLimit = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] then
									push(listCreaturesBeEffectedLimit, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
								end;
							end;
						end;
						-- 造成生物有效战损（英雄等级/8（向下取整&至少为1））
						local listCreaturesBeEffected8HeroLevel = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
						local iKillCreature8HeroLevel = 1;
						if GetHero(iSide) ~= nil then
							iKillCreature8HeroLevel = h55_floor(H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] / 8);
							if iKillCreature8HeroLevel < 1 then
								iKillCreature8HeroLevel = 1;
							end;
						end;
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] - ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] >= iKillCreature8HeroLevel then
									push(listCreaturesBeEffected8HeroLevel, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
								end;
							end;
						end;
						-- 造成生物击杀
						local listCreaturesDeath = {};
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							local bIsExist = 0;
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listCreaturesDeath, ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]);
							end;
						end;

						-- 造成生物减员 && 造成生物击杀
						if length(listCreaturesBeEffectedLimit) == 0 and length(listCreaturesDeath) == 0 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
								H55SMOD_MiddlewareListener['Skeggy']['function']['charge']('Skeggy', iSide, itemUnitLast);
							-- Dungeon
								H55SMOD_MiddlewareListener['Menel']['function']('Menel', iSide, itemUnitLast);
							-- Stronghold
						end;

						-- 上回合行动生物被击杀
						local itemUnitLastCurrent = geneUnitStatus(itemUnitLast['strUnitName']);
						if IsCombatUnit(itemUnitLastCurrent['strUnitName']) ~= nil and itemUnitLastCurrent['iUnitNumber'] == 0 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
								H55SMOD_MiddlewareListener['Hero8']['function']['trigger']('Hero8', iSide, itemUnitLastCurrent);
						end;

						if length(listCreaturesBeEffected8HeroLevel) >= 1 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
								H55SMOD_MiddlewareListener['Maximus']['function']['consume']('Maximus', iSide, itemUnitLast, listCreaturesBeEffected8HeroLevel);
							-- Dungeon
							-- Stronghold
						end;

						if length(listCreaturesBeEffected8HeroLevel) + length(listCreaturesDeath) >= 1 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
								H55SMOD_MiddlewareListener['Maximus']['function']['charge']('Maximus', iSide, itemUnitLast);
							-- Dungeon
							-- Stronghold
						end;
					end;
				end;

			-- 上回合战争机械行动
				if itemUnitLast ~= nil and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.WARMACHINE then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- 造成生物减员
						local listCreaturesBeEffected = {};
						local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)]);
						local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName']
									and ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['iUnitNumber'] > ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['iUnitNumber'] then
									push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]);
								end;
							end;
						end;
						-- 造成生物击杀
						local listCreaturesDeath = {};
						for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
							local bIsExist = 0;
							for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
								if ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesLast]['strUnitName'] == ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]['strUnitName'] then
									bIsExist = 1;
									break;
								end;
							end;
							if bIsExist == 0 then
								push(listCreaturesDeath, ObjSnapshotBeforeLastTurn['Creatures'][getSide(iSide, 1)][iIndexCreaturesBeforeLast]);
							end;
						end;

						if length(listCreaturesBeEffected) + length(listCreaturesDeath) >= 2 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
								H55SMOD_MiddlewareListener['Deleb']['function']['charge']('Deleb', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
						end;

						if length(listCreaturesBeEffected) + length(listCreaturesDeath) >= 1 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
								H55SMOD_MiddlewareListener['Kraal']['function']('Kraal', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
						end;
					end;
				end;

			-- 通用后置
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener['RedHeavenHero05']['function']['after']('RedHeavenHero05', iSide, itemUnitLast);
						-- Sylvan
							H55SMOD_MiddlewareListener['Mephala']['function']('Mephala', iSide, itemUnitLast);
						-- Academy
						-- Inferno
						-- Necropolis
							H55SMOD_MiddlewareListener['Archilus']['function']('Archilus', iSide, itemUnitLast);
						-- Fortress
						-- Dungeon
						-- Stronghold

						-- Artifact
							H55SMOD_Start['Artifact'][ARTIFACT_GEM_OF_PHANTOM]['function']['move'](iSide, itemUnitLast);
					end;
				end;

			print('move');
		end;

		-- setATB
			local iLenUnitSetATB = length(ListUnitSetATB);
			if iLenUnitSetATB > 0 then
				for iIndexUnitSetATB = 0, iLenUnitSetATB - 1 do
					if IsCombatUnit(ListUnitSetATB[iIndexUnitSetATB]['strUnitName']) ~= nil then
						setATB(ListUnitSetATB[iIndexUnitSetATB]['strUnitName'], ListUnitSetATB[iIndexUnitSetATB]['iAtb']);
					end;
				end;
			end;
			ListUnitSetATB = {};
	end;

-- 宝物
	H55SMOD_MiddlewareListener['Artifact'] = {};
	-- 亚莎之八重杖
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_EIGHTFOLD] = {};
		function Events_MiddlewareListener_Implement_Artifact_Eightfold(itemUnitLast, iSide)
			if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_EIGHTFOLD] == 1 then
				combatSetPause(1);
				print(I_TIMER);
				local iOver = tth_mod(I_TIMER, 4);
				print(iOver);
				if iOver == 0 then
					itemUnitLast['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnitLast);
				end;
				combatSetPause(nil);
			end;
		end;
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_EIGHTFOLD]['function'] = Events_MiddlewareListener_Implement_Artifact_Eightfold;
	-- 月光利刃
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_MOONBLADE] = {};
		function Events_MiddlewareListener_Implement_Artifact_Moonblade(itemUnitLast, iSide)
			if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_MOONBLADE] == 1 then
				SetUnitManaPoints(itemUnitLast['strUnitName'], GetUnitManaPoints(itemUnitLast['strUnitName']) + 2);
			end;
		end;
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_MOONBLADE]['function'] = Events_MiddlewareListener_Implement_Artifact_Moonblade;
	-- 闪耀坠饰
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND] = {};
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND][ENUM_SIDE.ATTACKER] = {};
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND][ENUM_SIDE.DEFENDER] = {};
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND][ENUM_SIDE.ATTACKER]['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND][ENUM_SIDE.DEFENDER]['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_MiddlewareListener_Implement_Artifact_PendantOfBlind(iSide, itemUnit)
			if H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND][iSide]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
				if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_PENDANT_OF_BLIND] == 1 then
					H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND][iSide]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
					local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
					local iOver = tth_mod(I_TIMER, iLenCreaturesLast);
					startThread(Thread_Command_UnitCastAimedSpell, itemUnit['strUnitName'], SPELL_BLIND, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iLenCreaturesLast - 1]['strUnitName'], 1);
					itemUnit['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnit);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_PENDANT_OF_BLIND]['function'] = Events_MiddlewareListener_Implement_Artifact_PendantOfBlind;
	-- ARTIFACT_BOOK_OF_MALASSA 147 玛拉萨之书
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_BOOK_OF_MALASSA] = {};
		function Events_MiddlewareListener_Implement_Artifact_BookOfMalassa(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
			local iSpellId = TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_BOOK_OF_MALASSA];
			if GetHero(iSide) == itemUnitLast['strUnitName'] and iSpellId ~= nil and iSpellId > 0 then
				combatSetPause(1);
				local bHasCast = TTHCS_ENUM.No;
				if contains(TTHCS_TABLE.ElementMagicAimed, iSpellId) ~= nil then
					if length(listCreaturesBeEffected) > 0 then
						for i, objCreature in listCreaturesBeEffected do
							if IsCombatUnit(objCreature["strUnitName"]) ~= nil and GetCreatureNumber(objCreature["strUnitName"]) > 0 then
								startThread(Thread_Command_UnitCastAimedSpell_UseMana, itemUnitLast['strUnitName'], iSpellId, objCreature["strUnitName"]);
								bHasCast = TTHCS_ENUM.Yes;
								break;
							end;
						end;
					end;
				end;
				if bHasCast == TTHCS_ENUM.No and contains(TTHCS_TABLE.ElementMagicArea, iSpellId) ~= nil then
					if length(listCreaturesBeEffected) > 0 then
						for i, objCreature in listCreaturesBeEffected do
							if IsCombatUnit(objCreature["strUnitName"]) ~= nil and GetCreatureNumber(objCreature["strUnitName"]) > 0 then
								startThread(Thread_Command_UnitCastAreaSpell_UseMana, itemUnitLast['strUnitName'], iSpellId, objCreature["iPositionX"], objCreature["iPositionY"]);
								bHasCast = TTHCS_ENUM.Yes;
								break;
							end;
						end;
					end;
					if bHasCast == TTHCS_ENUM.No and length(listCreaturesDeath) > 0 then
						for i, objCreature in listCreaturesDeath do
							startThread(Thread_Command_UnitCastAreaSpell_UseMana, itemUnitLast['strUnitName'], iSpellId, objCreature["iPositionX"], objCreature["iPositionY"]);
							bHasCast = TTHCS_ENUM.Yes;
							break;
						end;
					end;
				end;
				combatSetPause(nil);
			end;
		end;
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_BOOK_OF_MALASSA]['function'] = Events_MiddlewareListener_Implement_Artifact_BookOfMalassa;

-- 组合宝物
	H55SMOD_MiddlewareListener["ArtifactSet"] = {};

	-- 宝物套装-力量武器 英雄普攻造成战损后自动释放一次随机血之召唤
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2] = {};
		function Events_MiddlewareListener_Implement_ArtifactSet_SetOgres(iSide, itemUnitLast, enumType)
			if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
				if TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_OGRES.."_"..2] ~= nil
					and TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_OGRES.."_"..2] >= 2 then
					combatSetPause(1);
					local listCreaturesTarget = GetCreatures(iSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					local arrStrongholdCreature = {};
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
						if IsCombatUnit(itemCreature["strUnitName"]) ~= nil
							and itemCreature["iUnitNumber"] > 0
							and contains(TTHCS_TABLE.StrongholdCreature, itemCreature["iUnitType"]) ~= nil then
							arrStrongholdCreature = push(arrStrongholdCreature, itemCreature["strUnitName"]);
						end;
					end;
					local iLenStrongholdCreature = length(arrStrongholdCreature);
					local iIndexCreature = tth_mod(I_TIMER, iLenStrongholdCreature);
					local strCreatureName = arrStrongholdCreature[iIndexCreature];
					startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_WARCRY_CALL_OF_BLOOD, strCreatureName, 1);
					ShowFlyingSign(TTHCS_PATH["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["Effect"], strCreatureName, 5);
					local itemHero = geneUnitStatus(GetHero(iSide));
					if enumType == TTHCS_ENUM.Combat then
						itemHero["iAtb"] = 0.4;
						push(ListUnitSetATB, itemHero);
					end;
					sleep(20);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["function"] = Events_MiddlewareListener_Implement_ArtifactSet_SetOgres;

-- 技能
	H55SMOD_MiddlewareListener['Skill'] = {};

	-- ABSOLUTEMORALE
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE] = {};
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'] = {};
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function'] = {};
		function Events_MiddlewareListener_Implement_Skill_AbsoluteMorale_Charge(itemUnitLast, iSide)
			if H55SMOD_HeroSkill[itemUnitLast['iUnitType']] ~= nil
				and H55SMOD_HeroSkill[itemUnitLast['iUnitType']][SKILL_ABSOLUTE_MORALE] == 1
				and ENUM_SKILL.TIMER_ABSOLUTEMORALE > 0 then
				if H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide] == nil then
					H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide] = {};
				end;
				H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide][itemUnitLast['iUnitType']] = ENUM_STAGE.ONCE.EXECUTED;
				ENUM_SKILL.TIMER_ABSOLUTEMORALE = ENUM_SKILL.TIMER_ABSOLUTEMORALE - 1;
			end;
		end;
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function']['charge'] = Events_MiddlewareListener_Implement_Skill_AbsoluteMorale_Charge;
		function Events_MiddlewareListener_Implement_Skill_AbsoluteMorale_Consume(itemUnit, iSide)
			if itemUnit['iSide'] == iSide and H55SMOD_HeroSkill[itemUnit['iUnitType']] ~= nil and H55SMOD_HeroSkill[itemUnit['iUnitType']][SKILL_ABSOLUTE_MORALE] == 1 then
				if H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide] == nil then
					H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide] = {};
				end;
				if H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide][itemUnit['iUnitType']] == nil
					or H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide][itemUnit['iUnitType']] == ENUM_STAGE.ONCE.EXECUTED then
					H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'][iSide][itemUnit['iUnitType']] = ENUM_STAGE.ONCE.UNEXECUTE;
					combatSetPause(1);
					local listCreaturesTarget = GetCreatures(iSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
						if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
							startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemUnit['strUnitName'], SPELL_ENCOURAGE, itemCreature['strUnitName']);
							sleep(20);
							-- startThread(Thread_Command_UnitCastAimedSpell, itemUnit['strUnitName'], SPELL_ENCOURAGE, itemCreature['strUnitName'], 0);
							-- sleep(20);
							print(itemUnit['strUnitName'].." casted SPELL_ENCOURAGE to "..itemCreature['strUnitName']);
						end;
					end;
					itemUnit['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnit);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function']['consume'] = Events_MiddlewareListener_Implement_Skill_AbsoluteMorale_Consume;

	-- Skill
		-- 虚弱打击: 英雄普攻后回蓝的效果，数值为【英雄等级/3 (向上取整)】 :TODO 蛮子的还没加
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_WEAKENING_STRIKE] = {};
			function Events_MiddlewareListener_Implement_Skill_WeakeningStrike(iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_WEAKENING_STRIKE] == 1 then
						local idHero = GetHero(iSide);
						local strHero = GetHeroName(idHero);
						local iWeakenMana = h55_ceil(H55SMOD_HeroLevel[strHero] * 1 / 3);
						SetUnitManaPoints(idHero, GetUnitManaPoints(idHero) + iWeakenMana);
						print(idHero.." remain "..iWeakenMana.." mana by [Weakening_Strike]");
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_WEAKENING_STRIKE]['function'] = Events_MiddlewareListener_Implement_Skill_WeakeningStrike;

		-- 精炼魔力: 英雄魔法值消耗时回复友方生物1点魔法值 HERO_SKILL_ELITE_CASTERS
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_ELITE_CASTERS] = {};
			function Events_MiddlewareListener_Implement_Skill_EliteCasters(iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_ELITE_CASTERS] == 1 then
						local listCreaturesTarget = ObjSnapshotLastTurn['Creatures'][iSide];
						local iLenCreaturesTarget = length(listCreaturesTarget);
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								local iDiffMana = 1; -- h55_ceil(iLossManaPoints * (0.1 + 0.01 * H55SMOD_HeroLevel[strHero]));
								local iBeforeMana = GetUnitManaPoints(itemCreatureTarget['strUnitName']);
								local iCurrentMana = iBeforeMana + iDiffMana;
						    SetUnitManaPoints(itemCreatureTarget['strUnitName'], iCurrentMana);
								print(itemCreatureTarget['strUnitName'].." remain "..iDiffMana.." mana by [Elite_Casters]");
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_ELITE_CASTERS]['function'] = Events_MiddlewareListener_Implement_Skill_EliteCasters;

		-- 众志成城: 【守城时】【英雄主动攻击对敌方生物造成战损时】所有箭塔会对该生物进行【射击】并立刻行动 HERO_SKILL_SEAL_OF_PROTECTION
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_SEAL_OF_PROTECTION] = {};
			function Events_MiddlewareListener_Implement_Skill_SealOfProtection(iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_SEAL_OF_PROTECTION] == 1 then
						local arrBuilding = GetBuildings(iSide);
						for i, strBuildingName in arrBuilding do
							local objBuilding = geneUnitStatus(strBuildingName);
							-- print("i: "..i)
							-- print("strBuildingName: "..strBuildingName)
							-- print("iBuildingType: "..GetBuildingType(strBuildingName))
							if GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingLeftTower
								or GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingBigTower
								or GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingRightTower then
								local objTargetCreature = listCreaturesBeEffected[0];
								if IsCombatUnit(objTargetCreature["strUnitName"]) ~= nil and objTargetCreature["iUnitNumber"] > 0 then
									combatSetPause(1);
									startThread(Thread_Command_UnitShotAimed, objBuilding['strUnitName'], objTargetCreature['strUnitName']);
									sleep(20);
									objBuilding['iAtb'] = 1.25;
									push(ListUnitSetATB, objBuilding);
									print(objBuilding['strUnitName'].." shoot to "..objTargetCreature['strUnitName']);
									ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SEAL_OF_PROTECTION]["Effect"], objBuilding["strUnitName"], 5);
									combatSetPause(nil);
								end;
							end;
						end
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_SEAL_OF_PROTECTION]['function'] = Events_MiddlewareListener_Implement_Skill_SealOfProtection;

		-- 硫磺烟雨: 当城墙/箭塔/城门被击毁时，己方所有生物/战争机械/英雄立即行动 HERO_SKILL_TRIPLE_CATAPULT
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_TRIPLE_CATAPULT] = {};
			function Events_MiddlewareListener_Implement_Skill_TripleCatapult(iSide, itemUnitDeath)
				if GetHero(iSide) ~= nil then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TRIPLE_CATAPULT] == 1
						and IsBuilding(itemUnitDeath) ~= nil then
						local listCreatures = GetCreatures(iSide);
						for i, strCreatureName in listCreatures do
							local objCreature = geneUnitStatus(strCreatureName);
							objCreature["iAtb"] = 1.25;
							push(ListUnitSetATB, objCreature);
							print(objCreature['strUnitName'].." \'s atb effect by TripleCatapult");
						end;
						local listWarMachines = GetWarMachines(iSide);
						for i, strWarMachineName in listWarMachines do
							local objWarMachine = geneUnitStatus(strWarMachineName);
							if objWarMachine["iUnitType"] == WAR_MACHINE_BALLISTA
								and objWarMachine["iUnitType"] == WAR_MACHINE_FIRST_AID_TENT then
								objWarMachine["iAtb"] = 1.25;
								push(ListUnitSetATB, objWarMachine);
								print(objWarMachine['strUnitName'].." \'s atb effect by TripleCatapult");
							elseif objWarMachine["iUnitType"] == WAR_MACHINE_CATAPULT then
								ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_TRIPLE_CATAPULT]["Effect"], objWarMachine["strUnitName"], 5);
							end;
						end;
						local objHero = geneUnitStatus(GetHero(iSide));
						objHero["iAtb"] = 1.25;
						push(ListUnitSetATB, objHero);
						print(objHero['strUnitName'].." \'s atb effect by TripleCatapult");
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_TRIPLE_CATAPULT]['function'] = Events_MiddlewareListener_Implement_Skill_TripleCatapult;

-- 英雄特长
	-- Haven
		-- Ving
			H55SMOD_MiddlewareListener['Ving'] = {};
			H55SMOD_MiddlewareListener['Ving']['flag'] = {};
			function Events_MiddlewareListener_Implement_Ving(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit['iSide'] then
					if itemUnit['iUnitType'] == CREATURE_GRIFFIN or itemUnit['iUnitType'] == CREATURE_ROYAL_GRIFFIN or itemUnit['iUnitType'] == CREATURE_BATTLE_GRIFFIN then
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] == nil then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] = ENUM_STAGE.ONCE.EXECUTED;
							local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
							local iLenCreaturesTarget = length(listCreaturesTarget);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
									combatSetPause(1);
									startThread(Thread_Command_UnitCastAreaSpell, itemUnit['strUnitName'], SPELL_ABILITY_BATTLE_DIVE, itemCreature['iPositionX'], itemCreature['iPositionY']);
									sleep(150);
									print(itemUnit['strUnitName'].." casted SPELL_ABILITY_BATTLE_DIVE");
									if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
										startThread(Thread_Command_UnitCastAreaSpell, itemUnit['strUnitName'], SPELL_ABILITY_BATTLE_DIVE_FINISH, itemCreature['iPositionX'], itemCreature['iPositionY']);
										sleep(150);
										print(itemUnit['strUnitName'].." casted SPELL_ABILITY_BATTLE_DIVE_FINISH to "..itemCreature['strUnitName']);
										startThread(commandMove, itemUnit['strUnitName'], itemUnit['iPositionX'], itemUnit['iPositionY']);
									end;
									itemUnit['iAtb'] = 1.25;
									push(ListUnitSetATB, itemUnit);
									combatSetPause(nil);
									break;
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Ving']['function'] = Events_MiddlewareListener_Implement_Ving;

		-- Jeddite
			H55SMOD_MiddlewareListener['Jeddite'] = {};
			H55SMOD_MiddlewareListener['Jeddite']['flag'] = {};
			function Events_MiddlewareListener_Implement_Jeddite(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit['iSide'] then
					if itemUnit['iUnitType'] == CREATURE_Jeddite_Skill then
						local iBattleSize = getBattleSize();
						local iPositionX = itemUnit['iPositionX'];
						local iPositionY = itemUnit['iPositionY'];
						local listCreaturesTarget = GetCreatures(iSide);
						local iLenCreaturesTarget = length(listCreaturesTarget);
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
							if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0
								and matchArea2(itemCreature, iPositionX, iPositionY, 1) == 1 then
								combatSetPause(1);
								startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemUnit['strUnitName'], SPELL_ABILITY_LAY_HANDS, itemCreature['strUnitName']);
								sleep(20);
								print(itemUnit['strUnitName'].." casted SPELL_ABILITY_LAY_HANDS to "..itemCreature['strUnitName']);
								-- itemUnit['iAtb'] = 0;
								-- push(ListUnitSetATB, itemUnit);
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Jeddite']['function'] = Events_MiddlewareListener_Implement_Jeddite;

		-- RedHeavenHero03
			H55SMOD_MiddlewareListener['RedHeavenHero03'] = {};
			H55SMOD_MiddlewareListener['RedHeavenHero03']['function'] = {};
			H55SMOD_MiddlewareListener['RedHeavenHero03']['flag'] = 1;
			function Events_MiddlewareListener_Implement_RedHeavenHero03_Product(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					H55SMOD_MiddlewareListener[strHero]['flag'] = 1;
				end;
			end;
			H55SMOD_MiddlewareListener['RedHeavenHero03']['function']['product'] = Events_MiddlewareListener_Implement_RedHeavenHero03_Product;
			function Events_MiddlewareListener_Implement_RedHeavenHero03_Consume(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener[strHero]['flag'] == 1 then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
						local iSize = getBattleSize() + 1;
						local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
						local iLenCreaturesTarget = length(listCreaturesTarget);
						if iLenCreaturesTarget > 0 then
							local listPosition = {};
							for iPositionX = List_Area_True_Bg[iSize][1][1], List_Area_True_Bg[iSize][1][2] do
								for iPositionY = List_Area_True_Bg[iSize][2][1], List_Area_True_Bg[iSize][2][2] do
									local itemPosition = {};
									itemPosition['iPositionX'] = iPositionX;
									itemPosition['iPositionY'] = iPositionY;
									itemPosition['iCount'] = 0;
									for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
										local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
										if itemCreature ~= nil and matchArea2(itemCreature, iPositionX, iPositionY, 1) == 1 then
											itemPosition['iCount'] = itemPosition['iCount'] + 1;
										end;
									end;
									push(listPosition, itemPosition);
								end;
							end;
							local listSortedPosition = sortList(listPosition, 'iCount');
							local itemAimPosition = listSortedPosition[length(listSortedPosition) - 1];
							if itemAimPosition['iCount'] >= 3 then
								combatSetPause(1);
								local strHeroName = GetHero(iSide);
								startThread(Thread_Command_UnitCastAreaSpell, strHeroName, SPELL_MASS_DISRUPTING_RAY, itemAimPosition['iPositionX'], itemAimPosition['iPositionY'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								sleep(20);
								print(strHeroName.." casted SPELL_MASS_DISRUPTING_RAY");
								H55SMOD_MiddlewareListener[strHero]['flag'] = 0;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['RedHeavenHero03']['function']['consume'] = Events_MiddlewareListener_Implement_RedHeavenHero03_Consume;
			-- out of date
				-- H55SMOD_MiddlewareListener['RedHeavenHero03'] = {};
				-- function Events_MiddlewareListener_Implement_RedHeavenHero03(strHero, iSide, itemUnitLast, iLossManaPoints)
				-- 	if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
				-- 		combatSetPause(1);
				-- 		local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
				-- 		local iLenCreaturesTarget = length(listCreaturesTarget);
				-- 		for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				-- 			local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
				-- 			if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
				-- 				startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_DISRUPTING_RAY, itemCreatureTarget['strUnitName'], 1);
				-- 				sleep(20);
				-- 				print(GetHero(iSide).." casted SPELL_DISRUPTING_RAY on "..itemCreatureTarget['strUnitName']);
				-- 			end;
				-- 		end;
				-- 		combatSetPause(nil);
				-- 	end;
				-- end;
				-- H55SMOD_MiddlewareListener['RedHeavenHero03']['function'] = Events_MiddlewareListener_Implement_RedHeavenHero03;

		-- Orlando
			H55SMOD_MiddlewareListener['Orlando'] = {};
			function Events_MiddlewareListener_Implement_Orlando(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					combatSetPause(1);
					startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_MASS_CURSE, 1);
					sleep(20);
					print(strHero.." casted SPELL_MASS_CURSE");
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Orlando']['function'] = Events_MiddlewareListener_Implement_Orlando;

		-- Orrin
			H55SMOD_MiddlewareListener['Orrin'] = {};
			function Events_MiddlewareListener_Implement_Orrin(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local itemCreatureEffected = listCreaturesBeEffected[0];
					combatSetPause(1);

					local listCreaturesTarget = GetCreatures(iSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemUnit = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
						if itemUnit['iUnitType'] == CREATURE_ARCHER or itemUnit['iUnitType'] == CREATURE_MARKSMAN or itemUnit['iUnitType'] == CREATURE_LONGBOWMAN then
							local itemCreatureCaster = Thread_Command_AddCreature(iSide, itemUnit['iUnitType'], itemUnit['iUnitNumber'], itemUnit['iPositionX'], itemUnit['iPositionY']);
							repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
							startThread(Thread_Command_UnitCastAreaSpell, itemCreatureCaster, SPELL_ABILITY_SCATTER_SHOT, itemCreatureEffected['iPositionX'], itemCreatureEffected['iPositionY'], 2);
							sleep(75);
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
							repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
							itemCreatureCaster = nil;
							print(itemUnit['strUnitName'].." scatter_shot to "..itemCreatureEffected['strUnitName']);
						end;
					end;

					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Orrin']['function'] = Events_MiddlewareListener_Implement_Orrin;

		-- Mardigo
			H55SMOD_MiddlewareListener['Mardigo'] = {};
			function Events_MiddlewareListener_Implement_Mardigo(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
						if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 and itemUnitLast['iSide'] == getSide(iSide, 1) then
							local listFootMan = {};
							local listCreaturesTarget = GetCreatures(iSide);
							local iLenCreaturesTarget = length(listCreaturesTarget);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
									if itemCreature['iUnitType'] == CREATURE_FOOTMAN or itemCreature['iUnitType'] == CREATURE_SWORDSMAN or itemCreature['iUnitType'] == CREATURE_VINDICATOR then
										push(listFootMan, itemCreature['strUnitName']);
									end;
								end;
							end;
							if listFootMan ~= nil and length(listFootMan) > 0 then
								local listAscFootMan = sort_asc_creatures(listFootMan);
								local itemFootMan = geneUnitStatus(listAscFootMan[length(listAscFootMan) - 1]);
								if matchArea3(listCreaturesLastDeath[0], itemFootMan, 6) == 1 then
									combatSetPause(1);
									startThread(Thread_Command_UnitAttackAimed, itemFootMan['strUnitName'], itemUnitLast['strUnitName']);
									print(itemFootMan['strUnitName'].." attack to "..itemUnitLast['strUnitName']);
									sleep(20);
									itemFootMan['iAtb'] = 1.25;
									push(ListUnitSetATB, itemFootMan);
									combatSetPause(nil);
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Mardigo']['function'] = Events_MiddlewareListener_Implement_Mardigo;

		-- RedHeavenHero05
			H55SMOD_MiddlewareListener['RedHeavenHero05'] = {};
			H55SMOD_MiddlewareListener['RedHeavenHero05']['function'] = {};
			H55SMOD_MiddlewareListener['RedHeavenHero05']['flag1'] = 0;
			H55SMOD_MiddlewareListener['RedHeavenHero05']['flag2'] = 0;
			function Events_MiddlewareListener_Implement_RedHeavenHero05_Deal(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if H55SMOD_MiddlewareListener['RedHeavenHero05']['flag1'] == 0 then
						local itemCreatureEffected = listCreaturesBeEffected[0];
						local itemHero = geneUnitStatus(GetHero(iSide));
						if IsCombatUnit(itemCreatureEffected['strUnitName']) ~= nil and itemCreatureEffected['iUnitNumber'] > 0 then
							combatSetPause(1);
							sleep(20);
							itemHero['iAtb'] = 1.25;
							push(ListUnitSetATB, itemHero);
							print(itemHero['strUnitName'].." move again");
							H55SMOD_MiddlewareListener['RedHeavenHero05']['flag1'] = 1;
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['RedHeavenHero05']['function']['deal'] = Events_MiddlewareListener_Implement_RedHeavenHero05_Deal;
			function Events_MiddlewareListener_Implement_RedHeavenHero05_Before(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if H55SMOD_MiddlewareListener['RedHeavenHero05']['flag1'] == 1 then
						H55SMOD_MiddlewareListener['RedHeavenHero05']['flag2'] = 1;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['RedHeavenHero05']['function']['before'] = Events_MiddlewareListener_Implement_RedHeavenHero05_Before;
			function Events_MiddlewareListener_Implement_RedHeavenHero05_After(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if H55SMOD_MiddlewareListener['RedHeavenHero05']['flag2'] == 1 then
						H55SMOD_MiddlewareListener['RedHeavenHero05']['flag1'] = 0;
						H55SMOD_MiddlewareListener['RedHeavenHero05']['flag2'] = 0;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['RedHeavenHero05']['function']['after'] = Events_MiddlewareListener_Implement_RedHeavenHero05_After;

		-- GodricMP
			H55SMOD_MiddlewareListener['GodricMP'] = {};
			H55SMOD_MiddlewareListener['GodricMP']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_GodricMP(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener['GodricMP']['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PRAYER] == 1 then
						combatSetPause(1);
						local itemHero = itemUnit;
						startThread(Thread_Command_UnitCastGlobalSpell, itemHero['strUnitName'], SPELL_PRAYER, 1);
						print(strHero.." casted SPELL_PRAYER");
						itemHero['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHero);
						H55SMOD_MiddlewareListener[strHero]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
						sleep(20);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['GodricMP']['function'] = Events_MiddlewareListener_Implement_GodricMP;

		-- Maeve
			H55SMOD_MiddlewareListener['Maeve'] = {};
			H55SMOD_MiddlewareListener['Maeve']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_Maeve(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener['Maeve']['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
						combatSetPause(1);
						local itemHero = itemUnit;
						startThread(Thread_Command_UnitCastGlobalSpell, itemHero['strUnitName'], SPELL_MASS_HASTE, 1);
						print(strHero.." casted SPELL_MASS_HASTE");
						itemHero['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHero);
						H55SMOD_MiddlewareListener[strHero]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
						sleep(20);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Maeve']['function'] = Events_MiddlewareListener_Implement_Maeve;

	-- Sylvan
		-- Gelu
			H55SMOD_MiddlewareListener['Gelu'] = {};
			H55SMOD_MiddlewareListener['Gelu']['flag'] = {};
			function Events_MiddlewareListener_Implement_Gelu(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit['iSide'] then
					if itemUnit['iUnitType'] == CREATURE_SNOW_APE then
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] == nil then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] = ENUM_STAGE.ONCE.EXECUTED;
							local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
							local iLenCreaturesTarget = length(listCreaturesTarget);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
									combatSetPause(1);
									startThread(Thread_Command_UnitShotAimed, itemUnit['strUnitName'], itemCreature['strUnitName']);
									sleep(20);
									itemUnit['iAtb'] = 1.25;
									push(ListUnitSetATB, itemUnit);
									print(itemUnit['strUnitName'].." shoot to "..itemCreature['strUnitName']);
									combatSetPause(nil);
									break;
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Gelu']['function'] = Events_MiddlewareListener_Implement_Gelu;

		-- Mephala
			H55SMOD_MiddlewareListener['Mephala'] = {};
			H55SMOD_MiddlewareListener['Mephala']['flag'] = {};
			function Events_MiddlewareListener_Implement_Mephala(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast['iSide'] then
					if itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.CREATURE and IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
						combatSetPause(1);
						startThread(Thread_Command_UnitDefend, itemUnitLast['strUnitName']);
						sleep(20);
						print(itemUnitLast['strUnitName'].." defend");
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Mephala']['function'] = Events_MiddlewareListener_Implement_Mephala;

		-- Vaniel
			H55SMOD_MiddlewareListener['Vaniel'] = {};
			function Events_MiddlewareListener_Implement_Vaniel(strHero, iSide, itemUnitLast, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] ~= GetHero(iSide) and itemUnit['strUnitName'] ~= GetHero(iSide) then
					local itemHero = geneUnitStatus(GetHero(iSide));
					itemHero['iAtb'] = 1.25;
					push(ListUnitSetATB, itemHero);
					print(itemHero['strUnitName'].." move by changed mana");
				end;
			end;
			H55SMOD_MiddlewareListener['Vaniel']['function'] = Events_MiddlewareListener_Implement_Vaniel;

		-- Itil
			H55SMOD_MiddlewareListener['Itil'] = {};
			function Events_MiddlewareListener_Implement_Itil(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
				if iLenCreaturesBeEffected > 0 then
					for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
						local itemCreaturesBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
						if IsCombatUnit(itemCreaturesBeEffected['strUnitName']) ~= nil and itemCreaturesBeEffected['iUnitNumber'] > 0
							and itemCreaturesBeEffected['iUnitType'] == CREATURE_Itil_Unicorn then
							local iPositionXCaster = -1;
							if iSide == ENUM_SIDE.ATTACKER then
								iPositionXCaster = 2;
							else
								iPositionXCaster = 13;
							end;
							local itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_Itil_Druid, itemCreaturesBeEffected['iUnitNumber'], iPositionXCaster, 1);
							repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
							startThread(Thread_Command_UnitCastAreaSpell, itemCreatureCaster, SPELL_MASS_DISPEL, itemCreaturesBeEffected['iPositionX'] - 1, itemCreaturesBeEffected['iPositionY'] - 1, 2);
							sleep(20);
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
							repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
							print(itemCreaturesBeEffected['strUnitName'].." SPELL_MASS_DISPEL");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Itil']['function'] = Events_MiddlewareListener_Implement_Itil;

		-- Gem
			H55SMOD_MiddlewareListener['Gem'] = {};
			H55SMOD_MiddlewareListener['Gem']['function'] = {};
			function Events_MiddlewareListener_Implement_Gem_Friendly(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == GetUnitSide(itemUnitLast['strUnitName']) then
					if itemUnitLast['iUnitType'] == WAR_MACHINE_FIRST_AID_TENT then
						local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
						if iLenCreaturesBeEffected == 1 then
							local itemCreaturesBeEffected = listCreaturesBeEffected[0];
							if IsCombatUnit(itemCreaturesBeEffected['strUnitName']) ~= nil and itemCreaturesBeEffected['iUnitNumber'] > 0 then
								combatSetPause(1);
								local strHeroName = GetHero(iSide);
								startThread(Thread_Command_UnitCastAimedSpell, strHeroName, SPELL_REGENERATION, itemCreaturesBeEffected['strUnitName'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								sleep(20);
								print(strHeroName.." casted SPELL_REGENERATION on "..itemCreaturesBeEffected['strUnitName']);
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Gem']['function']['friendly'] = Events_MiddlewareListener_Implement_Gem_Friendly;
			function Events_MiddlewareListener_Implement_Gem_Enemy(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and getSide(iSide, 1) == GetUnitSide(itemUnitLast['strUnitName']) then
					if itemUnitLast['iUnitType'] == WAR_MACHINE_FIRST_AID_TENT then
						local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
						if iLenCreaturesBeEffected == 1 then
							local itemCreaturesBeEffected = listCreaturesBeEffected[0];
							if IsCombatUnit(itemCreaturesBeEffected['strUnitName']) ~= nil and itemCreaturesBeEffected['iUnitNumber'] > 0 then
								combatSetPause(1);
								local strHeroName = GetHero(getSide(iSide, 1));
								startThread(Thread_Command_UnitCastAimedSpell, strHeroName, SPELL_PLAGUE, itemCreaturesBeEffected['strUnitName'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								sleep(20);
								print(strHeroName.." casted SPELL_PLAGUE on "..itemCreaturesBeEffected['strUnitName']);
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Gem']['function']['enemy'] = Events_MiddlewareListener_Implement_Gem_Enemy;

	-- Academy
		-- Davius
			H55SMOD_MiddlewareListener['Davius'] = {};
			H55SMOD_MiddlewareListener['Davius']['flag'] = {};
			H55SMOD_MiddlewareListener['Davius']['function'] = {};
			function Events_MiddlewareListener_Implement_Davius_Init(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == GetUnitSide(itemUnit['strUnitName']) then
					if itemUnit['iUnitType'] == CREATURE_RAKSHASA or itemUnit['iUnitType'] == CREATURE_RAKSHASA_RUKH or itemUnit['iUnitType'] == CREATURE_RAKSHASA_KSHATRI then
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] == nil then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] = 1;
							if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
								combatSetPause(1);
								startThread(Thread_Command_UnitCastGlobalSpell, itemUnit['strUnitName'], SPELL_ABILITY_DASH, 0);
								sleep(20);
								itemUnit['iAtb'] = 1.25;
								push(ListUnitSetATB, itemUnit);
								print(itemUnit['strUnitName'].." casted SPELL_ABILITY_DASH by init");
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Davius']['function']['init'] = Events_MiddlewareListener_Implement_Davius_Init;
			function Events_MiddlewareListener_Implement_Davius_Kill(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero then
					itemUnitLast = geneUnitStatus(itemUnitLast['strUnitName']);
					if itemUnitLast ~= nil and itemUnitLast['iSide'] == getSide(iSide, 1)
						and itemUnitLast['iUnitType'] == CREATURE_RAKSHASA or itemUnitLast['iUnitType'] == CREATURE_RAKSHASA_RUKH or itemUnitLast['iUnitType'] == CREATURE_RAKSHASA_KSHATRI then
						if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
							if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
								combatSetPause(1);
								startThread(Thread_Command_UnitCastGlobalSpell, itemUnitLast['strUnitName'], SPELL_ABILITY_DASH, 0);
								sleep(20);
								itemUnitLast['iAtb'] = 1.25;
								push(ListUnitSetATB, itemUnitLast);
								print(itemUnitLast['strUnitName'].." casted SPELL_ABILITY_DASH by kill");
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Davius']['function']['kill'] = Events_MiddlewareListener_Implement_Davius_Kill;

		-- Dracon
			H55SMOD_MiddlewareListener['Dracon'] = {};
			H55SMOD_MiddlewareListener['Dracon']['function'] = {};
			function Events_MiddlewareListener_Implement_Dracon_Creature(strHero, iSide, itemUnitLast, itemUnitLoss, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLoss['iSide'] == iSide and itemUnitLoss['iUnitType'] == CREATURE_ENCHANTER_ACADEMY then
					local itemHero = geneUnitStatus(GetHero(iSide));
					local iDiffMana = 2; --h55_ceil(iLossManaPoints * (0.1 + 0.01 * H55SMOD_HeroLevel[strHero]));
					local iBeforeMana = GetUnitManaPoints(itemHero['strUnitName']);
					local iCurrentMana = iBeforeMana + iDiffMana;
			    SetUnitManaPoints(itemHero['strUnitName'], iCurrentMana);
					print(itemHero['strUnitName'].." remain "..iDiffMana.." mana");
				end;
			end;
			H55SMOD_MiddlewareListener['Dracon']['function']['creature'] = Events_MiddlewareListener_Implement_Dracon_Creature;
			function Events_MiddlewareListener_Implement_Dracon_Charge(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero	and itemUnitLast['iUnitType'] == CREATURE_ENCHANTER_ACADEMY then
					if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
						if H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']] == nil then
							H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']] = 0;
						end;
						H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']] = H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']] + 1;
						if H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']]  == 1 then
							ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["Effect1"], itemUnitLast['strUnitName'], 5);
						elseif H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']]  == 2 then
							ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["Effect2"], itemUnitLast['strUnitName'], 5);
						elseif H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnitLast['strUnitName']]  >= 3 then
							ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["Effect3"], itemUnitLast['strUnitName'], 5);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Dracon']['function']['charge'] = Events_MiddlewareListener_Implement_Dracon_Charge;

		-- Emilia
			H55SMOD_MiddlewareListener['Emilia'] = {};
			function Events_MiddlewareListener_Implement_Emilia(strHero, iSide, itemUnitLast, listUnitLastSummonBeDestroied)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if length(listUnitLastSummonBeDestroied) > 0 then
						local strHeroName = GetHero(iSide);
						local iCurrentMana = GetUnitManaPoints(strHeroName);
						local iPaybackMana = length(listUnitLastSummonBeDestroied) * 2;
						SetUnitManaPoints(strHeroName, GetUnitManaPoints(strHeroName) + iPaybackMana);
						sleep(20);
						print(strHeroName.." payback "..iPaybackMana.." mana");
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Emilia']['function'] = Events_MiddlewareListener_Implement_Emilia;

		-- Nur
			H55SMOD_MiddlewareListener['Nur'] = {};
			H55SMOD_MiddlewareListener['Nur']['function'] = {};
			H55SMOD_MiddlewareListener['Nur']['flag'] = 1;
			function Events_MiddlewareListener_Implement_Nur_Product(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					H55SMOD_MiddlewareListener[strHero]['flag'] = 1;
				end;
			end;
			H55SMOD_MiddlewareListener['Nur']['function']['product'] = Events_MiddlewareListener_Implement_Nur_Product;
			function Events_MiddlewareListener_Implement_Nur_Consume(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener[strHero]['flag'] == 1 then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
						local iSize = getBattleSize() + 1;
						local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
						local iLenCreaturesTarget = length(listCreaturesTarget);
						if iLenCreaturesTarget > 0 then
							local listPosition = {};
							for iPositionX = List_Area_True_Bg[iSize][1][1], List_Area_True_Bg[iSize][1][2] do
								for iPositionY = List_Area_True_Bg[iSize][2][1], List_Area_True_Bg[iSize][2][2] do
									local itemPosition = {};
									itemPosition['iPositionX'] = iPositionX;
									itemPosition['iPositionY'] = iPositionY;
									itemPosition['iCount'] = 0;
									for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
										local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
										if itemCreature ~= nil and matchArea(itemCreature, iPositionX, iPositionY, 1) == 1 then
											itemPosition['iCount'] = itemPosition['iCount'] + 1;
										end;
									end;
									push(listPosition, itemPosition);
								end;
							end;
							local listSortedPosition = sortList(listPosition, 'iCount');
							local itemAimPosition = listSortedPosition[length(listSortedPosition) - 1];
							if itemAimPosition['iCount'] >= 2 then
								combatSetPause(1);
								local strHeroName = GetHero(iSide);
								startThread(Thread_Command_UnitCastAreaSpell, strHeroName, SPELL_FIREBALL, itemAimPosition['iPositionX'], itemAimPosition['iPositionY'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								sleep(20);
								print(strHeroName.." casted SPELL_FIREBALL");
								H55SMOD_MiddlewareListener[strHero]['flag'] = 0;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Nur']['function']['consume'] = Events_MiddlewareListener_Implement_Nur_Consume;
			-- out of date
				-- function Events_MiddlewareListener_Implement_Nur_Creature(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				-- 	if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iSide'] == getSide(iSide, 1) then
				-- 		if itemUnitLast['iUnitType'] == CREATURE_MAGI or itemUnitLast['iUnitType'] == CREATURE_ARCH_MAGI or itemUnitLast['iUnitType'] == CREATURE_COMBAT_MAGE then
				-- 			local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
				-- 			for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
				-- 				local itemCreatureBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
				-- 				push(H55SMOD_MiddlewareListener[strHero]['list'], itemCreatureBeEffected);
				-- 			end;
				-- 		end;
				-- 	end;
				-- end;
				-- H55SMOD_MiddlewareListener['Nur']['function']['creature'] = Events_MiddlewareListener_Implement_Nur_Creature;
				-- function Events_MiddlewareListener_Implement_Nur_Hero(strHero, iSide, itemUnit)
				-- 	if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
				-- 		if length(H55SMOD_MiddlewareListener[strHero]['list']) > 0 then
				-- 			combatSetPause(1);
				-- 			local strHeroName = GetHero(iSide);
				-- 			local listStrCreaturesCasted = {};
				-- 			local listCreaturesTarget = H55SMOD_MiddlewareListener[strHero]['list'];
				-- 			local iLenCreaturesTarget = length(listCreaturesTarget);
				-- 			for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				-- 				local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]['strUnitName']);
				-- 				if itemCreature ~= nil and IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
				-- 					if index(listStrCreaturesCasted, itemCreature['strUnitName']) == -1 then
				-- 						push(listStrCreaturesCasted, itemCreature['strUnitName']);
				-- 						startThread(Thread_Command_UnitCastAreaSpell, strHeroName, SPELL_FIREBALL, itemCreature['iPositionX'], itemCreature['iPositionY'], 1);
				-- 						print(strHeroName.." casted SPELL_FIREBALL to "..itemCreature['strUnitName']);
				-- 						sleep(20);
				-- 					end;
				-- 				end;
				-- 			end;
				-- 			local itemHero = geneUnitStatus(strHeroName);
				-- 			itemHero['iAtb'] = 1.25;
				-- 			push(ListUnitSetATB, itemHero);
				-- 			H55SMOD_MiddlewareListener[strHero]['list'] = {};
				-- 			combatSetPause(nil);
				-- 		end;
				-- 	end;
				-- end;
				-- H55SMOD_MiddlewareListener['Nur']['function']['hero'] = Events_MiddlewareListener_Implement_Nur_Hero;

		-- Zehir
			H55SMOD_MiddlewareListener['Zehir'] = {};
			function Events_MiddlewareListener_Implement_Zehir(strHero, iSide, itemUnitLast, listCreaturesLastSummon)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if listCreaturesLastSummon ~= nil and length(listCreaturesLastSummon) > 0 then
					local iLenCreaturesLastSummon = length(listCreaturesLastSummon);
					for iIndexCreaturesLastSummon = 0, iLenCreaturesLastSummon - 1 do
						local itemCreaturesLastSummon = listCreaturesLastSummon[iIndexCreaturesLastSummon];
							if itemCreaturesLastSummon['iUnitType'] == CREATURE_FIRE_ELEMENTAL
								or itemCreaturesLastSummon['iUnitType'] == CREATURE_WATER_ELEMENTAL
								or itemCreaturesLastSummon['iUnitType'] == CREATURE_EARTH_ELEMENTAL
								or itemCreaturesLastSummon['iUnitType'] == CREATURE_AIR_ELEMENTAL
								or itemCreaturesLastSummon['iUnitType'] == CREATURE_PHOENIX then
								itemCreaturesLastSummon['iAtb'] = 0.4 + H55SMOD_HeroLevel[strHero] * 0.02;
								push(ListUnitSetATB, itemCreaturesLastSummon);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Zehir']['function'] = Events_MiddlewareListener_Implement_Zehir;

		-- Faiz
			H55SMOD_MiddlewareListener['Faiz'] = {};
			H55SMOD_MiddlewareListener['Faiz']['function'] = {};
			H55SMOD_MiddlewareListener['Faiz']['flag'] = 1;
			function Events_MiddlewareListener_Implement_Faiz_Product(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					H55SMOD_MiddlewareListener[strHero]['flag'] = 1;
				end;
			end;
			H55SMOD_MiddlewareListener['Faiz']['function']['product'] = Events_MiddlewareListener_Implement_Faiz_Product;
			function Events_MiddlewareListener_Implement_Faiz_Consume(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener[strHero]['flag'] == 1 then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
						local iSize = getBattleSize() + 1;
						local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
						local iLenCreaturesTarget = length(listCreaturesTarget);
						if iLenCreaturesTarget > 0 then
							local listPosition = {};
							for iPositionX = List_Area_True_Bg[iSize][1][1], List_Area_True_Bg[iSize][1][2] do
								for iPositionY = List_Area_True_Bg[iSize][2][1], List_Area_True_Bg[iSize][2][2] do
									local itemPosition = {};
									itemPosition['iPositionX'] = iPositionX;
									itemPosition['iPositionY'] = iPositionY;
									itemPosition['iCount'] = 0;
									for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
										local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
										if itemCreature ~= nil and matchArea2(itemCreature, iPositionX, iPositionY, 1) == 1 then
											itemPosition['iCount'] = itemPosition['iCount'] + 1;
										end;
									end;
									push(listPosition, itemPosition);
								end;
							end;
							local listSortedPosition = sortList(listPosition, 'iCount');
							local itemAimPosition = listSortedPosition[length(listSortedPosition) - 1];
							if itemAimPosition['iCount'] >= 3 then
								combatSetPause(1);
								local strHeroName = GetHero(iSide);
								startThread(Thread_Command_UnitCastAreaSpell, strHeroName, SPELL_MASS_DISRUPTING_RAY, itemAimPosition['iPositionX'], itemAimPosition['iPositionY'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								sleep(20);
								print(strHeroName.." casted SPELL_MASS_DISRUPTING_RAY");
								H55SMOD_MiddlewareListener[strHero]['flag'] = 0;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Faiz']['function']['consume'] = Events_MiddlewareListener_Implement_Faiz_Consume;
			-- out of date
				-- function Events_MiddlewareListener_Implement_Faiz(strHero, iSide, itemUnitLast, iLossManaPoints)
				-- 	if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
				-- 		combatSetPause(1);
				-- 		local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
				-- 		local iLenCreaturesTarget = length(listCreaturesTarget);
				-- 		for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
				-- 			local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
				-- 			if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
				-- 				startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_DISRUPTING_RAY, itemCreatureTarget['strUnitName'], 1);
				-- 				sleep(20);
				-- 				print(GetHero(iSide).." casted SPELL_DISRUPTING_RAY on "..itemCreatureTarget['strUnitName']);
				-- 			end;
				-- 		end;
				-- 		combatSetPause(nil);
				-- 	end;
				-- end;
				-- H55SMOD_MiddlewareListener['Faiz']['function'] = Events_MiddlewareListener_Implement_Faiz;

		-- Isher
			H55SMOD_MiddlewareListener['Isher'] = {};
			function Events_MiddlewareListener_Implement_Isher(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local itemCreatureEffected = listCreaturesBeEffected[0];
					if IsCombatUnit(itemCreatureEffected['strUnitName']) ~= nil and itemCreatureEffected['iUnitNumber'] > 0 then
						if itemCreatureEffected['iUnitType'] == CREATURE_IRON_GOLEM or itemCreatureEffected['iUnitType'] == CREATURE_STEEL_GOLEM or itemCreatureEffected['iUnitType'] == CREATURE_OBSIDIAN_GOLEM then
							local iBattleSize = getBattleSize();
							local iPositionX = 0;
							local iPositionY = 1;
							if iSide == ENUM_SIDE.ATTACKER then
								iPositionX = 2;
							else
								if iBattleSize == 0 then
								    iPositionX = 13;
								else
								    iPositionX = 15;
								end;
							end;
							combatSetPause(1);
							local itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_MASTER_GREMLIN, h55_ceil(itemCreatureEffected['iUnitNumber'] / 8), iPositionX, iPositionY);
							repeat sleep(1); until (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil);
							startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_REPAIR, itemCreatureEffected['strUnitName']);
							sleep(100);
							print(itemCreatureCaster.." casted SPELL_ABILITY_REPAIR to "..itemCreatureEffected['strUnitName']);
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
							sleep(100);
							local itemUnitRecovered = geneUnitStatus(itemCreatureEffected['strUnitName']);
							if itemUnitRecovered['iUnitNumber'] > itemCreatureEffected['iUnitNumber'] then
								local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
								for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
									if itemUnitRecovered['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName'] then
										ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast] = itemUnitRecovered;
									end;
								end;
							end;
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Isher']['function'] = Events_MiddlewareListener_Implement_Isher;

		-- Cyrus
			H55SMOD_MiddlewareListener['Cyrus'] = {};
			function Events_MiddlewareListener_Implement_Cyrus(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local listCreaturesTarget = ObjSnapshotLastTurn['Creatures'][iSide];
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
						if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
							if itemCreatureTarget['iUnitType'] == CREATURE_FIRE_MECHANICAL
									or itemCreatureTarget['iUnitType'] == CREATURE_WATER_MECHANICAL
									or itemCreatureTarget['iUnitType'] == CREATURE_EARTH_MECHANICAL
									or itemCreatureTarget['iUnitType'] == CREATURE_AIR_MECHANICAL then
								local iDiffMana = 2;
								local iBeforeMana = GetUnitManaPoints(itemCreatureTarget['strUnitName']);
								local iCurrentMana = iBeforeMana + iDiffMana;
						    SetUnitManaPoints(itemCreatureTarget['strUnitName'], iCurrentMana);
								print(itemCreatureTarget['strUnitName'].." remain "..iDiffMana.." mana");
							end;
							if itemCreatureTarget['iUnitType'] == CREATURE_PHOENIX_MECHANICAL then
								local iBattleSize = getBattleSize();
								local iPositionX = 0;
								local iPositionY = 1;
								if iSide == ENUM_SIDE.ATTACKER then
									iPositionX = 2;
								else
									if iBattleSize == 0 then
									    iPositionX = 13;
									else
									    iPositionX = 15;
									end;
								end;
								combatSetPause(1);
								local itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_MASTER_GREMLIN, H55SMOD_HeroLevel[strHero] * 1, iPositionX, iPositionY);
								repeat sleep(1); until (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil);
								startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_REPAIR, itemCreatureTarget['strUnitName']);
								sleep(20);
								print(itemCreatureCaster.." casted SPELL_ABILITY_REPAIR to "..itemCreatureTarget['strUnitName']);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
								sleep(20);
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Cyrus']['function'] = Events_MiddlewareListener_Implement_Cyrus;

		-- Minasli
			H55SMOD_MiddlewareListener['Minasli'] = {};
			H55SMOD_MiddlewareListener['Minasli']['function'] = {};
			H55SMOD_MiddlewareListener['Minasli']['data'] = {
				[WAR_MACHINE_BALLISTA] = {
					['ID'] = SPELL_DISPEL
					, ['Name'] = 'SPELL_DISPEL'
				}
				, [WAR_MACHINE_CATAPULT] = {
					['ID'] = SPELL_PHANTOM
					, ['Name'] = 'SPELL_PHANTOM'
				}
				, [WAR_MACHINE_FIRST_AID_TENT] = {
					['ID'] = SPELL_CELESTIAL_SHIELD
					, ['Name'] = 'SPELL_CELESTIAL_SHIELD'
				}
				, [WAR_MACHINE_AMMO_CART] = {
					['ID'] = SPELL_BLOODLUST
					, ['Name'] = 'SPELL_BLOODLUST'
				}
			};
			H55SMOD_MiddlewareListener['Minasli']['flag'] = 10;
			function Events_MiddlewareListener_Implement_Minasli_Product(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					H55SMOD_MiddlewareListener[strHero]['flag'] = H55SMOD_MiddlewareListener[strHero]['flag'] + 1;
					print(strHero..'\'s point increase to '..H55SMOD_MiddlewareListener[strHero]['flag']);
				end;
			end;
			H55SMOD_MiddlewareListener['Minasli']['function']['product'] = Events_MiddlewareListener_Implement_Minasli_Product;
			function Events_MiddlewareListener_Implement_Minasli_Consume(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener[strHero]['flag'] >= 10 then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
						local itemHero = itemUnit;
						local listCreaturesTarget = GetCreatures(getSide(iSide));
						local iLenCreaturesTarget = length(listCreaturesTarget);
						local listWarMachinesTarget = GetWarMachines(getSide(iSide));
						local iLenWarMachinesTarget = length(listWarMachinesTarget);
						if iLenCreaturesTarget > 0 then
							combatSetPause(1);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								for iIndexWarMachinesTarget = 0, iLenWarMachinesTarget - 1 do
									local itemWarMachine = geneUnitStatus(listWarMachinesTarget[iIndexWarMachinesTarget]);
									if itemCreature ~= nil and matchAreaWarMachine(itemWarMachine, itemCreature, 2) == 1 then
										startThread(Thread_Command_UnitCastAimedSpell, itemHero['strUnitName'], H55SMOD_MiddlewareListener[strHero]['data'][itemWarMachine['iUnitType']]['ID'], itemCreature['strUnitName'], 1);
										print(itemHero['strUnitName'].." casted "..H55SMOD_MiddlewareListener[strHero]['data'][itemWarMachine['iUnitType']]['Name'].." on "..itemCreature['strUnitName']);
									end;
								end;
							end;
							itemHero['iAtb'] = 1.25;
							push(ListUnitSetATB, itemHero);
							H55SMOD_MiddlewareListener[strHero]['flag'] = 0;
							sleep(20);
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Minasli']['function']['consume'] = Events_MiddlewareListener_Implement_Minasli_Consume;

	-- Inferno
		-- Calh
			H55SMOD_MiddlewareListener['Calh'] = {};
			function Events_MiddlewareListener_Implement_Calh(strHero, iSide, itemUnitLast, listCreaturesLastSummon)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if listCreaturesLastSummon ~= nil and length(listCreaturesLastSummon) > 0 then
						local iLenUnitLastSummon = length(listCreaturesLastSummon);
						combatSetPause(1);
						for iIndexUnitLastSummon = 0, iLenUnitLastSummon - 1 do
							local itemUnitLastSummon = listCreaturesLastSummon[iIndexUnitLastSummon];
							if itemUnitLastSummon['iUnitType'] == CREATURE_PIT_FIEND
								or itemUnitLastSummon['iUnitType'] == CREATURE_BALOR
								or itemUnitLastSummon['iUnitType'] == CREATURE_PIT_SPAWN
							then
								local arrCreature4Check = GetCreatures(getSide(iSide, 1));
								local arrWarMachine4Check = GetWarMachines(getSide(iSide, 1));
								local arrUnit4Check = TTHCS_COMMON.concat(arrCreature4Check, arrWarMachine4Check);
								if itemUnitLastSummon['iUnitType'] == CREATURE_PIT_FIEND then
									local arrPositionArea3, objMaxPositionArea3 = TTHCS_GLOBAL.getDenseArea(arrUnit4Check, 3);
									-- local arrPositionArea4, objMaxPositionArea4 = TTHCS_GLOBAL.getDenseArea(arrUnit4Check, 4);
									if objMaxPositionArea3 ~= nil then
										startThread(Thread_Command_UnitCastAreaSpell, itemUnitLastSummon["strUnitName"], SPELL_FIREBALL, objMaxPositionArea3["PosX"], objMaxPositionArea3["PosY"], 1);
										ShowFlyingSign(TTHCS_PATH["Talent"]["Calh"]["EffectFireBall"], itemUnitLastSummon["strUnitName"], 5);
									end;
								end;
								if itemUnitLastSummon['iUnitType'] == CREATURE_BALOR then
									local arrPositionArea3, objMaxPositionArea3 = TTHCS_GLOBAL.getDenseArea(arrUnit4Check, 3);
									local arrPositionArea5, objMaxPositionArea5 = TTHCS_GLOBAL.getDenseArea(arrUnit4Check, 5);
									if objMaxPositionArea3 ~= nil then
										startThread(Thread_Command_UnitCastAreaSpell, itemUnitLastSummon["strUnitName"], SPELL_FIREBALL, objMaxPositionArea3["PosX"], objMaxPositionArea3["PosY"], 1);
										ShowFlyingSign(TTHCS_PATH["Talent"]["Calh"]["EffectFireBall"], itemUnitLastSummon["strUnitName"], 5);
									end;
									if objMaxPositionArea5 ~= nil then
										startThread(Thread_Command_UnitCastAreaSpell, itemUnitLastSummon["strUnitName"], SPELL_METEOR_SHOWER, objMaxPositionArea5["PosX"], objMaxPositionArea5["PosY"], 1);
										ShowFlyingSign(TTHCS_PATH["Talent"]["Calh"]["EffectMeteorShower"], itemUnitLastSummon["strUnitName"], 5);
									end;
								end;
								if itemUnitLastSummon['iUnitType'] == CREATURE_PIT_SPAWN then
									local arrUnitName = TTHCS_GLOBAL.listUnitInArea(itemUnitLastSummon["strUnitName"], 1, iSide);
									for i, strUnitName in arrUnitName do
										if IsCombatUnit(itemUnitLastSummon["strUnitName"]) ~= nil then
											if GetCreatureNumber(itemUnitLastSummon["strUnitName"]) > 0 then
												if IsCombatUnit(strUnitName) ~= nil and GetCreatureNumber(strUnitName) > 0 then
													startThread(Thread_Command_UnitAttackAimed, itemUnitLastSummon['strUnitName'], strUnitName);
													print(itemUnitLastSummon['strUnitName'].." attack to "..strUnitName);
													ShowFlyingSign(TTHCS_PATH["Talent"]["Calh"]["EffectMelee"], itemUnitLastSummon["strUnitName"]);
													sleep(300);
												end;
											else
												startThread(Thread_Command_RemoveCombatUnit, iSide, itemUnitLastSummon['strUnitName']);
											end;
										end;
									end;
								end;
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Calh']['function'] = Events_MiddlewareListener_Implement_Calh;

		-- Malustar
			H55SMOD_MiddlewareListener['Malustar'] = {};
			function Events_MiddlewareListener_Implement_Malustar(strHero, iSide, itemUnitLast, listCreaturesLastSummon)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if listCreaturesLastSummon ~= nil and length(listCreaturesLastSummon) > 0 then
						local iLenUnitLastSummon = length(listCreaturesLastSummon);
						combatSetPause(1);
						for iIndexUnitLastSummon = 0, iLenUnitLastSummon - 1 do
							local itemUnitLastSummon = listCreaturesLastSummon[iIndexUnitLastSummon];
							if itemUnitLastSummon['iUnitType'] ~= CREATURE_FIRE_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_WATER_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_EARTH_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_AIR_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_PHOENIX
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_GOBLIN
								and itemUnitLastSummon['iUnitNumber'] > 1 then
								Thread_Command_SummonCreature(iSide, CREATURE_FIRE_ELEMENTAL, 1, itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Malustar']['function'] = Events_MiddlewareListener_Implement_Malustar;

		-- Ash
			H55SMOD_MiddlewareListener['Ash'] = {};
			H55SMOD_MiddlewareListener['Ash']['function'] = {};
			H55SMOD_MiddlewareListener['Ash']['list'] = {};
			function Events_MiddlewareListener_Implement_Ash_Creature(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if itemUnitLast ~= nil and itemUnitLast['iSide'] == getSide(iSide, 1) then
						if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
							if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 and itemUnitLast['iSide'] == getSide(iSide, 1) then
								push(H55SMOD_MiddlewareListener[strHero]['list'], itemUnitLast);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Ash']['function']['creature'] = Events_MiddlewareListener_Implement_Ash_Creature;
			function Events_MiddlewareListener_Implement_Ash_Hero(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
					if length(H55SMOD_MiddlewareListener[strHero]['list']) > 0 then
						combatSetPause(1);
						local strHeroName = GetHero(iSide);
						local listStrCreaturesCasted = {};
						local listCreaturesTarget = H55SMOD_MiddlewareListener[strHero]['list'];
						local iLenCreaturesTarget = length(listCreaturesTarget);
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]['strUnitName']);
							if itemCreature ~= nil and IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
								if index(listStrCreaturesCasted, itemCreature['strUnitName']) == -1 then
									push(listStrCreaturesCasted, itemCreature['strUnitName']);
									startThread(Thread_Command_UnitCastAreaSpell, strHeroName, SPELL_FIREBALL, itemCreature['iPositionX'], itemCreature['iPositionY'], 1);
									print(strHeroName.." casted SPELL_FIREBALL to "..itemCreature['strUnitName']);
									sleep(20);
								end;
							end;
						end;
						local itemHero = geneUnitStatus(strHeroName);
						itemHero['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHero);
						H55SMOD_MiddlewareListener[strHero]['list'] = {};
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Ash']['function']['hero'] = Events_MiddlewareListener_Implement_Ash_Hero;

		-- Zydar
			H55SMOD_MiddlewareListener['Zydar'] = {};
			function Events_MiddlewareListener_Implement_Zydar(strHero, iSide, itemUnitLast, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] ~= GetHero(iSide) and itemUnit['strUnitName'] ~= GetHero(iSide) then
					local itemHero = geneUnitStatus(GetHero(iSide));
					itemHero['iAtb'] = 1.25;
					push(ListUnitSetATB, itemHero);
					print(itemHero['strUnitName'].." move by changed mana");
				end;
			end;
			H55SMOD_MiddlewareListener['Zydar']['function'] = Events_MiddlewareListener_Implement_Zydar;

		-- Efion
			H55SMOD_MiddlewareListener['Efion'] = {};
			H55SMOD_MiddlewareListener['Efion']['function'] = {};
			H55SMOD_MiddlewareListener['Efion']['flag'] = 1;
			function Events_MiddlewareListener_Implement_Efion_Product(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					H55SMOD_MiddlewareListener[strHero]['flag'] = 1;
				end;
			end;
			H55SMOD_MiddlewareListener['Efion']['function']['product'] = Events_MiddlewareListener_Implement_Efion_Product;
			function Events_MiddlewareListener_Implement_Efion_Consume(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener[strHero]['flag'] == 1 then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
						local iSize = getBattleSize() + 1;
						local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
						local iLenCreaturesTarget = length(listCreaturesTarget);
						if iLenCreaturesTarget > 0 then
							local listPosition = {};
							for iPositionX = List_Area_True_Bg[iSize][1][1], List_Area_True_Bg[iSize][1][2] do
								for iPositionY = List_Area_True_Bg[iSize][2][1], List_Area_True_Bg[iSize][2][2] do
									local itemPosition = {};
									itemPosition['iPositionX'] = iPositionX;
									itemPosition['iPositionY'] = iPositionY;
									itemPosition['iCount'] = 0;
									for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
										local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
										if itemCreature ~= nil and matchArea2(itemCreature, iPositionX, iPositionY, 1) == 1 then
											itemPosition['iCount'] = itemPosition['iCount'] + 1;
										end;
									end;
									push(listPosition, itemPosition);
								end;
							end;
							local listSortedPosition = sortList(listPosition, 'iCount');
							local itemAimPosition = listSortedPosition[length(listSortedPosition) - 1];
							if itemAimPosition['iCount'] >= 3 then
								combatSetPause(1);
								local strHeroName = GetHero(iSide);
								startThread(Thread_Command_UnitCastAreaSpell, strHeroName, SPELL_MASS_FORGETFULNESS, itemAimPosition['iPositionX'], itemAimPosition['iPositionY'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								sleep(20);
								print(strHeroName.." casted SPELL_MASS_FORGETFULNESS");
								H55SMOD_MiddlewareListener[strHero]['flag'] = 0;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Efion']['function']['consume'] = Events_MiddlewareListener_Implement_Efion_Consume;

		-- Orlando2
			H55SMOD_MiddlewareListener['Orlando2'] = {};
			H55SMOD_MiddlewareListener['Orlando2']['Target'] = {};
			function Events_MiddlewareListener_Implement_Orlando2(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local itemCreatureEffected = listCreaturesBeEffected[0];
					if contains(H55SMOD_MiddlewareListener['Orlando2']['Target'], itemCreatureEffected['strUnitName']) == nil then
						combatSetPause(1);

						push(H55SMOD_MiddlewareListener['Orlando2']['Target'], itemCreatureEffected['strUnitName']);
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iSide == ENUM_SIDE.ATTACKER then
							iPositionX = 2;
						else
							if iBattleSize == 0 then
							    iPositionX = 13;
							else
							    iPositionX = 15;
							end;
						end;

						local strCreatureShooter = Thread_Command_AddCreature(iSide, CREATURE_Orlando2, 1, iPositionX, iPositionY);
						if strCreatureShooter ~= nil then
							local itemCreatureShooter = geneUnitStatus(strCreatureShooter);
							startThread(Thread_Command_UnitShotAimed, itemCreatureShooter['strUnitName'], itemCreatureEffected['strUnitName']);
							sleep(20);
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureShooter['strUnitName']);
							sleep(20);
							print(itemCreatureShooter['strUnitName'].." shoot to "..itemCreatureEffected['strUnitName']);
						end;

						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Orlando2']['function'] = Events_MiddlewareListener_Implement_Orlando2;

		-- Calid
			H55SMOD_MiddlewareListener['Calid'] = {};
			function Events_MiddlewareListener_Implement_Calid(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local itemCreatureEffected = listCreaturesBeEffected[0];
					local listHound = {};
					local listCreaturesTarget = GetCreatures(iSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
						if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
							if itemCreature['iUnitType'] == CREATURE_HELL_HOUND or itemCreature['iUnitType'] == CREATURE_CERBERI or itemCreature['iUnitType'] == CREATURE_FIREBREATHER_HOUND then
								push(listHound, itemCreature['strUnitName']);
							end;
						end;
					end;
					if listHound ~= nil and length(listHound) > 0 then
						local listAscHound = sort_asc_creatures(listHound);
						local itemHound = geneUnitStatus(listAscHound[length(listAscHound) - 1]);
						combatSetPause(1);
						startThread(Thread_Command_UnitAttackAimed, itemHound['strUnitName'], itemCreatureEffected['strUnitName']);
						print(itemHound['strUnitName'].." attack to "..itemCreatureEffected['strUnitName']);
						sleep(20);
						itemHound['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHound);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Calid']['function'] = Events_MiddlewareListener_Implement_Calid;

		-- Deleb
			H55SMOD_MiddlewareListener['Deleb'] = {};
			H55SMOD_MiddlewareListener['Deleb']['list'] = {};
			H55SMOD_MiddlewareListener['Deleb']['function'] = {};
			function Events_MiddlewareListener_Implement_Deleb_Charge(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetWarMachine(iSide, WAR_MACHINE_BALLISTA) then
					local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
					if iLenCreaturesBeEffected > 0 then
						for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
							if contains(H55SMOD_MiddlewareListener[strHero]['list'], listCreaturesBeEffected[iIndexCreaturesBeEffected]['strUnitName']) == nil then
								push(H55SMOD_MiddlewareListener[strHero]['list'], listCreaturesBeEffected[iIndexCreaturesBeEffected]['strUnitName']);
							end;
						end;
					end;
					local iLenCreaturesDeath = length(listCreaturesDeath);
					if iLenCreaturesDeath > 0 then
						for iIndexCreaturesDeath = 0, iLenCreaturesDeath - 1 do
							if contains(H55SMOD_MiddlewareListener[strHero]['list'], listCreaturesDeath[iIndexCreaturesDeath]['strUnitName']) == nil then
								push(H55SMOD_MiddlewareListener[strHero]['list'], listCreaturesDeath[iIndexCreaturesDeath]['strUnitName']);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Deleb']['function']['charge'] = Events_MiddlewareListener_Implement_Deleb_Charge;
			function Events_MiddlewareListener_Implement_Deleb_Consume(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
					if H55SMOD_MiddlewareListener[strHero]['list'] ~= nil and length(H55SMOD_MiddlewareListener[strHero]['list']) > 0 then
						local listCreaturesTarget = H55SMOD_MiddlewareListener[strHero]['list'];
						local iLenCreaturesTarget = length(listCreaturesTarget);
						if iLenCreaturesTarget > 0 then
							combatSetPause(1);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								if itemCreatureTarget ~= nil and IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 and itemCreatureTarget['iSide'] == getSide(iSide, 1) then
									startThread(Thread_Command_UnitCastAreaSpell, GetHero(iSide), SPELL_FROST_RING, itemCreatureTarget['iPositionX'], itemCreatureTarget['iPositionY'], 1);
									print(itemUnit['strUnitName'].." cast SPELL_FROST_RING on "..itemCreatureTarget['strUnitName']);
									sleep(20);
								end;
							end;
							itemUnit['iAtb'] = 1.25;
							push(ListUnitSetATB, itemUnit);
							H55SMOD_MiddlewareListener[strHero]['list'] = {};
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Deleb']['function']['consume'] = Events_MiddlewareListener_Implement_Deleb_Consume;

	-- Necropolis
		-- Archilus
			H55SMOD_MiddlewareListener['Archilus'] = {};
			function Events_MiddlewareListener_Implement_Archilus(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast['iUnitType'] == CREATURE_DEATH_KNIGHT and itemUnitLast['iSide'] == iSide then
					combatSetPause(1);
					print(I_TIMER);
					local iOver = tth_mod(I_TIMER, 4);
					print(iOver);
					if iOver == 0 then
							itemUnitLast['iAtb'] = 1.25;
							push(ListUnitSetATB, itemUnitLast);
					end;
					print(itemUnitLast['strUnitName'].."'s ATB has been increase");
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Archilus']['function'] = Events_MiddlewareListener_Implement_Archilus;

		-- Gles
			H55SMOD_MiddlewareListener['Gles'] = {};
			H55SMOD_MiddlewareListener['Gles']['flag'] = {};
			function Events_MiddlewareListener_Implement_Gles(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local iBattleSize = getBattleSize();
					local iBattleAllowMaxX = 0;
					local iBattleAllowMaxY = 0;
					if iBattleSize == 0 then
					    iBattleAllowMaxX = 13;
					    iBattleAllowMaxY = 10;
					else
					    iBattleAllowMaxX = 15;
					    iBattleAllowMaxY = 14;
					end;
					local iLenCreaturesLastDeath = length(listCreaturesLastDeath);
					for iIndexCreaturesLastDeath = 0, iLenCreaturesLastDeath - 1 do
						local itemCreaturesLastDeath = geneUnitStatus(listCreaturesLastDeath[iIndexCreaturesLastDeath]['strUnitName']);
						if IsCombatUnit(itemCreaturesLastDeath['strUnitName']) ~= nil and itemCreaturesLastDeath['iUnitNumber'] == 0 then
							if H55SMOD_MiddlewareListener[strHero]['flag'][itemCreaturesLastDeath['strUnitName']] == nil then
								combatSetPause(1);
								H55SMOD_MiddlewareListener[strHero]['flag'][itemCreaturesLastDeath['strUnitName']] = 1;
								local strCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_LICH_MASTER, H55SMOD_HeroLevel[strHero] * 1, iBattleAllowMaxX - itemCreaturesLastDeath['iPositionX'], iBattleAllowMaxY - itemCreaturesLastDeath['iPositionY']);
								local itemCreatureCaster = geneUnitStatus(strCreatureCaster);
								if IsCombatUnit(itemCreatureCaster['strUnitName']) ~= nil and itemCreatureCaster['iUnitNumber'] > 0 then
									startThread(Thread_Command_UnitCastAimedSpell, itemCreatureCaster['strUnitName'], SPELL_ANIMATE_DEAD, itemCreaturesLastDeath['strUnitName'], 0);
									sleep(50);
									Thread_Command_RemoveCombatUnit_Uncheck(itemCreatureCaster['strUnitName']);
									sleep(20);
									print(itemCreatureCaster['strUnitName'].." cast ANIMATE_DEAD to "..itemCreaturesLastDeath['strUnitName']);
								end;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Gles']['function'] = Events_MiddlewareListener_Implement_Gles;

		-- Straker
			H55SMOD_MiddlewareListener['Straker'] = {};
			function Events_MiddlewareListener_Implement_Straker(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
					local iLenCreaturesTarget = length(listCreaturesTarget);
					if iLenCreaturesTarget > 0 then
						local iBattleSize = getBattleSize();
						local iPositionX = 0;
						local iPositionY = 1;
						if iSide == ENUM_SIDE.ATTACKER then
							iPositionX = 2;
						else
							if iBattleSize == 0 then
							    iPositionX = 13;
							else
							    iPositionX = 15;
							end;
						end;

						combatSetPause(1);
						local itemCreatureCaster = nil;
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
								itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_Straker_Skill, 1, iPositionX, iPositionY);
								if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
									-- startThread(AttackCombatUnit, itemCreatureCaster, itemCreatureTarget['strUnitName']);
									startThread(ShootCombatUnit, itemCreatureCaster, itemCreatureTarget['strUnitName']);
									sleep(20);
									startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
									sleep(20);
									print(itemCreatureCaster.." shoot to "..itemCreatureTarget['strUnitName']);
								end;
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Straker']['function'] = Events_MiddlewareListener_Implement_Straker;

		-- Effig
			H55SMOD_MiddlewareListener['Effig'] = {};
			function Events_MiddlewareListener_Implement_Effig(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					combatSetPause(1);
					startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_MASS_CURSE, 1);
					sleep(20);
					print(strHero.." casted SPELL_MASS_CURSE");
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Effig']['function'] = Events_MiddlewareListener_Implement_Effig;

		-- Giovanni
			H55SMOD_MiddlewareListener['Giovanni'] = {};
			H55SMOD_MiddlewareListener['Giovanni']['function'] = {};
			H55SMOD_MiddlewareListener['Giovanni']['list'] = {};
			function Events_MiddlewareListener_Implement_Giovanni_Creature(strHero, iSide, itemUnitLast, listCreaturesLastDeath, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero then
					if itemUnitLast ~= nil then
						if itemUnitLast['iSide'] == getSide(iSide, 1) then
							if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
								if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
									push(H55SMOD_MiddlewareListener[strHero]['list'], itemUnitLast);
								end;
							end;
						else
							if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 and listCreaturesBeEffected ~= nil and length(listCreaturesBeEffected) > 0 then
								local itemCreatureBeEffected = listCreaturesBeEffected[0];
								if itemCreatureBeEffected ~= nil and IsCombatUnit(itemCreatureBeEffected['strUnitName']) ~= nil and itemCreatureBeEffected['iUnitNumber'] > 0 then
									push(H55SMOD_MiddlewareListener[strHero]['list'], itemCreatureBeEffected);
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Giovanni']['function']['creature'] = Events_MiddlewareListener_Implement_Giovanni_Creature;
			function Events_MiddlewareListener_Implement_Giovanni_Hero(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
					if length(H55SMOD_MiddlewareListener[strHero]['list']) > 0 then
						combatSetPause(1);
						local strHeroName = GetHero(iSide);
						local listStrCreaturesCasted = {};
						local listCreaturesTarget = H55SMOD_MiddlewareListener[strHero]['list'];
						local iLenCreaturesTarget = length(listCreaturesTarget);
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]['strUnitName']);
							if itemCreature ~= nil and IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
								if index(listStrCreaturesCasted, itemCreature['strUnitName']) == -1 then
									push(listStrCreaturesCasted, itemCreature['strUnitName']);
									startThread(Thread_Command_UnitCastAimedSpell, strHeroName, SPELL_VAMPIRISM, itemCreature['strUnitName'], 1);
									print(strHeroName.." casted SPELL_VAMPIRISM to "..itemCreature['strUnitName']);
									sleep(20);
								end;
							end;
						end;
						local itemHero = geneUnitStatus(strHeroName);
						itemHero['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHero);
						H55SMOD_MiddlewareListener[strHero]['list'] = {};
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Giovanni']['function']['hero'] = Events_MiddlewareListener_Implement_Giovanni_Hero;

		-- Nemor
			H55SMOD_MiddlewareListener['Nemor'] = {};
			function Events_MiddlewareListener_Implement_Nemor(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iSide'] == getSide(iSide, 1) and itemUnitLast['iUnitType'] == CREATURE_BANSHEE then
					combatSetPause(1);
					local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
					if iLenCreaturesBeEffected > 0 then
						for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
							local itemCreatureBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
							if IsCombatUnit(itemCreatureBeEffected['strUnitName']) ~= nil and itemCreatureBeEffected['iUnitNumber'] > 0 then
								-- local strCreatureCaster = Thread_Command_AddCreature(getSide(iSide, 1), CREATURE_WRAITH, 1, itemCreatureBeEffected['iPositionX'], itemCreatureBeEffected['iPositionY']);
								-- if strCreatureCaster ~= nil then
								-- 	local itemCreatureCaster = geneUnitStatus(strCreatureCaster);
								-- 	startThread(Thread_Command_UnitCastAimedSpell, itemCreatureCaster['strUnitName'], SPELL_ABILITY_HARM_TOUCH, itemCreatureBeEffected['strUnitName'], 0);
								-- 	sleep(50);
								-- 	startThread(Thread_Command_RemoveCombatUnit, getSide(iSide, 1), itemCreatureCaster['strUnitName']);
								-- 	sleep(50);
								-- 	print(itemCreatureCaster['strUnitName'].." cast SPELL_ABILITY_HARM_TOUCH to "..itemCreatureBeEffected['strUnitName']);
								-- end;
								local strCreatureCaster = Thread_Command_AddCreature(getSide(iSide, 1), CREATURE_Nemor_Skill, h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemCreatureBeEffected['iPositionX'], itemCreatureBeEffected['iPositionY']);
								if strCreatureCaster ~= nil then
									local itemCreatureCaster = geneUnitStatus(strCreatureCaster);
									startThread(Thread_Command_UnitCastAimedSpell, itemCreatureCaster['strUnitName'], SPELL_SORROW, itemCreatureBeEffected['strUnitName'], 0);
									sleep(50);
									startThread(Thread_Command_RemoveCombatUnit, getSide(iSide, 1), itemCreatureCaster['strUnitName']);
									sleep(50);
									print(itemCreatureCaster['strUnitName'].." cast SPELL_SORROW to "..itemCreatureBeEffected['strUnitName']);
								end;
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Nemor']['function'] = Events_MiddlewareListener_Implement_Nemor;

		-- Adelaide
			H55SMOD_MiddlewareListener['Adelaide'] = {};
			H55SMOD_MiddlewareListener['Adelaide']['function'] = {};
			H55SMOD_MiddlewareListener['Adelaide']['flag'] = {};
			function Events_MiddlewareListener_Implement_Adelaide_Creature(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iUnitType'] == CREATURE_935 then
					combatSetPause(1);
					local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
					if iLenCreaturesBeEffected > 0 then
						for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
							local itemCreatureBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
							if IsCombatUnit(itemCreatureBeEffected['strUnitName']) ~= nil and itemCreatureBeEffected['iUnitNumber'] > 0 then
								if itemUnitLast ~= nil then
									startThread(Thread_Command_UnitCastAimedSpell, itemUnitLast['strUnitName'], SPELL_ICE_BOLT, itemCreatureBeEffected['strUnitName'], 0);
									sleep(50);
									print(itemUnitLast['strUnitName'].." cast SPELL_ICE_BOLT to "..itemCreatureBeEffected['strUnitName']);
								end;
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Adelaide']['function']['creature'] = Events_MiddlewareListener_Implement_Adelaide_Creature;
			function Events_MiddlewareListener_Implement_Adelaide_Hero(strHero, iSide, itemUnit)
			end;
			H55SMOD_MiddlewareListener['Adelaide']['function']['hero'] = Events_MiddlewareListener_Implement_Adelaide_Hero;

		-- Thant
			H55SMOD_MiddlewareListener['Thant'] = {};
			H55SMOD_MiddlewareListener['Thant']['function'] = {};
			function Events_MiddlewareListener_Implement_Thant_Creature(strHero, iSide, itemUnitLast, itemUnitLoss, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLoss['iSide'] == iSide and itemUnitLoss['iUnitType'] == CREATURE_MUMMY then
					local itemHero = geneUnitStatus(GetHero(iSide));
					local iDiffMana = 2; --h55_ceil(iLossManaPoints * (0.1 + 0.01 * H55SMOD_HeroLevel[strHero]));
					local iBeforeMana = GetUnitManaPoints(itemHero['strUnitName']);
					local iCurrentMana = iBeforeMana + iDiffMana;
			        SetUnitManaPoints(itemHero['strUnitName'], iCurrentMana);
					print(itemHero['strUnitName'].." remain "..iDiffMana.." mana");
				end;
			end;
			H55SMOD_MiddlewareListener['Thant']['function']['creature'] = Events_MiddlewareListener_Implement_Thant_Creature;

		-- Aislinn
			H55SMOD_MiddlewareListener['Aislinn'] = {};
			function Events_MiddlewareListener_Implement_Aislinn(strHero, iSide, itemUnitLast, listCreaturesBeAnimated, listCreaturesRevive)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iLenCreaturesBeAnimated = length(listCreaturesBeAnimated);
					if iLenCreaturesBeAnimated > 0 then
						for iIndexCreaturesBeAnimated = 0, iLenCreaturesBeAnimated - 1 do
							local itemCreaturesBeAnimated = listCreaturesBeAnimated[iIndexCreaturesBeAnimated];
							if IsCombatUnit(itemCreaturesBeAnimated['strUnitName']) ~= nil and itemCreaturesBeAnimated['iUnitNumber'] > 0 then
								itemCreaturesBeAnimated['iAtb'] = 1.25;
								push(ListUnitSetATB, itemCreaturesBeAnimated);
								print(itemCreaturesBeAnimated['strUnitName'].." move now");
							end;
						end;
					end;
					local iLenCreaturesRevive = length(listCreaturesRevive);
					if iLenCreaturesRevive > 0 then
						for iIndexCreaturesRevive = 0, iLenCreaturesRevive - 1 do
							local itemCreaturesRevive = listCreaturesRevive[iIndexCreaturesRevive];
							if IsCombatUnit(itemCreaturesRevive['strUnitName']) ~= nil and itemCreaturesRevive['iUnitNumber'] > 0 then
								itemCreaturesRevive['iAtb'] = 1.25;
								push(ListUnitSetATB, itemCreaturesRevive);
								print(itemCreaturesRevive['strUnitName'].." move now");
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Aislinn']['function'] = Events_MiddlewareListener_Implement_Aislinn;

		-- Nimbus
			H55SMOD_MiddlewareListener['Nimbus'] = {};
			H55SMOD_MiddlewareListener['Nimbus']['flag'] = '';
			H55SMOD_MiddlewareListener['Nimbus']['point'] = 0;
			function Events_MiddlewareListener_Implement_Nimbus(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] ~= GetHero(iSide) then
					if H55SMOD_MiddlewareListener['Nimbus']['flag'] == '' then
						local itemHero = geneUnitStatus(GetHero(iSide));
						local iBeforeMana4Item = GetUnitManaPoints(itemUnitLast['strUnitName']);
						local iCurrentMana4Item = GetUnitManaPoints(itemUnitLast['strUnitName']) - h55_ceil(H55SMOD_HeroLevel[strHero] / 10);
						if iCurrentMana4Item >= 0 then
							SetUnitManaPoints(itemUnitLast['strUnitName'], iCurrentMana4Item);
							local iLossMana = iBeforeMana4Item - iCurrentMana4Item;
							print(itemUnitLast['strUnitName'].." loss "..iLossMana.." mana by [Nimbus' ability]");
							local iBeforeMana4Hero = GetUnitManaPoints(itemHero['strUnitName']);
							local iCurrentMana4Hero = GetUnitManaPoints(itemHero['strUnitName']) + iLossMana;
							SetUnitManaPoints(itemHero['strUnitName'], iCurrentMana4Hero);
							print(itemHero['strUnitName'].." increase "..iLossMana.." mana by [Nimbus' ability]");
							H55SMOD_MiddlewareListener['Nimbus']['flag'] = itemUnitLast['strUnitName'];
							H55SMOD_MiddlewareListener['Nimbus']['point'] = H55SMOD_MiddlewareListener['Nimbus']['point'] + iLossMana;
							print("[Nimbus' ability] has got "..H55SMOD_MiddlewareListener['Nimbus']['point'].." mana points");
						end;
						if H55SMOD_MiddlewareListener['Nimbus']['point'] >= 10 then
							H55SMOD_MiddlewareListener['Nimbus']['point'] = H55SMOD_MiddlewareListener['Nimbus']['point'] - 10;
							itemHero['iAtb'] = 1.25;
							push(ListUnitSetATB, itemHero);
							print(itemHero['strUnitName'].." move now");
						end;
					else
						H55SMOD_MiddlewareListener['Nimbus']['flag'] = '';
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Nimbus']['function'] = Events_MiddlewareListener_Implement_Nimbus;

		-- Vidomina
			H55SMOD_MiddlewareListener['Vidomina'] = {};
			function Events_MiddlewareListener_Implement_Vidomina(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero then
					local itemHero = geneUnitStatus(GetHero(getSide(iSide, 1)));
					if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
						local iLenCreaturesLastDeath = length(listCreaturesLastDeath);
						for iIndexCreaturesLastDeath = 0, iLenCreaturesLastDeath - 1 do
							local itemCreatureDeath = geneUnitStatus(listCreaturesLastDeath[iIndexCreaturesLastDeath]['strUnitName']);
							if IsCombatUnit(itemCreatureDeath['strUnitName']) ~= nil and itemCreatureDeath['iUnitNumber'] == 0 then
								local iLenNecCreatures = length(List_Nec_AllCreatures);
								for iIndexNecCreatures = 1, iLenNecCreatures do
									if contains(List_Nec_AllCreatures[iIndexNecCreatures][1], itemCreatureDeath['iUnitType']) ~= nil then
										local iLevelNecCreatures  = h55_floor((iIndexNecCreatures - 1) / 3);
										if iIndexNecCreatures == 22 then
											iLevelNecCreatures = 4;
										end;
										if iIndexNecCreatures == 23 then
											iLevelNecCreatures = 5;
										end;
										if iIndexNecCreatures == 24 then
											iLevelNecCreatures = 6;
										end;
										local iUnitNumber = h55_floor(itemHero['iMana'] / List_Nec_AllCreatures[iIndexNecCreatures][3]);
										if itemHero['iMana'] >= List_Nec_AllCreatures[iIndexNecCreatures][3] then
											Thread_Command_AddCreature(getSide(iSide, 1), List_Nec_AllCreatures[iIndexNecCreatures][2], 1, itemCreatureDeath['iPositionX'], itemCreatureDeath['iPositionY']);
											SetUnitManaPoints(itemHero['strUnitName'], itemHero['iMana'] - List_Nec_AllCreatures[iIndexNecCreatures][3]);
											Thread_Command_RemoveCombatUnit_Uncheck(itemCreatureDeath['strUnitName']);
											print(itemHero['strUnitName'].." summon NEC_CREATURE");
											sleep(20);
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Vidomina']['function'] = Events_MiddlewareListener_Implement_Vidomina;

		-- Muscip
			H55SMOD_MiddlewareListener['Muscip'] = {};
			H55SMOD_MiddlewareListener['Muscip']['flag'] = {};
			function Events_MiddlewareListener_Implement_Muscip(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit['iSide'] then
					if itemUnit['iUnitType'] == CREATURE_MANES or itemUnit['iUnitType'] == CREATURE_GHOST or itemUnit['iUnitType'] == CREATURE_POLTERGEIST then
						local iCountMe = 0;
						local listCreaturesMe = GetCreatures(iSide, 1);
						local iLenCreaturesMe = length(listCreaturesMe);
						for iIndexCreaturesMe = 0, iLenCreaturesMe - 1 do
							local itemCreatureMe = geneUnitStatus(listCreaturesMe[iIndexCreaturesMe]);
							if itemCreatureMe['iUnitType'] == CREATURE_MANES or itemCreatureMe['iUnitType'] == CREATURE_GHOST or itemCreatureMe['iUnitType'] == CREATURE_POLTERGEIST then
								iCountMe = iCountMe + 1;
							end;
						end;
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] == nil or iCountMe == 1 then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnit['strUnitName']] = ENUM_STAGE.ONCE.EXECUTED;
							local iManaSteal = 0;
							local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
							local iLenCreaturesTarget = length(listCreaturesTarget);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
									if itemCreatureTarget['iMana'] >= 2 then
										SetUnitManaPoints(itemCreatureTarget['strUnitName'], itemCreatureTarget['iMana'] - 2);
										iManaSteal = iManaSteal + 2;
									else
										SetUnitManaPoints(itemCreatureTarget['strUnitName'], 0);
										iManaSteal = iManaSteal + itemCreatureTarget['iMana'];
									end;
									print(itemCreatureTarget['strUnitName'].." loss 2 mana");
								end;
							end;
							if GetHero(getSide(1 - iSide)) ~= nil then
								local itemHeroTarget = geneUnitStatus(GetHero(getSide(1 - iSide)));
								if itemHeroTarget['iMana'] >= 2 then
									SetUnitManaPoints(itemHeroTarget['strUnitName'], itemHeroTarget['iMana'] - 2);
									iManaSteal = iManaSteal + 2;
								else
									SetUnitManaPoints(itemHeroTarget['strUnitName'], 0);
									iManaSteal = iManaSteal + itemHeroTarget['iMana'];
								end;
								print(itemHeroTarget['strUnitName'].." loss 2 mana");
							end;
							if iManaSteal > 0 then
								local itemHero = geneUnitStatus(GetHero(iSide));
								SetUnitManaPoints(itemHero['strUnitName'], itemHero['iMana'] + iManaSteal);
								print(itemHero['strUnitName'].." steal "..iManaSteal.." mana");
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Muscip']['function'] = Events_MiddlewareListener_Implement_Muscip;

	-- Fortress
		-- Hangvul2
			H55SMOD_MiddlewareListener['Hangvul2'] = {};
			function Events_MiddlewareListener_Implement_Hangvul2(strHero, iSide, itemUnitLast, listCreaturesTarget, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					combatSetPause(1);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					if iLenCreaturesTarget > 0 then
						local itemCreatureCaster = nil;
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
								itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_WARLORD, 1, itemCreatureTarget['iPositionX'], itemCreatureTarget['iPositionY']);
								if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
									startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_FLAMESTRIKE, itemCreatureTarget['strUnitName']);
									sleep(20);
									startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
									sleep(20);
									print(itemCreatureCaster.." cast SPELL_ABILITY_FLAMESTRIKE to "..itemCreatureTarget['strUnitName']);
								end;
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Hangvul2']['function'] = Events_MiddlewareListener_Implement_Hangvul2;

		-- Skeggy
			H55SMOD_MiddlewareListener['Skeggy'] = {};
			H55SMOD_MiddlewareListener['Skeggy']['flag'] = {};
			H55SMOD_MiddlewareListener['Skeggy']['function'] = {};
			function Events_MiddlewareListener_Implement_Skeggy_Charge(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast['iSide'] then
					if itemUnitLast['iUnitType'] == CREATURE_AXE_FIGHTER or itemUnitLast['iUnitType'] == CREATURE_AXE_THROWER or itemUnitLast['iUnitType'] == CREATURE_HARPOONER then
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnitLast['strUnitName']] == nil then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnitLast['strUnitName']] = ENUM_STAGE.ONCE.UNEXECUTE;
							print(itemUnitLast['strUnitName'].." charge once time");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skeggy']['function']['charge'] = Events_MiddlewareListener_Implement_Skeggy_Charge;
			function Events_MiddlewareListener_Implement_Skeggy_Consume(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast['iSide'] then
					if itemUnitLast['iUnitType'] == CREATURE_AXE_FIGHTER or itemUnitLast['iUnitType'] == CREATURE_AXE_THROWER or itemUnitLast['iUnitType'] == CREATURE_HARPOONER then
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnitLast['strUnitName']] == ENUM_STAGE.ONCE.UNEXECUTE then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnitLast['strUnitName']] = nil;

							combatSetPause(1);

							local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
							local iLenCreaturesTarget = length(listCreaturesTarget);
							if iLenCreaturesTarget == 1 then
								local itemCreatureCaster1 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								local itemCreatureCaster2 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								local itemCreatureCaster3 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								repeat sleep(1); until IsCombatUnit(itemCreatureCaster1) ~= nil and IsCombatUnit(itemCreatureCaster2) ~= nil and IsCombatUnit(itemCreatureCaster3) ~= nil;
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster1, listCreaturesTarget[0]);
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster2, listCreaturesTarget[0]);
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster3, listCreaturesTarget[0]);
								sleep(150);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster1);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster2);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster3);
								repeat sleep(1); until IsCombatUnit(itemCreatureCaster1) == nil and IsCombatUnit(itemCreatureCaster2) == nil and IsCombatUnit(itemCreatureCaster3) == nil;
								itemCreatureCaster1 = nil;
								itemCreatureCaster2 = nil;
								itemCreatureCaster3 = nil;
								print(itemUnitLast['strUnitName'].." shot to "..geneUnitStatus(listCreaturesTarget[0])['strUnitName']);
							elseif iLenCreaturesTarget == 2 then
								local itemCreatureCaster1 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], itemUnitLast['iUnitNumber'], itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								local itemCreatureCaster2 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], itemUnitLast['iUnitNumber'], itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								repeat sleep(1); until IsCombatUnit(itemCreatureCaster1) ~= nil and IsCombatUnit(itemCreatureCaster2) ~= nil;
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster1, listCreaturesTarget[0]);
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster2, listCreaturesTarget[1]);
								sleep(150);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster1);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster2);
								repeat sleep(1); until IsCombatUnit(itemCreatureCaster1) == nil and IsCombatUnit(itemCreatureCaster2) == nil;
								itemCreatureCaster1 = nil;
								itemCreatureCaster2 = nil;
								print(itemUnitLast['strUnitName'].." shot to "..geneUnitStatus(listCreaturesTarget[0])['strUnitName']);
								print(itemUnitLast['strUnitName'].." shot to "..geneUnitStatus(listCreaturesTarget[1])['strUnitName']);
							else
								local listSortedCreaturesTarget = sortListByCreature(listCreaturesTarget, 'iPositionY')
								local iLenSortedCreaturesTarget = length(listSortedCreaturesTarget);
								local itemCreatureCaster1 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								local itemCreatureCaster2 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								local itemCreatureCaster3 = Thread_Command_AddCreature(iSide, itemUnitLast['iUnitType'], h55_ceil(itemUnitLast['iUnitNumber'] / 2), itemUnitLast['iPositionX'], itemUnitLast['iPositionY']);
								repeat sleep(1); until IsCombatUnit(itemCreatureCaster1) ~= nil and IsCombatUnit(itemCreatureCaster2) ~= nil and IsCombatUnit(itemCreatureCaster3) ~= nil;
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster1, listSortedCreaturesTarget[0]);
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster2, listSortedCreaturesTarget[h55_ceil((iLenSortedCreaturesTarget - 1) / 2)]);
								startThread(Thread_Command_UnitShotAimed, itemCreatureCaster3, listSortedCreaturesTarget[iLenSortedCreaturesTarget - 1]);
								sleep(150);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster1);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster2);
								startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster3);
								repeat sleep(1); until IsCombatUnit(itemCreatureCaster1) == nil and IsCombatUnit(itemCreatureCaster2) == nil and IsCombatUnit(itemCreatureCaster3) == nil;
								itemCreatureCaster1 = nil;
								itemCreatureCaster2 = nil;
								itemCreatureCaster3 = nil;
								print(itemUnitLast['strUnitName'].." shot to "..geneUnitStatus(listSortedCreaturesTarget[0])['strUnitName']);
								print(itemUnitLast['strUnitName'].." shot to "..geneUnitStatus(listSortedCreaturesTarget[h55_ceil((iLenSortedCreaturesTarget - 1) / 2)])['strUnitName']);
								print(itemUnitLast['strUnitName'].." shot to "..geneUnitStatus(listSortedCreaturesTarget[iLenSortedCreaturesTarget - 1])['strUnitName']);
							end;

							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skeggy']['function']['consume'] = Events_MiddlewareListener_Implement_Skeggy_Consume;

		-- Maximus
			H55SMOD_MiddlewareListener['Maximus'] = {};
			H55SMOD_MiddlewareListener['Maximus']['flag'] = nil;
			H55SMOD_MiddlewareListener['Maximus']['function'] = {};
			function Events_MiddlewareListener_Implement_Maximus_Charge(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast['iSide'] then
					if itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.CREATURE then
						if H55SMOD_MiddlewareListener[strHero]['flag'] == nil then
							H55SMOD_MiddlewareListener[strHero]['flag'] = itemUnitLast['iUnitType'];
							print(itemUnitLast['iUnitType'].." connect to BALLISTA");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Maximus']['function']['charge'] = Events_MiddlewareListener_Implement_Maximus_Charge;
			function Events_MiddlewareListener_Implement_Maximus_Consume(strHero, iSide, itemUnitLast, listCreaturesBeEffected8HeroLevel)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast['iSide'] then
					if itemUnitLast['iUnitType'] == H55SMOD_MiddlewareListener[strHero]['flag'] then
						local strBallista = GetWarMachine(getSide(iSide), WAR_MACHINE_BALLISTA);
						if strBallista ~= nil then
							local itemBallista = geneUnitStatus(strBallista);
							combatSetPause(1);
							local iLenCreaturesBeEffected8HeroLevel = length(listCreaturesBeEffected8HeroLevel);
							if iLenCreaturesBeEffected8HeroLevel > 0 then
								for iIndexCreaturesBeEffected8HeroLevel = 0, iLenCreaturesBeEffected8HeroLevel - 1 do
									local itemCreatureBeEffected8HeroLevel = listCreaturesBeEffected8HeroLevel[iIndexCreaturesBeEffected8HeroLevel];
									if IsCombatUnit(itemCreatureBeEffected8HeroLevel['strUnitName']) ~= nil and itemCreatureBeEffected8HeroLevel['iUnitNumber'] > 0 then
										startThread(Thread_Command_UnitShotAimed, itemBallista['strUnitName'], itemCreatureBeEffected8HeroLevel['strUnitName']);
										print(itemBallista['strUnitName'].." connent shoot to "..itemCreatureBeEffected8HeroLevel['strUnitName'])
										sleep(20);
									end;
								end;
							end;
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Maximus']['function']['consume'] = Events_MiddlewareListener_Implement_Maximus_Consume;

		-- Bersy
			H55SMOD_MiddlewareListener['Bersy'] = {};
			function Events_MiddlewareListener_Implement_Bersy_Creature(strHero, iSide, itemUnitLast, listCreaturesBeMoved)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iSide'] == getSide(iSide, 1) then
					if itemUnitLast['iUnitType'] == CREATURE_BEAR_RIDER or itemUnitLast['iUnitType'] == CREATURE_BLACKBEAR_RIDER or itemUnitLast['iUnitType'] == CREATURE_WHITE_BEAR_RIDER then
						local iLenCreaturesBeMoved = length(listCreaturesBeMoved);
						if iLenCreaturesBeMoved > 0 then
							combatSetPause(1);
							startThread(Thread_Command_UnitCastAimedSpell, itemUnitLast['strUnitName'], SPELL_REGENERATION, itemUnitLast['strUnitName'], 0);
							print(itemUnitLast['strUnitName'].." cast SPELL_REGENERATION");
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Bersy']['function'] = Events_MiddlewareListener_Implement_Bersy_Creature;

		-- Egil
			H55SMOD_MiddlewareListener['Egil'] = {};
			H55SMOD_MiddlewareListener['Egil']['function'] = {};
			function Events_MiddlewareListener_Implement_Egil_Hero(strHero, iSide, itemUnitLast, iIncreaseManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local listCreaturesTarget = ObjSnapshotLastTurn['Creatures'][iSide];
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
						if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0
							and (
								itemCreatureTarget['iUnitType'] == CREATURE_RUNE_MAGE
								or itemCreatureTarget['iUnitType'] == CREATURE_FLAME_MAGE
								or itemCreatureTarget['iUnitType'] == CREATURE_FLAME_KEEPER
							) then
							local iBeforeMana = GetUnitManaPoints(itemCreatureTarget['strUnitName']);
							local iCurrentMana = iBeforeMana + iIncreaseManaPoints;
					    SetUnitManaPoints(itemCreatureTarget['strUnitName'], iCurrentMana);
							print(itemCreatureTarget['strUnitName'].." remain "..iIncreaseManaPoints.." mana");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Egil']['function']['hero'] = Events_MiddlewareListener_Implement_Egil_Hero;
			function Events_MiddlewareListener_Implement_Egil_Creature(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iSide'] == getSide(iSide, 1)
					and (
						itemUnitLast['iUnitType'] == CREATURE_RUNE_MAGE
						or itemUnitLast['iUnitType'] == CREATURE_FLAME_MAGE
						or itemUnitLast['iUnitType'] == CREATURE_FLAME_KEEPER
					)
					and GetUnitManaPoints(itemUnitLast['strUnitName']) >= 10 then
					combatSetPause(1);
					local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
					if iLenCreaturesBeEffected > 0 then
						for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
							local itemCreatureBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
							if IsCombatUnit(itemCreatureBeEffected['strUnitName']) ~= nil and itemCreatureBeEffected['iUnitNumber'] > 0 then
								startThread(Thread_Command_UnitShotAimed, itemUnitLast['strUnitName'], itemCreatureBeEffected['strUnitName']);
								SetUnitManaPoints(itemUnitLast['strUnitName'], 0);
								sleep(20);
								break;
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Egil']['function']['creature'] = Events_MiddlewareListener_Implement_Egil_Creature;

	-- Dungeon
		-- Almegir
			H55SMOD_MiddlewareListener['Almegir'] = {};
			function Events_MiddlewareListener_Implement_Almegir(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local itemHero = geneUnitStatus(itemUnitLast['strUnitName']);
					local iRequireMana = itemHero['iMana'] + 1 + h55_floor(H55SMOD_HeroLevel[strHero] / 6);
					local iMaxMana = itemHero['iMaxMana'] + H55SMOD_HeroLevel[strHero] * 2;
					local iDiffMana = 0;
					if iRequireMana > iMaxMana then
						SetUnitManaPoints(itemHero['strUnitName'], iMaxMana);
						iDiffMana = iMaxMana - itemHero['iMana'];
					else
						SetUnitManaPoints(itemHero['strUnitName'], iRequireMana);
						iDiffMana = iRequireMana - itemHero['iMana'];
					end;
					print(itemHero['strUnitName'].." cost less mana ");
				end;
			end;
			H55SMOD_MiddlewareListener['Almegir']['function'] = Events_MiddlewareListener_Implement_Almegir;

		-- Agbeth
			H55SMOD_MiddlewareListener['Agbeth'] = {};
			function Events_MiddlewareListener_Implement_Agbeth(strHero, iSide, itemUnitLast, listCreaturesTarget, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iLenCreaturesTarget = length(listCreaturesTarget);
					local iLenCreaturesDeath = length(listCreaturesDeath);
					-- 只有一支敌方部队有战损or全灭
					if iLenCreaturesTarget == 1 or iLenCreaturesDeath == 1 then
						-- 记录该部队-记为targer
						local itemUnitTarget;
						if iLenCreaturesTarget == 1 then
							itemUnitTarget = listCreaturesTarget[0];
						end;
						if iLenCreaturesDeath == 1 then
							itemUnitTarget = listCreaturesDeath[0];
						end;
						-- 获取其它敌方部队
						local listFoeCreatures = ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)];
						local iLenFoeCreatures = length(listFoeCreatures);
						-- 创建连锁队列，将target置入位置0
						local listCreaturesBeChained = {[0] = itemUnitTarget};
						local listCreatureNamesBeChained = {[0] = itemUnitTarget['strUnitName']};
						-- 遍历其它敌方部队
						for iIndexFoeCreatures = 0, iLenFoeCreatures - 1 do
							-- 若该部队不在连锁队列中
							if length(listCreatureNamesBeChained) < h55_floor(iLenFoeCreatures / 2) + 1
								and contains(listCreatureNamesBeChained, listFoeCreatures[iIndexFoeCreatures]['strUnitName']) == nil then
								local iLenCreaturesBeChained = length(listCreaturesBeChained);
								for iIndexCreaturesBeChained = 0, iLenCreaturesBeChained - 1 do
									-- 该部队与连锁队列中的任一生物相临
									if matchChain(listCreaturesBeChained[iIndexCreaturesBeChained], listFoeCreatures[iIndexFoeCreatures]) ~= nil then
										-- 将该生物加入连锁队列中 重复遍历
										push(listCreaturesBeChained, listFoeCreatures[iIndexFoeCreatures]);
										push(listCreatureNamesBeChained, listFoeCreatures[iIndexFoeCreatures]['strUnitName']);
										iIndexFoeCreatures = -1;
										break;
									end;
								end;
							end;
						end;
						-- 若连锁队列中 生物数量 大于等于2
						local iLenCreaturesBeChained = length(listCreaturesBeChained);
						if iLenCreaturesBeChained >= 2 then
							combatSetPause(1);
							-- 遍历连锁队列
							for iIndexCreaturesBeChained = 1, iLenCreaturesBeChained - 1 do
								-- 若该生物存在 且 数量大于0
								if IsCombatUnit(listCreaturesBeChained[iIndexCreaturesBeChained]['strUnitName']) ~= nil
									and listCreaturesBeChained[iIndexCreaturesBeChained]['iUnitNumber'] > 0 then
									-- 英雄对其施放霹雳闪电
									startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_LIGHTNING_BOLT, listCreaturesBeChained[iIndexCreaturesBeChained]['strUnitName'], 1);
									sleep(20);
									print(GetHero(iSide).." cast SPELL_LIGHTNING_BOLT chain to "..itemUnitTarget['strUnitName']);
								end;
							end;
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Agbeth']['function'] = Events_MiddlewareListener_Implement_Agbeth;

		-- Kastore
			H55SMOD_MiddlewareListener['Kastore'] = {};
			H55SMOD_MiddlewareListener['Kastore']['flag'] = {};
			function Events_MiddlewareListener_Implement_Kastore(strHero, iSide, itemUnitLastMove, listCreaturesLastSummon)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if listCreaturesLastSummon ~= nil and length(listCreaturesLastSummon) > 0 then
						local itemUnitLastSummon = listCreaturesLastSummon[0];
						if H55SMOD_MiddlewareListener[strHero]['flag'][itemUnitLastSummon['strUnitName']] == nil then
							H55SMOD_MiddlewareListener[strHero]['flag'][itemUnitLastSummon['strUnitName']] = ENUM_STAGE.ONCE.EXECUTED;
							if itemUnitLastSummon['iUnitType'] == CREATURE_FIRE_ELEMENTAL
								or itemUnitLastSummon['iUnitType'] == CREATURE_WATER_ELEMENTAL
								or itemUnitLastSummon['iUnitType'] == CREATURE_EARTH_ELEMENTAL
								or itemUnitLastSummon['iUnitType'] == CREATURE_AIR_ELEMENTAL
								or itemUnitLastSummon['iUnitType'] == CREATURE_PHOENIX then
								if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][SKILL_MASTER_OF_ICE] == 1 and H55SMOD_MiddlewareListener[strHero]['flag']['water'] == nil then
									combatSetPause(1);
									local strSummonCreatureWater = Thread_Command_SummonCreature(iSide, CREATURE_WATER_ELEMENTAL, h55_ceil(H55SMOD_HeroLevel[strHero] / 3), itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
									H55SMOD_MiddlewareListener[strHero]['flag'][strSummonCreatureWater] = ENUM_STAGE.ONCE.EXECUTED;
									H55SMOD_MiddlewareListener[strHero]['flag']['water'] = ENUM_STAGE.ONCE.EXECUTED;
									combatSetPause(nil);
								end;
								if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][SKILL_MASTER_OF_FIRE] == 1 and H55SMOD_MiddlewareListener[strHero]['flag']['fire'] == nil then
									combatSetPause(1);
									local strSummonCreatureFire = Thread_Command_SummonCreature(iSide, CREATURE_FIRE_ELEMENTAL, h55_ceil(H55SMOD_HeroLevel[strHero] / 3), itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
									H55SMOD_MiddlewareListener[strHero]['flag'][strSummonCreatureFire] = ENUM_STAGE.ONCE.EXECUTED;
									H55SMOD_MiddlewareListener[strHero]['flag']['fire'] = ENUM_STAGE.ONCE.EXECUTED;
									combatSetPause(nil);
								end;
								if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][SKILL_MASTER_OF_LIGHTNINGS] == 1 and H55SMOD_MiddlewareListener[strHero]['flag']['lightning'] == nil then
									combatSetPause(1);
									local strSummonCreatureAir = Thread_Command_SummonCreature(iSide, CREATURE_AIR_ELEMENTAL, h55_ceil(H55SMOD_HeroLevel[strHero] / 3), itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
									H55SMOD_MiddlewareListener[strHero]['flag'][strSummonCreatureAir] = ENUM_STAGE.ONCE.EXECUTED;
									H55SMOD_MiddlewareListener[strHero]['flag']['lightning'] = ENUM_STAGE.ONCE.EXECUTED;
									combatSetPause(nil);
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Kastore']['function'] = Events_MiddlewareListener_Implement_Kastore;

		-- Eruina
			H55SMOD_MiddlewareListener['Eruina'] = {};
			function Events_MiddlewareListener_Implement_Eruina(strHero, iSide, itemUnitLast, listCreaturesTarget, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iLenCreaturesTarget = length(listCreaturesTarget);
					if iLenCreaturesTarget == 1 then
						combatSetPause(1);
						local itemUnitTarget = listCreaturesTarget[0];
						if IsCombatUnit(itemUnitTarget['strUnitName']) ~= nil and itemUnitTarget['iUnitNumber'] > 0 then
							startThread(Thread_Command_UnitCastAimedSpell, GetHero(iSide), SPELL_ICE_BOLT, itemUnitTarget['strUnitName'], 1);
							sleep(20);
							print(GetHero(iSide).." cast SPELL_ICE_BOLT to "..itemUnitTarget['strUnitName']);
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Eruina']['function'] = Events_MiddlewareListener_Implement_Eruina;

		-- Sephinroth
			H55SMOD_MiddlewareListener['Sephinroth'] = {};
			function Events_MiddlewareListener_Implement_Sephinroth(strHero, iSide, itemUnitLast, listCreaturesTarget, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iLenCreaturesTarget = length(listCreaturesTarget);
					if iLenCreaturesTarget == 1 then
						combatSetPause(1);
						local itemCreatureTarget = listCreaturesTarget[0];
						if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
							local strCreatureAim = Thread_Command_AddCreature(iSide, CREATURE_SCOUT, 1, itemCreatureTarget['iPositionX'], itemCreatureTarget['iPositionY']);
							if strCreatureAim ~= nil then
								local itemCreatureAim = geneUnitStatus(strCreatureAim);
								Thread_Command_RemoveCombatUnit(iSide, itemCreatureAim['strUnitName']);
								sleep(50);
								startThread(Thread_Command_UnitCastAreaSpell, GetHero(iSide), SPELL_ARCANE_CRYSTAL, itemCreatureAim['iPositionX'], itemCreatureAim['iPositionY'], 1);
								sleep(50);
								print(GetHero(iSide).." cast SPELL_ARCANE_CRYSTAL beside "..itemCreatureTarget['strUnitName']);
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Sephinroth']['function'] = Events_MiddlewareListener_Implement_Sephinroth;

		-- Menel
			H55SMOD_MiddlewareListener['Menel'] = {};
			function Events_MiddlewareListener_Implement_Menel(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast['iSide'] then
					if itemUnitLast['iUnitType'] == CREATURE_MINOTAUR or itemUnitLast['iUnitType'] == CREATURE_MINOTAUR_KING or itemUnitLast['iUnitType'] == CREATURE_MINOTAUR_CAPTAIN then
						combatSetPause(1);
						local listCreaturesTarget = GetCreatures(iSide);
						local iLenCreaturesTarget = length(listCreaturesTarget);
						local iIsMatchArea = 0;
						local itemUnitLast = geneUnitStatus(itemUnitLast['strUnitName']);
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								if itemCreatureTarget['iUnitType'] == CREATURE_MINOTAUR or itemCreatureTarget['iUnitType'] == CREATURE_MINOTAUR_KING or itemCreatureTarget['iUnitType'] == CREATURE_MINOTAUR_CAPTAIN then
									print('CREATURE_MINOTAUR is not active');
								else
									if matchArea4(itemUnitLast, itemCreatureTarget, 2) == 1 and iIsMatchArea == 0 then
										iIsMatchArea = 1;
										print(itemUnitLast['strUnitName'].." near to "..itemCreatureTarget['strUnitName']);
									end;
								end;
							end;
						end;
						if iIsMatchArea == 1 then
							itemUnitLast['iAtb'] = 1.25;
							push(ListUnitSetATB, itemUnitLast);
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Menel']['function'] = Events_MiddlewareListener_Implement_Menel;

		-- Ferigl
			H55SMOD_MiddlewareListener['Ferigl'] = {};
			H55SMOD_MiddlewareListener['Ferigl']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_Ferigl(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if iLossManaPoints > 10 then
						combatSetPause(1);
						local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
						local iLenCreaturesTarget = length(listCreaturesTarget);
						for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
							local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_BLOOD_WITCH, 1, itemCreatureTarget['iPositionX'], itemCreatureTarget['iPositionY']);
								if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
									startThread(Thread_Command_UnitAttackAimed, itemCreatureCaster, itemCreatureTarget['strUnitName']);
									print(itemCreatureCaster.." strike to "..itemCreatureTarget['strUnitName']);
									sleep(50);
									startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
									sleep(50);
								end;
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Ferigl']['function'] = Events_MiddlewareListener_Implement_Ferigl;

	-- Stronghold
		-- Hero3
			H55SMOD_MiddlewareListener['Hero3'] = {};
			function Events_MiddlewareListener_Implement_Hero3(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iSide'] == getSide(iSide, 1) then
					if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
						itemUnitLast = geneUnitStatus(itemUnitLast['strUnitName']);
						if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
							itemUnitLast['iAtb'] = 1.25;
							push(ListUnitSetATB, itemUnitLast);
							print(itemUnitLast['strUnitName'].." move again");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Hero3']['function'] = Events_MiddlewareListener_Implement_Hero3;

		-- Quroq
			H55SMOD_MiddlewareListener['Quroq'] = {};
			function Events_MiddlewareListener_Implement_Quroq(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['iSide'] == iSide then
					if itemUnit['iUnitType'] == CREATURE_SHAMAN_WITCH or itemUnit['iUnitType'] == CREATURE_SHAMAN_HAG then
						combatSetPause(1);
						local strCreatureTarget = Thread_Command_AddCreature(iSide, CREATURE_GOBLIN, 1, itemUnit['iPositionX'], itemUnit['iPositionY']);
						if strCreatureTarget ~= nil then
							local itemCreatureTarget = geneUnitStatus(strCreatureTarget);
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
									startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemUnit['strUnitName'], SPELL_ABILITY_SACRIFICE_GOBLIN, itemCreatureTarget['strUnitName']);
									sleep(30);
									if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil then
										startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureTarget['strUnitName']);
									end;
									itemUnit['iAtb'] = 1.25;
									push(ListUnitSetATB, itemUnit);
									sleep(20);
									print(itemUnit['strUnitName'].." sacrifice and move again");
								end;
							end;
						end;
						combatSetPause(nil);
					end;
					if itemUnit['iUnitType'] == CREATURE_CYCLOP or itemUnit['iUnitType'] == CREATURE_CYCLOP_UNTAMED or itemUnit['iUnitType'] == CREATURE_CYCLOP_BLOODEYED then
						combatSetPause(1);
						local strCreatureTarget = Thread_Command_AddCreature(iSide, CREATURE_GOBLIN, 1, itemUnit['iPositionX'], itemUnit['iPositionY']);
						if strCreatureTarget ~= nil then
							local itemCreatureTarget = geneUnitStatus(strCreatureTarget);
							if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
								if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
									startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemUnit['strUnitName'], SPELL_ABILITY_SWALLOW_GOBLIN, itemCreatureTarget['strUnitName']);
									sleep(30);
									if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil then
										startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureTarget['strUnitName']);
									end;
									itemUnit['iAtb'] = 1.25;
									push(ListUnitSetATB, itemUnit);
									sleep(20);
									print(itemUnit['strUnitName'].." swallow and move again");
								end;
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Quroq']['function'] = Events_MiddlewareListener_Implement_Quroq;

		-- Shiva
			H55SMOD_MiddlewareListener['Shiva'] = {};
			function Events_MiddlewareListener_Implement_Shiva(strHero, iSide, itemUnitLast, itemUnitRager)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitRager['iSide'] == iSide then
					itemUnitRager['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnitRager);
					print(itemUnitRager['strUnitName'].." move again");
				end;
			end;
			H55SMOD_MiddlewareListener['Shiva']['function'] = Events_MiddlewareListener_Implement_Shiva;

		-- Zouleika
			H55SMOD_MiddlewareListener['Zouleika'] = {};
			function Events_MiddlewareListener_Implement_Zouleika(strHero, iSide, itemUnitLast, itemUnitRager)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitRager['iSide'] == iSide then
					local itemHero = geneUnitStatus(GetHero(iSide));
					itemHero['iAtb'] = 1.25;
					push(ListUnitSetATB, itemHero);
					print(itemHero['strUnitName'].." move again..");
				end;
			end;
			H55SMOD_MiddlewareListener['Zouleika']['function'] = Events_MiddlewareListener_Implement_Zouleika;

		-- Hero4
			H55SMOD_MiddlewareListener['Hero4'] = {};
			function Events_MiddlewareListener_Implement_Hero4(strHero, iSide, itemUnitLast, itemUnitRager)
				if GetHero(iSide) ~= nil
					and GetHeroName(GetHero(iSide)) == strHero
					and itemUnitLast['iUnitType'] == strHero
					and itemUnitRager['iSide'] == iSide then
					local listCreaturesTarget = GetCreatures(iSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local strCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
						local itemCreatureTarget = geneUnitStatus(strCreatureTarget);
						if IsCombatUnit(strCreatureTarget) ~= nil
							and GetCreatureNumber(strCreatureTarget) > 0
							and (
								itemCreatureTarget["iUnitType"] == CREATURE_ORCCHIEF_BUTCHER
								or itemCreatureTarget["iUnitType"] == CREATURE_ORCCHIEF_EXECUTIONER
								or itemCreatureTarget["iUnitType"] == CREATURE_ORCCHIEF_CHIEFTAIN
							) then
							itemCreatureTarget['iAtb'] = 1.25;
							push(ListUnitSetATB, itemCreatureTarget);
							print(itemCreatureTarget['strUnitName'].." move immediate..");
							ShowFlyingSign(TTHCS_PATH["Talent"]["Hero4"]["Effect"], itemCreatureTarget['strUnitName'], 5);
						end;
					end;

				end;
			end;
			H55SMOD_MiddlewareListener['Hero4']['function'] = Events_MiddlewareListener_Implement_Hero4;

		-- Erika
			H55SMOD_MiddlewareListener['Erika'] = {};
			function Events_MiddlewareListener_Implement_Erika(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if itemUnitLast['iMana'] - iLossManaPoints * 2 < 0 then
						SetUnitManaPoints(itemUnitLast['strUnitName'], 0);
						itemUnitLast['iMana'] = 0;
					else
						SetUnitManaPoints(itemUnitLast['strUnitName'], itemUnitLast['iMana'] - iLossManaPoints * 2);
						itemUnitLast['iMana'] = itemUnitLast['iMana'] - iLossManaPoints * 2;
					end;
					itemUnitLast['iAtb'] = 0;
					push(ListUnitSetATB, itemUnitLast);
					print(itemUnitLast['strUnitName'].." cost double mana");
				end;
			end;
			H55SMOD_MiddlewareListener['Erika']['function'] = Events_MiddlewareListener_Implement_Erika;

		-- Mokka
			H55SMOD_MiddlewareListener['Mokka'] = {};
			function Events_MiddlewareListener_Implement_Mokka(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit['strUnitName'] == GetHero(iSide) then
					local listMeCreatures = ObjSnapshotLastTurn['Creatures'][iSide];
					local iLenMeCreatures = length(listMeCreatures);
					local listFoeCreatures = ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)];
					local iLenFoeCreatures = length(listFoeCreatures);
					local iNumMeCreatures = 0;
					local iNumFoeCreatures = 0;
					for iIndexMeCreatures = 0, iLenMeCreatures - 1 do
						iNumMeCreatures = iNumMeCreatures + listMeCreatures[iIndexMeCreatures]['iUnitNumber'];
					end;
					for iIndexFoeCreatures = 0, iLenFoeCreatures - 1 do
						iNumFoeCreatures = iNumFoeCreatures + listFoeCreatures[iIndexFoeCreatures]['iUnitNumber'];
					end;
					if iNumMeCreatures > iNumFoeCreatures and iLenMeCreatures > iLenFoeCreatures then
						if iLenFoeCreatures > 1 then
							local listSortedByPositionXFoeCreatures = sortList(listFoeCreatures, 'iPositionX');
							local itemUnitTarget = {};
							if iSide == ENUM_SIDE.ATTACKER then
								itemUnitTarget = listSortedByPositionXFoeCreatures[length(listSortedByPositionXFoeCreatures) - 1];
							else
								itemUnitTarget = listSortedByPositionXFoeCreatures[0];
							end;
							if IsCombatUnit(itemUnitTarget['strUnitName']) ~= nil and itemUnitTarget['iUnitNumber'] > 0 then
								local listSamePositionXFoeCreatures = {};
								local iLenSortedByPositionXFoeCreatures = length(listSortedByPositionXFoeCreatures);
								for iIndexSortedByPositionXFoeCreatures = 0, iLenSortedByPositionXFoeCreatures - 1 do
									if itemUnitTarget['iPositionX'] == listSortedByPositionXFoeCreatures[iIndexSortedByPositionXFoeCreatures]['iPositionX'] then
										push(listSamePositionXFoeCreatures, listSortedByPositionXFoeCreatures[iIndexSortedByPositionXFoeCreatures]);
									end;
								end;
								local listSortedByUnitNumberFoeCreatures = sortList(listSamePositionXFoeCreatures, 'iUnitNumber');
								local itemByUnitNumberUnitTarget = listSortedByUnitNumberFoeCreatures[0];
								if IsCombatUnit(itemByUnitNumberUnitTarget['strUnitName']) ~= nil and itemByUnitNumberUnitTarget['iUnitNumber'] > 0 then
									itemByUnitNumberUnitTarget['iAtb'] = 0;
									push(ListUnitSetATB, itemByUnitNumberUnitTarget);
									sleep(20);
									print(itemByUnitNumberUnitTarget['strUnitName'].." fear");
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Mokka']['function'] = Events_MiddlewareListener_Implement_Mokka;

		-- Gottai
			H55SMOD_MiddlewareListener['Gottai'] = {};
			function Events_MiddlewareListener_Implement_Gottai(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					combatSetPause(1);
					startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_WARCRY_BATTLECRY, 1);
					sleep(20);
					print(strHero.." casted SPELL_WARCRY_BATTLECRY");
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Gottai']['function'] = Events_MiddlewareListener_Implement_Gottai;

		-- Hero8
			H55SMOD_MiddlewareListener['Hero8'] = {};
			H55SMOD_MiddlewareListener['Hero8']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
			H55SMOD_MiddlewareListener['Hero8']['function'] = {};
			function Events_MiddlewareListener_Implement_Hero8_Trigger(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if H55SMOD_MiddlewareListener[strHero]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
						if itemUnitLast['iSide'] == getSide(iSide, 1) then
							H55SMOD_MiddlewareListener[strHero]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
							print(itemUnitLast['strUnitName'].." trigger "..strHero.."'s ability");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Hero8']['function']['trigger'] = Events_MiddlewareListener_Implement_Hero8_Trigger;
			function Events_MiddlewareListener_Implement_Hero8_Active(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and H55SMOD_MiddlewareListener[strHero]['flag'] == ENUM_STAGE.ONCE.EXECUTED then
					local listOrc = {};
					local listCreaturesTarget = GetCreatures(iSide);
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreature = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
						if IsCombatUnit(itemCreature['strUnitName']) ~= nil and itemCreature['iUnitNumber'] > 0 then
							if itemCreature['iUnitType'] == CREATURE_ORC_WARRIOR or itemCreature['iUnitType'] == CREATURE_ORC_SLAYER or itemCreature['iUnitType'] == CREATURE_ORC_WARMONGER then
								push(listOrc, itemCreature['strUnitName']);
							end;
						end;
					end;
					if listOrc ~= nil and length(listOrc) > 0 then
						local listAscOrc = sort_asc_creatures(listOrc);
						local itemOrc = geneUnitStatus(listAscOrc[length(listAscOrc) - 1]);
						if itemUnit['strUnitName'] == itemOrc['strUnitName'] then
							combatSetPause(1);
							local strHeroName = GetHero(iSide);
							local itemHero = geneUnitStatus(strHeroName);
							itemHero['iAtb'] = 1.25;
							push(ListUnitSetATB, itemHero);
							print(itemHero['strUnitName'].." has actived");
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Hero8']['function']['active'] = Events_MiddlewareListener_Implement_Hero8_Active;

		-- Kraal
			H55SMOD_MiddlewareListener['Kraal'] = {};
			function Events_MiddlewareListener_Implement_Kraal(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local strBallista = GetWarMachine(iSide, WAR_MACHINE_BALLISTA);
					if strBallista ~= nil then
						local itemBallista = geneUnitStatus(strBallista);
						local itemCreatureEffected = nil;
						if length(listCreaturesBeEffected) ~= 0 then
							itemCreatureEffected = listCreaturesBeEffected[0];
						end;
						if length(listCreaturesDeath) ~= 0 then
							itemCreatureEffected = listCreaturesDeath[0];
						end;
						if itemCreatureEffected ~= nil then
							local listPositionMatch = {};
							local iSideX = 0;
							if iSide == ENUM_SIDE.ATTACKER then
								iSideX = 1;
							else
								iSideX = -1;
							end;
							for iY = 1, 4 do
								for iX1 = -1 * iY, 1 * iY do
									push(listPositionMatch, {
										['iPositionX'] = itemCreatureEffected['iPositionX'] + iY * iSideX
										, ['iPositionY'] = itemCreatureEffected['iPositionY'] + iX1
									});
								end;
							end;

							local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
							local iLenCreaturesTarget = length(listCreaturesTarget);
							local iLenPositionMatch = length(listPositionMatch);
							local bMatch = 0;
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								local itemCreatureTarget = geneUnitStatus(listCreaturesTarget[iIndexCreaturesTarget]);
								if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
									for iIndexPositionMatch = 0, iLenPositionMatch - 1 do
										local itemPositionMatch = listPositionMatch[iIndexPositionMatch];
										if matchArea(itemCreatureTarget, itemPositionMatch['iPositionX'], itemPositionMatch['iPositionY'], 0) == 1 then
											combatSetPause(1);
											startThread(Thread_Command_UnitShotAimed, itemBallista['strUnitName'], itemCreatureTarget['strUnitName']);
											print(itemBallista['strUnitName'].." flamewave to "..itemCreatureTarget['strUnitName'])
											sleep(20);
											combatSetPause(nil);
											bMatch = 1;
											break;
										end;
									end;
									if bMatch == 1 then
										break;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Kraal']['function'] = Events_MiddlewareListener_Implement_Kraal;

		-- Hero9
			H55SMOD_MiddlewareListener['Hero9'] = {};
			function Events_MiddlewareListener_Implement_Hero9(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil
					and GetHeroName(GetHero(getSide(iSide, 1))) == strHero
					and itemUnitLast['iSide'] == getSide(iSide, 1) then
					if itemUnitLast['iUnitType'] == CREATURE_GOBLIN
						or itemUnitLast['iUnitType'] == CREATURE_GOBLIN_TRAPPER
						or itemUnitLast['iUnitType'] == CREATURE_GOBLIN_DEFILER then
						combatSetPause(1);
						local arrUnitName = TTHCS_GLOBAL.listUnitInArea(itemUnitLast["strUnitName"], 1, getSide(iSide, 1));
						if length(arrUnitName) == 0
							and IsCombatUnit(itemUnitLast["strUnitName"]) ~= nil
							and GetCreatureNumber(itemUnitLast["strUnitName"]) > 0 then
							itemUnitLast['iAtb'] = 1.25;
							push(ListUnitSetATB, itemUnitLast);
							ShowFlyingSign(TTHCS_PATH["Talent"]["Hero9"]["Effect"], itemUnitLast['strUnitName'], 5);
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Hero9']['function'] = Events_MiddlewareListener_Implement_Hero9;

-- 生物
	-- LightAngel
		H55SMOD_MiddlewareListener['LightAngel'] = {};
		function Events_MiddlewareListener_Implement_LightAngel(strHero, iSide, itemUnit)
			if GetHero(iSide) ~= nil and contains(List_LightAngel_Creatures, itemUnit['iUnitType']) ~= nil then
				SetUnitManaPoints(itemUnit['strUnitName'], GetUnitManaPoints(itemUnit['strUnitName']) + 1);
			end;
		end;
		H55SMOD_MiddlewareListener['LightAngel']['function'] = Events_MiddlewareListener_Implement_LightAngel;

	-- CREATURE_ENCHANTER 魔幻法师
		H55SMOD_MiddlewareListener['Enchanter'] = {};
		H55SMOD_MiddlewareListener['Enchanter']['function'] = {};
		H55SMOD_MiddlewareListener['Enchanter']['record'] = {};
		function Events_MiddlewareListener_Implement_Enchanter_Charge(strHero, iSide, itemUnit)
			if (itemUnit['iUnitType'] == CREATURE_ENCHANTER_ACADEMY or itemUnit['iUnitType'] == CREATURE_ENCHANTER_NEUTRAL)
				and itemUnit['iSide'] == iSide then
				if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
					if H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] == nil then
						H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] = 0;
					end;
					H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] = H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] + 1;
					if H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']]  == 1 then
						ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["Effect1"], itemUnit['strUnitName'], 5);
					elseif H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']]  == 2 then
						ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["Effect2"], itemUnit['strUnitName'], 5);
					elseif H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']]  >= 3 then
						ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["Effect3"], itemUnit['strUnitName'], 5);
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Enchanter']['function']['charge'] = Events_MiddlewareListener_Implement_Enchanter_Charge;
		function Events_MiddlewareListener_Implement_Enchanter_Consume(strHero, iSide, itemUnit)
			if (itemUnit['iUnitType'] == CREATURE_ENCHANTER_ACADEMY or itemUnit['iUnitType'] == CREATURE_ENCHANTER_NEUTRAL)
				and itemUnit['iSide'] == iSide then
				if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
					if H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] == nil then
						H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] = 0;
					end;
					if H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']]  >= 3 then
						H55SMOD_MiddlewareListener['Enchanter']['record'][itemUnit['strUnitName']] = 0;
						combatSetPause(1);
						local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_ENCHANTER_CASTER, 1, itemUnit['iPositionX'], itemUnit['iPositionY']);
						ShowFlyingSign(TTHCS_PATH["Creature"]["Enchanter"]["EffectConsume"], itemCreatureCaster, 5);
						for iIndexSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
							local listCreaturesTarget = GetCreatures(iIndexSide);
							local iLenCreaturesTarget = length(listCreaturesTarget);
							for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
								if IsCombatUnit(listCreaturesTarget[iIndexCreaturesTarget]) ~= nil
									and GetCreatureNumber(listCreaturesTarget[iIndexCreaturesTarget]) > 0
									and listCreaturesTarget[iIndexCreaturesTarget] ~= itemCreatureCaster then
									if IsCombatUnit(itemCreatureCaster) ~= nil and GetCreatureNumber(itemCreatureCaster) > 0 then
										startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_RANDOM_CAST_DARK_LIGHT, listCreaturesTarget[iIndexCreaturesTarget]);
										sleep(20);
									end;
								end;
							end;
						end;
						if IsCombatUnit(itemCreatureCaster) ~= nil and GetCreatureNumber(itemCreatureCaster) > 0 then
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
							sleep(20);
						end;
						combatSetPause(nil);
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Enchanter']['function']['consume'] = Events_MiddlewareListener_Implement_Enchanter_Consume;

	-- CREATURE_CHERUBIN 神圣守护者
		H55SMOD_MiddlewareListener['Cherubin'] = {};
		H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] = 1;
		function Events_MiddlewareListener_Implement_Cherubin(strHero, iSide, itemUnit)
			if itemUnit['iUnitType'] == CREATURE_CHERUBIN
				and itemUnit['iSide'] == iSide then
				if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
					combatSetPause(1);
					local iMagicIndex = H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'];
					local objMagicId = TTHCS_TABLE.CherubinMagic[iMagicIndex];
					local iMagicId = objMagicId["Id"];
					local enumMagicType = objMagicId["Type"];
					Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemUnit['strUnitName'], iMagicId);
					H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] = H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] + 1;
					if H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] > 3 then
						H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] = 1;
					end;
					itemUnit['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnit);
					print(itemUnit['strUnitName'].." cast "..iMagicId);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Cherubin']['function'] = Events_MiddlewareListener_Implement_Cherubin;

	-- CREATURE_DRAGON_KNIGHT 暗黑龙骑士
		H55SMOD_MiddlewareListener['DragonKnight'] = {};
		H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] = 1;
		function Events_MiddlewareListener_Implement_DragonKnight(strHero, iSide, itemUnit)
			if itemUnit['iUnitType'] == CREATURE_DRAGON_KNIGHT
				and itemUnit['iSide'] == iSide then
				if IsCombatUnit(itemUnit['strUnitName']) ~= nil and itemUnit['iUnitNumber'] > 0 then
					combatSetPause(1);
					local iMagicIndex = H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'];
					local objMagicId = TTHCS_TABLE.DragonKnightMagic[iMagicIndex];
					local iMagicId = objMagicId["Id"];
					local enumMagicType = objMagicId["Type"];
					local arrImmuneCreature = objMagicId["Immune"];

					local listCreaturesTarget = GetCreatures(getSide(iSide, 1));
					local iLenCreaturesTarget = length(listCreaturesTarget);
					local iLenImmune = 0;
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						if contains(arrImmuneCreature, GetCreatureType(listCreaturesTarget[iIndexCreaturesTarget])) ~= nil then
							iLenImmune = iLenImmune + 1;
						end;
					end;
					if iLenCreaturesTarget > iLenImmune and iLenCreaturesTarget > 0 then
						Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemUnit['strUnitName'], iMagicId);
					end;
					H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] = H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] + 1;
					if H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] > 3 then
						H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] = 1;
					end;
					itemUnit['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnit);
					print(itemUnit['strUnitName'].." cast "..iMagicId);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['DragonKnight']['function'] = Events_MiddlewareListener_Implement_DragonKnight;

-- 系统接口
	function AttackerHeroMove(heroName)
		onUnitTriggerMiddlewareListener(heroName, ENUM_BASICLISTENER.MOVE);
	end;
	function DefenderHeroMove(heroName)
		onUnitTriggerMiddlewareListener(heroName, ENUM_BASICLISTENER.MOVE);
	end;
	function AttackerCreatureMove(creatureName)
		onUnitTriggerMiddlewareListener(creatureName, ENUM_BASICLISTENER.MOVE);
	end;
	function DefenderCreatureMove(creatureName)
		onUnitTriggerMiddlewareListener(creatureName, ENUM_BASICLISTENER.MOVE);
	end;
	function AttackerWarMachineMove(warmachineName)
		onUnitTriggerMiddlewareListener(warmachineName, ENUM_BASICLISTENER.MOVE);
	end;
	function DefenderWarMachineMove(warmachineName)
		onUnitTriggerMiddlewareListener(warmachineName, ENUM_BASICLISTENER.MOVE);
	end;
	function DefenderBuildingMove(buildingName)
		onUnitTriggerMiddlewareListener(buildingName, ENUM_BASICLISTENER.MOVE);
	end;
	function AttackerHeroDeath(heroName)
		onUnitTriggerMiddlewareListener(heroName, ENUM_BASICLISTENER.DEATH);
	end;
	function DefenderHeroDeath(heroName)
		onUnitTriggerMiddlewareListener(heroName, ENUM_BASICLISTENER.DEATH);
	end;
	function AttackerCreatureDeath(creatureName)
		onUnitTriggerMiddlewareListener(creatureName, ENUM_BASICLISTENER.DEATH);
	end;
	function DefenderCreatureDeath(creatureName)
		onUnitTriggerMiddlewareListener(creatureName, ENUM_BASICLISTENER.DEATH);
	end;
	function AttackerWarMachineDeath(warmachineName)
		onUnitTriggerMiddlewareListener(warmachineName, ENUM_BASICLISTENER.DEATH);
	end;
	function DefenderWarMachineDeath(warmachineName)
		onUnitTriggerMiddlewareListener(warmachineName, ENUM_BASICLISTENER.DEATH);
	end;
	function DefenderBuildingDeath(buildingName)
		onUnitTriggerMiddlewareListener(buildingName, ENUM_BASICLISTENER.DEATH);
	end;
	function AttackerSpellSpawnDeath(spellspawnName)
		onUnitTriggerMiddlewareListener(spellspawnName, ENUM_BASICLISTENER.DEATH);
	end;
	function DefenderSpellSpawnDeath(spellspawnName)
		onUnitTriggerMiddlewareListener(spellspawnName, ENUM_BASICLISTENER.DEATH);
	end;

-- 计时器 取随机数
	I_TIMER = 0;
	function timeInterval()
		I_TIMER = I_TIMER + 1;
		if I_TIMER > 100 then
			I_TIMER = 0;
		end;
		sleep(10);
		timeInterval();
	end;
	startThread(timeInterval);
	print("timeInterval started");

print("All functions started");


doFile("/scripts/support/hanqing-combat.lua");







