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

	-- GodricMP
		H55SMOD_Start['GodricMP'] = {};
		H55SMOD_Start['GodricMP']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_GodricMP(strHero, iSide, isReverse)
			startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_PRAYER, 1);
			print(strHero.." casted SPELL_PRAYER");
			sleep(20);
			setATB(GetHero(iSide), 0.7 + 0.01 * H55SMOD_HeroLevel[strHero]);
		end;
		H55SMOD_Start['GodricMP']['function'] = Events_Start_Implement_GodricMP;

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

	-- Gurvilin
		H55SMOD_Start['Gurvilin'] = {};
		H55SMOD_Start['Gurvilin']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Gurvilin(strHero, iSide, isReverse)
			local iPositionXCaster = -1;
			if iSide == ENUM_SIDE.ATTACKER then
				iPositionXCaster = 2;
			else
				iPositionXCaster = 13;
			end;
			for iIndexSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
				local listCreaturesTarget = GetCreatures(iIndexSide);
				local iLenCreaturesTarget = length(listCreaturesTarget);
				local itemCreatureCaster = nil;
				for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
					if IsCombatUnit(listCreaturesTarget[iIndexCreaturesTarget]) ~= nil and GetCreatureNumber(listCreaturesTarget[iIndexCreaturesTarget]) > 0 then
						repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
						itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_MASTER_GENIE, H55SMOD_HeroLevel[strHero] * 1, iPositionXCaster, 1);
						if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
							startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemCreatureCaster, SPELL_ABILITY_RANDOM_CAST_DARK_LIGHT, listCreaturesTarget[iIndexCreaturesTarget]);
							sleep(20);
							startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
							sleep(20);
						end;
					end;
				end;
			end;
		end;
		H55SMOD_Start['Gurvilin']['function'] = Events_Start_Implement_Gurvilin;

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
				if IsCombatUnit(listCreaturesTarget[iIndexCreaturesTarget]) ~= nil and GetCreatureNumber(listCreaturesTarget[iIndexCreaturesTarget]) > 0 then
					repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
					itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_EARTH_ELEMENTAL, H55SMOD_HeroLevel[strHero], pos['x'], pos['y']);
					if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
						startThread(Thread_Command_UnitCastAimedSpell, itemCreatureCaster, SPELL_CELESTIAL_SHIELD, listCreaturesTarget[iIndexCreaturesTarget], 0);
						sleep(20);
						startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
						sleep(20);
					end;
				end;
			end;
			print("CREATURE_EARTH_ELEMENTAL casted SPELL_CELESTIAL_SHIELD");
		end;
		H55SMOD_Start['Tazar']['function'] = Events_Start_Implement_Tazar;

	-- Nicolai
		H55SMOD_Start['Nicolai'] = {};
		H55SMOD_Start['Nicolai']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		function Events_Start_Implement_Nicolai(strHero, iSide, isReverse)
			local pos = BattleLargeCenterPos[getBattleSize()];
			local itemCreatureCaster = nil;
			itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_EARTH_ELEMENTAL, H55SMOD_HeroLevel[strHero], pos['x'], pos['y']);
			repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
			startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_DEFLECT_ARROWS, 0);
			sleep(20);
			startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
			repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
			print("CREATURE_EARTH_ELEMENTAL casted SPELL_MASS_DEFLECT_ARROWS");
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

	H55SMOD_Start_Artifact = {};

	-- ARTIFACT_ANGELIC_ALLIANCE
	function Events_Start_Artifact_Implement_Angelic_Alliance(iSide)
		local pos = BattleLargeCenterPos[getBattleSize()];
		local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_AIR_ELEMENTAL, 1, pos['x'], pos['y']);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_HASTE, 0);
		print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_HASTE");
		sleep(20);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_BLESS, 0);
		print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_BLESS");
		sleep(20);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
		print("CREATURE_AIR_ELEMENTAL has left");
		sleep(100);
	end;
	H55SMOD_Start_Artifact[ARTIFACT_ANGELIC_ALLIANCE] = {
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
		local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_EARTH_ELEMENTAL, 1, pos['x'], pos['y']);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_STONESKIN, 0);
		print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_STONESKIN");
		sleep(20);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_BLOODLUST, 0);
		print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_BLOODLUST");
		sleep(20);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
		print("CREATURE_EARTH_ELEMENTAL has left");
		sleep(100);
	end;
	H55SMOD_Start_Artifact[ARTIFACT_SENTINEL] = {
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
		local itemCreatureCaster = Thread_Command_SummonCreature(iSide, CREATURE_FIRE_ELEMENTAL, 1, pos['x'], pos['y']);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_SLOW, 0);
		print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_SLOW");
		sleep(20);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_UnitCastGlobalSpell, itemCreatureCaster, SPELL_MASS_WEAKNESS, 0);
		print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_WEAKNESS");
		sleep(20);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) ~= nil;
		startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
		repeat sleep(1); until IsCombatUnit(itemCreatureCaster) == nil;
		print("CREATURE_FIRE_ELEMENTAL has left");
		sleep(100);
	end;
	H55SMOD_Start_Artifact[ARTIFACT_CURSE_SHOULDER] = {
		[ENUM_SIDE.ATTACKER] = {
			['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
		}
		, [ENUM_SIDE.DEFENDER] = {
			['flag'] = ENUM_STAGE.ONCE.UNEXECUTE
		}
		, ['function'] = Events_Start_Artifact_Implement_Curse_Shoulder
	};

	function Events_Start_Artifact_Interface()
		for indexArtifact, objArtifact in TTH_ARTIFACT_EFFECT_COMBAT do
			if objArtifact ~= ARTIFACT_EIGHTFOLD and objArtifact ~= ARTIFACT_MOONBLADE then
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if H55SMOD_Start_Artifact[objArtifact][iSide]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE and TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][objArtifact] == 1 then
						H55SMOD_Start_Artifact[objArtifact]['function'](iSide);
						H55SMOD_Start_Artifact[objArtifact][iSide]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
					end;
				end;
			end;
		end;
	end;
	function Events_Start()
		combatSetPause(1);
		Events_Init();
		Events_Init_HeroLevel();
		Events_Init_HeroSkill();
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
			local strHeroLevel = GetGameVar('H55SMOD_Var_Level_'..strHero);
			if strHeroLevel == nil or strHeroLevel == '' then
				H55SMOD_HeroLevel[strHero] = 0;
			else
				H55SMOD_HeroLevel[strHero] = strHeroLevel * 1;
			end;
		end;
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil and H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] == 0 then
				-- print(GetHeroName(GetHero(iSide)))
				-- print(H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))])
				TTH_HeroNotExistOnMap = iSide;
				setATB(GetHero(TTH_HeroNotExistOnMap), 0);
				if GetHero(getSide(iSide, 1)) ~= nil and H55SMOD_HeroLevel[GetHeroName(GetHero(getSide(iSide, 1)))] ~= 0 then
					H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] = H55SMOD_HeroLevel[GetHeroName(GetHero(getSide(iSide, 1)))];
				else
					H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))] = 1;
				end;
			end;
		end;
	end;
	function Events_Init_HeroSkill()
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
		if 1 == 1 then
			local strHero = 'Kastore';
			if H55SMOD_HeroSkill[strHero] == nil then
				H55SMOD_HeroSkill[strHero] = {};
			end;
			if 1 == 1 then
				local strHeroSkill = GetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_ICE);
				if strHeroSkill == nil or strHeroSkill == '' then
					H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] = 0;
				else
					H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] = strHeroSkill * 1;
				end;
			end;
			if 1 == 1 then
				local strHeroSkill = GetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_FIRE);
				if strHeroSkill == nil or strHeroSkill == '' then
					H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] = 0;
				else
					H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] = strHeroSkill * 1;
				end;
			end;
			if 1 == 1 then
				local strHeroSkill = GetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..SKILL_MASTER_OF_LIGHTNINGS);
				if strHeroSkill == nil or strHeroSkill == '' then
					H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] = 0;
				else
					H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] = strHeroSkill * 1;
				end;
			end;
		end;
	end;
	function Events_Init_HeroArtifact()
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil then
				local strHero = GetHeroName(GetHero(iSide));
				for indexArtifact, objArtifact in TTH_ARTIFACT_EFFECT_COMBAT do
					local strKey = 'TTH_Artifact_Effect_Combat_'..strHero..'_'..objArtifact;
					local strValue = GetGameVar(strKey);
					if strValue ~= nil and strValue ~= '' and strValue * 1 == 1 then
						TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][objArtifact] = 1;
					end;
				end;
			end;
		end;
	end;
	function Events_Init_Interface()
		-- 前置英雄特效
		Events_Start_Interface('Sarge', 0);
		Events_Start_Interface('Shadwyn', 1);
		Events_Start_Interface('Azar', 1);
		Events_Start_Interface('KujinMP', 1);
		Events_Start_Interface('Tan', 0);

		-- 神器特效-排除Timerkhan
		if (GetHero(ENUM_SIDE.ATTACKER) ~= nil and GetHeroName(GetHero(ENUM_SIDE.ATTACKER)) ~= 'Timerkhan')
			or (GetHero(ENUM_SIDE.DEFENDER) ~= nil and GetHeroName(GetHero(ENUM_SIDE.DEFENDER)) ~= 'Timerkhan') then
			Events_Start_Artifact_Interface();
		end;

		-- 后置英雄特效
		Events_Start_Interface('GodricMP', 0);
		Events_Start_Interface('Maeve', 0);

		Events_Start_Interface('Gurvilin', 1);
		Events_Start_Interface('Josephine', 1);

		-- Events_Start_Interface('Efion', 1);
		-- Events_Start_Interface('Aislinn', 1);

		Events_Start_Interface('Vegeyr', 1);
		Events_Start_Interface('Tazar', 0);
		Events_Start_Interface('Nicolai', 0);

		Events_Start_Interface('Matewa', 0);
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

			print('death');
			return nil;
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

			-- 英雄失去魔法值
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						if GetHero(iSide) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] > ObjSnapshotLastTurn['Hero'][iSide]['iMana'] then
							local iLossManaPoints = ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'] - ObjSnapshotLastTurn['Hero'][iSide]['iMana'];

							-- Haven
								H55SMOD_MiddlewareListener['RedHeavenHero03']['function']['product']('RedHeavenHero03', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Orlando']['function']('Orlando', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Jeddite']['function']['hero']('Jeddite', iSide, itemUnitLast, iLossManaPoints);
							-- Sylvan
							-- Academy
								H55SMOD_MiddlewareListener['Faiz']['function']['product']('Faiz', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Nur']['function']['product']('Nur', iSide, itemUnitLast, iLossManaPoints);
							-- Inferno
								H55SMOD_MiddlewareListener['Efion']['function']['product']('Efion', iSide, itemUnitLast, iLossManaPoints);
							-- Necropolis
								H55SMOD_MiddlewareListener['Nikolay']['function']('Nikolay', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Effig']['function']('Effig', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Thant']['function']['hero']('Thant', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Nimbus']['function']('Nimbus', getSide(iSide, 1), itemUnit, iLossManaPoints);
							-- Fortress
							-- Dungeon
								H55SMOD_MiddlewareListener['Almegir']['function']('Almegir', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Ferigl']['function']('Ferigl', iSide, itemUnitLast, iLossManaPoints);
							-- Stronghold
								H55SMOD_MiddlewareListener['Erika']['function']('Erika', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Gottai']['function']('Gottai', iSide, itemUnitLast, iLossManaPoints);

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
										H55SMOD_MiddlewareListener['Jeddite']['function']['creature']('Jeddite', iSide, itemUnitLast, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast], iLossManaPoints);
									-- Sylvan
									-- Academy
									-- Inferno
									-- Necropolis
										H55SMOD_MiddlewareListener['Thant']['function']['creature']('Thant', iSide, itemUnitLast, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast], iLossManaPoints);
										H55SMOD_MiddlewareListener['Nimbus']['function']('Nimbus', iSide, itemUnit, iLossManaPoints);
										H55SMOD_MiddlewareListener['Nimbus']['function']('Nimbus', getSide(iSide, 1), itemUnit, iLossManaPoints);
									-- Fortress
									-- Dungeon
									-- Stronghold
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
								H55SMOD_MiddlewareListener['Nemor']['function']['creature']('Nemor', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Fortress
							-- Dungeon
							-- Stronghold
						end;

						-- 单队
						if length(listCreaturesBeEffected) == 1 then
							-- 英雄平砍
							if GetHero(getSide(iSide, 1)) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][getSide(iSide, 1)]['iMana'] == ObjSnapshotLastTurn['Hero'][getSide(iSide, 1)]['iMana'] then
								-- Haven
									H55SMOD_MiddlewareListener['Orrin']['function']('Orrin', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- Sylvan
								-- Academy
								-- Inferno
									-- H55SMOD_MiddlewareListener['Orlando2']['function']('Orlando2', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
									H55SMOD_MiddlewareListener['Calid']['function']('Calid', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- Necropolis
								-- Fortress
								-- Dungeon
								-- Stronghold
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
								H55SMOD_MiddlewareListener['Itil']['function']['product']('Itil', iSide, itemUnitLast, listCreaturesBeEffected);
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
						-- Academy
							H55SMOD_MiddlewareListener['Davius']['function']['kill']('Davius', iSide, itemUnitLast, listCreaturesLastDeath);
						-- Inferno
							H55SMOD_MiddlewareListener['Calh']['function']('Calh', iSide, itemUnitLast, listCreaturesLastDeath);
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
							if itemUnitLast['iSide'] == iSide and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO and (length(listCreaturesBeEffected) + length(listUnitLastDeath) > 0 or iLossMana > 0) then
								H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function']['charge'](itemUnitLast, iSide);
							end;
						end;
					end;
				end;

			-- 英雄行动
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Skill
							H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function']['consume'](itemUnit, iSide);

						-- Haven
							H55SMOD_MiddlewareListener['RedHeavenHero03']['function']['consume']('RedHeavenHero03', iSide, itemUnit);
						-- Sylvan
						-- Academy
							H55SMOD_MiddlewareListener['Faiz']['function']['consume']('Faiz', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Nur']['function']['consume']('Nur', iSide, itemUnit);
							H55SMOD_Start['Tan']['function']('Tan', iSide, 0);
						-- Inferno
							H55SMOD_MiddlewareListener['Ash']['function']['hero']('Ash', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Efion']['function']['consume']('Efion', iSide, itemUnit);
						-- Necropolis
							H55SMOD_MiddlewareListener['Giovanni']['function']['hero']('Giovanni', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Nemor']['function']['hero']('Nemor', iSide, itemUnit);
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
						-- Sylvan
							H55SMOD_MiddlewareListener['Gelu']['function']('Gelu', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Itil']['function']['consume']('Itil', iSide, itemUnit);
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
					end;
				end;

			-- 上回合生物行动
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
						if length(listCreaturesBeEffected) == 0 and length(listCreaturesDeath) == 0 then
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
					end;
				end;

			-- 通用前置
				if itemUnit ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
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

			-- 通用后置
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
						-- Sylvan
							H55SMOD_MiddlewareListener['Mephala']['function']('Mephala', iSide, itemUnitLast);
						-- Academy
						-- Inferno
						-- Necropolis
							H55SMOD_MiddlewareListener['Archilus']['function']('Archilus', iSide, itemUnitLast);
						-- Fortress
						-- Dungeon
						-- Stronghold
					end;
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

			print('move');
			return nil;
		end;
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
							-- startThread(Thread_Command_UnitCastAimedSpell_WithoutMana, itemUnit['strUnitName'], SPELL_ENCOURAGE, itemCreature['strUnitName']);
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
										-- print(itemUnit['iPositionX']);
										-- print(itemUnit['iPositionY']);
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
			H55SMOD_MiddlewareListener['Jeddite']['function'] = {};
			function Events_MiddlewareListener_Implement_Jeddite_Hero(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local listCreaturesTarget = ObjSnapshotLastTurn['Creatures'][iSide];
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
						if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 then
							if itemCreatureTarget['iUnitType'] == CREATURE_PRIEST or itemCreatureTarget['iUnitType'] == CREATURE_CLERIC or itemCreatureTarget['iUnitType'] == CREATURE_ZEALOT then
								local iDiffMana = 2; -- h55_ceil(iLossManaPoints * (0.1 + 0.01 * H55SMOD_HeroLevel[strHero]));
								local iBeforeMana = GetUnitManaPoints(itemCreatureTarget['strUnitName']);
								local iCurrentMana = iBeforeMana + iDiffMana;
						        SetUnitManaPoints(itemCreatureTarget['strUnitName'], iCurrentMana);
								print(itemCreatureTarget['strUnitName'].." remain "..iDiffMana.." mana");
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Jeddite']['function']['hero'] = Events_MiddlewareListener_Implement_Jeddite_Hero;
			function Events_MiddlewareListener_Implement_Jeddite_Creature(strHero, iSide, itemUnitLast, itemUnitLoss, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLoss['iSide'] == iSide then
					if itemUnitLoss['iUnitType'] == CREATURE_PRIEST or itemUnitLoss['iUnitType'] == CREATURE_CLERIC or itemUnitLoss['iUnitType'] == CREATURE_ZEALOT then
						local itemHero = geneUnitStatus(GetHero(iSide));
						local iDiffMana = 2; --h55_ceil(iLossManaPoints * (0.1 + 0.01 * H55SMOD_HeroLevel[strHero]));
						local iBeforeMana = GetUnitManaPoints(itemHero['strUnitName']);
						local iCurrentMana = iBeforeMana + iDiffMana;
				        SetUnitManaPoints(itemHero['strUnitName'], iCurrentMana);
						print(itemHero['strUnitName'].." remain "..iDiffMana.." mana");
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Jeddite']['function']['creature'] = Events_MiddlewareListener_Implement_Jeddite_Creature;

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
			H55SMOD_MiddlewareListener['Itil']['flag'] = 0;
			H55SMOD_MiddlewareListener['Itil']['function'] = {};
			function Events_MiddlewareListener_Implement_Itil_Product(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
				if iLenCreaturesBeEffected > 0 then
					for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
						local itemCreaturesBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
						if IsCombatUnit(itemCreaturesBeEffected['strUnitName']) ~= nil and itemCreaturesBeEffected['iUnitNumber'] > 0 then
							if itemCreaturesBeEffected['iUnitType'] == CREATURE_UNICORN or itemCreaturesBeEffected['iUnitType'] == CREATURE_WAR_UNICORN or itemCreaturesBeEffected['iUnitType'] == CREATURE_WHITE_UNICORN then
								H55SMOD_MiddlewareListener['Itil']['flag'] = H55SMOD_MiddlewareListener['Itil']['flag'] + 1;
								print("Itil Atb is "..H55SMOD_MiddlewareListener['Itil']['flag']);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Itil']['function']['product'] = Events_MiddlewareListener_Implement_Itil_Product;
			function Events_MiddlewareListener_Implement_Itil_Consume(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == GetUnitSide(itemUnit['strUnitName']) then
					if H55SMOD_MiddlewareListener['Itil']['flag'] >= 5 then
						combatSetPause(1);
						local strHeroName = GetHero(iSide);
						local itemHero = geneUnitStatus(strHeroName);
						itemHero['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHero);
						H55SMOD_MiddlewareListener['Itil']['flag'] = 0;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Itil']['function']['consume'] = Events_MiddlewareListener_Implement_Itil_Consume;

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

	-- Inferno
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

		-- Calh
			H55SMOD_MiddlewareListener['Calh'] = {};
			H55SMOD_MiddlewareListener['Calh']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_Calh(strHero, iSide, itemUnitLast, listCreaturesLastDeath)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero then
					if H55SMOD_MiddlewareListener[strHero]['flag'] == ENUM_STAGE.ONCE.UNEXECUTE then
						local itemHero = geneUnitStatus(GetHero(getSide(iSide, 1)));
						if listCreaturesLastDeath ~= nil and length(listCreaturesLastDeath) > 0 then
							local itemCreatureDeath = geneUnitStatus(listCreaturesLastDeath[0]['strUnitName']);
							if IsCombatUnit(itemCreatureDeath['strUnitName']) ~= nil and itemCreatureDeath['iUnitNumber'] == 0 then
								local iCallNumber = h55_floor(itemHero['iMana'] / 30);
								if iCallNumber > 0 then
									combatSetPause(1);
									if iCallNumber >= H55SMOD_HeroLevel[strHero] * 1 then
										Thread_Command_AddCreature(getSide(iSide, 1), CREATURE_BALOR, H55SMOD_HeroLevel[strHero] * 1, itemCreatureDeath['iPositionX'], itemCreatureDeath['iPositionY']);
										SetUnitManaPoints(itemHero['strUnitName'], itemHero['iMana'] - H55SMOD_HeroLevel[strHero] * 30);
									else
										Thread_Command_AddCreature(getSide(iSide, 1), CREATURE_BALOR, iCallNumber, itemCreatureDeath['iPositionX'], itemCreatureDeath['iPositionY']);
										SetUnitManaPoints(itemHero['strUnitName'], itemHero['iMana'] - iCallNumber * 30);
									end;
									Thread_Command_RemoveCombatUnit_Uncheck(itemCreatureDeath['strUnitName']);
									H55SMOD_MiddlewareListener[strHero]['flag'] = ENUM_STAGE.ONCE.EXECUTED;
									sleep(20);
									print(itemHero['strUnitName'].." summon BALOR");
									combatSetPause(nil);
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Calh']['function'] = Events_MiddlewareListener_Implement_Calh;

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
											-- print(itemCreature)
											-- print(iPositionX)
											-- print(iPositionY)
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

		-- Nikolay
			H55SMOD_MiddlewareListener['Nikolay'] = {};
			function Events_MiddlewareListener_Implement_Nikolay(strHero, iSide, itemUnitLast, iLossManaPoints)
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
								itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_FIRE_ELEMENTAL, 1, iPositionX, iPositionY);
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
			H55SMOD_MiddlewareListener['Nikolay']['function'] = Events_MiddlewareListener_Implement_Nikolay;

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
			H55SMOD_MiddlewareListener['Nemor']['function'] = {};
			H55SMOD_MiddlewareListener['Nemor']['list'] = {};
			function Events_MiddlewareListener_Implement_Nemor_Creature(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero and itemUnitLast['iSide'] == getSide(iSide, 1) and itemUnitLast['iUnitType'] == CREATURE_BANSHEE then
					combatSetPause(1);
					local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
					if iLenCreaturesBeEffected > 0 then
						for iIndexCreaturesBeEffected = 0, iLenCreaturesBeEffected - 1 do
							local itemCreatureBeEffected = listCreaturesBeEffected[iIndexCreaturesBeEffected];
							if IsCombatUnit(itemCreatureBeEffected['strUnitName']) ~= nil and itemCreatureBeEffected['iUnitNumber'] > 0 then
								push(H55SMOD_MiddlewareListener[strHero]['list'], itemCreatureBeEffected);
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Nemor']['function']['creature'] = Events_MiddlewareListener_Implement_Nemor_Creature;
			function Events_MiddlewareListener_Implement_Nemor_Hero(strHero, iSide, itemUnit)
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
									startThread(Thread_Command_UnitCastAimedSpell, strHeroName, SPELL_SORROW, itemCreature['strUnitName'], 1);
									print(strHeroName.." casted SPELL_SORROW to "..itemCreature['strUnitName']);
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
			H55SMOD_MiddlewareListener['Nemor']['function']['hero'] = Events_MiddlewareListener_Implement_Nemor_Hero;

		-- Thant
			H55SMOD_MiddlewareListener['Thant'] = {};
			H55SMOD_MiddlewareListener['Thant']['function'] = {};
			function Events_MiddlewareListener_Implement_Thant_Hero(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local listCreaturesTarget = ObjSnapshotLastTurn['Creatures'][iSide];
					local iLenCreaturesTarget = length(listCreaturesTarget);
					for iIndexCreaturesTarget = 0, iLenCreaturesTarget - 1 do
						local itemCreatureTarget = listCreaturesTarget[iIndexCreaturesTarget];
						if IsCombatUnit(itemCreatureTarget['strUnitName']) ~= nil and itemCreatureTarget['iUnitNumber'] > 0 and itemCreatureTarget['iUnitType'] == CREATURE_MUMMY then
							local iDiffMana = 2; -- h55_ceil(iLossManaPoints * (0.1 + 0.01 * H55SMOD_HeroLevel[strHero]));
							local iBeforeMana = GetUnitManaPoints(itemCreatureTarget['strUnitName']);
							local iCurrentMana = iBeforeMana + iDiffMana;
					        SetUnitManaPoints(itemCreatureTarget['strUnitName'], iCurrentMana);
							print(itemCreatureTarget['strUnitName'].." remain "..iDiffMana.." mana");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Thant']['function']['hero'] = Events_MiddlewareListener_Implement_Thant_Hero;
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
			function Events_MiddlewareListener_Implement_Nimbus(strHero, iSide, itemUnit, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit ~= nil and itemUnit['strUnitName'] ~= GetHero(iSide) then
					local itemHero = geneUnitStatus(GetHero(iSide));
					itemHero['iAtb'] = 1.25;
					push(ListUnitSetATB, itemHero);
					print(itemHero['strUnitName'].." move now");
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

		-- Bersy
			H55SMOD_MiddlewareListener['Bersy'] = {};
			function Events_MiddlewareListener_Implement_Bersy_Creature(strHero, iSide, itemUnitLast, listCreaturesBeMoved)
				-- print(strHero);
				-- print(iSide);
				-- print(itemUnitLast);
				-- print(listCreaturesBeMoved);
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
								if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_ICE] == 1 and H55SMOD_MiddlewareListener[strHero]['flag']['water'] == nil then
									combatSetPause(1);
									local strSummonCreatureWater = Thread_Command_SummonCreature(iSide, CREATURE_WATER_ELEMENTAL, h55_ceil(H55SMOD_HeroLevel[strHero] / 3), itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
									H55SMOD_MiddlewareListener[strHero]['flag'][strSummonCreatureWater] = ENUM_STAGE.ONCE.EXECUTED;
									H55SMOD_MiddlewareListener[strHero]['flag']['water'] = ENUM_STAGE.ONCE.EXECUTED;
									combatSetPause(nil);
								end;
								if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_FIRE] == 1 and H55SMOD_MiddlewareListener[strHero]['flag']['fire'] == nil then
									combatSetPause(1);
									local strSummonCreatureFire = Thread_Command_SummonCreature(iSide, CREATURE_FIRE_ELEMENTAL, h55_ceil(H55SMOD_HeroLevel[strHero] / 3), itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
									H55SMOD_MiddlewareListener[strHero]['flag'][strSummonCreatureFire] = ENUM_STAGE.ONCE.EXECUTED;
									H55SMOD_MiddlewareListener[strHero]['flag']['fire'] = ENUM_STAGE.ONCE.EXECUTED;
									combatSetPause(nil);
								end;
								if H55SMOD_HeroSkill[strHero][SKILL_MASTER_OF_LIGHTNINGS] == 1 and H55SMOD_MiddlewareListener[strHero]['flag']['lightning'] == nil then
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









