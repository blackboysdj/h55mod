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
	TTH_FINAL.GAMEVAR_COMBAT_ATTRIBUTE = "TTH_Attribute_Effect_Combat_";
	TTH_FINAL.GAMEVAR_UPGRADE_MASTERY = "TTH_Var_Upgrade_Mastery_";
	TTH_FINAL.GAMEVAR_UPGRADE_SHANTIRI = "TTH_Var_Upgrade_Shantiri_";

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

	-- Tarkus
		-- 小场 X: 5-10 Y: 1-10
		-- 大场 X: 5-12 Y: 1-14
		H55SMOD_Start["Tarkus"] = {};
		H55SMOD_Start["Tarkus"]["flag"] = ENUM_STAGE.ONCE.UNEXECUTE;
		H55SMOD_Start["Tarkus"]["ListAttack"] = {};
		H55SMOD_Start["Tarkus"]["ListDefend"] = {};
		H55SMOD_Start["Tarkus"]["ListAll"] = {};
		function Events_Tactics_Implement_Tarkus_Check(itemPosition)
			local bCheck = 1;
			for i, objPostion in H55SMOD_Start["Tarkus"]["ListAll"] do
				if itemPosition["PosX"] == objPostion["PosX"] and itemPosition["PosY"] == objPostion["PosY"] then
					bCheck = 0;
				end;
			end;
			return bCheck;
		end;
		function Events_Tactics_Implement_Tarkus(strHero, iSide)
			local iBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
			for i = 1, 3 do
				local itemPositionLeft = {};
				repeat
					if itemPositionLeft["UnitName"] ~= nil then
						Thread_Command_RemoveCombatUnit(iSide, itemPositionLeft["UnitName"]);
						itemPositionLeft = {};
					end;
					if iBattleFieldSize == TTHCS_ENUM.BattleEffectFieldSmall then
					  itemPositionLeft["PosX"] = TTHCS_COMMON.getRandom(3) + 5;
					  itemPositionLeft["PosY"] = TTHCS_COMMON.getRandom(10) + 1;
					else
					  itemPositionLeft["PosX"] = TTHCS_COMMON.getRandom(4) + 5;
					  itemPositionLeft["PosY"] = TTHCS_COMMON.getRandom(14) + 1;
					end;
					local strCreatureLeft = Thread_Command_AddCreature(iSide, CREATURE_HEAVEN_TOOL, 1, itemPositionLeft["PosX"], itemPositionLeft["PosY"]);
					local objCreatureLeft = TTHCS_GLOBAL.geneUnitInfo(strCreatureLeft);
					itemPositionLeft = objCreatureLeft;
				until Events_Tactics_Implement_Tarkus_Check(itemPositionLeft) == 1;
				Thread_Command_RemoveCombatUnit(iSide, itemPositionLeft["UnitName"]);
				push(H55SMOD_Start[strHero]["ListAll"], itemPositionLeft);
				if iSide == TTHCS_ENUM.SideAttacker then
					push(H55SMOD_Start[strHero]["ListDefend"], itemPositionLeft);
				else
					push(H55SMOD_Start[strHero]["ListAttack"], itemPositionLeft);
				end;
			end;
			for i = 1, 3 do
				local itemPositionRight = {};
				repeat 
					if itemPositionRight["UnitName"] ~= nil then
						Thread_Command_RemoveCombatUnit(iSide, itemPositionRight["UnitName"]);
						itemPositionRight = {};
					end;
					if iBattleFieldSize == TTHCS_ENUM.BattleEffectFieldSmall then
					  itemPositionRight["PosX"] = TTHCS_COMMON.getRandom(3) + 8;
					  itemPositionRight["PosY"] = TTHCS_COMMON.getRandom(10) + 1;
					else
					  itemPositionRight["PosX"] = TTHCS_COMMON.getRandom(4) + 9;
					  itemPositionRight["PosY"] = TTHCS_COMMON.getRandom(14) + 1;
					end;
					local strCreatureRight = Thread_Command_AddCreature(iSide, CREATURE_HEAVEN_TOOL, 1, itemPositionRight["PosX"], itemPositionRight["PosY"]);
					local objCreatureRight = TTHCS_GLOBAL.geneUnitInfo(strCreatureRight);
					itemPositionRight = objCreatureRight;
				until Events_Tactics_Implement_Tarkus_Check(itemPositionRight) == 1;
				Thread_Command_RemoveCombatUnit(iSide, itemPositionRight["UnitName"]);
				push(H55SMOD_Start[strHero]["ListAll"], itemPositionRight);
				if iSide == TTHCS_ENUM.SideAttacker then
					push(H55SMOD_Start[strHero]["ListAttack"], itemPositionRight);
				else
					push(H55SMOD_Start[strHero]["ListDefend"], itemPositionRight);
				end;
			end;
			for i, objPostion in H55SMOD_Start["Tarkus"]["ListAttack"] do
				local strCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_HEAVEN_TOOL, 1, 1, 1);
				UnitCastAreaSpell(strCreatureCaster, SPELL_ABILITY_SET_SNARES, objPostion["PosX"], objPostion["PosY"]);
				Thread_Command_RemoveCombatUnit(iSide, strCreatureCaster);
				print("Attack: "..objPostion["PosX"].."-"..objPostion["PosY"]);
			end;
			for i, objPostion in H55SMOD_Start["Tarkus"]["ListDefend"] do
				local strCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_HEAVEN_TOOL, 1, 1, 1);
				UnitCastAreaSpell(strCreatureCaster, SPELL_ABILITY_SET_SNARES, objPostion["PosX"], objPostion["PosY"]);
				Thread_Command_RemoveCombatUnit(iSide, strCreatureCaster);
				print("Defend: "..objPostion["PosX"].."-"..objPostion["PosY"]);
			end;
		end;
		H55SMOD_Start["Tarkus"]["function"] = Events_Tactics_Implement_Tarkus;

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
			-- if H55SMOD_Start[strHero]['value'] ~= nil then
			-- 	setATB(H55SMOD_Start[strHero]['value'], 1.25);
			-- end;
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

	-- Solmyr
		H55SMOD_Start['Solmyr'] = {};
		H55SMOD_Start['Solmyr']['flag'] = ENUM_STAGE.ONCE.UNEXECUTE;
		H55SMOD_Start['Solmyr']['position'] = {
				{{12, 1}, {12, 4}, {12, 7}, {12, 10}}
			,	{{14, 2}, {14, 5}, {14, 8}, {14, 11}, {14, 14}}
		};
		function Events_Start_Implement_Solmyr(strHero, iSide, isReverse)
			local iSize = getBattleSize() + 1;
			local iLenPositionTarget = length(H55SMOD_Start['Solmyr']['position'][iSize]);
			local iPositionXCaster = -1;
			if iSide == ENUM_SIDE.ATTACKER then
				iPositionXCaster = 2;
			else
				iPositionXCaster = 13;
			end;
			local itemCreatureCaster = nil;
			for iIndexPositionTarget = 1, iLenPositionTarget do
				repeat sleep(1); until itemCreatureCaster == nil or (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) == nil);
				itemCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_ACADEMY_TOOL, H55SMOD_HeroLevel[strHero] * 1, iPositionXCaster, 1);
				local iPositionXTarget = H55SMOD_Start['Solmyr']['position'][iSize][iIndexPositionTarget][1];
				if iSide == ENUM_SIDE.ATTACKER then
					iPositionXTarget = H55SMOD_Start['Solmyr']['position'][iSize][iIndexPositionTarget][1];
				else
					if getBattleSize() == 0 then
						iPositionXTarget = 15 - H55SMOD_Start['Solmyr']['position'][iSize][iIndexPositionTarget][1];
					else
						iPositionXTarget = 17 - H55SMOD_Start['Solmyr']['position'][iSize][iIndexPositionTarget][1];
					end;
				end;
				if itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil then
					startThread(Thread_Command_UnitCastAreaSpell, itemCreatureCaster, SPELL_ABILITY_CALL_STORM, iPositionXTarget, H55SMOD_Start['Solmyr']['position'][iSize][iIndexPositionTarget][2], 0);
					sleep(20);
					startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureCaster);
					sleep(20);
				end;
			end;
			print(strHero.." casted SPELL_MAGIC");
		end;
		H55SMOD_Start['Solmyr']['function'] = Events_Start_Implement_Solmyr;

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
				Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemCreatureCaster, SPELL_MASS_HASTE);
				print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_HASTE");
				if GetHeroName(GetHero(iSide)) ~= "SaintIsabell" then
					Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemCreatureCaster, SPELL_MASS_BLESS);
					print("ARTIFACT_ANGELIC_ALLIANCE casted SPELL_MASS_BLESS");
				end;
				if GetHero(iSide) ~= nil
					and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT] ~= nil
					and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT] > 0 then
					return nil;
				end;
				Thread_Command_RemoveCombatUnit_Check(itemCreatureCaster);
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
				Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemCreatureCaster, SPELL_MASS_STONESKIN);
				print("ARTIFACT_SENTINEL casted SPELL_MASS_STONESKIN");
				Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemCreatureCaster, SPELL_MASS_BLOODLUST);
				print("ARTIFACT_SENTINEL casted SPELL_MASS_BLOODLUST");
				if GetHero(iSide) ~= nil
					and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT] ~= nil
					and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_TWILIGHT] > 0 then
					return nil;
				end;
				Thread_Command_RemoveCombatUnit_Check(itemCreatureCaster);
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
				if GetHero(iSide) ~= nil
					and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PARIAH] ~= nil
					and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PARIAH] > 0 then
					return nil;
				end;
				Thread_Command_RemoveCombatUnit_Check(itemCreatureCaster);
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

						local iIndex = TTHCS_COMMON.getRandom(4);
						local idSummonElemental = H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER]['list'][iIndex];
						local iAppointedCreatureId = idSummonElemental;
						if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRE_AFFINITY] ~= nil then
							iAppointedCreatureId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRE_AFFINITY] + 0;
						end;
						local iHeroLevel = H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))];
						Thread_Command_SummonCreature(iSide, iAppointedCreatureId, iHeroLevel * 1, iPositionX, iPositionY);
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
						local iIndex = TTHCS_COMMON.getRandom(iLenCreaturesSnapshotInit);
						local itemCreatureSnapshotInit = listCreaturesSnapshotInit[iIndex];
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

	-- Skill
		--神秘精髓: 战斗开始前英雄获得20%当前魔法值的临时魔法值 HERO_SKILL_CASTER_CERTIFICATE
			H55SMOD_Start['Skill'][HERO_SKILL_CASTER_CERTIFICATE] = {};
			function Events_Start_Implement_Skill_CasterCertificate()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if GetHero(iSide) ~= nil and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_CASTER_CERTIFICATE] == 1 then
						local idHero = GetHero(iSide);
						local strHero = GetHeroName(idHero);
						local iCurrentMana = GetUnitManaPoints(idHero);
						local iCasterCertificateMana = h55_ceil(iCurrentMana * 0.2);
						SetUnitManaPoints(idHero, iCurrentMana + iCasterCertificateMana);
						print(idHero.." get "..iCasterCertificateMana.." mana by [CasterCertificate]");
					end;
				end;
			end;
			H55SMOD_Start['Skill'][HERO_SKILL_CASTER_CERTIFICATE]['function'] = Events_Start_Implement_Skill_CasterCertificate;

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
						if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_CURSE_SHOULDER] == 1 then
							return nil;
						end;
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
						if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_ANGELIC_ALLIANCE] == 1 or TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_SENTINEL] == 1 then
							return nil;
						end;
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

		-- HERO_SKILL_FOREST_GUARD_EMBLEM 115 战地支援
			H55SMOD_Start["Skill"][HERO_SKILL_FOREST_GUARD_EMBLEM] = {};
			function Events_Start_Implement_Skill_ForestGuardEmblem()
				for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
					if GetHero(iSide) ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FOREST_GUARD_EMBLEM] ~= nil
						and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FOREST_GUARD_EMBLEM] > 0 then
						local arrCreature = GetCreatures(iSide);
						local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreature));
						local strCreature = arrCreature[iRandomIndex];
						local itemCreature = TTHCS_GLOBAL.geneUnitInfo(strCreature);
						local iCreatureCount = 1;
						if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_LAST_STAND] == 1
							or TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_CROWN_OF_LEADER] == 1 then
							iCreatureCount = 2;
						end;
						local strCreatureAdd = TTHCS_THREAD.addCreature(iSide, itemCreature["UnitType"], iCreatureCount, itemCreature["PosX"], itemCreature["PosY"]);
						ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_FOREST_GUARD_EMBLEM]["Effect"], strCreatureAdd, 5);
					end;
				end;
			end;
			H55SMOD_Start["Skill"][HERO_SKILL_FOREST_GUARD_EMBLEM]["function"] = Events_Start_Implement_Skill_ForestGuardEmblem;

	function Events_Start()
		combatSetPause(1);
		TTHCS_COMMON.initRandom();
		while not TTHCS_COMMON.random do
		  sleep();
		end;
		Events_Init();
		Events_Init_HeroLevel();
		Events_Init_HeroSkill_Special();
		Events_Init_HeroSkillUpgradeMastery();
		Events_Init_HeroSkillUpgradeShantiri();
		Events_Init_HeroSkill();
		Events_Init_HeroAttribute();
		Events_Init_HeroAbility();
		Events_Init_HeroArtifact();

		-- 神器特效-排除Timerkhan
		if (GetHero(ENUM_SIDE.ATTACKER) ~= nil and contains(TTHCS_TABLE.CombatStartSpecialHero, GetHeroName(GetHero(ENUM_SIDE.ATTACKER))) ~= nil)
			and (
				GetHero(ENUM_SIDE.DEFENDER) == nil 
				or (GetHero(ENUM_SIDE.DEFENDER) ~= nil and contains(TTHCS_TABLE.CombatStartSpecialHero, GetHeroName(GetHero(ENUM_SIDE.DEFENDER))) ~= nil)
			) then
			Events_Init_Interface();
		end;
		combatSetPause(nil);
	end;

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
			local strHeroSkill = GetGameVar('H55SMOD_Var_Skill_'..strHero..'_'..HERO_SKILL_ABSOLUTE_MORALE);
			if strHeroSkill == nil or strHeroSkill == '' or strHeroSkill == '0' then
				H55SMOD_HeroSkill[strHero][HERO_SKILL_ABSOLUTE_MORALE] = 0;
			else
				H55SMOD_HeroSkill[strHero][HERO_SKILL_ABSOLUTE_MORALE] = strHeroSkill * 1;
			end;
		end;
	end;
	function Events_Init_HeroSkillUpgradeMastery()
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil then
				local strHero = GetHeroName(GetHero(iSide));
				local strKey = TTH_FINAL.GAMEVAR_UPGRADE_MASTERY..strHero;
				local strValue = GetGameVar(strKey);
				if strValue ~= nil and strValue ~= '' and strValue + 0 > 0 then
					TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] = strValue + 0;
				end;
			end;
		end;
	end;
	function Events_Init_HeroSkillUpgradeShantiri()
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil then
				local strHero = GetHeroName(GetHero(iSide));
				local strKey = TTH_FINAL.GAMEVAR_UPGRADE_SHANTIRI..strHero;
				local strValue = GetGameVar(strKey);
				if strValue ~= nil and strValue ~= '' and strValue + 0 > 0 then
					TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] = strValue + 0;
				end;
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
	function Events_Init_HeroAttribute()
		for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
			if GetHero(iSide) ~= nil then
				local strHero = GetHeroName(GetHero(iSide));
				for i, enumHeroStat in TTH_ATTRIBUTE_EFFECT_COMBAT do
					local strKey = TTH_FINAL.GAMEVAR_COMBAT_ATTRIBUTE..strHero..'_'..enumHeroStat;
					local strValue = GetGameVar(strKey);
					if strValue ~= nil and strValue ~= '' and strValue + 0 > 0 then
						TTH_ATTRIBUTE_EFFECT_COMBAT_HERO[iSide][enumHeroStat] = strValue + 0;
					end;
				end;
			end;
		end;
	end;
	function Events_Init_HeroAbility()
		do
			local strHero = 'Ildar';
			local strHeroAbility = GetGameVar('TTH_Var_Talent_'..strHero);
			if H55SMOD_HeroAbility[strHero] == nil then
				H55SMOD_HeroAbility[strHero] = {};
			end;
			if strHeroAbility == nil
				or strHeroAbility == ''
				or strHeroAbility == '0' then
				H55SMOD_HeroAbility[strHero] = 'Light';
			else
				H55SMOD_HeroAbility[strHero] = 'Dark';
			end;
		end;
		do
			local strHero = 'Razzak';
			if H55SMOD_HeroAbility[strHero] == nil then
				H55SMOD_HeroAbility[strHero] = {};
			end;
			if 1 == 1 then
				local strHeroAbility = GetGameVar('TTH_Var_Talent_'..strHero);
				if strHeroAbility ~= nil
					and strHeroAbility ~= '' then
					H55SMOD_HeroAbility[strHero] = strHeroAbility + 0;
				else
					H55SMOD_HeroAbility[strHero] = 0;
				end;
			end;
		end;
		do
			local strHero = 'Astral';
			if H55SMOD_HeroAbility[strHero] == nil then
				H55SMOD_HeroAbility[strHero] = {};
			end;
			if 1 == 1 then
				local strHeroAbility = GetGameVar('TTH_Var_Talent_'..strHero);
				if strHeroAbility ~= nil
					and strHeroAbility ~= '' then
					H55SMOD_HeroAbility[strHero] = strHeroAbility + 0;
				else
					H55SMOD_HeroAbility[strHero] = 0;
				end;
			end;
		end;
		do
			local strHero = "Orlando2";
			local strHeroAbility = GetGameVar("TTH_Var_Talent_"..strHero);
			if H55SMOD_HeroAbility[strHero] == nil then
				H55SMOD_HeroAbility[strHero] = {};
			end;
			H55SMOD_HeroAbility[strHero] = CREATURE_INFERNO_TOOL_Orlando2_AbilityVorpalSword;
			if strHeroAbility ~= nil and strHeroAbility ~= "" and strHeroAbility ~= "0" then
				H55SMOD_HeroAbility[strHero] = strHeroAbility + 0;
			end;
		end;
		do
			local strHero = "Kraal";
			local strHeroAbility = GetGameVar("TTH_Var_Talent_"..strHero);
			if H55SMOD_HeroAbility[strHero] == nil then
				H55SMOD_HeroAbility[strHero] = 0;
			end;
			if strHeroAbility ~= nil and strHeroAbility ~= "" and strHeroAbility ~= "0" then
				H55SMOD_HeroAbility[strHero] = strHeroAbility + 0;
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
		Events_Start_Interface('Tarkus', 0);
		Events_Start_Interface('Sarge', 0);
		Events_Start_Interface('Shadwyn', 1);
		Events_Start_Interface('Azar', 1);
		Events_Start_Interface('KujinMP', 1);
		Events_Start_Interface('Tan', 0);
		Events_Start_Interface('Ildar', 0);
		Events_Start_Interface("Kraal", 0);

		Events_Start_Artifact_Interface();

		-- 后置英雄特效
		-- Events_Start_Interface('Maeve', 0);

		Events_Start_Interface('Dracon', 1);
		Events_Start_Interface('Solmyr', 1);

		-- Events_Start_Interface('Efion', 1);
		-- Events_Start_Interface('Aislinn', 1);

		Events_Start_Interface('Vegeyr', 1);
		Events_Start_Interface('Tazar', 0);
		Events_Start_Interface('Nicolai', 0);

		-- 后置宝物特效
		H55SMOD_Start['Artifact'][ARTIFACT_BAND_OF_CONJURER]['function']();
		H55SMOD_Start['Artifact'][ARTIFACT_DRUM_OF_CHARGE]['function']();

		-- 后置技能特效
		H55SMOD_Start['Skill'][HERO_SKILL_CASTER_CERTIFICATE]['function']();
		-- H55SMOD_Start['Skill'][HERO_SKILL_GUARDIAN_ANGEL]['function']();
		H55SMOD_Start['Skill'][HERO_SKILL_PARIAH]['function']();
		H55SMOD_Start['Skill'][HERO_SKILL_TWILIGHT]['function']();
		H55SMOD_Start["Skill"][HERO_SKILL_FOREST_GUARD_EMBLEM]["function"]();
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
				H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_DEATH_TREAD]['function'](getSide(itemUnit["iSide"], 1), itemUnit);
			
			H55SMOD_MiddlewareListener['Adelaide']['function']['hero']('Adelaide', itemUnit["iSide"], itemUnit);
			-- Haven
				H55SMOD_MiddlewareListener["WarMachine"]["function"]["death"](itemUnit["iSide"], itemUnit);
			-- Academy
				H55SMOD_MiddlewareListener["Emilia"]["function"]("Emilia", itemUnit["iSide"], itemUnit);
				H55SMOD_MiddlewareListener["Zehir"]["function"]("Zehir", itemUnit["iSide"], itemUnit);
		elseif iType == ENUM_BASICLISTENER.MOVE then
			local itemUnitLast = nil;
			if length(ListUnitTriggerMiddlewareListener) > 0 then
				itemUnitLast = ListUnitTriggerMiddlewareListener[length(ListUnitTriggerMiddlewareListener) - 1];

				-- 神器特效-Timerkhan
				if length(ListUnitTriggerMiddlewareListener) == 1 and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO 
					and contains(TTHCS_TABLE.CombatStartSpecialHero, GetHeroName(itemUnitLast['strUnitName'])) ~= nil then
					combatSetPause(1);
					Events_Init_Interface();
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

			-- 设置魔法值 repeat
				if TTHCS_FLAG.SetManaRepeat == TTHCS_ENUM.Yes then
					TTHCS_FLAG.SetManaRepeat = TTHCS_ENUM.No;
					print("SetManaRepeat");
					return nil;
				end;

			-- 通用前置
				if itemUnitLast ~= nil then
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
								H55SMOD_MiddlewareListener['Nur']['function']['product']('Nur', iSide, itemUnitLast, iLossManaPoints);
							-- Inferno
								H55SMOD_MiddlewareListener["Efion"]["function"]["hero"]("Efion", getSide(iSide, 1), itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener["Zydar"]["function"]("Zydar", iSide, itemUnitLast, iLossManaPoints);
							-- Necropolis
								H55SMOD_MiddlewareListener['Straker']['function']('Straker', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Effig']['function']('Effig', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener["Nimbus"]["function"]["mana"]("Nimbus", getSide(iSide, 1), itemUnitLast, iLossManaPoints);
							-- Fortress
							-- Dungeon
								H55SMOD_MiddlewareListener['Almegir']['function']('Almegir', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Ferigl']['function']('Ferigl', iSide, itemUnitLast, iLossManaPoints);
							-- Stronghold
								H55SMOD_MiddlewareListener['Erika']['function']('Erika', iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener['Gottai']['function']('Gottai', iSide, itemUnitLast, iLossManaPoints);
							-- Skill
								H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_PAYBACK]['function'](iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_REMOTE_CONTROL]["function"](iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["function"]["product"](iSide, itemUnitLast, iLossManaPoints);
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["product"](iSide, itemUnitLast, iLossManaPoints);
							-- Artifact
								H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_MOONBLADE]['function'](iSide, itemUnitLast);
							-- ArtifactSet
								H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["function"](iSide, itemUnitLast, TTHCS_ENUM.Voice);

							if itemUnitLast['iSide'] == iSide and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO then
								H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_EIGHTFOLD]['function'](itemUnitLast, iSide);
							end;

							if itemUnitLast["iUnitCategory"] == ENUM_CATEGORY.CREATURE then
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEMONIC_FIRE]["function"](iSide, itemUnitLast, iLossManaPoints);
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
								H55SMOD_MiddlewareListener['Faiz']['function']('Faiz', iSide, itemUnit, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Inferno
							-- Necropolis
							-- Fortress
								H55SMOD_MiddlewareListener['Hangvul2']['function']('Hangvul2', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Dungeon
								H55SMOD_MiddlewareListener['Sephinroth']['function']('Sephinroth', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener['Eruina']['function']('Eruina', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener['Agbeth']['function']('Agbeth', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Stronghold
							-- Skill
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELEMENTAL_OVERKILL]["function"](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Artifact
								H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_BOOK_OF_MALASSA]['function'](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- ArtifactSet
								H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_AIR.."_"..2]["function"](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_EARTH.."_"..2]["function"](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_FIRE.."_"..2]["function"](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_WATER.."_"..2]["function"](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
									
							local listCreaturesMoved = {};
							local iLenCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn['Creatures'][iSide]);
							local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][iSide]);
							for iIndexCreaturesBeforeLast = 0, iLenCreaturesBeforeLast - 1 do
								for iIndexCreaturesLast = 0, iLenCreaturesLast - 1 do
									if ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['strUnitName'] == ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['strUnitName']
										and (ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iPositionX'] ~= ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iPositionX']
											or ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iPositionY'] ~= ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iPositionY']) then
										push(listCreaturesMoved, ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]);
									end;
								end;
							end;
	
							if length(listCreaturesMoved) > 0 then
								-- Haven
								-- Sylvan	
								-- Academy	
								-- Inferno	
								-- Necropolis	
									H55SMOD_MiddlewareListener['Xerxon']['function']('Xerxon', iSide, itemUnitLast, listCreaturesMoved);
								-- Fortress
								-- Dungeon	
									H55SMOD_MiddlewareListener['Thralsai']['function']('Thralsai', iSide, itemUnitLast, listCreaturesMoved);
								-- Stronghold
	
							end;
						end;
					end;
				end;

			-- 英雄恢复魔法值
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						if GetHero(iSide) ~= nil and ObjSnapshotBeforeLastTurn["Hero"][iSide]["iMana"] < ObjSnapshotLastTurn["Hero"][iSide]["iMana"] then
							local iManaPoints4Increase = ObjSnapshotLastTurn["Hero"][iSide]["iMana"] - ObjSnapshotBeforeLastTurn["Hero"][iSide]["iMana"];
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
							-- Skill
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_MYSTICISM]["function"](iSide, itemUnitLast, iManaPoints4Increase);
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
										H55SMOD_MiddlewareListener["Efion"]["function"]["creature"]("Efion", getSide(iSide, 1), itemUnitLast, ObjSnapshotLastTurn["Creatures"][iSide][iIndexCreaturesLast], iLossManaPoints);
									-- Necropolis
										H55SMOD_MiddlewareListener['Thant']['function']['creature']('Thant', iSide, itemUnitLast, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast], iLossManaPoints);
										H55SMOD_MiddlewareListener["Nimbus"]["function"]["mana"]("Nimbus", iSide, itemUnitLast, iLossManaPoints);
										H55SMOD_MiddlewareListener["Nimbus"]["function"]["mana"]("Nimbus", getSide(iSide, 1), itemUnitLast, iLossManaPoints);
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

						-- 造成战损或击杀
						if length(listCreaturesBeEffected) + length(listCreaturesDeath) > 0 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
								H55SMOD_MiddlewareListener["Orlando2"]["function"]("Orlando2", getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener["Oddrema"]["function"]("Oddrema", getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Necropolis
							-- Fortress
							-- Dungeon
								H55SMOD_MiddlewareListener["Menel"]["function"]("Menel", iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Stronghold
							-- Skill
								H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_ELITE_CASTERS]['function'](iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- ArtifactSet
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

							-- 生物平砍
							local bCreatureIsCast = 0;
							local iOppositeSide = getSide(iSide, 1);
							local iLenOppositeSideCreaturesBeforeLast = length(ObjSnapshotBeforeLastTurn["Creatures"][iOppositeSide]);
							for iIndex = 0, iLenOppositeSideCreaturesBeforeLast - 1 do
								if ObjSnapshotBeforeLastTurn["Creatures"][iOppositeSide][iIndex]["strUnitName"] == itemUnitLast["strUnitName"]
									and ObjSnapshotBeforeLastTurn["Creatures"][iOppositeSide][iIndex]["iMana"] == GetUnitManaPoints(itemUnitLast["strUnitName"])
									and GetHero(iOppositeSide) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][iOppositeSide]['iMana'] == ObjSnapshotLastTurn['Hero'][iOppositeSide]['iMana'] then
									bCreatureIsCast = 1;
								end;
							end;
							if bCreatureIsCast == 1 then
								-- Haven
								-- Sylvan
								-- Academy
									H55SMOD_MiddlewareListener["Razzak"]["function"]("Razzak", iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								-- Inferno
								-- Necropolis
								-- Fortress
								-- Dungeon
								-- Stronghold
								-- Skill
								-- ArtifactSet
							end;
						end;

						-- 减员
						if length(listCreaturesBeEffected) >= 1 then
							-- Haven
								H55SMOD_MiddlewareListener["Avitus"]["function"]("Avitus", iSide, itemUnitLast, listCreaturesBeEffected);
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
								H55SMOD_MiddlewareListener["Kraal"]["function"]("Kraal", iSide, itemUnitLast, listCreaturesBeEffected);
							-- Creature
								H55SMOD_MiddlewareListener['Justicar']['function'](nil, iSide, itemUnitLast, listCreaturesBeEffected);
							-- Skill
								H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_SEAL_OF_PROTECTION]['function'](getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
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
									H55SMOD_MiddlewareListener['Calid']['function']('Calid', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- Necropolis
								-- Fortress
								-- Dungeon
								-- Stronghold
								-- Skill
									H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_WEAKENING_STRIKE]['function'](getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
								-- ArtifactSet
									H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["function"](getSide(iSide, 1), itemUnitLast, TTHCS_ENUM.Combat);
							end;

							-- Haven
							-- Sylvan
								H55SMOD_MiddlewareListener["Gem"]["function"]["enemy"]["charge"]("Gem", getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
							-- Academy
								H55SMOD_MiddlewareListener['Isher']['function']('Isher', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Inferno
							-- Necropolis
							-- Fortress
							-- Dungeon
								H55SMOD_MiddlewareListener["Ohtarig"]["function"]("Ohtarig", iSide, itemUnitLast, listCreaturesBeEffected);
							-- Stronghold
						end;

						if length(listCreaturesBeEffected) >= 1 then
							-- 英雄平砍
							if GetHero(getSide(iSide, 1)) ~= nil and ObjSnapshotBeforeLastTurn['Hero'][getSide(iSide, 1)]['iMana'] == ObjSnapshotLastTurn['Hero'][getSide(iSide, 1)]['iMana'] then
								-- Skill
									H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_FOREST_RAGE]['function'](getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected);
							end;
						end;

						if length(listCreaturesBeEffected) == 1 or length(listCreaturesDeath) == 1 then
							-- Haven
									H55SMOD_MiddlewareListener['RedHeavenHero05']['function']('RedHeavenHero05', getSide(iSide, 1), itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
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
									ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitEffectNumber'] = ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitNumber'] - ObjSnapshotBeforeLastTurn['Creatures'][iSide][iIndexCreaturesBeforeLast]['iUnitNumber'];
									push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
								end;
							end;
						end;

						-- 恢复
						if length(listCreaturesBeEffected) >= 1 then
							-- Haven
							-- Sylvan
								H55SMOD_MiddlewareListener['Itil']['function']('Itil', iSide, itemUnitLast, listCreaturesBeEffected);
								H55SMOD_MiddlewareListener["Gem"]["function"]["friend"]["charge"]("Gem", iSide, itemUnitLast, listCreaturesBeEffected);
							-- Academy
							-- Inferno
							-- Necropolis
								H55SMOD_MiddlewareListener['Gles']['function']('Gles', iSide, itemUnitLast, listCreaturesBeEffected);
								H55SMOD_MiddlewareListener['Aislinn']['function']('Aislinn', iSide, itemUnitLast, listCreaturesBeEffected);
							-- Fortress
							-- Dungeon
							-- Stronghold
						end;
					end;
				end;

			-- 生物复活
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						local listCreaturesBeEffected = {};
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
								ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitEffectNumber'] = ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]['iUnitNumber'];
								push(listCreaturesBeEffected, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
							end;
						end;

						-- 恢复
						if length(listCreaturesBeEffected) >= 1 then
							-- Haven
							-- Sylvan
							-- Academy
							-- Inferno
							-- Necropolis
								H55SMOD_MiddlewareListener['Aislinn']['function']('Aislinn', iSide, itemUnitLast, listCreaturesBeEffected);
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
						local listSummonCreature = {};
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
								push(listSummonCreature, ObjSnapshotLastTurn['Creatures'][iSide][iIndexCreaturesLast]);
							end;
						end;
						-- Haven
						-- Sylvan
						-- Academy
							-- H55SMOD_MiddlewareListener['Zehir']['function']('Zehir', iSide, itemUnitLast, listSummonCreature);
						-- Inferno
							H55SMOD_MiddlewareListener['Calh']['function']('Calh', iSide, itemUnitLast, listSummonCreature);
							H55SMOD_MiddlewareListener['Malustar']['function']('Malustar', iSide, itemUnitLast, listSummonCreature);
						-- Necropolis
							H55SMOD_MiddlewareListener["Muscip"]["function"]["summon"]("Muscip", iSide, itemUnitLast, listSummonCreature);
						-- Fortress
						-- Dungeon
							-- H55SMOD_MiddlewareListener['Kastore']['function']('Kastore', iSide, itemUnitLast, listSummonCreature);
						-- Stronghold

						-- 召唤整合
							H55SMOD_MiddlewareListener["Summon"]["function"](iSide, itemUnitLast, listSummonCreature);
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
						-- Stronghold
						-- Skill
							H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["mana"](iSide, itemUnitLast, listUnitLastSummonBeDestroied);
					end;
				end;

			-- 英雄魔法值变化
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						if GetHero(iSide) ~= nil then
							local iManaBeforeLast = ObjSnapshotBeforeLastTurn['Hero'][iSide]['iMana'];
							local iManaLast = ObjSnapshotLastTurn['Hero'][iSide]['iMana'];
							-- Haven
							-- Sylvan
								H55SMOD_MiddlewareListener["Vaniel"]["function"]("Vaniel", iSide, itemUnitLast, itemUnit, iManaBeforeLast, iManaLast);
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

			-- 血怒变化
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
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

			-- 上回合生物行动
				if itemUnitLast ~= nil and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.CREATURE then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
						-- Sylvan
						-- Academy
						-- Inferno
						-- Necropolis
						-- Fortress
						-- Dungeon
						-- Stronghold
						-- Creature
							H55SMOD_MiddlewareListener["Legate"]["function"]("Legate", iSide, itemUnitLast);
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
							H55SMOD_MiddlewareListener["Sanguinius"]["function"]("Sanguinius", iSide, itemUnit);
						-- Sylvan
						-- Academy
							H55SMOD_MiddlewareListener['Nur']['function']['consume']('Nur', iSide, itemUnit);
							H55SMOD_Start['Tan']['function']('Tan', iSide, 0);
							H55SMOD_MiddlewareListener['Minasli']['function']['consume']('Minasli', iSide, itemUnit);
						-- Inferno
							H55SMOD_MiddlewareListener['Ash']['function']['hero']('Ash', iSide, itemUnit);
						-- Necropolis
							H55SMOD_MiddlewareListener['Giovanni']['function']['hero']('Giovanni', iSide, itemUnit);
							H55SMOD_MiddlewareListener["Arantir"]["function"]("Arantir", iSide, itemUnit);
						-- Fortress
						-- Dungeon
						-- Stronghold
							H55SMOD_MiddlewareListener['Mokka']['function']('Mokka', iSide, itemUnit);
							H55SMOD_MiddlewareListener["Matewa"]["function"]("Matewa", iSide, itemUnit);
						-- Skill
							H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['function']['charge'](iSide, itemUnit);
							H55SMOD_MiddlewareListener["WarMachine"]["function"]["repair"](iSide, itemUnit);
					end;
				end;

			-- 生物行动
				if itemUnit ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener['Ving']['function']('Ving', iSide, itemUnit);
							H55SMOD_MiddlewareListener['OrtanCassius']['function']('OrtanCassius', iSide, itemUnit);
						-- Sylvan
							H55SMOD_MiddlewareListener['Gelu']['function']('Gelu', iSide, itemUnit);
						-- Academy
							H55SMOD_MiddlewareListener['Davius']['function']['init']('Davius', iSide, itemUnit);
						-- Inferno
						-- Necropolis
							H55SMOD_MiddlewareListener["Muscip"]["function"]["creature"]("Muscip", iSide, itemUnit);
							H55SMOD_MiddlewareListener["DeathKnight"]["function"](iSide, itemUnit);
						-- Fortress
						-- Dungeon
						-- Stronghold
							H55SMOD_MiddlewareListener['Quroq']['function']('Quroq', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Hero8']['function']['active']('Hero8', iSide, itemUnit);
						-- Creature
							H55SMOD_MiddlewareListener['LightAngel']['function']('LightAngel', iSide, itemUnit);
							H55SMOD_MiddlewareListener['Enchanter']['function']['consume']('Enchanter', iSide, itemUnit);
					end;
				end;

			-- 战争机械行动
				if itemUnit ~= nil and itemUnit['iUnitCategory'] == ENUM_CATEGORY.WARMACHINE then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener["Christian"]["function"]["warMachine"]("Christian", iSide, itemUnit);
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
				if itemUnitLast ~= nil and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
						-- Sylvan
						-- Academy
							H55SMOD_MiddlewareListener['Astral']['function']('Astral', iSide, itemUnitLast);
						-- Inferno
						-- Necropolis
						-- Fortress
						-- Dungeon
						-- Stronghold
						-- Skill
						-- Artifact
					end;
				end;

			-- 上回合生物行动
				if itemUnitLast ~= nil and itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.CREATURE then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						H55SMOD_MiddlewareListener['Cherubin']['function']('Cherubin', iSide, itemUnitLast);
						H55SMOD_MiddlewareListener['DragonKnight']['function']('DragonKnight', iSide, itemUnitLast);
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
							-- Stronghold
							-- Skill
								H55SMOD_MiddlewareListener["Vinrael"]["function"]("Vinrael", iSide, itemUnitLast);
						else
							-- Skill
								H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['function']['consume'](iSide, itemUnit, itemUnitLast, listCreaturesBeEffectedLimit, listCreaturesDeath);
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
								H55SMOD_MiddlewareListener["Deleb"]["function"]["charge"]("Deleb", iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
							-- Necropolis
							-- Fortress
							-- Dungeon
							-- Stronghold
								H55SMOD_MiddlewareListener['Kraal']['function']('Kraal', iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
								H55SMOD_MiddlewareListener["Maximus"]["function"]("Maximus", iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath);
						end;
					end;
				end;

			-- 英雄行动
				if itemUnit ~= nil and itemUnit["iUnitCategory"] == ENUM_CATEGORY.HERO then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener["Christian"]["function"]["hero"]("Christian", iSide, itemUnit);
						-- Sylvan
							H55SMOD_MiddlewareListener["Gem"]["function"]["friend"]["consume"]("Gem", iSide, itemUnit);
							H55SMOD_MiddlewareListener["Gem"]["function"]["enemy"]["consume"]("Gem", iSide, itemUnit);
						-- Academy
						-- Inferno
							H55SMOD_MiddlewareListener["Deleb"]["function"]["consume"]("Deleb", iSide, itemUnit);
						-- Necropolis
							H55SMOD_MiddlewareListener["Nimbus"]["function"]["hero"]("Nimbus", iSide, itemUnit);
						-- Fortress
						-- Dungeon
						-- Stronghold
						-- Skill
							H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["function"]["consume"](iSide, itemUnit);
							H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["consume"](iSide, itemUnit);
						-- Artifact
						-- ArtifactSet
						-- Creature
					end;
				end;

			-- 单位连动
				if itemUnitLast ~= nil then
					H55SMOD_MiddlewareListener["Continuous"]["function"](itemUnitLast);
				end;

			-- 通用后置
				if itemUnitLast ~= nil then
					for iSide = ENUM_SIDE.ATTACKER, ENUM_SIDE.DEFENDER do
						-- Haven
							H55SMOD_MiddlewareListener["Tarkus"]["function"]("Tarkus", iSide, itemUnitLast);
						-- Sylvan
							H55SMOD_MiddlewareListener['Mephala']['function']('Mephala', iSide, itemUnitLast);
						-- Academy
						-- Inferno
						-- Necropolis
						-- Fortress
						-- Dungeon
						-- Stronghold

						-- Artifact
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
				increaseContinuousChance(GetHero(iSide), 16);
			end;
		end;
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_EIGHTFOLD]['function'] = Events_MiddlewareListener_Implement_Artifact_Eightfold;
	
	-- 月光利刃
		H55SMOD_MiddlewareListener['Artifact'][ARTIFACT_MOONBLADE] = {};
		function Events_MiddlewareListener_Implement_Artifact_Moonblade(iSide, itemUnitLast)
			if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iSide][ARTIFACT_MOONBLADE] == 1 then
				local iRecoveryMana = 2;
				TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
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
					combatSetPause(1);
					local iLenCreaturesLast = length(ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)]);
					local iIndex = TTHCS_COMMON.getRandom(iLenCreaturesLast);
					startThread(Thread_Command_UnitCastAimedSpell, itemUnit['strUnitName'], SPELL_BLIND, ObjSnapshotLastTurn['Creatures'][getSide(iSide, 1)][iIndex]['strUnitName'], 1);
					sleep(20);
					itemUnit['iAtb'] = 1.25;
					push(ListUnitSetATB, itemUnit);
					combatSetPause(nil);
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
			if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide)
				and contains(H55SMOD_StrongholdHeroes, itemUnitLast["iUnitType"]) ~= nil then
				if TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_OGRES.."_"..2] ~= nil
					and TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_OGRES.."_"..2] >= 2 then
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
					if arrStrongholdCreature ~= nil and length(arrStrongholdCreature) > 0 then
						combatSetPause(1);
						local iLenStrongholdCreature = length(arrStrongholdCreature);
						local iIndex = TTHCS_COMMON.getRandom(iLenStrongholdCreature);
						local strCreatureName = arrStrongholdCreature[iIndex];
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
		end;
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_OGRES.."_"..2]["function"] = Events_MiddlewareListener_Implement_ArtifactSet_SetOgres;

	-- 宝物套装-大地之力 英雄【施法并造成战损后】会对随机一队战损生物随机追加一次 内向爆裂
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_EARTH.."_"..2] = {};
		function Events_MiddlewareListener_Implement_ArtifactSet_SetElementEarth(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
			if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
				if TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_EARTH.."_"..2] ~= nil
					and TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_EARTH.."_"..2] >= 2 then
					if length(listCreaturesBeEffected) + length(listCreaturesDeath) > 0 and length(listCreaturesBeEffected) > 0 then
						local objUnitTarget = listCreaturesBeEffected[TTHCS_COMMON.getRandom(length(listCreaturesBeEffected))];
						if IsCombatUnit(objUnitTarget["strUnitName"]) ~= nil then
							combatSetPause(1);
							local strUnitCaster = GetHero(iSide);
							local iCurrentMana = GetUnitManaPoints(strUnitCaster);
							SetUnitManaPoints(strUnitCaster, 9999);
							repeat sleep(1); until GetUnitManaPoints(strUnitCaster) >= 9999;
							startThread(UnitCastAimedSpell, strUnitCaster, SPELL_IMPLOSION, objUnitTarget["strUnitName"]);
							sleep(20);
							SetUnitManaPoints(strUnitCaster, iCurrentMana);
							repeat sleep(1); until GetUnitManaPoints(strUnitCaster) == iCurrentMana;
							print(strUnitCaster.." cast SPELL_IMPLOSION to "..objUnitTarget["strUnitName"]);
							ShowFlyingSign(TTHCS_PATH["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_EARTH.."_"..2]["Effect"], GetHero(iSide), 5);
							combatSetPause(nil);
						end;
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_EARTH.."_"..2]["function"] = Events_MiddlewareListener_Implement_ArtifactSet_SetElementEarth;

	-- 宝物套装-潮汐之力 英雄【施法并造成战损后】回复 3 点魔法值
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_WATER.."_"..2] = {};
		function Events_MiddlewareListener_Implement_ArtifactSet_SetElementWater(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
			if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
				if TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_WATER.."_"..2] ~= nil
					and TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_WATER.."_"..2] >= 2 then
					if length(listCreaturesBeEffected) + length(listCreaturesDeath) > 0 then
						local iRecoveryMana = 3;
						TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
						ShowFlyingSign(TTHCS_PATH["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_WATER.."_"..2]["Effect"], GetHero(iSide), 5);
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_WATER.."_"..2]["function"] = Events_MiddlewareListener_Implement_ArtifactSet_SetElementWater;
		
	-- 宝物套装-雷云之力 英雄【施法并造成战损后】会有 8% 再次行动几率
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_AIR.."_"..2] = {};
		function Events_MiddlewareListener_Implement_ArtifactSet_SetElementAir(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
			if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
				if TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_AIR.."_"..2] ~= nil
					and TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_AIR.."_"..2] >= 2 then
					if length(listCreaturesBeEffected) + length(listCreaturesDeath) > 0 then
						local strUnitName = GetHero(iSide);
						increaseContinuousChance(strUnitName, 8);
						ShowFlyingSign(TTHCS_PATH["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_AIR.."_"..2]["Effect"], GetHero(iSide), 5);
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_AIR.."_"..2]["function"] = Events_MiddlewareListener_Implement_ArtifactSet_SetElementAir;

	-- 宝物套装-烈焰之力 英雄【施法并造成战损后】会对随机一队战损生物随机追加一次 烈火印记
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_FIRE.."_"..2] = {};
		function Events_MiddlewareListener_Implement_ArtifactSet_SetElementFire(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
			if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
				if TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_FIRE.."_"..2] ~= nil
					and TTH_ARTIFACTSET_EFFECT_COMBAT_HERO[iSide][TTHCS_ENUM.SET_ELEMENT_FIRE.."_"..2] >= 2 then
					if length(listCreaturesBeEffected) > 0 then
          	combatSetPause(1);
						local objUnitTarget = listCreaturesBeEffected[TTHCS_COMMON.getRandom(length(listCreaturesBeEffected))];
						TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL, 1, SPELL_ABILITY_FLAMESTRIKE, objUnitTarget["strUnitName"]);
						ShowFlyingSign(TTHCS_PATH["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_FIRE.."_"..2]["Effect"], GetHero(iSide), 5);
						combatSetPause(nil);
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["ArtifactSet"][TTHCS_ENUM.SET_ELEMENT_FIRE.."_"..2]["function"] = Events_MiddlewareListener_Implement_ArtifactSet_SetElementFire;
			
-- 技能
	H55SMOD_MiddlewareListener['Skill'] = {};

	-- ABSOLUTEMORALE
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE] = {};
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['flag'] = {};
		H55SMOD_MiddlewareListener['Skill'][ENUM_SKILL.ABSOLUTEMORALE]['function'] = {};
		function Events_MiddlewareListener_Implement_Skill_AbsoluteMorale_Charge(itemUnitLast, iSide)
			if H55SMOD_HeroSkill[itemUnitLast['iUnitType']] ~= nil
				and H55SMOD_HeroSkill[itemUnitLast['iUnitType']][HERO_SKILL_ABSOLUTE_MORALE] == 1
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
			if itemUnit['iSide'] == iSide and H55SMOD_HeroSkill[itemUnit['iUnitType']] ~= nil and H55SMOD_HeroSkill[itemUnit['iUnitType']][HERO_SKILL_ABSOLUTE_MORALE] == 1 then
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
		-- 魔力再生 HERO_SKILL_MYSTICISM
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_MYSTICISM] = {};
			function Events_MiddlewareListener_Implement_Skill_Mysticism(iSide, itemUnitLast, iManaPoints4Increase)
				if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MYSTICISM] == 1 then
						TTHCS_GLOBAL.setHeroMana(iSide, iManaPoints4Increase, TTHCS_ENUM.No);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_MYSTICISM]["function"] = Events_MiddlewareListener_Implement_Skill_Mysticism;

		-- 虚弱打击: 英雄普攻后回蓝的效果，数值为【英雄等级/3 (向上取整)】
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_WEAKENING_STRIKE] = {};
			function Events_MiddlewareListener_Implement_Skill_WeakeningStrike(iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_WEAKENING_STRIKE] == 1 then
						local iRecoveryMana = 2;
						TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_WEAKENING_STRIKE]['function'] = Events_MiddlewareListener_Implement_Skill_WeakeningStrike;

		-- 黑暗再生 HERO_SKILL_PAYBACK
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_PAYBACK] = {};
			function Events_MiddlewareListener_Implement_Skill_Payback(iSide, itemUnitLast, iLossManaPoints)
				if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_PAYBACK] == 1 then
					local iRecoveryMana = 2;
					TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_PAYBACK]["function"] = Events_MiddlewareListener_Implement_Skill_Payback;

		-- 精炼魔力: 英雄带领的施法生物【对敌方生物造成战损时】回复魔法值（数值为: 每造成一队敌方生物的战损回复1点魔法值）
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_ELITE_CASTERS] = {};
			function Events_MiddlewareListener_Implement_Skill_EliteCasters(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iOppositeSide) ~= nil then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_ELITE_CASTERS] == 1 and itemUnitLast["iUnitCategory"] == ENUM_CATEGORY.CREATURE then
						local iDiffMana = length(listCreaturesBeEffected) + length(listCreaturesDeath);
						local iBeforeMana = GetUnitManaPoints(itemUnitLast["strUnitName"]);
						local iCurrentMana = iBeforeMana + iDiffMana;
						SetUnitManaPoints(itemUnitLast["strUnitName"], iCurrentMana);
						print(itemUnitLast["strUnitName"].." remain "..iDiffMana.." mana by [Elite_Casters]");
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELITE_CASTERS]["function"] = Events_MiddlewareListener_Implement_Skill_EliteCasters;

		-- HERO_SKILL_SEAL_OF_PROTECTION 131 众志成城
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SEAL_OF_PROTECTION] = {};
			function Events_MiddlewareListener_Implement_Skill_SealOfProtection(iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_SEAL_OF_PROTECTION] == 1 then
						local arrBuilding = GetBuildings(iSide);
						if listCreaturesBeEffected ~= nil and length(listCreaturesBeEffected) > 0
							and arrBuilding ~= nil and length(arrBuilding) > 0 then
							combatSetPause(1);
							for i, itemCreaturesBeEffected in listCreaturesBeEffected do
								for i, strBuildingName in arrBuilding do
									if GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingLeftTower
										or GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingBigTower
										or GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingRightTower then
										if TTHCS_GLOBAL.checkCombatCreature(itemCreaturesBeEffected["strUnitName"]) == TTHCS_ENUM.Yes then
											startThread(TTHCS_THREAD.unitShoot, strBuildingName, itemCreaturesBeEffected["strUnitName"]);
											sleep(20);
										end;
									end;
								end;
							end;	
							for i, strBuildingName in arrBuilding do
								if GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingLeftTower
									or GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingBigTower
									or GetBuildingType(strBuildingName) == TTHCS_ENUM.TownBuildingRightTower then
									ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SEAL_OF_PROTECTION]["Effect"], strBuildingName, 5);				
								end;
							end;
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SEAL_OF_PROTECTION]["function"] = Events_MiddlewareListener_Implement_Skill_SealOfProtection;

		-- 硫磺烟雨: 当城墙/箭塔/城门被击毁时，己方所有生物/战争机械/英雄立即行动 HERO_SKILL_DEATH_TREAD
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_DEATH_TREAD] = {};
			function Events_MiddlewareListener_Implement_Skill_TripleCatapult(iSide, itemUnitDeath)
				if GetHero(iSide) ~= nil then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEATH_TREAD] == 1
						and IsBuilding(itemUnitDeath["strUnitName"]) ~= nil then
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
								ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_DEATH_TREAD]["Effect"], objWarMachine["strUnitName"], 5);
							end;
						end;
						local objHero = geneUnitStatus(GetHero(iSide));
						objHero["iAtb"] = 1.25;
						push(ListUnitSetATB, objHero);
						print(objHero['strUnitName'].." \'s atb effect by TripleCatapult");
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_DEATH_TREAD]['function'] = Events_MiddlewareListener_Implement_Skill_TripleCatapult;

		-- 风暴突袭: 己方生物【造成战损后】英雄会对战损敌方生物及其周围的敌方生物各追加一发霹雳闪电并且英雄立刻行动（该特效在每两次英雄行动之间只能触发一次）
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES] = {};
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'] = {};
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][0] = 2;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][1] = 2;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['function'] = {};
			function Events_MiddlewareListener_Implement_Skill_ExplodingCorpses_Consume(iSide, itemUnit, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(iSide) ~= nil and itemUnitLast['iSide'] == iSide and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_EXPLODING_CORPSES] == 1 then
					if H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide] >= 2 then
						H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide] = 0;
						if itemUnit~= nil and itemUnit["strUnitName"] == GetHero(iSide) then
							H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide] = 1;
						end;
						local itemCreatureTarget = {};
						if length(listCreaturesBeEffected) > 0 then
							itemCreatureTarget = listCreaturesBeEffected[0];
						elseif length(listCreaturesDeath) > 0 then
							itemCreatureTarget = listCreaturesDeath[0];
						end;
						local arrUnitName = TTHCS_GLOBAL.listUnitInArea(itemCreatureTarget["strUnitName"], 1, iSide);
						local strHeroName = GetHero(iSide);
						if length(arrUnitName) > 0 then
							ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_EXPLODING_CORPSES]["Effect"], strHeroName, 5);
							combatSetPause(1);
							local iCurrentManaPre = GetUnitManaPoints(strHeroName);
							for i, strCreatureTarget in arrUnitName do
								if IsCombatUnit(strCreatureTarget) ~= nil
									and (
										GetUnitType(strCreatureTarget) == ENUM_CATEGORY.CREATURE and GetCreatureNumber(strCreatureTarget) > 0
										or GetUnitType(strCreatureTarget) == ENUM_CATEGORY.WARMACHINE
									) then
									startThread(Thread_Command_UnitCastAimedSpell_UseMana, strHeroName, SPELL_LIGHTNING_BOLT, strCreatureTarget);
									sleep(20);
									SetUnitManaPoints(strHeroName, iCurrentManaPre);
									repeat sleep(1); until GetUnitManaPoints(strHeroName) >= iCurrentManaPre;
								end;
							end;
							combatSetPause(nil);
						end;
						local itemHero = geneUnitStatus(strHeroName);
						itemHero['iAtb'] = 1.25;
						push(ListUnitSetATB, itemHero);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['function']['consume'] = Events_MiddlewareListener_Implement_Skill_ExplodingCorpses_Consume;
			function Events_MiddlewareListener_Implement_Skill_ExplodingCorpses_Charge(iSide, itemUnit)
				if GetHero(iSide) ~= nil and itemUnit['strUnitName'] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_EXPLODING_CORPSES] == 1 then
						H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide] = H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide] + 1;
						print("charge: "..H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide]);
						if H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['flag'][iSide] >= 2 then
							print(itemUnit['strUnitName'].." recovery times for [ExplodingCorpses]");
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_EXPLODING_CORPSES]['function']['charge'] = Events_MiddlewareListener_Implement_Skill_ExplodingCorpses_Charge;

		-- 自然之怒: 英雄主动攻击造成战损后己方战力最高的森林远程生物会追加一次射击并立即行动
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_FOREST_RAGE] = {};
			function Events_MiddlewareListener_Implement_Skill_ForestRage(iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FOREST_RAGE] == 1 then
						if listCreaturesBeEffected ~= nil and length(listCreaturesBeEffected) >= 1 then
							local arrCreatureFriend = GetCreatures(iSide);
							local arrPreserveCreatureFriend = {};
							for i, strCreatureFriend in arrCreatureFriend do
								if contains(TTHCS_TABLE.PreserveRangeCreature, GetCreatureType(strCreatureFriend)) ~= nil then
									push(arrPreserveCreatureFriend, strCreatureFriend);
								end;
							end;
							if length(arrPreserveCreatureFriend) > 0 then
								combatSetPause(1);
								ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_FOREST_RAGE]["Effect"], GetHero(iSide), 5);
								local itemPreserveCreatureFriend8MaxPower = TTHCS_COMMON.max8Power(arrPreserveCreatureFriend);
								local strPreserveCreatureFriend = itemPreserveCreatureFriend8MaxPower["CombatName"];
								for i, itemCreatureEffect in listCreaturesBeEffected do
									local strCreatureEffect = itemCreatureEffect["strUnitName"];
									if IsCombatUnit(strCreatureEffect) ~= nil	and GetCreatureNumber(strCreatureEffect) > 0 then
										startThread(Thread_Command_UnitShotAimed, strPreserveCreatureFriend, strCreatureEffect);
										print(strPreserveCreatureFriend.." shot to "..strCreatureEffect.." by ForestRage");
										sleep(20);
									end;
								end;
								local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
								local iAtb = 1.25 - iLenCreaturesBeEffected * 0.25;
								if iAtb < 0 then
									iAtb = 0;
								end;
								local itemPreserveCreatureFriend = geneUnitStatus(strPreserveCreatureFriend);
								itemPreserveCreatureFriend['iAtb'] = iAtb;
								push(ListUnitSetATB, itemPreserveCreatureFriend);
								print(itemPreserveCreatureFriend["strUnitName"].."'s atb has increase to "..itemPreserveCreatureFriend['iAtb']);
								local strHeroName = GetHero(iSide);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 0;
								push(ListUnitSetATB, itemHero);
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Skill'][HERO_SKILL_FOREST_RAGE]['function'] = Events_MiddlewareListener_Implement_Skill_ForestRage;

		-- 地狱烈火/灼热之火/地狱愤怒: 英雄在生物行动时失去魔法值，则累积再动几率，10%/5%/5%
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEMONIC_FIRE] = {};
			function Events_MiddlewareListener_Implement_Skill_DemonicFire(iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEMONIC_FIRE] == 1 then
					local iChance = 10;
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEMONIC_RETALIATION] == 1 then
						iChance = iChance + 5;
					end;
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEMONIC_FLAME] == 1 then
						iChance = iChance + 5;
					end;
					increaseContinuousChance(GetHero(iSide), iChance);
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEMONIC_FIRE]["function"] = Events_MiddlewareListener_Implement_Skill_DemonicFire;

		-- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒 DeadLuck 若敌方有多队生物存活【英雄行动时】会对随机 1 队生物施放指定单体诅咒并清空其行动槽
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK] = {};
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["function"] = {};
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["flag"] = {};
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["flag"][0] = TTHCS_ENUM.Yes;
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["flag"][1] = TTHCS_ENUM.Yes;
			function Events_MiddlewareListener_Implement_Skill_DeadLuck_Product(iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHero(iSide) == itemUnitLast["strUnitName"]
		      and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEAD_LUCK] ~= nil
		      and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEAD_LUCK] > 0 then
		    	H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["flag"][iSide] = TTHCS_ENUM.Yes;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["function"]["product"] = Events_MiddlewareListener_Implement_Skill_DeadLuck_Product;
		  function Events_MiddlewareListener_Implement_Skill_DeadLuck_Consume(iSide, itemUnit)
		    if GetHero(iSide) ~= nil and GetHero(iSide) == itemUnit["strUnitName"]
		      and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEAD_LUCK] ~= nil
		      and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEAD_LUCK] > 0 then
		      if H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["flag"][iSide] == TTHCS_ENUM.Yes then
		      	H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["flag"][iSide] = TTHCS_ENUM.No;
			      local iOppositeSide = getSide(iSide, 1);
			      local arrCreatureOpposite = GetCreatures(iOppositeSide);
			      local iLenCreatureOpposite = length(arrCreatureOpposite);
			      if iLenCreatureOpposite > 1 then
        			combatSetPause(1);
			        local iRandom = TTHCS_COMMON.getRandom(iLenCreatureOpposite);
			        local strCreature = arrCreatureOpposite[iRandom];
			        local iSpellId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_DEAD_LUCK];
			        if (iSpellId == SPELL_DISRUPTING_RAY or iSpellId == SPELL_PLAGUE)
			        	and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MASTER_OF_SICKNESS] == 1 then
			        	if iSpellId == SPELL_DISRUPTING_RAY then
			        		iSpellId = SPELL_MASS_DISRUPTING_RAY;
			        	end;
			        	if iSpellId == SPELL_PLAGUE then
			        		iSpellId = SPELL_MASS_PLAGUE;
			        	end;
				        TTHCS_THREAD.castAreaSpell8Creature4List(GetHero(iSide), iSpellId, {strCreature});
			        else
				        TTHCS_THREAD.castAimedSpell(GetHero(iSide), iSpellId, {strCreature});
		        	end;
			        local objCreature = geneUnitStatus(strCreature);
			        objCreature["iAtb"] = 0;
			        push(ListUnitSetATB, objCreature);
			        print(strCreature.." drop in dead luck");
			        ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_DEAD_LUCK]["Effect"], strCreature, 5);
			        itemUnit["iAtb"] = 1.25;
			        push(ListUnitSetATB, itemUnit);
        			combatSetPause(nil);
			      end;
			    end;
		    end;
		  end;
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_DEAD_LUCK]["function"]["consume"] = Events_MiddlewareListener_Implement_Skill_DeadLuck_Consume;
	  
		-- HERO_SKILL_SUN_FIRE 120 西莱纳的回响 
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE] = {};
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"] = {};
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["flag"] = {};
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["flag"][0] = TTHCS_ENUM.Yes;
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["flag"][1] = TTHCS_ENUM.Yes;
			function Events_MiddlewareListener_Implement_Skill_SunFire_Product(iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHero(iSide) == itemUnitLast["strUnitName"]
		      and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_SUN_FIRE] == 1 then
		    	H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["flag"][iSide] = TTHCS_ENUM.Yes;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["product"] = Events_MiddlewareListener_Implement_Skill_SunFire_Product;
		  function Events_MiddlewareListener_Implement_Skill_SunFire_Consume(iSide, itemUnit)
		  	local strHero = GetHero(iSide);
		    if strHero ~= nil and strHero == itemUnit["strUnitName"]
		      and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_SUN_FIRE] == 1 then
		      if H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["flag"][iSide] == TTHCS_ENUM.Yes then
		      	H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["flag"][iSide] = TTHCS_ENUM.No;
        		combatSetPause(1);
		      	local iMaxCountHive = 3;
		      	local iLoop = 1;
						local strHeroName = GetHeroName(strHero);
		      	local iRecoveryMana = TTHCS_COMMON.ceil(H55SMOD_HeroLevel[strHeroName] / 6);
		      	if GetHeroName(strHero) == "Diraya" then
		      		iMaxCountHive = TTHCS_COMMON.ceil(iMaxCountHive * 1.5);
		      		iLoop = TTHCS_COMMON.ceil(iLoop * 1.5);
		      		iRecoveryMana = TTHCS_COMMON.ceil(iRecoveryMana * 1.5);
		      	end;
		      	for i = 1, iLoop do
			      	local iCountHive = 0;
			      	local arrSpellSpawn = GetSpellSpawns(iSide);
			      	for i, strSpellSpawn in arrSpellSpawn do
			      		if string.match(strSpellSpawn, "SPELL_SUMMON_HIVE") ~= nil then
		      				iCountHive = iCountHive + 1;
			      		end;
			      	end;
			      	if iCountHive < iMaxCountHive then
								local iBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
								local itemBattleEffectField = TTHCS_TABLE.BattleEffectField[iBattleFieldSize];
				      	local itemPosition = {};
				    	  itemPosition["PosX"] = TTHCS_COMMON.getRandom(itemBattleEffectField["PosX"]["Max"] - itemBattleEffectField["PosX"]["Min"] + 1) + itemBattleEffectField["PosX"]["Min"];
				    	  itemPosition["PosY"] = TTHCS_COMMON.getRandom(itemBattleEffectField["PosY"]["Max"] - itemBattleEffectField["PosY"]["Min"] + 1) + itemBattleEffectField["PosY"]["Min"];
								local strCreature = TTHCS_THREAD.addCreature(iSide, CREATURE_PRESERVE_TOOL, 1, itemPosition["PosX"], itemPosition["PosY"]);
								local objCreature = TTHCS_GLOBAL.geneUnitInfo(strCreature);
								TTHCS_THREAD.removeCreature(strCreature);
								TTHCS_THREAD.castAreaSpell8Position(strHero, SPELL_SUMMON_HIVE, objCreature["PosX"], objCreature["PosY"], TTHCS_ENUM.No);
					      itemUnit["iAtb"] = 1.25;
					      push(ListUnitSetATB, itemUnit);
					    else
	    	    		TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
			      	end;
		      	end;
					  ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SUN_FIRE]["Effect"], strHero, 5);
        		combatSetPause(nil);
			    end;
		    end;
		  end;
		  H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["consume"] = Events_MiddlewareListener_Implement_Skill_SunFire_Consume;
			function Events_MiddlewareListener_Implement_Skill_SunFire_Mana(iSide, itemUnitLast, listUnitLastSummonBeDestroied)
				local strHero = GetHero(iSide);
				if strHero ~= nil	and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_SUN_FIRE] == 1 then
					if listUnitLastSummonBeDestroied ~= nil and length(listUnitLastSummonBeDestroied) > 0 then
        		combatSetPause(1);
        		for i, itemSpellSpawn in listUnitLastSummonBeDestroied do
        			if string.match(itemSpellSpawn["strUnitName"], "SPELL_SUMMON_HIVE") ~= nil then
    						local strHeroName = GetHeroName(strHero);
    						local iRecoveryMana = TTHCS_COMMON.ceil(H55SMOD_HeroLevel[strHeroName] / 6);
				      	if GetHeroName(strHero) == "Diraya" then
				      		iRecoveryMana = TTHCS_COMMON.ceil(iRecoveryMana * 1.5);
				      	end;
    						TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
    				    sleep(50);
    	    			ObjSnapshotLastTurn["Hero"][iSide]["iMana"] = GetUnitManaPoints(strHero);
    				    ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SUN_FIRE]["Effect"], strHero, 5);
        			end;
        		end;
        		combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["mana"] = Events_MiddlewareListener_Implement_Skill_SunFire_Mana;

	  -- HERO_SKILL_REMOTE_CONTROL 126 机械精通
	  	H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_REMOTE_CONTROL] = {};
	  	function Events_MiddlewareListener_Implement_Skill_RemoteControl(iSide, itemUnitLast, iLossManaPoints)
	  		if GetHero(iSide) ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
	  			if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_REMOTE_CONTROL] == 1 then
	  				combatSetPause(1);
	  				local arrMachineCreatureType = TTHCS_TABLE.AcademyMachineCreature;
	  				if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MARCH_OF_THE_MACHINES] == 1 then
	  					arrMachineCreatureType = TTHCS_TABLE.AcademyMachineCreature8Absolute;
	  				end;
	  				local arrCreature = GetCreatures(iSide);
	  				local listCreatureInit = ObjSnapshotInit["Creatures"][iSide];
	  				local strHero = GetHero(iSide);
	  				local strHeroName = GetHeroName(strHero);
	  				local iCreatureNumber = H55SMOD_HeroLevel[strHeroName];
	  				if strHeroName ~= "Cyrus" then
	  					iCreatureNumber = TTHCS_COMMON.ceil(iCreatureNumber / 2);
	  				end;
	  				for i, strCreature in arrCreature do
	  					if contains(arrMachineCreatureType, GetCreatureType(strCreature)) ~= nil then
	  						for j, itemCreatureInit in listCreatureInit do
	  							if strCreature == itemCreatureInit["strUnitName"] and GetCreatureNumber(strCreature) < itemCreatureInit["iUnitNumber"] then
	  								TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_ACADEMY_TOOL, iCreatureNumber, SPELL_ABILITY_REPAIR, strCreature);
	  								break;
	  							end;
	  						end;
	  					end;
	  				end;
	  				ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL]["Effect"], strHero, 5);
	  				combatSetPause(nil);
	  			end;
	  		end;
	  	end;
	  	H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_REMOTE_CONTROL]["function"] = Events_MiddlewareListener_Implement_Skill_RemoteControl;

		-- WarMachine
			H55SMOD_MiddlewareListener["WarMachine"] = {};
			H55SMOD_MiddlewareListener["WarMachine"]["function"] = {};
			H55SMOD_MiddlewareListener["WarMachine"]["list"] = {[0] = {}, [1] = {}};
			function Events_MiddlewareListener_Implement_WarMachine_Death(iSide, itemUnitDeath)
				if GetHero(iSide) ~= nil then
					if itemUnitDeath["iUnitCategory"] == ENUM_CATEGORY.WARMACHINE then
						if contains(H55SMOD_MiddlewareListener["WarMachine"]["list"][iSide], itemUnitDeath["strUnitName"]) == nil then
							push(H55SMOD_MiddlewareListener["WarMachine"]["list"][iSide], itemUnitDeath["strUnitName"]);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["WarMachine"]["function"]["death"] = Events_MiddlewareListener_Implement_WarMachine_Death;
			function Events_MiddlewareListener_Implement_WarMachine_Repair(iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHero(iSide) == itemUnit["strUnitName"] then
					local strHero = GetHeroName(GetHero(iSide));
					if length(H55SMOD_MiddlewareListener["WarMachine"]["list"][iSide]) > 0 then
						if H55SMOD_HeroLevel[strHero] >= 30
							and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_WAR_MACHINES] ~= nil
							and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_WAR_MACHINES] >= 3 then
							local iPositionX, iPositionY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
							combatSetPause(1);
							for i, strWarMachineDeath in H55SMOD_MiddlewareListener["WarMachine"]["list"][iSide] do
								if (GetWarMachineType(strWarMachineDeath) == WAR_MACHINE_BALLISTA
									and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_BALLISTA] ~= nil 
									and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_BALLISTA] > 0)
									or (GetWarMachineType(strWarMachineDeath) == WAR_MACHINE_CATAPULT
									and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_CATAPULT] ~= nil 
									and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_CATAPULT] > 0)
									or (GetWarMachineType(strWarMachineDeath) == WAR_MACHINE_FIRST_AID_TENT
									and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRST_AID] ~= nil 
									and TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRST_AID] > 0)
									or (GetWarMachineType(strWarMachineDeath) == WAR_MACHINE_AMMO_CART) then
									local strCreatureCaster = Thread_Command_AddCreature(iSide, CREATURE_CHRISTIAN_REPAIR, 1, iPositionX, iPositionY);
									repeat sleep(1); until (strCreatureCaster ~= nil and IsCombatUnit(strCreatureCaster) ~= nil);
									UnitCastAimedSpell(strCreatureCaster, SPELL_ABILITY_REPAIR, strWarMachineDeath);
									repeat sleep(1); until (strWarMachineDeath ~= nil and contains(GetWarMachines(iSide), strWarMachineDeath) ~= nil);
									local objWarMachineRepair = geneUnitStatus(strWarMachineDeath);
									print(strCreatureCaster.." casted SPELL_ABILITY_REPAIR to "..strWarMachineDeath);
									ShowFlyingSign(TTHCS_PATH["Mastery"][HERO_SKILL_WAR_MACHINES]["Effect"], strWarMachineDeath, 5);
									RemoveCombatUnit(strCreatureCaster);
									repeat sleep(1); until (strCreatureCaster ~= nil and IsCombatUnit(strCreatureCaster) == nil);
								end;
							end;
							H55SMOD_MiddlewareListener["WarMachine"]["list"] = {[0] = {}, [1] = {}};
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["WarMachine"]["function"]["repair"] = Events_MiddlewareListener_Implement_WarMachine_Repair;

		-- HERO_SKILL_ELEMENTAL_OVERKILL 149 魔力平衡
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELEMENTAL_OVERKILL] = {};
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELEMENTAL_OVERKILL]["flag"] = TTHCS_ENUM.Yes;
			function Events_MiddlewareListener_Implement_Skill_ElementalOverkill(iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				local strHero = GetHero(iSide);
				if strHero ~= nil then
					if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_ELEMENTAL_OVERKILL] == 1 then
						if length(listCreaturesBeEffected) + length(listCreaturesDeath) > 0 then
							if H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELEMENTAL_OVERKILL]["flag"] == TTHCS_ENUM.Yes then
								H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELEMENTAL_OVERKILL]["flag"] = TTHCS_ENUM.No;
        				combatSetPause(1);
								TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_ACADEMY_TOOL, 100000, SPELL_ABILITY_POWER_FEED);
								local iSpellPower = TTH_ATTRIBUTE_EFFECT_COMBAT_HERO[iSide][STAT_SPELL_POWER];
								local iManaPoint = TTHCS_COMMON.floor(iSpellPower * 7.5);
								SetUnitManaPoints(strHero, iManaPoint);
								ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_OVERKILL]["Effect"], strHero, 5);
								sleep(50);
        				combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_ELEMENTAL_OVERKILL]["function"] = Events_MiddlewareListener_Implement_Skill_ElementalOverkill;

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

		-- OrtanCassius
			H55SMOD_MiddlewareListener['OrtanCassius'] = {};
			H55SMOD_MiddlewareListener['OrtanCassius']['flag'] = {};
			function Events_MiddlewareListener_Implement_OrtanCassius(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit['iSide'] then
					if itemUnit['iUnitType'] == CREATURE_JUSTICAR then
						local arrUnitName = TTHCS_GLOBAL.listUnitInArea(itemUnit["strUnitName"], 1, getSide(iSide, 1));
						if arrUnitName ~= nil and length(arrUnitName) > 0 then
							combatSetPause(1);
							for i, strUnitName in arrUnitName do
								if IsCombatUnit(strUnitName) ~= nil
									and GetUnitType(strUnitName) == ENUM_CATEGORY.CREATURE
									and GetCreatureNumber(strUnitName) > 0
									and itemUnit['strUnitName'] ~= strUnitName then
									startThread(ThreadUnitCastAimedSpell, itemUnit['strUnitName'], SPELL_ABILITY_LAY_HANDS, strUnitName);
									print(itemUnit['strUnitName'].." casted SPELL_ABILITY_LAY_HANDS to "..strUnitName);
									sleep(1);
								end;
							end;
							sleep(20);
							itemUnit['iAtb'] = 1.25;
							push(ListUnitSetATB, itemUnit);
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['OrtanCassius']['function'] = Events_MiddlewareListener_Implement_OrtanCassius;

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
			H55SMOD_MiddlewareListener["RedHeavenHero05"] = {};
			function Events_MiddlewareListener_Implement_RedHeavenHero05(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and GetHero(iSide) == itemUnitLast["strUnitName"] then
					local iHeroLevel = H55SMOD_HeroLevel[GetHeroName(GetHero(iSide))];
					local iChance = 10 + iHeroLevel;
					increaseContinuousChance(GetHero(iSide), iChance);
				end;
			end;
			H55SMOD_MiddlewareListener["RedHeavenHero05"]["function"] = Events_MiddlewareListener_Implement_RedHeavenHero05;

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

		-- Sanguinius
			H55SMOD_MiddlewareListener["Sanguinius"] = {};
			H55SMOD_MiddlewareListener["Sanguinius"]["flag"] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_Sanguinius(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit["strUnitName"] == GetHero(iSide) then
					combatSetPause(1);
					local arrCreatureFriend = GetCreatures(iSide);
					for i, strCreatureFriend in arrCreatureFriend do
						local itemCreatureFriend = geneUnitStatus(strCreatureFriend);
						if itemCreatureFriend["iUnitType"] == CREATURE_LEGATE then
							startThread(Thread_Command_UnitCastAimedSpell, itemUnit["strUnitName"], SPELL_BLESS, strCreatureFriend, 1);
							print(itemUnit["strUnitName"].." casted SPELL_BLESS to "..strCreatureFriend);
							ShowFlyingSign(TTHCS_PATH["Talent"]["Sanguinius"]["Effect"], itemUnit["strUnitName"], 5);
						end;
					end;
					itemUnit["iAtb"] = 1.25;
					push(ListUnitSetATB, itemUnit);
					sleep(20);
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener["Sanguinius"]["function"] = Events_MiddlewareListener_Implement_Sanguinius;

		-- Avitus
			H55SMOD_MiddlewareListener["Avitus"] = {};
			function Events_MiddlewareListener_Implement_Avitus(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iOppositeSide) ~= nil and GetHeroName(GetHero(iOppositeSide)) == strHero and itemUnitLast["iUnitType"] == CREATURE_CROSSBOW then
					local strCreatureCaster = itemUnitLast["strUnitName"];
					local itemCreatureCaster = geneUnitStatus(strCreatureCaster);
					if IsCombatUnit(strCreatureCaster) ~= nil and itemCreatureCaster["iUnitNumber"] > 0 then
						local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
						if iLenCreaturesBeEffected > 0 then
							local strCreatureBeEffected = listCreaturesBeEffected[0]["strUnitName"];
							local itemCreatureBeEffected = geneUnitStatus(strCreatureBeEffected);
							if IsCombatUnit(strCreatureBeEffected) ~= nil and itemCreatureBeEffected["iUnitNumber"] > 0 then
								if TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_BALLISTA] == 1
									or TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_TRIPLE_BALLISTA] == 1
									or TTH_ARTIFACT_EFFECT_COMBAT_HERO[iOppositeSide][ARTIFACT_RING_OF_MACHINE_AFFINITY] == 1
									or TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_CHILLING_STEEL] == 1
									or TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_WILDFIRE] == 1 then
									combatSetPause(1);
									ShowFlyingSign(TTHCS_PATH["Talent"]["Avitus"]["Effect"], itemCreatureCaster["strUnitName"], 5);
									if TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_BALLISTA] == 1 then
										startThread(Thread_Command_UnitCastAreaSpell, strCreatureCaster, SPELL_ABILITY_SCATTER_SHOT, itemCreatureBeEffected["iPositionX"], itemCreatureBeEffected["iPositionY"], 2);
										sleep(50);
										print(strCreatureCaster.." scatter_shot to "..itemCreatureBeEffected["strUnitName"]);
									end;
									if TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_TRIPLE_BALLISTA] == 1 then
										startThread(Thread_Command_UnitCastAreaSpell, strCreatureCaster, SPELL_ABILITY_SCATTER_SHOT, itemCreatureBeEffected["iPositionX"], itemCreatureBeEffected["iPositionY"], 2);
										sleep(50);
										print(strCreatureCaster.." scatter_shot to "..itemCreatureBeEffected["strUnitName"]);
									end;
									if TTH_ARTIFACT_EFFECT_COMBAT_HERO[iOppositeSide][ARTIFACT_RING_OF_MACHINE_AFFINITY] == 1 then
										startThread(Thread_Command_UnitCastAreaSpell, strCreatureCaster, SPELL_ABILITY_SCATTER_SHOT, itemCreatureBeEffected["iPositionX"], itemCreatureBeEffected["iPositionY"], 2);
										sleep(50);
										print(strCreatureCaster.." scatter_shot to "..itemCreatureBeEffected["strUnitName"]);
									end;
									if TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_CHILLING_STEEL] == 1 then
										local strCreatureSummon = Thread_Command_SummonCreature(iOppositeSide, CREATURE_CROSSBOW, itemCreatureCaster["iUnitNumber"], itemCreatureCaster["iPositionX"], itemCreatureCaster["iPositionY"]);
										if strCreatureSummon ~= nil and IsCombatUnit(strCreatureSummon) ~= nil then
											Thread_Command_UnitCastAreaSpell_IgnoreMana(strCreatureSummon, SPELL_FROST_RING, itemCreatureBeEffected["iPositionX"], itemCreatureBeEffected["iPositionY"]);
											print(strCreatureSummon.." cast frost_ring to "..itemCreatureBeEffected["strUnitName"]);
											sleep(50);
											startThread(Thread_Command_RemoveCombatUnit, iOppositeSide, strCreatureSummon);
											sleep(20);
										end;
									end;
									if TTH_SKILL_EFFECT_COMBAT_HERO[iOppositeSide][HERO_SKILL_WILDFIRE] == 1 then
										local strCreatureSummon = Thread_Command_SummonCreature(iOppositeSide, CREATURE_CROSSBOW, itemCreatureCaster["iUnitNumber"], itemCreatureCaster["iPositionX"], itemCreatureCaster["iPositionY"]);
										if strCreatureSummon ~= nil and IsCombatUnit(strCreatureSummon) ~= nil then
											Thread_Command_UnitCastAreaSpell_IgnoreMana(strCreatureSummon, SPELL_FIREBALL, itemCreatureBeEffected["iPositionX"], itemCreatureBeEffected["iPositionY"]);
											print(strCreatureSummon.." cast fireball to "..itemCreatureBeEffected["strUnitName"]);
											sleep(50);
											startThread(Thread_Command_RemoveCombatUnit, iOppositeSide, strCreatureSummon);
											sleep(20);
										end;
									end;
									combatSetPause(nil);
								end;
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Avitus"]["function"] = Events_MiddlewareListener_Implement_Avitus;

		-- Tarkus
			H55SMOD_MiddlewareListener["Tarkus"] = {};
			function Events_MiddlewareListener_Implement_Tarkus(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local bAttack = 0;
					for i, objInit in ObjSnapshotInit["Creatures"][iSide] do
						local objUnitTrigger = TTHCS_GLOBAL.geneUnitInfo(objInit["strUnitName"]);
						if bAttack == 0 then
							local bMatch = 0;
							local iIndex = -1;
							for i, objPosition in H55SMOD_Start[strHero]["ListAttack"] do
								if bMatch == 0 and TTHCS_COMMON.isEffectUnit(objInit["strUnitName"], objPosition["PosX"], objPosition["PosY"]) == TTHCS_ENUM.Yes then
									bMatch = 1;
									iIndex = i;
								end;
							end;
							if bMatch == 1 then
								bAttack = 1;
								combatSetPause(1);
								local objPosition = {};
								H55SMOD_Start[strHero]["ListAttack"], objPosition = pop(H55SMOD_Start[strHero]["ListAttack"], iIndex);
								local strCreatureSummon = Thread_Command_SummonCreature(iSide, objUnitTrigger["UnitType"], objUnitTrigger["UnitNumber"], objPosition["PosX"], objPosition["PosY"]);
								local objCreatureSummon = geneUnitStatus(strCreatureSummon);
								objCreatureSummon["iAtb"] = 1.25;
								push(ListUnitSetATB, objCreatureSummon);
								print(objUnitTrigger["UnitName"].." arrive tactics target and clone "..objCreatureSummon["strUnitName"]);
								ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectAttack"], objUnitTrigger["UnitName"], 5);
								combatSetPause(nil);
							end;
						end;
					end;
					local iOppositeSide = getSide(iSide, 1);
					local bDefend = 0;
					for i, objInit in ObjSnapshotInit["Creatures"][iOppositeSide] do
						local objUnitTrigger = TTHCS_GLOBAL.geneUnitInfo(objInit["strUnitName"]);
						if bDefend == 0 then
							local bMatch = 0;
							local iIndex = -1;
							for i, objPosition in H55SMOD_Start[strHero]["ListDefend"] do
								if bMatch == 0 and TTHCS_COMMON.isEffectUnit(objInit["strUnitName"], objPosition["PosX"], objPosition["PosY"]) == TTHCS_ENUM.Yes then
									bMatch = 1;
									iIndex = i;
								end;
							end;
							if bMatch == 1 then
								bDefend = 1;
								combatSetPause(1);
								local objPosition = {};
								H55SMOD_Start[strHero]["ListDefend"], objPosition = pop(H55SMOD_Start[strHero]["ListDefend"], iIndex);
								for i, strCreature in GetCreatures(iSide) do
									local objCreature = geneUnitStatus(strCreature);
									objCreature["iAtb"] = 1.25;
									push(ListUnitSetATB, objCreature);
									print(objUnitTrigger["UnitName"].." fall into a trap");
									ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectDefend"], objUnitTrigger["UnitName"], 5);
								end;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Tarkus"]["function"] = Events_MiddlewareListener_Implement_Tarkus;

		-- Christian
			H55SMOD_MiddlewareListener["Christian"] = {};
			H55SMOD_MiddlewareListener["Christian"]["function"] = {};
			function Events_MiddlewareListener_Implement_Christian_Hero(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit["iSide"] then
					local arrWarMachine = GetWarMachines(iSide);
					for i, strWarMachine in arrWarMachine do
						if GetWarMachineType(strWarMachine) ~= WAR_MACHINE_AMMO_CART then
							local iProb = 5;
							if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
								iProb = 8;
							end;
							if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
								iProb = 10;
							end;
							increaseContinuousChance(strWarMachine, iProb);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Christian"]["function"]["hero"] = Events_MiddlewareListener_Implement_Christian_Hero;
			function Events_MiddlewareListener_Implement_Christian_WarMachine(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit["iSide"] then
					local iProb = 5;
					if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
						iProb = 8;
					end;
					if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
						iProb = 10;
					end;
					increaseContinuousChance(GetHero(iSide), iProb);
				end;
			end;
			H55SMOD_MiddlewareListener["Christian"]["function"]["warMachine"] = Events_MiddlewareListener_Implement_Christian_WarMachine;

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
						sleep(50);
						print(itemUnitLast['strUnitName'].." defend");
						itemUnitLast['iAtb'] = 0.1;
						push(ListUnitSetATB, itemUnitLast);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Mephala']['function'] = Events_MiddlewareListener_Implement_Mephala;

		-- Vaniel 038 蒂耶鲁
			H55SMOD_MiddlewareListener["Vaniel"] = {};
			function Events_MiddlewareListener_Implement_Vaniel(strHeroName, iSide, itemUnitLast, itemUnit, iManaBeforeLast, iManaLast)
				print("iManaBeforeLast")
				print(iManaBeforeLast)
				print("iManaLast")
				print(iManaLast)
				local strHero = GetHero(iSide);
				if strHero ~= nil and GetHeroName(strHero) == strHeroName	then
					if itemUnitLast["strUnitName"] ~= GetHero(iSide) and itemUnit["strUnitName"] ~= GetHero(iSide) then
						if iManaBeforeLast - iManaLast > 5 or iManaBeforeLast - iManaLast <= -10 then
							combatSetPause(1);
							local itemHero = geneUnitStatus(strHero);
							itemHero["iAtb"] = 1.25;
							push(ListUnitSetATB, itemHero);
							ShowFlyingSign(TTHCS_PATH["Talent"]["Vaniel"]["Effect"], strHero, 5);
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Vaniel"]["function"] = Events_MiddlewareListener_Implement_Vaniel;

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
			H55SMOD_MiddlewareListener["Gem"] = {};
			H55SMOD_MiddlewareListener["Gem"]["target"] = {};
			H55SMOD_MiddlewareListener["Gem"]["target"]["friend"] = {};
			H55SMOD_MiddlewareListener["Gem"]["target"]["enemy"] = {};
			H55SMOD_MiddlewareListener["Gem"]["function"] = {};
			H55SMOD_MiddlewareListener["Gem"]["function"]["friend"] = {};
			H55SMOD_MiddlewareListener["Gem"]["function"]["enemy"] = {};
			function Events_MiddlewareListener_Implement_Gem_Friend_Charge(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast["strUnitName"] == GetWarMachine(iSide, WAR_MACHINE_FIRST_AID_TENT) then
					for i, objTarget in listCreaturesBeEffected do
						if contains(H55SMOD_MiddlewareListener[strHero]["target"]["friend"], objTarget["strUnitName"]) == nil then
							push(H55SMOD_MiddlewareListener[strHero]["target"]["friend"], objTarget["strUnitName"]);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Gem"]["function"]["friend"]["charge"] = Events_MiddlewareListener_Implement_Gem_Friend_Charge;
			function Events_MiddlewareListener_Implement_Gem_Friend_Consume(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and GetHero(iSide) == itemUnit["strUnitName"] then
					if H55SMOD_MiddlewareListener[strHero]["target"]["friend"] ~= nil and length(H55SMOD_MiddlewareListener[strHero]["target"]["friend"]) > 0 then
						combatSetPause(1);
						local listTarget = {};
						for i, strTarget in H55SMOD_MiddlewareListener[strHero]["target"]["friend"] do
							if contains(listTarget, strTarget) == nil then
								push(listTarget, strTarget);
							end;
						end;
						if length(listTarget) > 0 then
							TTHCS_THREAD.castAimedSpell(GetHero(iSide), SPELL_REGENERATION, listTarget);
						end;
						H55SMOD_MiddlewareListener[strHero]["target"]["friend"] = {};
						itemUnit["iAtb"] = 1.25;
						push(ListUnitSetATB, itemUnit);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Gem"]["function"]["friend"]["consume"] = Events_MiddlewareListener_Implement_Gem_Friend_Consume;
			function Events_MiddlewareListener_Implement_Gem_Enemy_Charge(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast["strUnitName"] == GetWarMachine(iSide, WAR_MACHINE_FIRST_AID_TENT) then
					for i, objTarget in listCreaturesBeEffected do
						if contains(H55SMOD_MiddlewareListener[strHero]["target"]["enemy"], objTarget["strUnitName"]) == nil then
							push(H55SMOD_MiddlewareListener[strHero]["target"]["enemy"], objTarget["strUnitName"]);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Gem"]["function"]["enemy"]["charge"] = Events_MiddlewareListener_Implement_Gem_Enemy_Charge;
			function Events_MiddlewareListener_Implement_Gem_Enemy_Consume(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and GetHero(iSide) == itemUnit["strUnitName"] then
					if H55SMOD_MiddlewareListener[strHero]["target"]["enemy"] ~= nil and length(H55SMOD_MiddlewareListener[strHero]["target"]["enemy"]) > 0 then
						combatSetPause(1);
						local listTarget = {};
						for i, strTarget in H55SMOD_MiddlewareListener[strHero]["target"]["enemy"] do
							if contains(listTarget, strTarget) == nil then
								push(listTarget, strTarget);
							end;
						end;
						if length(listTarget) > 0 then
							TTHCS_THREAD.castAimedSpell(GetHero(iSide), SPELL_PLAGUE, listTarget);
						end;
						H55SMOD_MiddlewareListener[strHero]["target"]["enemy"] = {};
						itemUnit["iAtb"] = 1.25;
						push(ListUnitSetATB, itemUnit);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Gem"]["function"]["enemy"]["consume"] = Events_MiddlewareListener_Implement_Gem_Enemy_Consume;

		-- Vinrael 039 艾丽莎
			H55SMOD_MiddlewareListener["Vinrael"] = {};
			function Events_MiddlewareListener_Implement_Vinrael(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnitLast["iSide"] then
					local itemUnit = geneUnitStatus(GetHero(iSide));
					H55SMOD_MiddlewareListener["WarMachine"]["function"]["repair"](iSide, itemUnit);
					H55SMOD_MiddlewareListener["Skill"][HERO_SKILL_SUN_FIRE]["function"]["consume"](iSide, itemUnit);
				end;
			end;
			H55SMOD_MiddlewareListener["Vinrael"]["function"] = Events_MiddlewareListener_Implement_Vinrael;

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
					local iRecoveryMana = 2;
					TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
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

		-- Razzak
			H55SMOD_MiddlewareListener["Razzak"] = {};
			function Events_MiddlewareListener_Implement_Razzak(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(getSide(iSide, 1)) ~= nil and GetHeroName(GetHero(getSide(iSide, 1))) == strHero
					and (itemUnitLast["iUnitType"] == CREATURE_MAGI or itemUnitLast["iUnitType"] == CREATURE_ARCH_MAGI or itemUnitLast["iUnitType"] == CREATURE_COMBAT_MAGE)
					and H55SMOD_HeroAbility[strHero] > 0 then
					local iSpellId = H55SMOD_HeroAbility[strHero];
					local itemHero = geneUnitStatus(GetHero(getSide(iSide, 1)));
					if length(listCreaturesBeEffected) > 0 then
						combatSetPause(1);
						ShowFlyingSign(TTHCS_PATH["Talent"]["Razzak"]["Effect"], itemHero["strUnitName"], 5);
						for i, itemCreatureEffected in listCreaturesBeEffected do
							if IsCombatUnit(itemCreatureEffected["strUnitName"]) ~= nil and GetCreatureNumber(itemCreatureEffected["strUnitName"]) > 0 then
								if contains(TTHCS_TABLE.ImbueBallistaSpellAimed, iSpellId) ~= nil then
									startThread(Thread_Command_UnitCastAimedSpell_UseMana, itemHero["strUnitName"], iSpellId, itemCreatureEffected["strUnitName"]);
									print(itemHero["strUnitName"].." casted "..iSpellId.." to "..itemCreatureEffected["strUnitName"]);
								elseif contains(TTHCS_TABLE.ImbueBallistaSpellArea, iSpellId) ~= nil then
									local iPosX, iPosY = GetUnitPosition(itemCreatureEffected["strUnitName"]);
									startThread(Thread_Command_UnitCastAreaSpell_UseMana, itemHero["strUnitName"], iSpellId, iPosX, iPosY);
									print(itemHero["strUnitName"].." casted "..iSpellId.." at "..iPosX.."-"..iPosY);
								end;	
								sleep(20);
							end;
						end;
						itemHero["iAtb"] = 1.25;
						push(ListUnitSetATB, itemHero);
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Razzak"]["function"] = Events_MiddlewareListener_Implement_Razzak;

		-- Emilia
			H55SMOD_MiddlewareListener["Emilia"] = {};
			function Events_MiddlewareListener_Implement_Emilia(strHero, iSide, itemUnitDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if itemUnitDeath['iUnitCategory'] == ENUM_CATEGORY.SPELLSPAWN then
						ShowFlyingSign(TTHCS_PATH["Talent"]["Emilia"]["Effect"], itemUnitDeath['strUnitName'], 5);
						local arrUnitName = TTHCS_GLOBAL.listUnitInArea(itemUnitDeath["strUnitName"], 1, iSide);
						for i, strUnitName in arrUnitName do
							if IsCombatUnit(strUnitName) ~= nil and GetCreatureNumber(strUnitName) > 0 then
								local itemUnit = geneUnitStatus(strUnitName);
								local iDistance = TTHCS_TABLE.Creature[itemUnit["iUnitType"]]["CombatSize"];
								local iTowardsX = 0;
								if itemUnit["iPositionX"] < itemUnitDeath["iPositionX"] then
									iTowardsX = -1;
								elseif itemUnit["iPositionX"] > itemUnitDeath["iPositionX"] then
									iTowardsX = 1;
								end;
								local iTowardsY = 0;
								if itemUnit["iPositionY"] < itemUnitDeath["iPositionY"] then
									iTowardsY = -1;
								elseif itemUnit["iPositionY"] > itemUnitDeath["iPositionY"] then
									iTowardsY = 1;
								end;
								local iTargetX = itemUnit["iPositionX"] + iDistance * iTowardsX;
								local iTargetY = itemUnit["iPositionY"] + iDistance * iTowardsY;
								startThread(ThreadCommandMove, itemUnit["strUnitName"], iTargetX, iTargetY);
								sleep(50);
								print(itemUnitDeath["strUnitName"].." has been destroied, then "..itemUnit["strUnitName"].." has exploded and move to ["..iTargetX..","..iTargetY.."]");
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Emilia"]["function"] = Events_MiddlewareListener_Implement_Emilia;

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
			H55SMOD_MiddlewareListener["Zehir"] = {};
			function Events_MiddlewareListener_Implement_Zehir(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local listCreatures = GetCreatures(iSide);
					for i, strCreatureName in listCreatures do
						local objCreature = geneUnitStatus(strCreatureName);
						if objCreature["iPositionX"] == itemUnit["iPositionX"] and objCreature["iPositionY"] == itemUnit["iPositionY"] then
							objCreature["iAtb"] = 0.4 + H55SMOD_HeroLevel[strHero] * 0.02;
							push(ListUnitSetATB, objCreature);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Zehir"]["function"] = Events_MiddlewareListener_Implement_Zehir;

		-- Faiz
			H55SMOD_MiddlewareListener['Faiz'] = {};
			function Events_MiddlewareListener_Implement_Faiz(strHero, iSide, itemUnit, itemUnitLast, listCreaturesEffect, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iLenCreature = length(listCreaturesEffect) + length(listCreaturesDeath);
					if iLenCreature > 1 then
						ShowFlyingSign(TTHCS_PATH["Talent"]["Faiz"]["Effect"], GetHero(iSide), 5);
						combatSetPause(1);
						local iTowards = 1;
						if iSide == ATTACKER then
							iTowards = 1;
						else
							iTowards = -1;
						end;
						local arrFoeCreature = GetCreatures(getSide(iSide, 1));
						for i, itemCreatureEffect in listCreaturesEffect do
							if itemCreatureEffect["strUnitName"] ~= itemUnit["strUnitName"] then
								local iDistance = TTHCS_TABLE.Creature[itemCreatureEffect["iUnitType"]]["CombatSize"]
								startThread(ThreadCommandMove, itemCreatureEffect["strUnitName"], itemCreatureEffect["iPositionX"] + iDistance * iTowards, itemCreatureEffect["iPositionY"]);
								sleep(50);
								local itemCreatureEffectPost = geneUnitStatus(itemCreatureEffect["strUnitName"]);
								if itemCreatureEffectPost ~= nil
									and GetCreatureNumber(itemCreatureEffectPost["strUnitName"]) > 0
									and itemCreatureEffectPost["iPositionX"] == itemCreatureEffect["iPositionX"] then
									startThread(ThreadCommandMove, itemCreatureEffect["strUnitName"], itemCreatureEffect["iPositionX"] + iDistance * iTowards, itemCreatureEffect["iPositionY"] - iDistance);
								end;
								sleep(50);
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Faiz']['function'] = Events_MiddlewareListener_Implement_Faiz;

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

		-- Astral
			H55SMOD_MiddlewareListener["Astral"] = {};
			function Events_MiddlewareListener_Implement_Astral(strHero, iSide, itemUnitLast)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast["strUnitName"] == GetHero(iSide) then
					local iRecoveryMana = H55SMOD_HeroAbility[strHero];
					if iRecoveryMana > 0 then
						TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Astral"]["function"] = Events_MiddlewareListener_Implement_Astral;

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
						local iAppointedCreatureId = CREATURE_FIRE_ELEMENTAL;
						if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRE_AFFINITY] ~= nil then
							iAppointedCreatureId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRE_AFFINITY] + 0;
						end;
						combatSetPause(1);
						for iIndexUnitLastSummon = 0, iLenUnitLastSummon - 1 do
							local itemUnitLastSummon = listCreaturesLastSummon[iIndexUnitLastSummon];
							if itemUnitLastSummon['iUnitType'] ~= CREATURE_FIRE_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_WATER_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_EARTH_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_AIR_ELEMENTAL
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_PHOENIX
								and itemUnitLastSummon['iUnitType'] ~= CREATURE_GOBLIN
								and itemUnitLastSummon['iUnitNumber'] > 0 then
								Thread_Command_SummonCreature(iSide, iAppointedCreatureId, 1, itemUnitLastSummon['iPositionX'], itemUnitLastSummon['iPositionY']);
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

		-- Efion
			H55SMOD_MiddlewareListener["Efion"] = {};
			H55SMOD_MiddlewareListener["Efion"]["function"] = {};
			function Events_MiddlewareListener_Implement_Efion_Hero(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					increaseContinuousChance(GetHero(iSide), 10);
				end;
			end;
			H55SMOD_MiddlewareListener["Efion"]["function"]["hero"] = Events_MiddlewareListener_Implement_Efion_Hero;
			function Events_MiddlewareListener_Implement_Efion_Creature(strHero, iSide, itemUnitLast, objCreatureLossMana, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					increaseContinuousChance(GetHero(iSide), 10);
				end;
			end;
			H55SMOD_MiddlewareListener["Efion"]["function"]["creature"] = Events_MiddlewareListener_Implement_Efion_Creature;

		-- Orlando2
			H55SMOD_MiddlewareListener['Orlando2'] = {};
			function Events_MiddlewareListener_Implement_Orlando2(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local itemCreatureEffected = listCreaturesBeEffected[0];
					if itemCreatureEffected == nil then
						itemCreatureEffected = listCreaturesDeath[0];
					end;
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

					local strCreatureShooter = Thread_Command_AddCreature(iSide, H55SMOD_HeroAbility[strHero], 1, iPositionX, iPositionY);
					if strCreatureShooter ~= nil then
						local itemCreatureShooter = geneUnitStatus(strCreatureShooter);
						startThread(Thread_Command_UnitShotAimed, itemCreatureShooter['strUnitName'], itemCreatureEffected['strUnitName']);
						sleep(20);
						if H55SMOD_HeroAbility[strHero] == CREATURE_INFERNO_TOOL_Orlando2_AbilityUpgradeShantiri then
							local iOppositeSide = getSide(iSide, 1);
							local listChainCreature = TTHCS_GLOBAL.sortCreature8Distance(itemCreatureEffected["iPositionX"], itemCreatureEffected["iPositionY"], iOppositeSide);
							local iIndexChain = 1;
							for i, objChainCreature in listChainCreature do
								if iIndexChain <= 3 and itemCreatureEffected["strUnitName"] ~= objChainCreature["UnitName"] and IsCombatUnit(objChainCreature["UnitName"]) ~= nil then
									startThread(Thread_Command_UnitShotAimed, itemCreatureShooter["strUnitName"], objChainCreature["UnitName"]);
									sleep(20);
									iIndexChain = iIndexChain + 1;
								end;
							end;
						end;
						startThread(Thread_Command_RemoveCombatUnit, iSide, itemCreatureShooter['strUnitName']);
						sleep(20);
						print(itemCreatureShooter['strUnitName'].." shoot to "..itemCreatureEffected['strUnitName']);
						if H55SMOD_HeroAbility[strHero] == CREATURE_INFERNO_TOOL_Orlando2_AbilityVorpalSword then
							ShowFlyingSign(TTHCS_PATH["Talent"]["Orlando2"]["EffectVorpalSword"], GetHero(iSide), 5);
						elseif H55SMOD_HeroAbility[strHero] == CREATURE_INFERNO_TOOL_Orlando2_AbilityAxeOfSlaughter then
							ShowFlyingSign(TTHCS_PATH["Talent"]["Orlando2"]["EffectAxeOfSlaughter"], GetHero(iSide), 5);
						else
							ShowFlyingSign(TTHCS_PATH["Talent"]["Orlando2"]["EffectVorpalSword"], GetHero(iSide), 5);
							sleep(1);
							ShowFlyingSign(TTHCS_PATH["Talent"]["Orlando2"]["EffectAxeOfSlaughter"], GetHero(iSide), 5);
						end;
					end;

					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener['Orlando2']['function'] = Events_MiddlewareListener_Implement_Orlando2;

		-- Oddrema
			H55SMOD_MiddlewareListener["Oddrema"] = {};
			function Events_MiddlewareListener_Implement_Oddrema(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast["iSide"] == iOppositeSide then
					local bIsEffectedInOwnerTurn = 0;
					for i, objCreatureEffect in listCreaturesBeEffected do
						if itemUnitLast["strUnitName"] == objCreatureEffect["strUnitName"] and TTHCS_TABLE.Creature[objCreatureEffect["iUnitType"]]["Range"] == 1 then
							bIsEffectedInOwnerTurn = 1;
							break;
						end;
					end;
					if bIsEffectedInOwnerTurn == 1 then
						combatSetPause(1);
						local arrCreature = GetCreatures(iSide);
						for i, strCreatureShoot in arrCreature do
							local objCreatureShoot = geneUnitStatus(strCreatureShoot);
							if objCreatureShoot["iUnitType"] == CREATURE_SUCCUBUS
								or objCreatureShoot["iUnitType"] == CREATURE_INFERNAL_SUCCUBUS
								or objCreatureShoot["iUnitType"] == CREATURE_SUCCUBUS_SEDUCER then
								startThread(Thread_Command_UnitShotAimed, objCreatureShoot["strUnitName"], itemUnitLast["strUnitName"]);
								sleep(20);
								objCreatureShoot["iAtb"] = 1 / 3;
								if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
									objCreatureShoot["iAtb"] = 2 / 3;
								end;
								if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
									objCreatureShoot["iAtb"] = 1.25;
								end;
								push(ListUnitSetATB, objCreatureShoot);
								print(objCreatureShoot["strUnitName"].." shoot to "..itemUnitLast["strUnitName"]);
								ShowFlyingSign(TTHCS_PATH["Talent"]["Oddrema"]["Effect"], objCreatureShoot["strUnitName"], 5);
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Oddrema"]["function"] = Events_MiddlewareListener_Implement_Oddrema;

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
			H55SMOD_MiddlewareListener["Deleb"] = {};
			H55SMOD_MiddlewareListener["Deleb"]["target"] = {};
			H55SMOD_MiddlewareListener["Deleb"]["function"] = {};
			function Events_MiddlewareListener_Implement_Deleb_Charge(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero	and itemUnitLast["strUnitName"] == GetWarMachine(iSide, WAR_MACHINE_BALLISTA) then
					for i, objTarget in listCreaturesBeEffected do
						if contains(H55SMOD_MiddlewareListener[strHero]["target"], objTarget["strUnitName"]) == nil then
							push(H55SMOD_MiddlewareListener[strHero]["target"], objTarget["strUnitName"]);
						end;
					end;
					for i, objTarget in listCreaturesDeath do
						if contains(H55SMOD_MiddlewareListener[strHero]["target"], objTarget["strUnitName"]) == nil then
							push(H55SMOD_MiddlewareListener[strHero]["target"], objTarget["strUnitName"]);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Deleb"]["function"]["charge"] = Events_MiddlewareListener_Implement_Deleb_Charge;
			function Events_MiddlewareListener_Implement_Deleb_Consume(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and GetHero(iSide) == itemUnit["strUnitName"] then
					if H55SMOD_MiddlewareListener[strHero]["target"] ~= nil and length(H55SMOD_MiddlewareListener[strHero]["target"]) > 0 then
        		combatSetPause(1);
						local listTarget = {};
						for i, strTarget in H55SMOD_MiddlewareListener[strHero]["target"] do
							if contains(listTarget, strTarget) == nil then
								push(listTarget, strTarget);
							end;
						end;
						if length(listTarget) > 0 then
							TTHCS_THREAD.castAimedSpell(GetHero(iSide), SPELL_ICE_BOLT, listTarget);
						end;
						H55SMOD_MiddlewareListener[strHero]["target"] = {};
						itemUnit["iAtb"] = 1.25;
						push(ListUnitSetATB, itemUnit);
        		combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Deleb"]["function"]["consume"] = Events_MiddlewareListener_Implement_Deleb_Consume;

		-- Zydar
			H55SMOD_MiddlewareListener["Zydar"] = {};
			function Events_MiddlewareListener_Implement_Zydar(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and GetHero(iSide) == itemUnitLast["strUnitName"] then
					increaseContinuousChance(GetHero(iSide), 6);
				end;
			end;
			H55SMOD_MiddlewareListener["Zydar"]["function"] = Events_MiddlewareListener_Implement_Zydar;

	-- Necropolis
		-- Xerxon
			H55SMOD_MiddlewareListener['Xerxon'] = {};
			function Events_MiddlewareListener_Implement_Xerxon(strHero, iSide, itemUnitLast, listCreaturesMoved)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iLenCreaturesMoved = length(listCreaturesMoved);
					if iLenCreaturesMoved == 1 then
						combatSetPause(1);
						local itemUnitMoved = listCreaturesMoved[0];
						local objUnitPre = TTHCS_GLOBAL.geneUnitInfo(itemUnitMoved["strUnitName"]);
						objUnitPre["PosX"] = itemUnitMoved["iPositionX"];
						objUnitPre["PosY"] = itemUnitMoved["iPositionY"];
						local objUnitPost = TTHCS_GLOBAL.geneUnitInfo(itemUnitMoved["strUnitName"]);
						local arrUnitName = TTHCS_GLOBAL.listUnitInArea8Object(objUnitPre, 1, getSide(iSide, 1));
						for i, strCreatureTarget in arrUnitName do
							local iPosX = 0;
							local iPosY = 0;
							if IsCombatUnit(strCreatureTarget) ~= nil	and GetCreatureNumber(strCreatureTarget) > 0 then
								local objCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
								local strPosition = GetUnitPosition(strCreatureTarget);
								iPosX = objUnitPost["PosX"] + objCreatureTarget["PosX"] - objUnitPre["PosX"];
								iPosY = objUnitPost["PosY"] + objCreatureTarget["PosY"] - objUnitPre["PosY"];
								startThread(ThreadCommandDisplace, strCreatureTarget, iPosX, iPosY);
								local iTime = 0;
								repeat sleep(1); iTime = iTime + 1; until strPosition ~= GetUnitPosition(strCreatureTarget) or iTime >= 100;
								print(strCreatureTarget.." displace to "..iPosX.."-"..iPosY);
							end;
							if IsCombatUnit(strCreatureTarget) ~= nil	and GetCreatureNumber(strCreatureTarget) > 0 then
								local objCreatureTargetAfterDisplace = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
								if iPosX == objCreatureTargetAfterDisplace["PosX"] and iPosY == objCreatureTargetAfterDisplace["PosY"] then
									local objCreatureTarget = geneUnitStatus(strCreatureTarget);
									objCreatureTarget['iAtb'] = 1.25;
									push(ListUnitSetATB, objCreatureTarget);
									print(objCreatureTarget['strUnitName']..'\'s atb has been increase to 1.25');
								end;
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener['Xerxon']['function'] = Events_MiddlewareListener_Implement_Xerxon;

		-- Gles
			H55SMOD_MiddlewareListener['Gles'] = {};
			function Events_MiddlewareListener_Implement_Gles(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == GetUnitSide(itemUnitLast['strUnitName']) then
					if itemUnitLast['iUnitType'] == WAR_MACHINE_FIRST_AID_TENT then
						local iLenCreaturesBeEffected = length(listCreaturesBeEffected);
						if iLenCreaturesBeEffected == 1 then
							local itemCreaturesBeEffected = listCreaturesBeEffected[0];
							if IsCombatUnit(itemCreaturesBeEffected['strUnitName']) ~= nil and itemCreaturesBeEffected['iUnitNumber'] > 0 then
								combatSetPause(1);
								local strHeroName = GetHero(iSide);
								startThread(Thread_Command_UnitCastAimedSpell, strHeroName, SPELL_CELESTIAL_SHIELD, itemCreaturesBeEffected['strUnitName'], 1);
								local itemHero = geneUnitStatus(strHeroName);
								itemHero['iAtb'] = 1.25;
								push(ListUnitSetATB, itemHero);
								itemCreaturesBeEffected['iAtb'] = 1.25;
								push(ListUnitSetATB, itemCreaturesBeEffected);
								sleep(20);
								print(strHeroName.." casted SPELL_CELESTIAL_SHIELD on "..itemCreaturesBeEffected['strUnitName']);
								ShowFlyingSign(TTHCS_PATH["Talent"]["Gles"]["Effect"], itemCreaturesBeEffected["strUnitName"], 5);
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
					local iRecoveryMana = 2;
					TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
				end;
			end;
			H55SMOD_MiddlewareListener['Thant']['function']['creature'] = Events_MiddlewareListener_Implement_Thant_Creature;

		-- Aislinn 085 艾斯瑞
			H55SMOD_MiddlewareListener["Aislinn"] = {};
			function Events_MiddlewareListener_Implement_Aislinn(strHero, iSide, itemUnitLast, listCreatureEffect)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero
					and itemUnitLast ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
					combatSetPause(1);
					for i, itemCreatureEffect in listCreatureEffect do
						local strCreatureEffect = itemCreatureEffect["strUnitName"];
						if TTHCS_GLOBAL.checkCombatCreature(strCreatureEffect) == TTHCS_ENUM.Yes then
							itemCreatureEffect["iAtb"] = 1.25;
							push(ListUnitSetATB, itemCreatureEffect);
							if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
							  local strCreatureAdd = startThread(TTHCS_THREAD.addCreature, iSide, itemCreatureEffect["iUnitType"], itemCreatureEffect["iUnitEffectNumber"], itemCreatureEffect["iPositionX"], itemCreatureEffect["iPositionY"]);
							  local itemCreatureAdd = geneUnitStatus(strCreatureAdd);
								itemCreatureAdd["iAtb"] = 1.25;
								push(ListUnitSetATB, itemCreatureAdd);
							  sleep(50);
							elseif TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
							  local strCreatureSummon = startThread(TTHCS_THREAD.summonCreature, iSide, itemCreatureEffect["iUnitType"], itemCreatureEffect["iUnitEffectNumber"], itemCreatureEffect["iPositionX"], itemCreatureEffect["iPositionY"]);
						    local itemCreatureSummon = geneUnitStatus(strCreatureSummon);
						  	itemCreatureSummon["iAtb"] = 1.25;
						  	push(ListUnitSetATB, itemCreatureSummon);
							  sleep(50);
							end;
							ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], strCreatureEffect, 5);
						end;
					end;
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener["Aislinn"]["function"] = Events_MiddlewareListener_Implement_Aislinn;

		-- Nimbus
			H55SMOD_MiddlewareListener["Nimbus"] = {};
			H55SMOD_MiddlewareListener["Nimbus"]["function"] = {};
			function Events_MiddlewareListener_Implement_Nimbus_Mana(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast["strUnitName"] ~= GetHero(iSide) then
					local strUnitName = itemUnitLast["strUnitName"];
					local iStep = 10;
					if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
					  iStep = 6;
					end;
					if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
					  iStep = 2;
					end;
					local iRecoveryMana = h55_ceil(H55SMOD_HeroLevel[strHero] / iStep);
					TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
					ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], GetHero(iSide), 5);
				end;
			end;
			H55SMOD_MiddlewareListener["Nimbus"]["function"]["mana"] = Events_MiddlewareListener_Implement_Nimbus_Mana;
			function Events_MiddlewareListener_Implement_Nimbus_Hero(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and GetHero(iSide) == itemUnit["strUnitName"] then
					combatSetPause(1);
					local strHero = GetHero(iSide);
					local iCurrentMana = GetUnitManaPoints(strHero);
					local iConvertMana = TTHCS_COMMON.floor(0.2 * iCurrentMana);
					if iConvertMana > 0 then
						TTHCS_GLOBAL.setHeroMana(iSide, iConvertMana * -1, TTHCS_ENUM.No);
						increaseContinuousChance(strHero, iConvertMana);
					end;
					TTHCS_GLOBAL.setManaRepeat();
					combatSetPause(nil);
				end;
			end;
			H55SMOD_MiddlewareListener["Nimbus"]["function"]["hero"] = Events_MiddlewareListener_Implement_Nimbus_Hero;

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

		-- Muscip 091 纳蒂尔
			H55SMOD_MiddlewareListener["Muscip"] = {};
			H55SMOD_MiddlewareListener["Muscip"]["function"] = {};
			function Events_MiddlewareListener_Implement_Muscip_Creature(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and iSide == itemUnit["iSide"] then
					if itemUnit["iUnitType"] == CREATURE_MANES or itemUnit["iUnitType"] == CREATURE_GHOST or itemUnit["iUnitType"] == CREATURE_POLTERGEIST then
						local iOppositeSide = getSide(iSide, 1);
						local iManaSteal = 0;
						local arrCreatureOpposite = GetCreatures(iOppositeSide);
						for i, strCreatureOpposite in arrCreatureOpposite do
							if TTHCS_GLOBAL.checkCombatCreature(strCreatureOpposite) == TTHCS_ENUM.Yes then
								local itemCreatureOpposite = TTHCS_GLOBAL.geneUnitInfo(strCreatureOpposite);
								if itemCreatureOpposite["CurrentMana"] >= 2 then
									SetUnitManaPoints(strCreatureOpposite, itemCreatureOpposite["CurrentMana"] - 2);
									iManaSteal = iManaSteal + 2;
								elseif itemCreatureOpposite["CurrentMana"] > 0 then
									SetUnitManaPoints(strCreatureOpposite, 0);
									iManaSteal = iManaSteal + itemCreatureOpposite["CurrentMana"];
								end;
							end;
						end;
						local strHeroOpposite = GetHero(iOppositeSide);
						if strHeroOpposite ~= nil then
							local itemHeroOpposite = TTHCS_GLOBAL.geneUnitInfo(strHeroOpposite);
							if itemHeroOpposite["CurrentMana"] >= 2 then
								SetUnitManaPoints(strHeroOpposite, OppositeSide["CurrentMana"] - 2);
								iManaSteal = iManaSteal + 2;
							elseif itemHeroOpposite["CurrentMana"] > 0 then
								SetUnitManaPoints(strHeroOpposite, 0);
								iManaSteal = iManaSteal + itemHeroOpposite["iMana"];
							end;
						end;
						if iManaSteal > 0 then
							TTHCS_GLOBAL.setHeroMana(iSide, iManaSteal, TTHCS_ENUM.Yes);
							ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnit["strUnitName"], 5);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Muscip"]["function"]["creature"] = Events_MiddlewareListener_Implement_Muscip_Creature;
			function Events_MiddlewareListener_Implement_Muscip_Summon(strHero, iSide, itemUnitLast, listCreatureSummon)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
					  if listCreatureSummon ~= nil and length(listCreatureSummon) > 0 then
							combatSetPause(1);
					  	for i, itemCreatureSummon in listCreatureSummon do
					  		if TTHCS_GLOBAL.checkCombatCreature(itemCreatureSummon["strUnitName"]) == TTHCS_ENUM.Yes then
									if itemCreatureSummon["iUnitType"] == CREATURE_MANES or itemCreatureSummon["iUnitType"] == CREATURE_GHOST or itemCreatureSummon["iUnitType"] == CREATURE_POLTERGEIST then
							  		itemCreatureSummon["iAtb"] = 1.25;
							  		push(ListUnitSetATB, itemCreatureSummon);
							  		if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
							  			local itemHero = geneUnitStatus(GetHero(iSide));
							  		  itemHero["iAtb"] = 1.25;
							  		  push(ListUnitSetATB, itemHero);
							  		end;
						  		end;
						  	end;
					  	end;
							combatSetPause(nil);
					  end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Muscip"]["function"]["summon"] = Events_MiddlewareListener_Implement_Muscip_Summon;

		-- Arantir 092 阿兰蒂尔
			H55SMOD_MiddlewareListener["Arantir"] = {};
			H55SMOD_MiddlewareListener["Arantir"]["creture"] = "";
			function Events_MiddlewareListener_Implement_Arantir(strHero, iSide, itemUnit)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit["strUnitName"] == GetHero(iSide) then
					if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
						combatSetPause(1);
						local strCaster = itemUnit["strUnitName"];
						if H55SMOD_MiddlewareListener[strHero]["creture"] == "" then
							TTHCS_THREAD.castGlobalSpell(strCaster, SPELL_ABILITY_AVATAR_OF_DEATH);
							H55SMOD_MiddlewareListener[strHero]["creture"] = GetCreatures(iSide)[length(GetCreatures(iSide)) - 1];
							itemUnit["iAtb"] = 1.25;
							push(ListUnitSetATB, itemUnit);
						else
							if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
								local strCreature = H55SMOD_MiddlewareListener[strHero]["creture"];
								if TTHCS_GLOBAL.checkCombatCreature(strCreature) == TTHCS_ENUM.No then
									TTHCS_THREAD.castGlobalSpell(strCaster, SPELL_ABILITY_AVATAR_OF_DEATH);
									H55SMOD_MiddlewareListener[strHero]["creture"] = GetCreatures(iSide)[length(GetCreatures(iSide)) - 1];
									itemUnit["iAtb"] = 1.25;
									push(ListUnitSetATB, itemUnit);
								end;
							end;
						end;
        		combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Arantir"]["function"] = Events_MiddlewareListener_Implement_Arantir;

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
			H55SMOD_MiddlewareListener["Maximus"] = {};
			function Events_MiddlewareListener_Implement_Maximus(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero then
					local strBallista = GetWarMachine(iSide, WAR_MACHINE_BALLISTA);
					if strBallista ~= nil then
						local objCreatureEffected = nil;
						if length(listCreaturesBeEffected) ~= 0 then
							objCreatureEffected = listCreaturesBeEffected[0];
						end;
						if length(listCreaturesDeath) ~= 0 then
							objCreatureEffected = listCreaturesDeath[0];
						end;
						if objCreatureEffected ~= nil then
							local listPositionEffected = {};
							local iSideX = 0;
							if iSide == ENUM_SIDE.ATTACKER then
								iSideX = 1;
							else
								iSideX = -1;
							end;
							for iDiffY = 1, 4 do
								for iDiffX = -1 * iDiffY, 1 * iDiffY do
									listPositionEffected = push(listPositionEffected, {
										["PosX"] = objCreatureEffected["iPositionX"] + iDiffY * iSideX
										, ["PosY"] = objCreatureEffected["iPositionY"] + iDiffX
									});
								end;
							end;
							local arrCreatureEffected = {};
							local arrCreature = GetCreatures(iOppositeSide);
							for i, objPosition in listPositionEffected do
								for j, strCreature in arrCreature do
									if contains(arrCreatureEffected, strCreature) == nil
										and TTHCS_COMMON.isEffectUnit(strCreature, objPosition["PosX"], objPosition["PosY"]) == TTHCS_ENUM.Yes then
										arrCreatureEffected = push(arrCreatureEffected, strCreature);
									end;
								end;
							end;
							if arrCreatureEffected ~= nil and length(arrCreatureEffected) > 0 then
								combatSetPause(1);
								local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureEffected));
								local strCreatureEffect = arrCreatureEffected[iRandomIndex];
								if TTHCS_GLOBAL.checkCombatCreature(strCreatureEffect) == TTHCS_ENUM.Yes then
									startThread(TTHCS_THREAD.unitShoot, strBallista, strCreatureEffect);
									print(strBallista.." flamewave to "..strCreatureEffect);
									sleep(20);
								end;
								if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
									if TTHCS_GLOBAL.checkCombatCreature(strCreatureEffect) == TTHCS_ENUM.Yes then
										startThread(TTHCS_THREAD.unitShoot, strBallista, strCreatureEffect);
										print(strBallista.." flamewave to "..strCreatureEffect);
										sleep(20);
									end;
								end;
								if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
									for i, strCreature in arrCreatureEffected do
										if TTHCS_GLOBAL.checkCombatCreature(strCreature) == TTHCS_ENUM.Yes then
											startThread(TTHCS_THREAD.unitShoot, strBallista, strCreature);
											print(strBallista.." flamewave to "..strCreature);
											sleep(20);
										end;
									end;
								end;
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Maximus"]["function"] = Events_MiddlewareListener_Implement_Maximus;

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
		-- Thralsai
			H55SMOD_MiddlewareListener["Thralsai"] = {};
			function Events_MiddlewareListener_Implement_Thralsai(strHero, iSide, itemUnitLast, listCreaturesMoved)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast ~= nil and itemUnitLast["strUnitName"] == GetHero(iSide) then
					local iLenCreaturesMoved = length(listCreaturesMoved);
					if iLenCreaturesMoved == 1 then
						local itemUnitMoved = listCreaturesMoved[0];
						local objUnitPost = TTHCS_GLOBAL.geneUnitInfo(itemUnitMoved["strUnitName"]);
						local iNumber8CreatureNumber = objUnitPost["UnitNumber"];
						local iNumberSummon = TTHCS_COMMON.floor(iNumber8CreatureNumber * H55SMOD_HeroLevel[strHero] / 100);
						if iNumberSummon < 1 then
							iNumberSummon = 1;
						end;
						if IsCombatUnit(itemUnitMoved["strUnitName"]) ~= nil and GetCreatureNumber(itemUnitMoved["strUnitName"]) > 0 then
							combatSetPause(1);
							startThread(ThreadCommandDisplace, itemUnitMoved["strUnitName"], itemUnitMoved["iPositionX"], itemUnitMoved["iPositionY"]);
							sleep(20);
							Thread_Command_SummonCreature(iSide, objUnitPost["UnitType"], iNumberSummon, objUnitPost["PosX"], objUnitPost["PosY"]);
							sleep(20);
							print("Summon "..objUnitPost["UnitName"].."\'s phantom at "..objUnitPost["PosX"].."-"..objUnitPost["PosY"]);
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Thralsai"]["function"] = Events_MiddlewareListener_Implement_Thralsai;

		-- Almegir
			H55SMOD_MiddlewareListener['Almegir'] = {};
			function Events_MiddlewareListener_Implement_Almegir(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast['strUnitName'] == GetHero(iSide) then
					local iRecoveryMana = 1 + h55_floor(H55SMOD_HeroLevel[strHero] / 6);
					TTHCS_GLOBAL.setHeroMana(iSide, iRecoveryMana, TTHCS_ENUM.Yes);
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
							local strCreatureAim = Thread_Command_AddCreature(iSide, CREATURE_DUNGEON_TOOL, 1, itemCreatureTarget['iPositionX'], itemCreatureTarget['iPositionY']);
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

		-- Ohtarig
			H55SMOD_MiddlewareListener["Ohtarig"] = {};
			function Events_MiddlewareListener_Implement_Ohtarig(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				local itemCreatureBeEffected = listCreaturesBeEffected[0];
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iOppositeSide) ~= nil and GetHeroName(GetHero(iOppositeSide)) == strHero and iOppositeSide == itemUnitLast["iSide"] then
					local itemCreatureAttack = geneUnitStatus(itemUnitLast["strUnitName"]);
					if itemUnitLast["iUnitNumber"] == itemCreatureAttack["iUnitNumber"] then
						if (iOppositeSide == ENUM_SIDE.ATTACKER and itemCreatureAttack["iPositionX"] - itemCreatureBeEffected["iPositionX"] >= 1)
							or (iOppositeSide == ENUM_SIDE.DEFENDER and itemCreatureAttack["iPositionX"] - itemCreatureBeEffected["iPositionX"] <= -1 * TTHCS_TABLE.Creature[itemCreatureBeEffected["iUnitType"]]["CombatSize"]) then
							combatSetPause(1);
							startThread(Thread_Command_UnitAttackAimed, itemCreatureAttack["strUnitName"], itemCreatureBeEffected["strUnitName"]);
							print(itemCreatureAttack["strUnitName"].." attack to "..itemCreatureBeEffected["strUnitName"]);
							ShowFlyingSign(TTHCS_PATH["Talent"]["Ohtarig"]["Effect"], itemCreatureAttack["strUnitName"], 5);
							sleep(20);
							combatSetPause(nil);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Ohtarig"]["function"] = Events_MiddlewareListener_Implement_Ohtarig;

		-- Menel
			H55SMOD_MiddlewareListener["Menel"] = {};
			function Events_MiddlewareListener_Implement_Menel(strHero, iSide, itemUnitLast, listCreaturesBeEffected, listCreaturesDeath)
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iOppositeSide) ~= nil and GetHeroName(GetHero(iOppositeSide)) == strHero and iOppositeSide == itemUnitLast["iSide"] then
					if itemUnitLast["iUnitType"] == CREATURE_MINOTAUR or itemUnitLast["iUnitType"] == CREATURE_MINOTAUR_KING or itemUnitLast["iUnitType"] == CREATURE_MINOTAUR_CAPTAIN then
						local arrCreatureFriend = GetCreatures(iOppositeSide);
						local arrSortedCreatureFriend = sortListByCreature(arrCreatureFriend, "iPositionX");
						if length(arrSortedCreatureFriend) > 1 then
							if iOppositeSide == ENUM_SIDE.ATTACKER then
								if itemUnitLast["strUnitName"] == arrSortedCreatureFriend[length(arrSortedCreatureFriend) - 1]
									and geneUnitStatus(arrSortedCreatureFriend[length(arrSortedCreatureFriend) - 1])["iPositionX"] > geneUnitStatus(arrSortedCreatureFriend[length(arrSortedCreatureFriend) - 2])["iPositionX"] then
									combatSetPause(1);
									ShowFlyingSign(TTHCS_PATH["Talent"]["Menel"]["Effect"], itemUnitLast["strUnitName"], 5);
									for i, strCreatureFriend in arrCreatureFriend do
										if strCreatureFriend ~= itemUnitLast["strUnitName"] then
											local itemCreatureFriend = geneUnitStatus(strCreatureFriend);
											itemCreatureFriend["iAtb"] = 1.25;
											push(ListUnitSetATB, itemCreatureFriend);
										end;
									end;
									combatSetPause(nil);
								end;
							else
								if itemUnitLast["strUnitName"] == arrSortedCreatureFriend[0]
									and geneUnitStatus(arrSortedCreatureFriend[0])["iPositionX"] < geneUnitStatus(arrSortedCreatureFriend[1])["iPositionX"] then
									combatSetPause(1);
									ShowFlyingSign(TTHCS_PATH["Talent"]["Menel"]["Effect"], itemUnitLast["strUnitName"], 5);
									for i, strCreatureFriend in arrCreatureFriend do
										if strCreatureFriend ~= itemUnitLast["strUnitName"] then
											local itemCreatureFriend = geneUnitStatus(strCreatureFriend);
											itemCreatureFriend["iAtb"] = 1.25;
											push(ListUnitSetATB, itemCreatureFriend);
										end;
									end;
									combatSetPause(nil);
								end;
							end;							
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Menel"]["function"] = Events_MiddlewareListener_Implement_Menel;

		-- Ferigl
			H55SMOD_MiddlewareListener["Ferigl"] = {};
			H55SMOD_MiddlewareListener["Ferigl"]["flag"] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_Ferigl(strHero, iSide, itemUnitLast, iLossManaPoints)
				if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnitLast["strUnitName"] == GetHero(iSide) then
					local iOppositeSide = getSide(iSide, 1);
					if iLossManaPoints > 0 then
						combatSetPause(1);
						local arrCreaturesOpposite = GetCreatures(iOppositeSide);
						for i, strCreatureOpposite in arrCreaturesOpposite do
							local itemCreatureOpposite = TTHCS_GLOBAL.geneUnitInfo(strCreatureOpposite);
							local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureOpposite["UnitName"], 1, iOppositeSide);
							local bExist = TTHCS_ENUM.No;
							for j, strCreatureNearBy in arrCreatureNearBy do
								local itemCreatureNearBy = TTHCS_GLOBAL.geneUnitInfo(strCreatureNearBy);
								if itemCreatureNearBy["UnitType"] == CREATURE_RIDER
									or itemCreatureNearBy["UnitType"] == CREATURE_RAVAGER
									or itemCreatureNearBy["UnitType"] == CREATURE_BLACK_RIDER then
									bExist = TTHCS_ENUM.Yes;
									break;
								end;
							end;
							if bExist == TTHCS_ENUM.Yes then
								if TTHCS_GLOBAL.checkCombatCreature(strCreatureOpposite) == TTHCS_ENUM.Yes then
									local strCreatureCaster = TTHCS_THREAD.addCreature(iSide, CREATURE_DUNGEON_TOOL, 1, itemCreatureOpposite["PosX"], itemCreatureOpposite["PosY"]);
									if TTHCS_GLOBAL.checkCombatCreature(strCreatureCaster) == TTHCS_ENUM.Yes then
										ShowFlyingSign(TTHCS_PATH["Talent"]["Ferigl"]["Effect"], strCreatureCaster, 5);
										startThread(TTHCS_THREAD.unitAttack, strCreatureCaster, strCreatureOpposite);
										sleep(50);
										TTHCS_THREAD.removeCreature(strCreatureCaster);
									end;
								end;
							end;
						end;
						combatSetPause(nil);
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Ferigl"]["function"] = Events_MiddlewareListener_Implement_Ferigl;

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
					local bExistDemonRage = 0;
					local arrCreature4Hero = GetCreatures(iSide);
					for i, strUnitName in arrCreature4Hero do
						if bExistDemonRage == 0 and contains(List_DemonRage_Creatures, GetCreatureType(strUnitName)) ~= nil then
							bExistDemonRage = 1;
						end;
					end
					if bExistDemonRage == 1 then
						combatSetPause(1);
						startThread(Thread_Command_UnitCastGlobalSpell, GetHero(iSide), SPELL_WARCRY_BATTLECRY, 1);
						sleep(20);
						print(strHero.." casted SPELL_WARCRY_BATTLECRY");
						combatSetPause(nil);
					end;
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
			H55SMOD_Start["Kraal"] = {};
			H55SMOD_Start["Kraal"]["flag"] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_Start_Implement_Kraal(strHero, iSide)
				local iLinkUnitType = H55SMOD_HeroAbility[strHero];
				if iLinkUnitType ~= 0 then
					local listLinkCreature = {};
					local arrCreature = GetCreatures(iSide);
					for i, strCreature in arrCreature do
						local objCreature = TTHCS_GLOBAL.geneUnitInfo(strCreature);
						if objCreature["UnitType"] == iLinkUnitType then
							listLinkCreature = push(listLinkCreature, objCreature);
						end;
					end;
					if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] ~= 1 then
						H55SMOD_MiddlewareListener["Kraal"]["flag"][0] = TTHCS_COMMON.max8key(listLinkCreature, "UnitNumber");
					else
						H55SMOD_MiddlewareListener["Kraal"]["flag"] = listLinkCreature;
					end;
				end;
			end;
			H55SMOD_Start["Kraal"]["function"] = Events_Start_Implement_Kraal;
			H55SMOD_MiddlewareListener["Kraal"] = {};
			H55SMOD_MiddlewareListener["Kraal"]["flag"] = {};
			function Events_MiddlewareListener_Implement_Kraal(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
				local iOppositeSide = getSide(iSide, 1);
				if GetHero(iOppositeSide) ~= nil and GetHeroName(GetHero(iOppositeSide)) == strHero and iOppositeSide == itemUnitLast["iSide"] then
					local strBallista = GetWarMachine(iOppositeSide, WAR_MACHINE_BALLISTA);
					if strBallista ~= nil then
						local bCheck = TTHCS_ENUM.No;
						for i, objCreatureLink in H55SMOD_MiddlewareListener["Kraal"]["flag"] do
							if itemUnitLast["strUnitName"] == objCreatureLink["UnitName"] then
								for j, objCreatureEffect in listCreaturesBeEffected do
									local strCreatureEffect = objCreatureEffect["strUnitName"];
									if TTHCS_GLOBAL.checkCombatCreature(strCreatureEffect) == TTHCS_ENUM.Yes then
										startThread(TTHCS_THREAD.unitShoot, strBallista, strCreatureEffect);
										bCheck = TTHCS_ENUM.Yes;
										print(strBallista.." link shoot to "..strCreatureEffect);
										sleep(20);
									end;
								end;
								break;
							end;
						end;
						if bCheck == TTHCS_ENUM.Yes then
							if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iOppositeSide] == 1 then
								local itemBallista = geneUnitStatus(strBallista);
								itemBallista["iAtb"] = 1.25;
								push(ListUnitSetATB, itemBallista);
							end;
							ShowFlyingSign(TTHCS_PATH["Talent"]["Kraal"]["Effect"], strBallista, 5);
						end;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Kraal"]["function"] = Events_MiddlewareListener_Implement_Kraal;

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

		-- Matewa
			H55SMOD_MiddlewareListener["Matewa"] = {};
			H55SMOD_MiddlewareListener["Matewa"]["flag"] = ENUM_STAGE.ONCE.UNEXECUTE;
			function Events_MiddlewareListener_Implement_Matewa(strHero, iSide, itemUnit)
				if H55SMOD_MiddlewareListener["Matewa"]["flag"] == ENUM_STAGE.ONCE.UNEXECUTE then
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHero and itemUnit["strUnitName"] == GetHero(iSide) then
						local strCaster = itemUnit["strUnitName"];
						TTHCS_THREAD.castGlobalSpell(strCaster, SPELL_WARCRY_BATTLECRY);
						itemUnit["iAtb"] = 1.25;
						push(ListUnitSetATB, itemUnit);
						H55SMOD_MiddlewareListener[strHero]["flag"] = ENUM_STAGE.ONCE.EXECUTED;
					end;
				end;
			end;
			H55SMOD_MiddlewareListener["Matewa"]["function"] = Events_MiddlewareListener_Implement_Matewa;

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
		function Events_MiddlewareListener_Implement_Cherubin(strHero, iSide, itemUnitLast)
			if itemUnitLast['iUnitType'] == CREATURE_CHERUBIN
				and itemUnitLast['iSide'] == iSide then
				if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
					combatSetPause(1);
					local iMagicIndex = H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'];
					local objMagicId = TTHCS_TABLE.CherubinMagic[iMagicIndex];
					local iMagicId = objMagicId["Id"];
					local enumMagicType = objMagicId["Type"];
					startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemUnitLast['strUnitName'], iMagicId);
					-- sleep(10);
					H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] = H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] + 1;
					if H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] > 3 then
						H55SMOD_MiddlewareListener['Cherubin']['MagicIndex'] = 1;
					end;
					-- itemUnitLast['iAtb'] = 1.25;
					-- push(ListUnitSetATB, itemUnitLast);
					print(itemUnitLast['strUnitName'].." cast "..iMagicId);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Cherubin']['function'] = Events_MiddlewareListener_Implement_Cherubin;

	-- CREATURE_DRAGON_KNIGHT 暗黑龙骑士
		H55SMOD_MiddlewareListener['DragonKnight'] = {};
		H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] = 1;
		function Events_MiddlewareListener_Implement_DragonKnight(strHero, iSide, itemUnitLast)
			if itemUnitLast['iUnitType'] == CREATURE_DRAGON_KNIGHT
				and itemUnitLast['iSide'] == iSide then
				if IsCombatUnit(itemUnitLast['strUnitName']) ~= nil and itemUnitLast['iUnitNumber'] > 0 then
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
						startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemUnitLast['strUnitName'], iMagicId);
						-- Thread_Command_UnitCastGlobalSpell_IgnoreMana(itemUnitLast['strUnitName'], iMagicId);
					end;
					-- sleep(10);
					H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] = H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] + 1;
					if H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] > 3 then
						H55SMOD_MiddlewareListener['DragonKnight']['MagicIndex'] = 1;
					end;
					-- itemUnitLast['iAtb'] = 1.25;
					-- push(ListUnitSetATB, itemUnitLast);
					print(itemUnitLast['strUnitName'].." cast "..iMagicId);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['DragonKnight']['function'] = Events_MiddlewareListener_Implement_DragonKnight;

	-- CREATURE_JUSTICAR 阿斯塔特修士
		H55SMOD_MiddlewareListener['Justicar'] = {};
		function Events_MiddlewareListener_Implement_Justicar(strHero, iSide, itemUnitLast, listCreaturesBeEffected)
			if listCreaturesBeEffected ~= nil and length(listCreaturesBeEffected) > 0 then
				if (itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.HERO and contains(TTHCS_TABLE.JusticarTargetHero, itemUnitLast['iUnitType']) ~= nil)
					or (itemUnitLast['iUnitCategory'] == ENUM_CATEGORY.CREATURE and contains(TTHCS_TABLE.JusticarTargetCreature, itemUnitLast['iUnitType']) ~= nil) then
					for iCast, itemUnitCast in listCreaturesBeEffected do
						local strUnitCast = itemUnitCast['strUnitName'];
						if IsCombatUnit(strUnitCast) ~= nil and GetCreatureNumber(strUnitCast) > 0 then
							local itemUnitCast = geneUnitStatus(strUnitCast);
							if itemUnitCast['iUnitType'] == CREATURE_JUSTICAR then
								combatSetPause(1);
								startThread(Thread_Command_UnitCastGlobalSpell_IgnoreMana, itemUnitCast['strUnitName'], SPELL_HOLY_WORD);
								ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_JUSTICAR]["EffectHolyWord"], itemUnitCast['strUnitName'], 5);
								print(itemUnitCast['strUnitName'].." cast "..SPELL_HOLY_WORD);
								sleep(30);
								local iAtb = 1.25;
								itemUnitCast['iAtb'] = iAtb;
								push(ListUnitSetATB, itemUnitCast);
								print(itemUnitCast['strUnitName'].." increase atb to "..iAtb);
								combatSetPause(nil);
							end;
						end;
					end;
				end;
			end;
		end;
		H55SMOD_MiddlewareListener['Justicar']['function'] = Events_MiddlewareListener_Implement_Justicar;

	-- CREATURE_LEGATE 圣血剑士
		H55SMOD_MiddlewareListener["Legate"] = {};
		function Events_MiddlewareListener_Implement_Legate(strHero, iSide, itemUnitLast)
			if itemUnitLast["iUnitType"] == CREATURE_LEGATE	and itemUnitLast["iSide"] == iSide then
				if IsCombatUnit(itemUnitLast["strUnitName"]) ~= nil and itemUnitLast["iUnitNumber"] > 0 then
					combatSetPause(1);
					local itemUnitCurrent = geneUnitStatus(itemUnitLast["strUnitName"]);
					local iOppositeSide = getSide(iSide, 1);
					local itemCreatureCaster = Thread_Command_AddCreature(iOppositeSide, CREATURE_LEGATE_SHADOW, 1, itemUnitCurrent["iPositionX"], itemUnitCurrent["iPositionY"]);
					repeat sleep(1); until (itemCreatureCaster ~= nil and IsCombatUnit(itemCreatureCaster) ~= nil);
					print(itemCreatureCaster.." casted curse to "..itemUnitLast["strUnitName"]);
					ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_LEGATE]["Effect"], itemCreatureCaster, 5);
					sleep(20);
					startThread(Thread_Command_UnitAttackAimed, itemCreatureCaster, itemUnitLast["strUnitName"]);
					sleep(30);
					startThread(Thread_Command_RemoveCombatUnit_Uncheck, itemCreatureCaster);
					sleep(20);
					combatSetPause(nil);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["Legate"]["function"] = Events_MiddlewareListener_Implement_Legate;

	-- CREATURE_DEATH_KNIGHT 死亡骑士
		H55SMOD_MiddlewareListener["DeathKnight"] = {};
		function Events_MiddlewareListener_Implement_DeathKnight(iSide, itemUnit)
			local strUnitName = itemUnit["strUnitName"];
			if GetUnitSide(strUnitName) == iSide then
				if itemUnit["iUnitType"] == CREATURE_DEATH_KNIGHT then
					local iChance = 12.5;
					local strHeroLordHaart = "LordHaart";
					if GetHero(iSide) ~= nil and GetHeroName(GetHero(iSide)) == strHeroLordHaart then
						iChance = 25;
						if TTH_SKILL_UPGRADE_MASTERY_COMBAT_HERO[iSide] == 1 then
							iChance = 37.5;
						end;
						if TTH_SKILL_UPGRADE_SHANTIRI_COMBAT_HERO[iSide] == 1 then
							iChance = 50;
						end;
					end;
					increaseContinuousChance(strUnitName, iChance);
				end;
			end;
		end;
		H55SMOD_MiddlewareListener["DeathKnight"]["function"] = Events_MiddlewareListener_Implement_DeathKnight;

-- 召唤整合
	H55SMOD_MiddlewareListener["Summon"] = {};
	H55SMOD_MiddlewareListener["Summon"]["Creature"] = {};
	TTHCS_TABLE.ElementCreature = { CREATURE_FIRE_ELEMENTAL, CREATURE_WATER_ELEMENTAL, CREATURE_EARTH_ELEMENTAL, CREATURE_AIR_ELEMENTAL };
	function Events_MiddlewareListener_Implement_Summon(iSide, itemUnitLast, listSummonCreature)
		if GetHero(iSide) ~= nil then
			local objHero = geneUnitStatus(GetHero(iSide));
			local strHero = objHero["iUnitType"];
			local iAppointedCreatureId = 0;
			if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRE_AFFINITY] ~= nil then
				iAppointedCreatureId = TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_FIRE_AFFINITY] + 0;
			end;
			if iAppointedCreatureId > 0 and itemUnitLast["iSide"] == iSide and itemUnitLast["iUnitCategory"] == ENUM_CATEGORY.HERO then
				if listSummonCreature ~= nil and length(listSummonCreature) > 0 then
					combatSetPause(1);
					-- 过滤生物数量
						local listSummonCreature4Number = {};
						for i, objSummonCreature in listSummonCreature do
							if objSummonCreature["iUnitNumber"] > 1 then
								push(listSummonCreature4Number, objSummonCreature);
							end;
						end;
					-- 过滤生物类型
						local listSummonCreature4Type = {};
						for i, objSummonCreature in listSummonCreature4Number do
							if contains(TTHCS_TABLE.ElementCreature, objSummonCreature["iUnitType"]) ~= nil then
								push(listSummonCreature4Type, objSummonCreature);
							end;
						end;
					-- 过滤元素大师英雄特技的召唤生物
						local listSummonCreature4Spec = {};
						for i, objSummonCreature in listSummonCreature4Type do
							local bMatch = 0;
							for j, objBeforeLastTurnCreature in ObjSnapshotBeforeLastTurn["Creatures"][iSide] do
								if objSummonCreature["iPositionX"] == objBeforeLastTurnCreature["iPositionX"] and objSummonCreature["iPositionY"] == objBeforeLastTurnCreature["iPositionY"] then
									bMatch = 1;
									break;
								end;
							end;
							if bMatch == 0 then
								push(listSummonCreature4Spec, objSummonCreature);
							end;
						end;
					-- 过滤镜像元素生物
						local listSummonCreature4Phantom = {};
						for i, objSummonCreature in listSummonCreature4Spec do
							local bMatch = 0;
							for j, objBeforeLastTurnCreature in ObjSnapshotBeforeLastTurn["Creatures"][iSide] do
								if (objSummonCreature["iPositionX"] - objBeforeLastTurnCreature["iPositionX"] <= 1
									or objSummonCreature["iPositionX"] - objBeforeLastTurnCreature["iPositionX"] >= -1)
									and (objSummonCreature["iPositionY"] - objBeforeLastTurnCreature["iPositionY"] <= 1
										or objSummonCreature["iPositionY"] - objBeforeLastTurnCreature["iPositionY"] >= -1)
									and objSummonCreature["iUnitType"] == objBeforeLastTurnCreature["iUnitType"]
									and objSummonCreature["iUnitNumber"] == objBeforeLastTurnCreature["iUnitNumber"]
								then
									bMatch = 1;
									break;
								end;
							end;
							if bMatch == 0 then
								push(listSummonCreature4Phantom, objSummonCreature);
							end;
						end;
					-- 移除原元素召唤生物
						if length(listSummonCreature4Phantom) > 0 and H55SMOD_MiddlewareListener["Summon"]["Creature"][iSide] ~= nil then
							Thread_Command_RemoveCombatUnit_Check(H55SMOD_MiddlewareListener["Summon"]["Creature"][iSide]["strUnitName"]);
						end;

					for i, objSummonCreature in listSummonCreature4Phantom do
						if objSummonCreature["iUnitType"] ~= iAppointedCreatureId then
							Thread_Command_RemoveCombatUnit_Check(objSummonCreature["strUnitName"]);
							local strAppointedCreature = Thread_Command_SummonCreature(iSide, iAppointedCreatureId, objSummonCreature["iUnitNumber"], objSummonCreature["iPositionX"], objSummonCreature["iPositionY"]);
							local objAppointedCreature = geneUnitStatus(strAppointedCreature);
							if strHero == "Kastore" then
								if H55SMOD_MiddlewareListener["Summon"]["Creature"][iSide] == nil then
									if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MASTER_OF_ICE] == 1 then
										Thread_Command_SummonCreature(iSide, CREATURE_WATER_ELEMENTAL, TTHCS_COMMON.ceil(H55SMOD_HeroLevel[strHero] / 3), objSummonCreature["iPositionX"], objSummonCreature["iPositionY"]);
									end;
									if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MASTER_OF_FIRE] == 1 then
										Thread_Command_SummonCreature(iSide, CREATURE_FIRE_ELEMENTAL, TTHCS_COMMON.ceil(H55SMOD_HeroLevel[strHero] / 3), objSummonCreature["iPositionX"], objSummonCreature["iPositionY"]);
									end;
									if TTH_SKILL_EFFECT_COMBAT_HERO[iSide][HERO_SKILL_MASTER_OF_LIGHTNINGS] == 1 then
										Thread_Command_SummonCreature(iSide, CREATURE_AIR_ELEMENTAL, TTHCS_COMMON.ceil(H55SMOD_HeroLevel[strHero] / 3), objSummonCreature["iPositionX"], objSummonCreature["iPositionY"]);
									end;
								end;
							end;
							H55SMOD_MiddlewareListener["Summon"]["Creature"][iSide] = objAppointedCreature;
							if strHero == "Zehir" then
								objAppointedCreature["iAtb"] = 0.4 + H55SMOD_HeroLevel[strHero] * 0.02;
								push(ListUnitSetATB, objAppointedCreature);
							end;
						end;
					end;
					combatSetPause(nil);
				end;
			end;
		end;
	end;
	H55SMOD_MiddlewareListener["Summon"]["function"] = Events_MiddlewareListener_Implement_Summon;

-- 单位连动
	H55SMOD_MiddlewareListener["Continuous"] = {};
	H55SMOD_MiddlewareListener["Continuous"]["Chance"] = {};
	function Events_MiddlewareListener_Implement_Continuous(itemUnitLast)
		local strUnitName = itemUnitLast["strUnitName"];
		if IsCombatUnit(strUnitName) == nil then
			return nil;
		end;
		local iChance = H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName];
		if iChance ~= nil and iChance > 0 then
			combatSetPause(1);
			if TTHCS_COMMON.getRandom(100) <= iChance then
				if iChance < 100 then
					iChance = 0;
				else
					iChance = iChance - 100;
				end;
				H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName] = iChance;
				itemUnitLast["iAtb"] = 1.25;
				push(ListUnitSetATB, itemUnitLast);
				print(strUnitName.." continuous");
				sleep(20);
				ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect"], strUnitName, 5);
			end;
			showMessage4ContinuousChance(strUnitName, iChance);
			combatSetPause(nil); 
		end;
	end;
	H55SMOD_MiddlewareListener["Continuous"]["function"] = Events_MiddlewareListener_Implement_Continuous;
	function increaseContinuousChance(strUnitName, iChance)
		local objUnit = TTHCS_GLOBAL.geneUnitInfo(strUnitName);
		if objUnit["UnitType"] == "Zydar" then
			iChance = iChance * 1.5;
		end;
		if H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName] == nil then
			H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName] = 0;
		end;
		H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName] = H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName] + iChance;
		showMessage4ContinuousChance(strUnitName, H55SMOD_MiddlewareListener["Continuous"]["Chance"][strUnitName]);
	end;
	function showMessage4ContinuousChance(strUnitName, iChance)
		if iChance == 0 then
		elseif iChance <= 5 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect005"], strUnitName, 5);
		elseif iChance <= 10 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect010"], strUnitName, 5);
		elseif iChance <= 15 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect015"], strUnitName, 5);
		elseif iChance <= 20 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect020"], strUnitName, 5);
		elseif iChance <= 25 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect025"], strUnitName, 5);
		elseif iChance <= 30 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect030"], strUnitName, 5);
		elseif iChance <= 35 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect035"], strUnitName, 5);
		elseif iChance <= 40 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect040"], strUnitName, 5);
		elseif iChance <= 45 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect045"], strUnitName, 5);
		elseif iChance <= 50 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect050"], strUnitName, 5);
		elseif iChance <= 55 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect055"], strUnitName, 5);
		elseif iChance <= 60 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect060"], strUnitName, 5);
		elseif iChance <= 65 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect065"], strUnitName, 5);
		elseif iChance <= 70 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect070"], strUnitName, 5);
		elseif iChance <= 75 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect075"], strUnitName, 5);
		elseif iChance <= 80 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect080"], strUnitName, 5);
		elseif iChance <= 85 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect085"], strUnitName, 5);
		elseif iChance <= 90 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect090"], strUnitName, 5);
		elseif iChance <= 95 then
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect095"], strUnitName, 5);
		else
			ShowFlyingSign(TTHCS_PATH["Continuous"]["Effect100"], strUnitName, 5);
		end;
	end;

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

print("All functions started");


doFile("/scripts/support/hanqing-combat.lua");







