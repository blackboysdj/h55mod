--作者: 琳星之守护
--QQ群: 241244439
--微信公众号: 无策略不单机

doFile("/scripts/H55-Settings.lua");

-- TTH环境
	-- 赞助
		TTH_SUPPORT = {};

		-- 寒卿娜瑞莎
			function TTH_SUPPORT.dealIldar(iPlayer, strHero)
			end;

	-- 变量
		TTH_VARI = {};

		TTH_VARI.talent = {};
		TTH_VARI.artifact = {};
		TTH_VARI.perk = {};

		TTH_VARI.luck4Hero = {};
		TTH_VARI.townSkillManage = ""; -- 在城门使用主动技能时记录城镇

		-- 日期
			TTH_VARI.month = 1;
			TTH_VARI.week = 1;
			TTH_VARI.absoluteWeek = 1;
			TTH_VARI.day = 1;
			TTH_VARI.dayOfWeek = 1;

		-- 地图建筑
			TTH_VARI.arrTown = {};
			TTH_VARI.arrBuilding = {};

		-- 政绩加成
			TTH_VARI.arrRecordPoint = {};

		TTH_VARI.playerStatus = {0, 0, 0, 0, 0, 0, 0, 0}; -- 0: human; 1: ai; 2: non-exist
		TTH_VARI.playerFaction = {0, 0, 0, 0, 0, 0, 0, 0}; -- 1: HEAVEN; 2: PRESERVE; 3: INFERNO; 4: NECROMANCY; 5: ACADEMY; 6: DUNGEON; 7: FORTRESS; 8: STRONGHOLD
		TTH_VARI.arrPathNavigation = {};
		TTH_VARI.arrPathArrow = {};
		TTH_VARI.switchSingleton = 0; -- 启动器单例模式
		TTH_VARI.isMultiPlayer = TTH_ENUM.No; -- 是否多人游戏

	-- common
		TTH_COMMON = {};

		-- 记录全局变量，多人游戏时通过控制台语句录入
			function TTH_COMMON.consoleSetGameVar(strParam, strValue)
				if GetGameVar(strParam) ~= (strValue .. "") then
					SetGameVar(strParam, strValue);
					if TTH_VARI.isMultiPlayer == TTH_ENUM.Yes then
						consoleCmd("@SetGameVar('"..strParam.."', '"..strValue.."')")
					end;
				end;
			end;

		-- 是否字符串
			function TTH_COMMON.isString(param)
				return param .. "" == param;
			end;

		-- 通过方法名执行方法
			function TTH_COMMON.parse(...)
				local iParamCount = arg["n"];
				local strFuncName = arg[1];
				local strParam = "";
				if iParamCount > 1 then
					for i = 2, iParamCount do
						if TTH_COMMON.isString(arg[i]) then
							strParam = strParam..TTH_COMMON.psp(arg[i]);
						else
							strParam = strParam..arg[i];
						end;
						if i ~= iParamCount then
							strParam = strParam..",";
						end;
					end;
				end;
				parse(strFuncName.."("..strParam..")")();
			end;

		-- 为该类型对象设置触发器
			function TTH_COMMON.setTrigger2ObjectType(strObjectType, enumTriggerType, funcHandler, bPrevent)
		    local arrObject = GetObjectNamesByType(strObjectType);
		    for iIndex, objItem in arrObject do
	        SetTrigger(enumTriggerType, objItem, funcHandler);
	        if bPrevent == nil then
	           SetObjectEnabled(objItem, nil);
	        end;
		    end;
			end;

		-- 数值
			-- 四舍五入
				function TTH_COMMON.round(fNumber)
					if fNumber < 0 then
						return 0;
					end;
					local fOffset = mod(fNumber, 1);
					local iResult = fNumber - fOffset;
					if fOffset >= 0.5 then
						iResult = iResult + 1;
					end;
					return iResult;
				end;

			-- 降位
				function TTH_COMMON.floor(fNumber)
					if fNumber < 0 then
						return 0;
					end;
					local fOffset = mod(fNumber, 1);
					local iResult = fNumber - fOffset;
					return iResult;
				end;

			-- 进位
				function TTH_COMMON.ceil(fNumber)
					if fNumber < 0 then
						return 0;
					end;
					local fOffset = mod(fNumber, 1);
					local iResult = fNumber - fOffset;
					if fOffset ~= 0 then
						iResult = iResult + 1;
					end;
					return iResult;
				end;

		-- 数组
			-- 在数组末尾插入一个对象: push
				function TTH_COMMON.push(arr, objTarget)
					if arr == nil then
						arr = {};
					end;
			    arr[length(arr)] = objTarget;
			    return arr;
				end;

			-- 从数组中移除一个对象: remove
				function TTH_COMMON.remove8Key(arr, index)
					if arr == nil then
						arr = {};
					end;
					local arrNew = {};
					for k, v in arr do
						if k ~= index then
							arrNew[k] = v;
						end;
					end
			    return arrNew;
				end;
				function TTH_COMMON.remove8Value(arr, value)
					if arr == nil then
						arr = {};
					end;
					local arrNew = {};
					for k, v in arr do
						if v ~= value then
							TTH_COMMON.push(arrNew, v);
						end;
					end
			    return arrNew;
				end;

			-- 两个数组相连
				function TTH_COMMON.concat(arr1, arr2)
				  local retArr = {};
				  if arr1 ~= nil then
				  	local lenArr1 = length(arr1);
					  for i = 0, lenArr1 - 1 do
					  	retArr[i] = arr1[i];
					  end
				  end;
			  	local lenRetArr = length(retArr);
		  	  if arr2 ~= nil then
		  		  local lenArr2 = length(arr2);
		  	    for i = lenRetArr, lenRetArr + lenArr2 - 1 do
		  	      retArr[i] = arr2[i - lenRetArr];
		  	    end;
		      end;
					return retArr;
				end;

			-- 获取数组中对象的个数
				function TTH_COMMON.getTargetCount(arr, objTarget)
					local iCount = 0;
					for iIndex, objItem in arr do
						if objItem == objTarget then
							iCount = iCount + 1;
						end;
					end;
					return iCount;
				end;

			-- 数组中最小值
				function TTH_COMMON.min(arr)
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

			-- 数组中最大值
				function TTH_COMMON.max(arr)
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

			-- 数组对象中按key排列的最小值
				function TTH_COMMON.min8key(arr, strKey)
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
								if objItem ~= nil and iCompare[strKey] > objItem[strKey] then
									iCompare = objItem;
								end;
							end;
						end;
					end;
					return iCompare;
				end;

		-- 对象
			-- 返回合并后的对象
				function TTH_COMMON.combineObject(obj1, obj2)
					local retObj = {};
					for key, value in obj1 do
						retObj[key] = obj1[key] + obj2[key];
					end;
					return retObj;
				end;

			-- 返回对象间的差值
				function TTH_COMMON.diffObject(obj1, obj2)
					local retObj = {};
					for key, value in obj1 do
						retObj[key] = obj1[key] - obj2[key];
					end;
					return retObj;
				end;

		-- 对话框
			-- 包装字符串回调参数
				function TTH_COMMON.psp(param)
					local ret = nil;
					if TTH_COMMON.isString(param) then
						ret = "'"..param.."'";
					else
						ret = param.."";
					end;
					return ret;
				end;

			-- 取消操作的空函数
				function TTH_COMMON.cancelOption()
					print("cancel option");
				end;

		-- 控件
			-- 多选框
				-- Text 文案
				-- Callback 回调方法名
				TTH_VARI.arrOption = {};
				TTH_VARI.strPathRadioTips = "";
				TTH_VARI.strPathRadioFrame = "/Text/Game/Scripts/TTH_QB_Radio/Frame.txt";
				TTH_VARI.strPathRadioNavigation = "/Text/Game/Scripts/TTH_QB_Radio/Navigation.txt";
				TTH_VARI.strPathRadioAnchor = "/Text/Game/Scripts/TTH_QB_Radio/Anchor.txt";
				TTH_VARI.strPathRadioDefaultTips = "/Text/Game/Scripts/TTH_QB_Radio/DefaultTips.txt";
				TTH_VARI.strPathRadioOptionPre = "/Text/Game/Scripts/TTH_QB_Radio/Option";
				TTH_VARI.strPathRadioOptionPost = ".txt";
				function TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strTips)
					TTH_VARI.arrOption = arrOption;
					local iOptionCount = length(TTH_VARI.arrOption);
					if strTips ~= nil then
						TTH_VARI.strPathRadioTips = strTips;
					else
						TTH_VARI.strPathRadioTips = TTH_VARI.strPathRadioDefaultTips;
					end;
					TTH_COMMON.optionChoose(iPlayer, strHero, iOptionCount, 1);
				end;
				function TTH_COMMON.optionChoose(iPlayer, strHero, iOptionCount, iChosen)
					local iChosenNext = iChosen + 1;
					if iChosen > iOptionCount then
						TTH_COMMON.cancelOption();
					else
						if iOptionCount > 21 then
							print("Too more options, don\'t supported");
						else
							local arrText = {};
							for i = 1, 21 do
								if TTH_VARI.arrOption[i] ~= nil then
									arrText[i] = TTH_VARI.arrOption[i]["Text"];
								else
									arrText[i] = "";
								end;
							end;

							local strCallback = TTH_VARI.arrOption[iChosen]["Callback"];
							QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
								, {
									TTH_VARI.strPathRadioFrame
									;strPathNavigation={
										TTH_VARI.strPathRadioNavigation
										;strPathAnchor1={
											TTH_VARI.strPathRadioAnchor
											;strArrow=TTH_VARI.arrPathArrow[0]
											,strAnchor=TTH_VARI.arrPathNavigation[0]
										}
										,strPathAnchor2={
											TTH_VARI.strPathRadioAnchor
											;strArrow=TTH_VARI.arrPathArrow[1]
											,strAnchor=TTH_VARI.arrPathNavigation[1]
										}
										,strPathAnchor3={
											TTH_VARI.strPathRadioAnchor
											;strArrow=TTH_VARI.arrPathArrow[2]
											,strAnchor=TTH_VARI.arrPathNavigation[2]
										}
										,strPathAnchor4={
											TTH_VARI.strPathRadioAnchor
											;strArrow=TTH_VARI.arrPathArrow[3]
											,strAnchor=TTH_VARI.arrPathNavigation[3]
										}
										,strPathAnchor5={
											TTH_VARI.strPathRadioAnchor
											;strArrow=TTH_VARI.arrPathArrow[4]
											,strAnchor=TTH_VARI.arrPathNavigation[4]
										}
									}
									,strTips=TTH_VARI.strPathRadioTips
									,strPathRadioOption={
										TTH_VARI.strPathRadioOptionPre..iChosen..TTH_VARI.strPathRadioOptionPost
										;strText1=arrText[1]
										,strText2=arrText[2]
										,strText3=arrText[3]
										,strText4=arrText[4]
										,strText5=arrText[5]
										,strText6=arrText[6]
										,strText7=arrText[7]
										,strText8=arrText[8]
										,strText9=arrText[9]
										,strText10=arrText[10]
										,strText11=arrText[11]
										,strText12=arrText[12]
										,strText13=arrText[13]
										,strText14=arrText[14]
										,strText15=arrText[15]
										,strText16=arrText[16]
										,strText17=arrText[17]
										,strText18=arrText[18]
										,strText19=arrText[19]
										,strText20=arrText[20]
										,strText21=arrText[21]
									}
								}
								, strCallback.."("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(TTH_VARI.arrOption[iChosen]["Id"])..")"
								, "TTH_COMMON.optionChoose("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iOptionCount..","..iChosenNext..")"
							);
						end;
					end;
				end;

			-- 导航栏
				-- 打开新界面
					function TTH_COMMON.initNavi(strPath)
						TTH_VARI.arrPathNavigation = {};
						TTH_VARI.arrPathArrow = {};
						TTH_VARI.arrPathNavigation[0] = strPath;
						TTH_VARI.arrPathArrow[0] = TTH_PATH.Basic["Arrow"];
					end;

				-- 下一层界面
					function TTH_COMMON.nextNavi(strPath)
						TTH_VARI.arrPathNavigation[length(TTH_VARI.arrPathNavigation)] = strPath;
						TTH_VARI.arrPathArrow[length(TTH_VARI.arrPathArrow)] = TTH_PATH.Basic["Arrow"];
					end;

		-- 当前进程休眠/唤醒 一般用在传送时
			TTH_VARI.sleepSwitch = TTH_ENUM.No;
			function TTH_COMMON.sleep()
				TTH_VARI.sleepSwitch = TTH_ENUM.Yes;
				while TTH_VARI.sleepSwitch == TTH_ENUM.Yes do
					sleep(5);
				end;
			end;
			function TTH_COMMON.wakeup()
				TTH_VARI.sleepSwitch = TTH_ENUM.No;
			end;

	-- cheat
		TTH = {};

		-- 恢复英雄移动力
			function TTH.run()
				for i = 1, 8 do
					local arrHero = GetPlayerHeroes(i);
					for iIndexHero, strHero in arrHero do
						ChangeHeroStat(strHero, STAT_MOVE_POINTS, TTH_FINAL.NUM_MAX);
						ChangeHeroStat(strHero, STAT_MANA_POINTS, TTH_FINAL.NUM_MAX);
					end;
				end;
			end;

		-- 地图全开
			function TTH.see()
				for i = 1, 8 do
					for j = 0, GetMaxFloor() do
						OpenCircleFog(0, 0, j, TTH_FINAL.NUM_MAX, i);
					end;
				end;
			end;

		-- 资源全满
				function TTH.rich()
					for i = 1, 8 do
						TTH_GLOBAL.increaseResource(i, WOOD, 9999);
						TTH_GLOBAL.increaseResource(i, ORE, 9999);
						TTH_GLOBAL.increaseResource(i, MERCURY, 9999);
						TTH_GLOBAL.increaseResource(i, CRYSTAL, 9999);
						TTH_GLOBAL.increaseResource(i, SULFUR, 9999);
						TTH_GLOBAL.increaseResource(i, GEM, 9999);
						TTH_GLOBAL.increaseResource(i, GOLD, 9999999);
					end;
				end;

		-- 招募指定英雄
			function TTH.hero1(iPlayer, strHero)
				for iRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
					AllowPlayerTavernRace(iPlayer, iRace, TTH_ENUM.No);
				end;
				for iIndexPlayer = PLAYER_1, PLAYER_8 do
					if iIndexPlayer == iPlayer then
						AllowPlayerTavernHero(iIndexPlayer, strHero, TTH_ENUM.Yes);
					else
						AllowPlayerTavernHero(iIndexPlayer, strHero, TTH_ENUM.No);
					end;
				end;
			end;
			function TTH.hero2(iPlayer)
				for i = TOWN_HEAVEN, TOWN_STRONGHOLD do
					AllowPlayerTavernRace(iPlayer, i, TTH_ENUM.Yes);
				end
			end;

		-- 查看魔法塔魔法
			function TTH.scanner()
				local iPlayer = 1;
				for i = 1, 8 do
					if IsPlayerCurrent(i) then
						iPlayer = i;
					end;
				end;
				local arrTown = GetObjectNamesByType("TOWN");
				for i, strTown in arrTown do
					if GetObjectOwner(strTown) == iPlayer and TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
						UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
						UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
						UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
						UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
						UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
					end;
				end;
			end;

	-- ai
		TTH_AI = {};

			-- 系数相关
				-- 地图大小
					function TTH_AI.getCoef8MapSize()
						local bHasUnderground = GetMaxFloor();
						local iMapSize = GetTerrainSize();
						local fCoef = 1;
						if bHasUnderground == 0 then
							if iMapSize == 320 then fCoef = 1.2 end;
							if iMapSize == 256 then fCoef = 1.1 end;
							if iMapSize == 216 then fCoef = 1.1 end;
						end;
						if bHasUnderground == 1 then
							if iMapSize == 320 then fCoef = 1.3 end;
							if iMapSize == 256 then fCoef = 1.2 end;
							if iMapSize == 216 then fCoef = 1.2 end;
							if iMapSize == 176 then fCoef = 1.1 end;
						end;
						return fCoef;
					end;

				-- 游戏难度
					function TTH_AI.getCoef8GameDifficulty()
						local iGameDifficulty = TTH_GLOBAL.getGameDifficulty();
						local fCoef = 1;
						if iGameDifficulty == 3 then fCoef = 1.5 end;
						if iGameDifficulty == 2 then fCoef = 1.2 end;
						if iGameDifficulty == 1 then fCoef = 1 end;
						return fCoef;
					end;
					function TTH_AI.getTrialCoef8GameDifficulty()
						local iCoef = TTH_GLOBAL.getGameDifficulty();
						if iCoef == 0 then iCoef = 1 end;
						return iCoef;
					end;

				-- 游戏时间
					function TTH_AI.getCoef8GameDuration()
						local fCoef = 1;
						if TTH_VARI.day >= 56 and TTH_VARI.day < 112 then fCoef = 1.1 end;
						if TTH_VARI.day >= 112 and TTH_VARI.day < 168 then fCoef = 1.2 end;
						if TTH_VARI.day >= 168 and TTH_VARI.day < 224 then fCoef = 1.3 end;
						if TTH_VARI.day >= 224 then fCoef = 1.4 end;
						return fCoef;
					end;

				-- AI作弊等级
					function TTH_AI.getCoef8AiCheatMode()
						local fCoef = 1;
						if H55_AICheatMode == 0 then
							fCoef = 0;
						elseif H55_AICheatMode == 1 then
							fCoef = 0.4;
						elseif H55_AICheatMode == 2 then
							fCoef = 0.6;
						elseif H55_AICheatMode == 3 then
							fCoef = 0.8;
						elseif H55_AICheatMode == 4 then
							fCoef = 1;
						elseif H55_AICheatMode == 5 then
							fCoef = 1.2;
						elseif H55_AICheatMode == 6 then
							fCoef = 1.4;
						else
							fCoef = 1;
						end;
						return fCoef;
					end;

				-- AI增兵系数
					function TTH_AI.getCoef8Setting()
						local fCoef = 1;
						if H55_AIArmyCoef >= 1 and H55_AIArmyCoef <= 20 then
							fCoef = H55_AIArmyCoef;
						end;
						return fCoef;
					end;

				-- AI是否开启作弊
					function TTH_AI.isAiCheat()
						local bCheat = TTH_ENUM.No;
						if H55_AICheatMode > 0 then
							bCheat = TTH_ENUM.Yes;
						end;
						return bCheat;
					end;

				-- AI每周作弊 加金币 和 产量
					function TTH_AI.cheatAiWeekly(iPlayer)
						TTH_MAIN.debug("TTH_AI.cheatAiWeekly", iPlayer, nil);

						if TTH_AI.isAiCheat() == TTH_ENUM.Yes then
							local fCoef8MapSize = TTH_AI.getCoef8MapSize();
							local fCoef8Difficulty = TTH_AI.getCoef8GameDifficulty();
							local fCoef8GameDuration = TTH_AI.getCoef8GameDuration();
							local fCoef8AiCheatMode = TTH_AI.getCoef8AiCheatMode();
							local fCoef8Setting = TTH_AI.getCoef8Setting();
							local fGrowth4Coef = fCoef8MapSize * fCoef8Difficulty * fCoef8GameDuration * fCoef8AiCheatMode * fCoef8Setting;
							local fCoef8TownCount = 0.5 + 0.5 * length(TTH_GLOBAL.listTown8Player(iPlayer));
							local iCheatGold = TTH_COMMON.round(fGrowth4Coef * fCoef8TownCount * 20000);
							TTH_GLOBAL.putSettleResource(iPlayer, GOLD, iCheatGold);
							for iIndexTown, strTown in TTH_VARI.arrTown do
								if GetObjectOwner(strTown) == iPlayer then
									local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
									for i = 1, 7 do
										local iDwellingLevel = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_1 + i - 1);
										if iDwellingLevel >= 1 then
											local iCreatureId = TTH_TABLE.Creature8RaceAndLevel[iTownRace][i][1];
											local iCanRecruitCount = GetObjectDwellingCreatures(strTown, iCreatureId);
											local iGrowth = TTH_TABLE_NCF_CREATURES[iCreatureId]["GROWTH"];
											iGrowth = TTH_COMMON.round(fGrowth4Coef * TTH_TABLE_NCF_CREATURES[iCreatureId]["GROWTH"]);
											SetObjectDwellingCreatures(strTown
												, iCreatureId
												, iCanRecruitCount + iGrowth
											);
										end;
									end
								end;
							end;
						end;
					end;

			-- 自动转化前哨
				function TTH_AI.convertDwelling4Ai(iPlayer)
					TTH_MAIN.debug("TTH_AI.convertDwelling4Ai", iPlayer, nil);

					if H55_TownConvEnabled == 1 then
						local iPlayerRace = TTH_GLOBAL.getPlayerRace(iPlayer);
						for iTier = 1, 4 do
							for jDwellingRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
								local arrDwelling = GetObjectNamesByType(TTH_TABLE.DwellingOnAdvMap[iTier][jDwellingRace]);
								for i, strDwelling in arrDwelling do
									if GetObjectOwner(strDwelling) == iPlayer
										and jDwellingRace ~= iPlayerRace then
										ReplaceDwelling(strDwelling, iPlayerRace);
									end;
								end;
							end;
						end;
					end;
				end;

			-- 自动转化城镇
				function TTH_AI.convertTown4Ai(iPlayer)
					TTH_MAIN.debug("TTH_AI.convertTown4Ai", iPlayer, nil);

					if H55_TownConvEnabled == 1 then
						for i, strTown in TTH_VARI.arrTown do
							local iPlayerRace = TTH_GLOBAL.getPlayerRace(iPlayer);
							local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
							if GetObjectOwner(strTown) == iPlayer
								and iTownRace ~= iPlayerRace
								and TTH_GLOBAL.isGarrisonHasHero(iPlayer, strTown) == 0 then
								local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								TransformTown(strTown, iPlayerRace);
								sleep(1);
								TTH_MANAGE.rebuildTownBuilding(strTown, iPlayerRace, objTown);
								sleep(1);
							end;
						end;
					end;
				end;

			-- 自动给经验
				function TTH_AI.giveExp8Day4Ai(iPlayer)
					TTH_MAIN.debug("TTH_AI.giveExp8Day4Ai", iPlayer, nil);

					local arrHero = GetPlayerHeroes(iPlayer);
					for i, strHero in arrHero do
						local iHeroLevel = GetHeroLevel(strHero);
						local iExp = TTH_COMMON.round(300 + ((1 + (iHeroLevel / 10)) * iHeroLevel * iHeroLevel));
						TTH_GLOBAL.giveExp(strHero, iExp);
					end;
				end;

			-- 据点自动升级建筑
				function TTH_AI.helpStrongholdBuilding(iPlayer)
					local iPlayerRace = TTH_GLOBAL.getPlayerRace(iPlayer);
					if iPlayerRace == TOWN_STRONGHOLD then
						for i, strTown in TTH_VARI.arrTown do
							if GetObjectOwner(strTown) == iPlayer and TTH_VARI.gameDifficulty >= 2 then
								local iRandomIndex = random(32);
								local objBuilding = TTH_TABLE.TownBuilding[iPlayerRace][iRandomIndex];
								if objBuilding ~= nil then
									UpgradeTownBuilding(strTown, objBuilding["Id"], 1);
								end;
							end;
						end;
					end;
				end;

	-- global
		TTH_GLOBAL = {};

		-- 学院城和地牢城宝物商店
			function TTH_GLOBAL.checkArtifactMerchant(iPlayer, strTown)
				TTH_MAIN.debug("TTH_GLOBAL.checkArtifactMerchant", iPlayer, nil, strTown);

				local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					if iTownRace == TOWN_ACADEMY then
						DestroyTownBuildingToLevel(strTown, TOWN_BUILDING_SPECIAL_3, 0, 0);
						SetTownBuildingLimitLevel(strTown, TOWN_BUILDING_SPECIAL_3, TTH_ENUM.Unable);
					end;
					if iTownRace == TOWN_DUNGEON then
						DestroyTownBuildingToLevel(strTown, TOWN_BUILDING_SPECIAL_4, 0, 0);
						SetTownBuildingLimitLevel(strTown, TOWN_BUILDING_SPECIAL_4, TTH_ENUM.Unable);
					end;
				else
					if iTownRace == TOWN_ACADEMY then
						SetTownBuildingLimitLevel(strTown, TOWN_BUILDING_SPECIAL_3, TTH_ENUM.Enable);
					end;
					if iTownRace == TOWN_DUNGEON then
						SetTownBuildingLimitLevel(strTown, TOWN_BUILDING_SPECIAL_4, TTH_ENUM.Enable);
					end;
				end;
			end;

		-- 据点城也可回复魔法值
			function TTH_GLOBAL.recoveryManaNearByStrongholdTown(iPlayer, strHero)
				TTH_MAIN.debug("TTH_GLOBAL.recoveryManaNearByStrongholdTown", iPlayer, strHero);

				local arrTownStronghold = GetObjectNamesByType("TOWN_STRONGHOLD");
				if arrTownStronghold ~= nil then
					local iCurrentMana = GetHeroStat(strHero, STAT_MANA_POINTS);
					local iMaxMana = 10 * GetHeroStat(strHero, STAT_KNOWLEDGE);
					if HasHeroSkill(strHero, HERO_SKILL_INTELLIGENCE) ~= nil
						or HasHeroSkill(strHero, HERO_SKILL_BARBARIAN_INTELLIGENCE) ~= nil then
						iMaxMana = 15 * GetHeroStat(strHero, STAT_KNOWLEDGE);
					end;
					if iCurrentMana < iMaxMana then
						for i, strTown in arrTownStronghold do
							if GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1) >= 1
								and (TTH_GLOBAL.getDistance(strHero, strTown) <= 6) then
								ChangeHeroStat(strHero, STAT_MANA_POINTS, iMaxMana - iCurrentMana);
								break;
							end;
						end;
					end;
				end;
			end;

		-- 回复所有移动力并提示
			function TTH_GLOBAL.recoveryMaxMove(strHero)
				ChangeHeroStat(strHero, STAT_MOVE_POINTS, TTH_FINAL.NUM_MAX);
				local strText = TTH_PATH.FlyingSign["RecoveryMaxMove2Hero"];
				TTH_GLOBAL.sign(strHero, strText);
			end;

		-- 回复所有魔法值并提示
			function TTH_GLOBAL.recoveryMaxMana(strHero)
				ChangeHeroStat(strHero, STAT_MANA_POINTS, TTH_FINAL.NUM_MAX);
				local strText = TTH_PATH.FlyingSign["RecoveryMaxMana2Hero"];
				TTH_GLOBAL.sign(strHero, strText);
			end;

		-- 提示城镇中有额外生物可以供招募
			function TTH_GLOBAL.signHero4TownRecruit(strHero)
				if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
					local iPlayer = GetObjectOwner(strHero);
					if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
						ShowFlyingSign(TTH_PATH.FlyingSign["SignHero4TownRecruit"], strHero, iPlayer, 5);
						sleep(2);
					end;
				end;
			end;

		-- 提示生物加入了城镇
			function TTH_GLOBAL.signHero4TownJoin(strHero)
				if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
					local iPlayer = GetObjectOwner(strHero);
					if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
						ShowFlyingSign(TTH_PATH.FlyingSign["SignHero4TownJoin"], strHero, iPlayer, 5);
						sleep(2);
					end;
				end;
			end;

		-- 获得/失去英雄属性 并提示
			function TTH_GLOBAL.signChangeHeroStat(strHero, iStatId, iStatBonusNumber)
				if iStatBonusNumber ~= 0 then
					ChangeHeroStat(strHero, iStatId, iStatBonusNumber);
					local strStatName = TTH_PATH.Stat[iStatId];
					local strPathTemplate = "";
					if iStatBonusNumber > 0 then
						strPathTemplate = TTH_PATH.Stat["TemplateIncrease"];
					else
						strPathTemplate = TTH_PATH.Stat["TemplateDecrease"];
					end;
					local strText = {
						strPathTemplate
						;strStatName=strStatName
						,iStatBonusNumber=iStatBonusNumber
					};
					TTH_GLOBAL.sign(strHero, strText);
				end;
			end;

		-- 飘字提示
			function TTH_GLOBAL.sign(strHero, strPath)
				if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
					local iPlayer = GetObjectOwner(strHero);
					if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
						ShowFlyingSign(strPath, strHero, iPlayer, 5);
						sleep(2);
					end;
				end;
			end;

		-- 获取英雄最大移动力
			function TTH_GLOBAL.getMaxMove8Hero(strHero)
				local iMovePoint = 2750;
				local iCoef4Logistics = 1 + 0.1 * GetHeroSkillMastery(strHero, SKILL_LOGISTICS);
				local iCoefBootsOfSpeed = 1;
				if HasArtefact(strHero, ARTIFACT_BOOTS_OF_SPEED, 1) ~= nil then
					iCoefBootsOfSpeed = 1.25;
				end;
				iMovePoint = TTH_COMMON.round(iMovePoint * iCoef4Logistics * iCoefBootsOfSpeed);
				return iMovePoint;
			end;

		-- 获取英雄最大魔法值
			function TTH_GLOBAL.getMaxMana8Hero(strHero)
				local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
				local iMaxMana = 10 * iKnowledge;
				if HasHeroSkill(strHero, HERO_SKILL_INTELLIGENCE) ~= nil
					or HasHeroSkill(strHero, HERO_SKILL_BARBARIAN_INTELLIGENCE) ~= nil then
					iMaxMana = 15 * iKnowledge;
				end;
				return iMaxMana;
			end;

		-- 获取两个单位间的距离
			function TTH_GLOBAL.getDistance(obj1, obj2, bCheckAxisZ)
				local iX1, iY1, iZ1 = GetObjectPosition(obj1);
				local iX2, iY2, iZ2 = GetObjectPosition(obj2);
				local a = 0;
				local b = 0;
				local iDistance = 0;
				if iZ1 == iZ2 then
					if iX1 > iX2 then
						a = iX1-iX2;
					else
						a = iX2-iX1;
					end;
					if iY1 > iY2 then
						b = iY1-iY2;
					else
						b = iY2-iY1;
					end;
					iDistance = TTH_COMMON.round(sqrt(a * a + b * b));
				else
					if bCheckAxisZ == nil then
						iDistance = TTH_FINAL.NUM_MAX;
					else
						iDistance = TTH_COMMON.round(sqrt(a * a + b * b)) + 10;
					end;
				end;
				return iDistance;
			end;

		-- 生物
			-- 置换英雄生物
				function TTH_GLOBAL.replaceCreature4Hero(strHero, iPreCreatureId, iPreCreatureNum, iPostCreatureId, iPostCreatureNum)
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					if arrCreature4Hero[1]["Count"] == 0 then
						AddHeroCreatures(strHero, iPostCreatureId, iPostCreatureNum);
						sleep(1);
						RemoveHeroCreatures(strHero, iPreCreatureId, iPreCreatureNum);
					elseif arrCreature4Hero[6]["Count"] ~= 0 then
						RemoveHeroCreatures(strHero, iPreCreatureId, iPreCreatureNum);
						sleep(1);
						AddHeroCreatures(strHero, iPostCreatureId, iPostCreatureNum);
					else
						RemoveHeroCreatures(strHero, iPreCreatureId, iPreCreatureNum);
						sleep(1);
						AddHeroCreatures(strHero, iPostCreatureId, iPostCreatureNum);
					end;
				end;

			-- 减少英雄生物 <带提示>
				function TTH_GLOBAL.reduceCreature4Hero8Sign(strHero, iCreatureId, iCreatureNumber, strPath)
					if iCreatureId > 0 and iCreatureId < 1000 and iCreatureNumber > 0 then
						RemoveHeroCreatures(strHero, iCreatureId, iCreatureNumber);
						local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];
						if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
							local iPlayer = GetObjectOwner(strHero);
							if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
								ShowFlyingSign({strPath;strCreatureName=strCreatureName,iCreatureNumber=iCreatureNumber}, strHero, iPlayer, 5);
								sleep(2);
							end;
						end;
					end;
				end;

			-- 增加英雄生物 <带提示>
				function TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iCreatureNumber, iChangeType)
					if iCreatureId > 0 and iCreatureId < 1000 and iCreatureNumber > 0 then
						AddHeroCreatures(strHero, iCreatureId, iCreatureNumber);
						local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];
						if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
							local iPlayer = GetObjectOwner(strHero);
							if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
								local strPath = "";
								if iChangeType == TTH_ENUM.AddCreature then
									strPath = TTH_PATH.FlyingSign["AddCreature2Hero"];
								elseif iChangeType == TTH_ENUM.CastCreature then
									strPath = TTH_PATH.FlyingSign["CastCreature2Hero"];
								elseif iChangeType == TTH_ENUM.ReviveCreature then
									strPath = TTH_PATH.FlyingSign["ReviveCreature2Hero"];
								end;
								ShowFlyingSign({strPath;strCreatureName=strCreatureName,iCreatureNumber=iCreatureNumber}, strHero, iPlayer, 5);
								sleep(2);
							end;
						end;
					end;
				end;

			-- 获取英雄槽位的生物信息，并以数组方式返回，下标从0开始
				function TTH_GLOBAL.getHeroCreatureInfo(strHero)
					local arrCreature = {[0] = {}, [1] = {}, [2] = {}, [3] = {}, [4] = {}, [5] = {}, [6] = {}};
					arrCreature[0]["Id"], arrCreature[1]["Id"], arrCreature[2]["Id"], arrCreature[3]["Id"], arrCreature[4]["Id"], arrCreature[5]["Id"], arrCreature[6]["Id"] = GetHeroCreaturesTypes(strHero);
					for i = 0, 6 do
						if(arrCreature[i]["Id"] ~= 0) then
							arrCreature[i]["Count"] = GetHeroCreatures(strHero, arrCreature[i]["Id"]);
						else
							arrCreature[i]["Count"] = 0;
						end;
					end;
					return arrCreature;
				end;

			-- 获取城镇/野怪/矿/要塞槽位的生物信息，并以数组方式返回，下标从0开始
				function TTH_GLOBAL.getObjectCreatureInfo(strObject)
					local arrCreature = {[0] = {}, [1] = {}, [2] = {}, [3] = {}, [4] = {}, [5] = {}, [6] = {}};
					arrCreature[0]["Id"], arrCreature[1]["Id"], arrCreature[2]["Id"], arrCreature[3]["Id"], arrCreature[4]["Id"], arrCreature[5]["Id"], arrCreature[6]["Id"] = GetObjectCreaturesTypes(strObject);
					for i = 0, 6 do
						if(arrCreature[i]["Id"] ~= 0) then
							arrCreature[i]["Count"] = GetObjectCreatures(strObject, arrCreature[i]["Id"]);
						else
							arrCreature[i]["Count"] = 0;
						end;
					end;
					return arrCreature;
				end;

			-- 根据配置改变野怪数量
				function TTH_GLOBAL.changeMonsterStackSize(fMultiplier)
					if fMultiplier > 0.1 and fMultiplier ~= 1 then
						print("TTH Change Monster stack sizes...");
						print("WARNING: The game might lag for several minutes, the job is done when you can open your townscreen.");
						print("TTH Game blocked...");
						BlockGame();
						local arrMonster = GetObjectNamesByType("CREATURE");
						local iLenMonster = length(arrMonster);
						for i = 0, iLenMonster - 1 do
							local arrCreature4Object = TTH_GLOBAL.getObjectCreatureInfo(arrMonster[i]);
							for i = 0, 6 do
								if arrCreature4Object[i]["Id"] ~= 0 then
									if fMultiplier > 1 then
										local iOffsetCount = TTH_COMMON.round(arrCreature4Object[i]["Count"] * fMultiplier - arrCreature4Object[i]["Count"]);
										if iOffsetCount > 0 then
											AddObjectCreatures(arrMonster[i], arrCreature4Object[i]["Id"], iOffsetCount);
										end;
									elseif fMultiplier >= 0.1 and fMultiplier < 1 then
										local iOffsetCount = TTH_COMMON.round(arrCreature4Object[i]["Count"] - arrCreature4Object[i]["Count"] * fMultiplier);
										if iOffsetCount > 0 then
											RemoveObjectCreatures(arrMonster[i], arrCreature4Object[i]["Id"], iOffsetCount);
										end;
									end;
								end;
							end;
						end;
						UnblockGame();
						print("TTH Game Unblocked...");
					end;
				end;

		-- 城镇
			-- 增加城镇生物产量
				function TTH_GLOBAL.updateTownDwellingCreature(strTown, arrCreatureGrowth8Tier)
					local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
					for iTier = 1, 7 do
						if arrCreatureGrowth8Tier[iTier] > 0
							and GetTownBuildingLevel(strTown, iTier + TOWN_BUILDING_DWELLING_1 - 1) >= 1 then
							SetObjectDwellingCreatures(strTown, TTH_TABLE.Creature8RaceAndLevel[iTownRace][iTier][1]
								, GetObjectDwellingCreatures(strTown, TTH_TABLE.Creature8RaceAndLevel[iTownRace][iTier][1])
									+ arrCreatureGrowth8Tier[iTier]);
						end;
					end;
				end;

		-- 游戏准备阶段
			-- 从初始状态查验是否为AI
				function TTH_GLOBAL.detectPlayerState(iPlayer)
					if (GetPlayerState(iPlayer) == 1) then
							local arrHero = GetPlayerHeroes(iPlayer);
							if arrHero ~= nil then
								for iIndexHero, strHero in arrHero do
									EnableHeroAI(strHero, not nil);
									TTH_VARI.playerStatus[iPlayer] = 1;
								end;
							else
								local iGold = GetPlayerResource(iPlayer, 6);
								if mod(iGold, 100) == 1 then
									TTH_VARI.playerStatus[iPlayer] = 1;
								else
									TTH_VARI.playerStatus[iPlayer] = 0;
								end;
							end;
					else
						TTH_VARI.playerStatus[iPlayer] = 2;
					end;

					-- 战役BUG修复
						if iPlayer == PLAYER_2 then
							if GetMapDataPath() == "Maps/Scenario/C1M5/" then
								TTH_VARI.playerStatus[PLAYER_2] = 1;
							end;
						end;
				end;

			-- 初始化每位玩家的状态
				function TTH_GLOBAL.detectPlayer1()
					TTH_GLOBAL.detectPlayerState(PLAYER_1);
				end;
				function TTH_GLOBAL.detectPlayer2()
					TTH_GLOBAL.detectPlayerState(PLAYER_2);
				end;
				function TTH_GLOBAL.detectPlayer3()
					TTH_GLOBAL.detectPlayerState(PLAYER_3);
				end;
				function TTH_GLOBAL.detectPlayer4()
					TTH_GLOBAL.detectPlayerState(PLAYER_4);
				end;
				function TTH_GLOBAL.detectPlayer5()
					TTH_GLOBAL.detectPlayerState(PLAYER_5);
				end;
				function TTH_GLOBAL.detectPlayer6()
					TTH_GLOBAL.detectPlayerState(PLAYER_6);
				end;
				function TTH_GLOBAL.detectPlayer7()
					TTH_GLOBAL.detectPlayerState(PLAYER_7);
				end;
				function TTH_GLOBAL.detectPlayer8()
					TTH_GLOBAL.detectPlayerState(PLAYER_8);
				end;

			-- 初始化每位玩家的种族
				function TTH_GLOBAL.detectPlayerFaction()
					local arrTown = GetObjectNamesByType("TOWN");
					for i = 1, 8 do
						for iIndexTown, objTown in arrTown do
							if GetObjectOwner(objTown) == i then
								TTH_VARI.playerFaction[i] = TTH_GLOBAL.getRace8Town(objTown);
							end;
						end;
					end;
				end;
				function TTH_GLOBAL.detectPlayerFactionBak()
					for i = 1, 8 do
						if TTH_VARI.playerFaction[i] == 0 and TTH_VARI.playerStatus[i] == 0 then
							local arrHero = GetPlayerHeroes(i);
							if arrHero ~= nil then
								TTH_VARI.playerFaction[i] = TTH_GLOBAL.getRace8Hero(arrHero[0]);
							end;
						end;
					end;
				end;

		-- 初始化
			-- 初始化游戏难度 进入游戏时选择的难度
				TTH_VARI.gameDifficulty = 0;
				function TTH_GLOBAL.initGameDifficulty()
					TTH_VARI.gameDifficulty = GetDifficulty();
				end;
				function TTH_GLOBAL.getGameDifficulty()
					return TTH_VARI.gameDifficulty;
				end;

			-- 初始化领地半径 根据地图大小
				TTH_VARI.TerritoryRadius = 60;
				function TTH_GLOBAL.initTerritoryRadius()
					local iMapSize = GetTerrainSize();
					TTH_VARI.TerritoryRadius = TTH_COMMON.round(iMapSize / 4 - 20);
				end;

			-- 初始化城镇列表
				function TTH_GLOBAL.initAdvTown()
					TTH_VARI.arrTown = GetObjectNamesByType("TOWN");

					-- 初始城建配置
						local iNeutralTownLevel = H55_BuildNeutralTowns;
						local iPlayerTownLevel = 0;
						if H55_PlayerCheats == 1 then
							iPlayerTownLevel = H55_PlayerTownLevel;
						end;
						local iAITownLevel = 1;
						if H55_AICheats == 1 then
							iAITownLevel = H55_AITownLevel;
						end;
						for iIndexTown, objTown in TTH_VARI.arrTown do
							local iPlayer = GetObjectOwner(objTown);
							if iPlayer == 0 then
								TTH_MANAGE.constructTown(objTown, iNeutralTownLevel);
							else
								if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
									TTH_MANAGE.constructTown(objTown, iPlayerTownLevel);
								else
									TTH_MANAGE.constructTown(objTown, iAITownLevel);
								end;
							end;
						end;
				end;

			-- 初始化地图建筑
				function TTH_GLOBAL.initAdvBuilding()
					TTH_VARI.arrBuilding = {};

					-- 初始化 BUFF建筑
						TTH_VARI.arrBuilding["BUILDING_FONTAIN_OF_FORTUNE"] = GetObjectNamesByType("BUILDING_FONTAIN_OF_FORTUNE");
						TTH_VARI.arrBuilding["BUILDING_TEMPLE"] = GetObjectNamesByType("BUILDING_TEMPLE");
						TTH_VARI.arrBuilding["BUILDING_FORTUITOUS_SANCTUARY"] = GetObjectNamesByType("BUILDING_FORTUITOUS_SANCTUARY");
						TTH_VARI.arrBuilding["BUILDING_FONTAIN_OF_YOUTH"] = GetObjectNamesByType("BUILDING_FONTAIN_OF_YOUTH");
						TTH_VARI.arrBuilding["BUILDING_FAERIE_RING"] = GetObjectNamesByType("BUILDING_FAERIE_RING");
						TTH_VARI.arrBuilding["BUILDING_NOMADS_SHAMAN"] = GetObjectNamesByType("BUILDING_NOMADS_SHAMAN");
						TTH_VARI.arrBuilding["BUILDING_RALLY_FLAG"] = GetObjectNamesByType("BUILDING_RALLY_FLAG");
						TTH_VARI.arrBuilding["BUILDING_IDOL_OF_FORTUNE"] = GetObjectNamesByType("BUILDING_IDOL_OF_FORTUNE");
						TTH_VARI.arrBuilding["BUILDING_MAGIC_WELL"] = GetObjectNamesByType("BUILDING_MAGIC_WELL");
						TTH_VARI.arrBuilding["BUILDING_OASIS"] = GetObjectNamesByType("BUILDING_OASIS");
						TTH_VARI.arrBuilding["BUILDING_STABLES"] = GetObjectNamesByType("BUILDING_STABLES");

					-- 初始化 宝屋建筑
						TTH_VARI.arrBuilding["BUILDING_WAGON"] = GetObjectNamesByType("BUILDING_WAGON");
						TTH_VARI.arrBuilding["BUILDING_SKELETON"] = GetObjectNamesByType("BUILDING_SKELETON");

						TTH_VARI.arrBuilding["BUILDING_UNKEMPT"] = GetObjectNamesByType("BUILDING_UNKEMPT"); -- 逃兵哨塔（圣堂）
						TTH_VARI.arrBuilding["BUILDING_LEAN_TO"] = GetObjectNamesByType("BUILDING_LEAN_TO"); -- 树塔（森林）
						TTH_VARI.arrBuilding["BUILDING_NAGA_BANK"] = GetObjectNamesByType("BUILDING_NAGA_BANK"); -- 象牙塔（学院）
						TTH_VARI.arrBuilding["BUILDING_BLOOD_TEMPLE"] = GetObjectNamesByType("BUILDING_BLOOD_TEMPLE"); -- 血之神庙（地牢）
						TTH_VARI.arrBuilding["BUILDING_CRYPT"] = GetObjectNamesByType("BUILDING_CRYPT"); -- 地穴（墓园）
						TTH_VARI.arrBuilding["BUILDING_GARGOYLE_STONEVAULT"] = GetObjectNamesByType("BUILDING_GARGOYLE_STONEVAULT"); -- 石像鬼穹顶（地狱）
						TTH_VARI.arrBuilding["BUILDING_DWARVEN_TREASURE"] = GetObjectNamesByType("BUILDING_DWARVEN_TREASURE"); -- 矮人宝藏（堡垒）
						TTH_VARI.arrBuilding["BUILDING_NAGA_TEMPLE"] = GetObjectNamesByType("BUILDING_NAGA_TEMPLE"); -- 兽人坑洞（据点）

						TTH_VARI.arrBuilding["BUILDING_CYCLOPS_STOCKPILE"] = GetObjectNamesByType("BUILDING_CYCLOPS_STOCKPILE"); -- 元素反应堆（中立元素）
						TTH_VARI.arrBuilding["BUILDING_DRAGON_UTOPIA"] = GetObjectNamesByType("BUILDING_DRAGON_UTOPIA"); -- 龙国
						TTH_VARI.arrBuilding["BUILDING_PYRAMID"] = GetObjectNamesByType("BUILDING_PYRAMID"); -- 金字塔
						TTH_VARI.arrBuilding["BUILDING_BUOY"] = GetObjectNamesByType("BUILDING_BUOY"); -- 鄂加斯邪庙
						TTH_VARI.arrBuilding["BUILDING_SUNKEN_TEMPLE"] = GetObjectNamesByType("BUILDING_SUNKEN_TEMPLE"); -- 沉沦的神庙
						TTH_VARI.arrBuilding["BUILDING_DEMOLISH"] = GetObjectNamesByType("BUILDING_DEMOLISH"); -- 被掘毁的王陵
						TTH_VARI.arrBuilding["BUILDING_TREANT_THICKET"] = GetObjectNamesByType("BUILDING_TREANT_THICKET"); -- 德鲁伊岩洞

					-- 初始化 可占领的经济建筑
						TTH_VARI.arrBuilding["BUILDING_MYSTICAL_GARDEN"] = GetObjectNamesByType("BUILDING_MYSTICAL_GARDEN"); -- 神秘花园
						TTH_VARI.arrBuilding["BUILDING_WINDMILL"] = GetObjectNamesByType("BUILDING_WINDMILL"); -- 矮人地穴
						TTH_VARI.arrBuilding["BUILDING_WATER_WHEEL"] = GetObjectNamesByType("BUILDING_WATER_WHEEL"); -- 风车
						TTH_VARI.arrBuilding["BUILDING_WARMACHINE_FACTORY"] = GetObjectNamesByType("BUILDING_WARMACHINE_FACTORY"); -- 战争机械工厂

					-- 初始化 资源矿
						TTH_VARI.arrBuilding["BUILDING_SAWMILL"] = GetObjectNamesByType("BUILDING_SAWMILL"); -- 木矿
						TTH_VARI.arrBuilding["BUILDING_ORE_PIT"] = GetObjectNamesByType("BUILDING_ORE_PIT"); -- 石矿
						TTH_VARI.arrBuilding["BUILDING_ALCHEMIST_LAB"] = GetObjectNamesByType("BUILDING_ALCHEMIST_LAB"); -- 水银矿
						TTH_VARI.arrBuilding["BUILDING_CRYSTAL_CAVERN"] = GetObjectNamesByType("BUILDING_CRYSTAL_CAVERN"); -- 水晶矿
						TTH_VARI.arrBuilding["BUILDING_SULFUR_DUNE"] = GetObjectNamesByType("BUILDING_SULFUR_DUNE"); -- 硫磺矿
						TTH_VARI.arrBuilding["BUILDING_GEM_POND"] = GetObjectNamesByType("BUILDING_GEM_POND"); -- 宝石矿
						TTH_VARI.arrBuilding["BUILDING_GOLD_MINE"] = GetObjectNamesByType("BUILDING_GOLD_MINE"); -- 金矿
						TTH_VARI.arrBuilding["BUILDING_ABANDONED_MINE"] = GetObjectNamesByType("BUILDING_ABANDONED_MINE"); -- 废弃的矿洞（8种族随机）
						TTH_GLOBAL.initMine();

					-- 初始化 女巫小屋
						TTH_VARI.arrBuilding["BUILDING_WITCH_HUT"] = GetObjectNamesByType("BUILDING_WITCH_HUT");
						TTH_GLOBAL.initWitchHut();

					-- 初始化 先知小屋
						TTH_VARI.arrBuilding["BUILDING_MERMAIDS"] = GetObjectNamesByType("BUILDING_MERMAIDS");
						TTH_GLOBAL.initMermaids();

					-- 初始化 宝物商店
						TTH_VARI.arrBuilding["BUILDING_BLACK_MARKET"] = GetObjectNamesByType("BUILDING_BLACK_MARKET");
						TTH_GLOBAL.initBlackMarket();

					-- 绑定建筑访问触发器
						-- 可占领的经济建筑
							TTH_COMMON.setTrigger2ObjectType("BUILDING_MYSTICAL_GARDEN", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMysticalGarden", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_WINDMILL", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitWindmill", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_WATER_WHEEL", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitWaterWheel", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_WARMACHINE_FACTORY", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitWarmachineFactory", nil);

						-- 可占领的资源矿
							TTH_COMMON.setTrigger2ObjectType("BUILDING_SAWMILL", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitWood", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_ORE_PIT", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitOre", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_ALCHEMIST_LAB", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMercury", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_CRYSTAL_CAVERN", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitCrystal", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_SULFUR_DUNE", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitSulfur", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_GEM_POND", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitGem", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_GOLD_MINE", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitGold", nil);
							-- TTH_COMMON.setTrigger2ObjectType("BUILDING_ABANDONED_MINE", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitRandom", nil);

						-- 大地图上的兵种前哨建筑
							for iTier = 1, 4 do
								for jDwellingRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
									TTH_COMMON.setTrigger2ObjectType(TTH_TABLE.DwellingOnAdvMap[iTier][jDwellingRace], OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitDwellingOnAdvMap", nil);
								end;
							end;

						-- 女巫小屋
							TTH_COMMON.setTrigger2ObjectType("BUILDING_WITCH_HUT", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitWitchHut", nil);

						-- 先知小屋
							TTH_COMMON.setTrigger2ObjectType("BUILDING_MERMAIDS", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMermaids", nil);

						-- 宝物商店
							TTH_COMMON.setTrigger2ObjectType("BUILDING_BLACK_MARKET", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitBlackMarket", nil);

						-- 红木了望塔
							TTH_COMMON.setTrigger2ObjectType("BUILDING_REDWOORD_OBSERVATORY", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitRedwoordObservatory", nil);

						-- 马厩
							-- TTH_COMMON.setTrigger2ObjectType("BUILDING_STABLES", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitStables", nil);

						-- 魔力节点 启示水晶/天文台/魔法学校/启蒙图书馆
							-- TTH_COMMON.setTrigger2ObjectType("BUILDING_GARDEN_OF_REVELATION", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMagicNode", nil);
							-- TTH_COMMON.setTrigger2ObjectType("BUILDING_STAR_AXIS", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMagicNode", nil);
							-- TTH_COMMON.setTrigger2ObjectType("BUILDING_SCHOOL_OF_MAGIC", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMagicNode", nil);
							-- TTH_COMMON.setTrigger2ObjectType("BUILDING_LIBRARY_OF_ENLIGHTENMENT", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitMagicNode", nil);
							TTH_VARI.arrBuilding["BUILDING_GARDEN_OF_REVELATION"] = GetObjectNamesByType("BUILDING_GARDEN_OF_REVELATION");
							TTH_VARI.arrBuilding["BUILDING_STAR_AXIS"] = GetObjectNamesByType("BUILDING_STAR_AXIS");
							TTH_VARI.arrBuilding["BUILDING_SCHOOL_OF_MAGIC"] = GetObjectNamesByType("BUILDING_SCHOOL_OF_MAGIC");
							TTH_VARI.arrBuilding["BUILDING_LIBRARY_OF_ENLIGHTENMENT"] = GetObjectNamesByType("BUILDING_LIBRARY_OF_ENLIGHTENMENT");
							TTH_VARI.arrBuilding["BUILDING_MAGICNODE"] = {};
							TTH_VARI.arrBuilding["BUILDING_MAGICNODE"] = TTH_COMMON.concat(TTH_VARI.arrBuilding["BUILDING_MAGICNODE"], TTH_VARI.arrBuilding["BUILDING_GARDEN_OF_REVELATION"]);
							TTH_VARI.arrBuilding["BUILDING_MAGICNODE"] = TTH_COMMON.concat(TTH_VARI.arrBuilding["BUILDING_MAGICNODE"], TTH_VARI.arrBuilding["BUILDING_STAR_AXIS"]);
							TTH_VARI.arrBuilding["BUILDING_MAGICNODE"] = TTH_COMMON.concat(TTH_VARI.arrBuilding["BUILDING_MAGICNODE"], TTH_VARI.arrBuilding["BUILDING_SCHOOL_OF_MAGIC"]);
							TTH_VARI.arrBuilding["BUILDING_MAGICNODE"] = TTH_COMMON.concat(TTH_VARI.arrBuilding["BUILDING_MAGICNODE"], TTH_VARI.arrBuilding["BUILDING_LIBRARY_OF_ENLIGHTENMENT"]);

						-- 初始化 杉提瑞圆盘和方尖碑
							TTH_VARI.arrBuilding["BUILDING_EYE_OF_MAGI"] = GetObjectNamesByType("BUILDING_EYE_OF_MAGI");
							TTH_VARI.arrBuilding["BUILDING_LAKE_OF_SCARLET_SWAN"] = GetObjectNamesByType("BUILDING_LAKE_OF_SCARLET_SWAN");
							TTH_VARI.arrBuilding["BUILDING_SHANTIRI"] = TTH_COMMON.concat(TTH_VARI.arrBuilding["BUILDING_EYE_OF_MAGI"], TTH_VARI.arrBuilding["BUILDING_LAKE_OF_SCARLET_SWAN"]);
							TTH_GLOBAL.initTrial();
							TTH_COMMON.setTrigger2ObjectType("BUILDING_EYE_OF_MAGI", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitShantiri", nil);
							TTH_COMMON.setTrigger2ObjectType("BUILDING_LAKE_OF_SCARLET_SWAN", OBJECT_TOUCH_TRIGGER, "TTH_VISIT.visitShantiri", nil);
				end;

			-- 初始化日询事件的次数 by 玩家
				TTH_VARI.counterDealDailyEvent = {};
				TTH_VARI.counterResetDailyEvent = {};
				TTH_VARI.counterDealSettleResource = {};
				function TTH_GLOBAL.initDailyEventCount(iPlayer)
					TTH_VARI.counterDealDailyEvent[iPlayer] = 0;
					TTH_VARI.counterResetDailyEvent[iPlayer] = 0;
					TTH_VARI.counterDealSettleResource[iPlayer] = 0;
				end;

			-- 初始化周询事件的次数 by 玩家
				TTH_VARI.counterDealWeeklyEvent = {};
				TTH_VARI.counterResetWeeklyEvent = {};
				function TTH_GLOBAL.initWeeklyEventCount(iPlayer)
					TTH_VARI.counterDealWeeklyEvent[iPlayer] = 0;
					TTH_VARI.counterResetWeeklyEvent[iPlayer] = 0;
				end;

			-- AI初始设置
				function TTH_GLOBAL.initAi(iPlayer)
					if H55_AIHandicap == 1 then
						if TTH_VARI.playerStatus[iPlayer] == 1 then
							SetPlayerResource(iPlayer, WOOD, 10);
							SetPlayerResource(iPlayer, ORE, 10);
							SetPlayerResource(iPlayer, MERCURY, 5);
							SetPlayerResource(iPlayer, CRYSTAL, 5);
							SetPlayerResource(iPlayer, SULFUR, 5);
							SetPlayerResource(iPlayer, GEM, 5);
							SetPlayerResource(iPlayer, GOLD, 10000);
						end;
					end;
					if H55_AICheats == 1 then
						if TTH_VARI.playerStatus[iPlayer] == 1 then
							if H55_AISetBonus_Tear == 1 then
								TTH_GLOBAL.giveTear(iPlayer);
								print("Tear has been given!");
							end;
							local bIsLootable = TTH_ENUM.Yes;
							if H55_AISetBonus_Travel == 1
								or H55_AISetBonus_Draconic == 1
								or H55_AISetBonus_Shield == 1
								or H55_AISetBonus_Angelic_Alliance == 1
								or H55_AISetBonus_Curse_Shoulder == 1
								or H55_AISetBonus_Phoenix == 1 then
								bIsLootable = TTH_ENUM.No;
							end;
							local arrHero = GetPlayerHeroes(iPlayer);
							for iIndexHero, strHero in arrHero do
								-- 若至少有一项AI作弊，则AI初始英雄的宝物不会掉落
									-- if bIsLootable == TTH_ENUM.No then
									-- 	SetHeroLootable(strHero, nil);
									-- end;
								if H55_AISetBonus_Travel == 1 then
									TTH_GLOBAL.giveTravel(strHero);
									print("Travel has been given!");
								end;
								if H55_AISetBonus_Draconic == 1 then
									TTH_GLOBAL.giveDraconic(strHero);
									print("Draconic has been given!");
								end;
								if H55_AISetBonus_Shield == 1 then
									TTH_GLOBAL.giveShield(strHero);
									print("Shield has been given!");
								end;
								if H55_AISetBonus_Heavenly == 1 then
									TTH_GLOBAL.giveHeavenly(strHero);
									print("Heavenly has been given!");
								end;
								if H55_AISetBonus_Angelic_Alliance == 1 then
									TTH_GLOBAL.giveAngelicAlliance(strHero);
									print("Angelic_Alliance has been given!");
								end;
								if H55_AISetBonus_Curse_Shoulder == 1 then
									TTH_GLOBAL.giveCurseShoulder(strHero);
									print("Curse_Shoulder has been given!");
								end;
								if H55_AISetBonus_Phoenix == 1 then
									TTH_GLOBAL.givePhoenix(strHero);
									print("Phoenix has been given!");
								end;
								if H55_AISkillBonusAbsolute == 1 then
									TTH_GLOBAL.teachSkillAbsolute(strHero);
									print("AbsoluteSkill has been teached!");
								end;
								if H55_AISkillBonusBasic == 1 then
									TTH_GLOBAL.teachSkillBasic(strHero);
									print("BasicSkill has been teached!");
								end;
							end;
						end;
					end;
					if H55_PlayerCheats == 1 then
						if TTH_VARI.playerStatus[iPlayer] == 0 then
							if H55_PlayerSetBonus_Tear == 1 then
								TTH_GLOBAL.giveTear(iPlayer);
								print("Tear has been given!");
							end;
							local arrHero = GetPlayerHeroes(iPlayer);
							for iIndexHero, strHero in arrHero do
								if H55_PlayerSetBonus_Travel == 1 then
									TTH_GLOBAL.giveTravel(strHero);
									print("Travel has been given!");
								end;
								if H55_PlayerSetBonus_Draconic == 1 then
									TTH_GLOBAL.giveDraconic(strHero);
									print("Draconic has been given!");
								end;
								if H55_PlayerSetBonus_Shield == 1 then
									TTH_GLOBAL.giveShield(strHero);
									print("Shield has been given!");
								end;
								if H55_PlayerSetBonus_Heavenly == 1 then
									TTH_GLOBAL.giveHeavenly(strHero);
									print("Heavenly has been given!");
								end;
								if H55_PlayerSetBonus_Angelic_Alliance == 1 then
									TTH_GLOBAL.giveAngelicAlliance(strHero);
									print("Angelic_Alliance has been given!");
								end;
								if H55_PlayerSetBonus_Curse_Shoulder == 1 then
									TTH_GLOBAL.giveCurseShoulder(strHero);
									print("Curse_Shoulder has been given!");
								end;
								if H55_PlayerSetBonus_Phoenix == 1 then
									TTH_GLOBAL.givePhoenix(strHero);
									print("Phoenix has been given!");
								end;
								if H55_PlayerSkillBonusAbsolute == 1 then
									TTH_GLOBAL.teachSkillAbsolute(strHero);
									print("AbsoluteSkill has been teached!");
								end;
								if H55_PlayerSkillBonusBasic == 1 then
									TTH_GLOBAL.teachSkillBasic(strHero);
									print("BasicSkill has been teached!");
								end;
							end;
						end;
					end;
					if H55_AIArmyCoef ~= 1 then
						if TTH_VARI.playerStatus[iPlayer] == 0 then
							print("AI army is increased by "..H55_AIArmyCoef.."00%!");
							print("Good Luck player "..iPlayer.."!");
						end;
					end;
				end;
				function TTH_GLOBAL.giveTear(iPlayer)
					for i, strTown in TTH_VARI.arrTown do
						if GetObjectOwner(strTown) == iPlayer then
							if GetTownBuildingLevel(strTown, TOWN_BUILDING_GRAIL) == 0 then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_GRAIL, 1);
							end;
						end;
					end;
				end;
				function TTH_GLOBAL.giveSet(strHero)
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					if enumHeroClass == TTH_ENUM.Knight then
						GiveArtefact(strHero, ARTIFACT_ANGELIC_ALLIANCE);
						GiveArtefact(strHero, 31);
						GiveArtefact(strHero, 16);
						GiveArtefact(strHero, 11);
					end;
					if enumHeroClass == TTH_ENUM.Paladin then
						GiveArtefact(strHero, 48);
						GiveArtefact(strHero, 49);
						GiveArtefact(strHero, 50);
						GiveArtefact(strHero, 51);
					end;
					if enumHeroClass == TTH_ENUM.Retribution then
						GiveArtefact(strHero, 48);
						GiveArtefact(strHero, 49);
						GiveArtefact(strHero, 50);
						GiveArtefact(strHero, 51);
					end;
					if enumHeroClass == TTH_ENUM.Heretic then
						GiveArtefact(strHero, 55);
						GiveArtefact(strHero, 33);
						GiveArtefact(strHero, 6);
						GiveArtefact(strHero, 70);
						GiveArtefact(strHero, 71);
						GiveArtefact(strHero, 83);
					end;

					if enumHeroClass == TTH_ENUM.Ranger then
						GiveArtefact(strHero, ARTIFACT_ANGELIC_ALLIANCE);
						GiveArtefact(strHero, 4);
						GiveArtefact(strHero, 95);
					end;
					if enumHeroClass == TTH_ENUM.Warden then
						GiveArtefact(strHero, ARTIFACT_ANGELIC_ALLIANCE);
						GiveArtefact(strHero, 124);
					end;
					if enumHeroClass == TTH_ENUM.Enchanter then
						GiveArtefact(strHero, 126);
						GiveArtefact(strHero, 34);
						GiveArtefact(strHero, 35);
					end;

					if enumHeroClass == TTH_ENUM.GuildMaster then
						GiveArtefact(strHero, 31);
						GiveArtefact(strHero, 16);
						GiveArtefact(strHero, 11);
						GiveArtefact(strHero, 25);
						GiveArtefact(strHero, 124);
					end;
					if enumHeroClass == TTH_ENUM.Wizard then
						GiveArtefact(strHero, 44);
						GiveArtefact(strHero, 45);
						GiveArtefact(strHero, 46);
						GiveArtefact(strHero, 47);
						GiveArtefact(strHero, 79);
					end;
					if enumHeroClass == TTH_ENUM.ElementAlist then
						GiveArtefact(strHero, 44);
						GiveArtefact(strHero, 45);
						GiveArtefact(strHero, 46);
						GiveArtefact(strHero, 47);
						GiveArtefact(strHero, 76);
					end;

					if enumHeroClass == TTH_ENUM.DemonLord then
						GiveArtefact(strHero, 23);
						GiveArtefact(strHero, 66);
						GiveArtefact(strHero, ARTIFACT_ANGELIC_ALLIANCE);
					end;
					if enumHeroClass == TTH_ENUM.GateKeeper then
						GiveArtefact(strHero, 48);
						GiveArtefact(strHero, 49);
						GiveArtefact(strHero, 50);
						GiveArtefact(strHero, 51);
					end;
					if enumHeroClass == TTH_ENUM.Sorcerer then
						GiveArtefact(strHero, 126);
						GiveArtefact(strHero, 116);
						GiveArtefact(strHero, 117);
						GiveArtefact(strHero, 118);
						GiveArtefact(strHero, 119);
					end;

					if enumHeroClass == TTH_ENUM.DeathKnight then
						GiveArtefact(strHero, 124);
						GiveArtefact(strHero, 38);
						GiveArtefact(strHero, 42);
						GiveArtefact(strHero, 43);
						GiveArtefact(strHero, 36);
					end;
					if enumHeroClass == TTH_ENUM.Reaver then
						GiveArtefact(strHero, 55);
						GiveArtefact(strHero, 33);
						GiveArtefact(strHero, 6);
						GiveArtefact(strHero, 70);
						GiveArtefact(strHero, 71);
						GiveArtefact(strHero, 83);
					end;
					if enumHeroClass == TTH_ENUM.Necromancer then
						GiveArtefact(strHero, 55);
						GiveArtefact(strHero, 33);
						GiveArtefact(strHero, 6);
						GiveArtefact(strHero, 70);
						GiveArtefact(strHero, 71);
						GiveArtefact(strHero, 83);
					end;

					if enumHeroClass == TTH_ENUM.Engineer then
						GiveArtefact(strHero, 91);
						GiveArtefact(strHero, 41);
						GiveArtefact(strHero, 74);
						GiveArtefact(strHero, 75);
					end;
					if enumHeroClass == TTH_ENUM.Runemage then
						GiveArtefact(strHero, 2);
						GiveArtefact(strHero, 48);
						GiveArtefact(strHero, 49);
						GiveArtefact(strHero, 50);
						GiveArtefact(strHero, 51);
					end;
					if enumHeroClass == TTH_ENUM.Flamekeepera then
						GiveArtefact(strHero, 85);
						GiveArtefact(strHero, 48);
						GiveArtefact(strHero, 49);
						GiveArtefact(strHero, 50);
						GiveArtefact(strHero, 51);
					end;

					if enumHeroClass == TTH_ENUM.BeastMaster then
						GiveArtefact(strHero, ARTIFACT_ANGELIC_ALLIANCE);
						GiveArtefact(strHero, 31);
						GiveArtefact(strHero, 16);
						GiveArtefact(strHero, 11);
					end;
					if enumHeroClass == TTH_ENUM.Seer then
						GiveArtefact(strHero, 42);
						GiveArtefact(strHero, 36);
						GiveArtefact(strHero, 37);
						GiveArtefact(strHero, 41);
						GiveArtefact(strHero, 40);
						GiveArtefact(strHero, 39);
					end;
					if enumHeroClass == TTH_ENUM.Warlock then
						GiveArtefact(strHero, 125);
						GiveArtefact(strHero, 81);
						GiveArtefact(strHero, 82);
					end;

					if enumHeroClass == TTH_ENUM.Barbarian then
						GiveArtefact(strHero, 31);
						GiveArtefact(strHero, 16);
						GiveArtefact(strHero, 11);
						GiveArtefact(strHero, 74);
						GiveArtefact(strHero, 75);
						GiveArtefact(strHero, 57);
					end;
				end;
				function TTH_GLOBAL.giveTravel(strHero)
					GiveArtefact(strHero, 24);
				end;
				function TTH_GLOBAL.giveDraconic(strHero)
					GiveArtefact(strHero, 123);
				end;
				function TTH_GLOBAL.giveShield(strHero)
					GiveArtefact(strHero, 124);
				end;
				function TTH_GLOBAL.giveHeavenly(strHero)
					GiveArtefact(strHero, ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT);
				end;
				function TTH_GLOBAL.giveAngelicAlliance(strHero)
					GiveArtefact(strHero, 68);
				end;
				function TTH_GLOBAL.giveCurseShoulder(strHero)
					GiveArtefact(strHero, 114);
				end;
				function TTH_GLOBAL.givePhoenix(strHero)
					GiveArtefact(strHero, 126);
				end;
				function TTH_GLOBAL.teachSkillBasic(strHero)
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					if enumHeroClass == TTH_ENUM.Knight then
						GiveHeroSkill(strHero, 4);
						GiveHeroSkill(strHero, 195);
					end;
					if enumHeroClass == TTH_ENUM.Paladin then
						GiveHeroSkill(strHero, 4);
						GiveHeroSkill(strHero, HERO_SKILL_GUARDIAN_ANGEL);
					end;
					if enumHeroClass == TTH_ENUM.Retribution then
						GiveHeroSkill(strHero, 4);
						GiveHeroSkill(strHero, HERO_SKILL_GUARDIAN_ANGEL);
					end;
					if enumHeroClass == TTH_ENUM.Heretic then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 199);
					end;

					if enumHeroClass == TTH_ENUM.Ranger then
						GiveHeroSkill(strHero, 5);
						GiveHeroSkill(strHero, 191);
					end;
					if enumHeroClass == TTH_ENUM.Warden then
						GiveHeroSkill(strHero, 5);
						GiveHeroSkill(strHero, 195);
					end;
					if enumHeroClass == TTH_ENUM.Enchanter then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 203);
					end;

					if enumHeroClass == TTH_ENUM.GuildMaster then
						GiveHeroSkill(strHero, 4);
						GiveHeroSkill(strHero, 191);
					end;
					if enumHeroClass == TTH_ENUM.Wizard then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 3);
					end;
					if enumHeroClass == TTH_ENUM.ElementAlist then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 18);
					end;

					if enumHeroClass == TTH_ENUM.DemonLord then
						GiveHeroSkill(strHero, 4);
						GiveHeroSkill(strHero, 199);
					end;
					if enumHeroClass == TTH_ENUM.GateKeeper then
						GiveHeroSkill(strHero, 5);
						GiveHeroSkill(strHero, 203);
					end;
					if enumHeroClass == TTH_ENUM.Sorcerer then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 18);
					end;

					if enumHeroClass == TTH_ENUM.DeathKnight then
						GiveHeroSkill(strHero, 10);
						GiveHeroSkill(strHero, 199);
					end;
					if enumHeroClass == TTH_ENUM.Reaver then
						GiveHeroSkill(strHero, 1);
						GiveHeroSkill(strHero, 203);
					end;
					if enumHeroClass == TTH_ENUM.Necromancer then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 3);
					end;

					if enumHeroClass == TTH_ENUM.Engineer then
						GiveHeroSkill(strHero, 4);
						GiveHeroSkill(strHero, 191);
					end;
					if enumHeroClass == TTH_ENUM.Runemage then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 3);
					end;
					if enumHeroClass == TTH_ENUM.Flamekeepera then
						GiveHeroSkill(strHero, 2);
						GiveHeroSkill(strHero, 203);
					end;

					if enumHeroClass == TTH_ENUM.BeastMaster then
						GiveHeroSkill(strHero, 6);
						GiveHeroSkill(strHero, 191);
					end;
					if enumHeroClass == TTH_ENUM.Seer then
						GiveHeroSkill(strHero, 6);
						GiveHeroSkill(strHero, 199);
					end;
					if enumHeroClass == TTH_ENUM.Warlock then
						GiveHeroSkill(strHero, 8);
						GiveHeroSkill(strHero, 3);
					end;

					if enumHeroClass == TTH_ENUM.Barbarian then
						GiveHeroSkill(strHero, 6);
						GiveHeroSkill(strHero, 195);
					end;
				end;
				function TTH_GLOBAL.teachSkillAbsolute(strHero)
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					if enumHeroClass == TTH_ENUM.Knight then
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_TRAINING);
						GiveHeroSkill(strHero, HERO_SKILL_TRAINING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ENCOURAGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FRENZY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_POWER_OF_HASTE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_HOLY_CHARGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_CHARGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_PRAYER);
					end;
					if enumHeroClass == TTH_ENUM.Paladin then
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ENCOURAGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_EAGLE_EYE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_QUICKNESS_OF_MIND);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_BLESSING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ETERNAL_LIGHT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_PRAYER);
					end;
					if enumHeroClass == TTH_ENUM.Retribution then
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_ABJURATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TWILIGHT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DISTRACT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_COUNTERSPELL);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_PROTECTION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MAGIC_CUSHION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FIRE_PROTECTION);
					end;
					if enumHeroClass == TTH_ENUM.Heretic then
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_DARK_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DARK_MAGIC);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ENCOURAGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MYSTICISM);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_INSIGHTS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_SICKNESS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_PARIAH);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_PRAYER);
					end;

					if enumHeroClass == TTH_ENUM.Ranger then
						GiveHeroSkill(strHero, HERO_SKILL_AVENGER);
						GiveHeroSkill(strHero, HERO_SKILL_AVENGER);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_TRAINING);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SNIPE_DEAD);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ARCHERY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_CHILLING_STEEL);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_POWERFULL_BLOW);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SCOUTING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FOREST_RAGE);
					end;
					if enumHeroClass == TTH_ENUM.Warden then
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_RESISTANCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TACTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENSIVE_FORMATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_EVASION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENSIVE_FORMATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_LUCK);
					end;
					if enumHeroClass == TTH_ENUM.Enchanter then
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_CHAOTIC_SPELLS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_LUCKY_SPELLS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ARCANE_TRAINING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ELITE_CASTERS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_WRATH);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_LUCK);
					end;

					if enumHeroClass == TTH_ENUM.GuildMaster then
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MYSTICISM);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_INSIGHTS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_EAGLE_EYE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_QUICKNESS_OF_MIND);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_CHAOTIC_SPELLS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_WIZARDY);
					end;
					if enumHeroClass == TTH_ENUM.Wizard then
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_ARTIFICIER);
						GiveHeroSkill(strHero, HERO_SKILL_ARTIFICIER);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ARCANE_TRAINING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ELITE_CASTERS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_INTELLIGENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_STUDENT_AWARD);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MAGIC_MIRROR);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MAGIC_BOND);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_WIZARDY);
					end;
					if enumHeroClass == TTH_ENUM.ElementAlist then
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_INVOCATION);
						GiveHeroSkill(strHero, HERO_SKILL_INVOCATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ARCANE_TRAINING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_WISDOM);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_ICE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_FIRE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_LIGHTNINGS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_CASTER_CERTIFICATE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_EMPOWERED_SPELLS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_WIZARDY);
					end;

					if enumHeroClass == TTH_ENUM.BeastMaster then
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TACTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FRENZY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ENCOURAGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FAST_AND_FURIOUS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_LUCKY_STRIKE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ELVEN_LUCK);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ANCIENT_SMITHY);
					end;
					if enumHeroClass == TTH_ENUM.Seer then
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SCOUTING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TELEPORT_ASSAULT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_LIGHTNINGS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SECRETS_OF_DESTRUCTION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FRENZY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_POWER_OF_HASTE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_EXPLODING_CORPSES);
					end;
					if enumHeroClass == TTH_ENUM.Warlock then
						GiveHeroSkill(strHero, HERO_SKILL_INVOCATION);
						GiveHeroSkill(strHero, HERO_SKILL_INVOCATION);
						GiveHeroSkill(strHero, HERO_SKILL_INVOCATION);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DESTRUCTIVE_MAGIC);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_CASTER_CERTIFICATE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ELEMENTAL_VISION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_ICE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_FIRE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_LIGHTNINGS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_CHAINS);
					end;

					if enumHeroClass == TTH_ENUM.DeathKnight then
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_DARK_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DARK_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_NO_REST_FOR_THE_WICKED);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_LORD_OF_UNDEAD);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_CURSES);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SOIL_BURN);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SNATCH);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SPOILS_OF_WAR);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ROAD_HOME);
					end;
					if enumHeroClass == TTH_ENUM.Reaver then
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_SORCERY);
						GiveHeroSkill(strHero, HERO_SKILL_DARK_MAGIC);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEATH_SCREAM);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ARCANE_TRAINING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_MIND);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_FEAR);
					end;
					if enumHeroClass == TTH_ENUM.Necromancer then
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_NECROMANCY);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						GiveHeroSkill(strHero, HERO_SKILL_LEARNING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEATH_SCREAM);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_INTELLIGENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DARK_REVELATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_FEAR);
					end;

					if enumHeroClass == TTH_ENUM.DemonLord then
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_GATING_MASTERY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_QUICK_GATING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SCOUTING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TELEPORT_ASSAULT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_GATING);
					end;
					if enumHeroClass == TTH_ENUM.GateKeeper then
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_GATING_MASTERY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_QUICK_GATING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SCOUTING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TELEPORT_ASSAULT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_GATING);
					end;
					if enumHeroClass == TTH_ENUM.Sorcerer then
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_GATING);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						GiveHeroSkill(strHero, HERO_SKILL_LOGISTICS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_GATING_MASTERY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_QUICK_GATING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_SCOUTING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TELEPORT_ASSAULT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_GATING);
					end;

					if enumHeroClass == TTH_ENUM.Engineer then
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_WAR_MACHINES);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_RESISTANCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEAD_LUCK);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_RUNIC_MACHINES);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_EVASION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENSIVE_FORMATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_PROTECTION);
					end;
					if enumHeroClass == TTH_ENUM.Runemage then
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_LIGHT_MAGIC);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_RESISTANCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEAD_LUCK);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MASTER_OF_BLESSING);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ETERNAL_LIGHT);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_PROTECTION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MAGIC_CUSHION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_PROTECTION);
					end;
					if enumHeroClass == TTH_ENUM.Flamekeepera then
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_LUCK);
						GiveHeroSkill(strHero, HERO_SKILL_TRAINING);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_DEFENCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_RESISTANCE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_DEAD_LUCK);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_HOLY_CHARGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_TOUGHNESS);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_HOLD_GROUND);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_PROTECTION);
					end;

					if enumHeroClass == TTH_ENUM.Barbarian then
						GiveHeroSkill(strHero, HERO_SKILL_DEMONIC_RAGE);
						GiveHeroSkill(strHero, HERO_SKILL_DEMONIC_RAGE);
						GiveHeroSkill(strHero, HERO_SKILL_DEMONIC_RAGE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_OFFENCE);
						GiveHeroSkill(strHero, HERO_SKILL_LEADERSHIP);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_MEMORY_OF_OUR_BLOOD);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_BATTLE_ELATION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_FRENZY);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_RETRIBUTION);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ENCOURAGE);
						sleep(1);
						GiveHeroSkill(strHero, HERO_SKILL_ABSOLUTE_RAGE);
					end;
				end;

			-- 开局选择金币
				-- function TTH_GLOBAL.chooseStartGold(iPlayer)
				-- 	if TTH_VARI.playerStatus[iPlayer] == 0 then
				-- 		local iGold = GetPlayerResource(iPlayer, GOLD);
				-- 		if mod(iGold, 10000) >= 500 and mod(iGold, 10000) <= 1001 then
				-- 			TTH_GLOBAL.increaseResource(iPlayer, GOLD, 2500);
				-- 		end;
				-- 	end;
				-- end;

			-- 开局选择技能
				function TTH_GLOBAL.chooseStartSkill(iPlayer)
					if TTH_VARI.playerStatus[iPlayer] == 0 then
						local iGold = GetPlayerResource(iPlayer, GOLD);
						if mod(iGold, 10000) >= 500 and mod(iGold, 10000) <= 1001 then
							TTH_GLOBAL.implStartSkill(iPlayer);
						end;
					end;
				end;
				function TTH_GLOBAL.implStartSkill(iPlayer)
					local arrHero = GetPlayerHeroes(iPlayer);
					local strHero = arrHero[0];
					local arrMasteryOption = {};
					for iMasteryId, objMastery in TTH_TABLE.Mastery do
						if GetHeroSkillMastery(strHero, iMasteryId) > 0	and GetHeroSkillMastery(strHero, iMasteryId) <= 2 then
							GiveHeroSkill(strHero, iMasteryId);
						end;
					end;
				end;

			-- 开局选择生物
				function TTH_GLOBAL.chooseStartCreature(iPlayer)
					if TTH_VARI.playerStatus[iPlayer] == 0 then
						local iWOOD = GetPlayerResource(iPlayer, WOOD);
						local iORE = GetPlayerResource(iPlayer, ORE);
						local iMERCURY = GetPlayerResource(iPlayer, MERCURY);
						local iCRYSTAL = GetPlayerResource(iPlayer, CRYSTAL);
						local iSULFUR = GetPlayerResource(iPlayer, SULFUR);
						local iGEM = GetPlayerResource(iPlayer, GEM);
						if iWOOD ~= iMERCURY * 2
							or iWOOD ~= iCRYSTAL * 2
							or iWOOD ~= iSULFUR * 2
							or iWOOD ~= iGEM * 2 then
							local iGameDifficulty = TTH_GLOBAL.getGameDifficulty();
							local iNumberBasic = 0;
							if iGameDifficulty == 0 then
								iNumberBasic = 15;
							elseif iGameDifficulty == 3 then
								iNumberBasic = 5;
							else
								iNumberBasic = 10;
							end;
							SetPlayerResource(iPlayer, WOOD, iNumberBasic * 2);
							SetPlayerResource(iPlayer, ORE, iNumberBasic * 2);
							SetPlayerResource(iPlayer, MERCURY, iNumberBasic);
							SetPlayerResource(iPlayer, CRYSTAL, iNumberBasic);
							SetPlayerResource(iPlayer, SULFUR, iNumberBasic);
							SetPlayerResource(iPlayer, GEM, iNumberBasic);
							TTH_GLOBAL.implStartCreature(iPlayer);
						end;
					end;
				end;
				function TTH_GLOBAL.implStartCreature(iPlayer)
					local arrHero = GetPlayerHeroes(iPlayer);
					local strHero = arrHero[0];
					local iTier = 1;
					if H55_StartCreatureBonusTier < 1
						or H55_StartCreatureBonusTier > 7 then
						return nil;
					end
					iTier = H55_StartCreatureBonusTier;
					local iGold = GetPlayerResource(iPlayer, GOLD);
					if iTier == 6 then
						SetPlayerResource(iPlayer, GOLD, iGold - 2000);
					elseif iTier == 7 then
						SetPlayerResource(iPlayer, GOLD, iGold - 5000);
					end;
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					local iGrowth = 1;
					local iCreatureId = TTH_TABLE.Creature8RaceAndLevel[iHeroRace][iTier][1];
					if iTier == 4 then
						iGrowth = 3;
					elseif iTier < 4 then
						iGrowth = TTH_TABLE_NCF_CREATURES[iCreatureId]["GROWTH"];
					end;
					TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iGrowth, TTH_ENUM.AddCreature);
				end;

			-- 开局选择宝物
				function TTH_GLOBAL.chooseStartArtifact(iPlayer)
					if H55_ChooseArtifact_Switch == 1 and  contains(TTH_ARTIFACT_STARTING, H55_ChooseArtifact_ID) ~= nil then
						if TTH_VARI.playerStatus[iPlayer] == 0 then
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

			-- 开局设置资源
				function TTH_GLOBAL.setStartResource(iPlayer)
					if H55_PlayerStartResource == 0 then
						if TTH_VARI.playerStatus[iPlayer] == 0 then
							SetPlayerResource(iPlayer, 0, 0);
							SetPlayerResource(iPlayer, 1, 0);
							SetPlayerResource(iPlayer, 2, 0);
							SetPlayerResource(iPlayer, 3, 0);
							SetPlayerResource(iPlayer, 4, 0);
							SetPlayerResource(iPlayer, 5, 0);
							SetPlayerResource(iPlayer, 6, 0);
							print("Player's resource has been token");
						end;
					end;
				end;

			-- 根据游戏难度设置经验系数
				function TTH_GLOBAL.setExpCoef8GameDifficulty()
						local iGameDifficulty = TTH_GLOBAL.getGameDifficulty();
						local coef = 1;
						if iGameDifficulty == 3 then coef = 1.27 end;
						if iGameDifficulty == 2 then coef = 1.18 end;
						if iGameDifficulty == 1 then coef = 1.09 end;
						SetHeroesExpCoef(coef);
				end;

			-- 初始英雄触发器绑定 英雄升级
				function TTH_GLOBAL.triggerInitHeroLevelUp(strHero)
					SetTrigger(HERO_LEVELUP_TRIGGER, strHero, "TTH_TRIGGER.heroLevelUp"..strHero);
				end;

			-- 初始玩家触发器绑定 招募英雄
				function TTH_GLOBAL.triggerInitPlayerAddHero(iPlayer)
					SetTrigger(PLAYER_ADD_HERO_TRIGGER, iPlayer, "TTH_TRIGGER.playerAddHero");
				end;

			-- 初始玩家触发器绑定 失去英雄
				function TTH_GLOBAL.triggerInitPlayerRemoveHero(iPlayer)
					SetTrigger(PLAYER_REMOVE_HERO_TRIGGER, iPlayer, "TTH_TRIGGER.playerRemoveHero");
				end;

			-- 绑定英雄自定义技能4 王国管理
				function TTH_GLOBAL.bindHeroCustomAbility4Hero(strHero)
					ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_4, CUSTOM_ABILITY_ENABLED);
				end;

			-- 绑定英雄自定义技能3 定点回城
				function TTH_GLOBAL.bindHeroCustomAbility3Hero(strHero)
					ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_ENABLED);
				end;

		-- 组队
			-- 单人游戏启动器
				function TTH_GLOBAL.startUpSinglePlayer()
					if TTH_COMMON.getTargetCount(TTH_VARI.playerStatus, 0) == 1 then
						if TTH_VARI.switchSingleton == 0 then
							TTH_VARI.switchSingleton = 1;
							TTH_TABLE.KingManageOption[7] = nil;
							startThread(TTH_MAIN.init);
							TTH_COMMON.consoleSetGameVar("TTH_Var_SwitchSingleton", TTH_VARI.switchSingleton);
						end;
					else
						for i = 1, 8 do
							if TTH_VARI.playerStatus[i] == 0 then
								TTH_GLOBAL.bindHeroCustomAbility4Hero(GetPlayerHeroes(i)[0]); -- 触发器: 王国管理
								break;
							end;
						end;
					end;
				end;

			-- 多人游戏启动器
				function TTH_GLOBAL.startUpMultiPlayer()
					local iPlayer = 1;
					for i = 1, 8 do
						if IsPlayerCurrent(i) then
							iPlayer = i;
						end;
					end;
					if TTH_COMMON.getTargetCount(TTH_VARI.playerStatus, 0) > 1 then
						TTH_VARI.isMultiPlayer = TTH_ENUM.Yes;
						QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
							, "/Text/Game/Scripts/Teamquestion.txt"
							, "TTH_GLOBAL.doHumanTeamUp"
							, "TTH_GLOBAL.doHumanFfa");
					end;
				end;

			-- 人类玩家组队
				function TTH_GLOBAL.doHumanTeamUp()
					local iIndexFirstHuman = 1;
					for i = 1, 8 do
						if TTH_VARI.playerStatus[i] == 0 then
							iIndexFirstHuman = i;
							break;
						end;
					end;
					for i = 1, 8 do
						if TTH_VARI.playerStatus[i] == 0 then
							SetPlayerTeam(i, iIndexFirstHuman);
						end;
					end;
				end;

			-- 人类玩家FFA
				function TTH_GLOBAL.doHumanFfa()
					print("Human is FFA");
				end;

			-- AI玩家组队
				function TTH_GLOBAL.checkAiCount()
					if TTH_COMMON.getTargetCount(TTH_VARI.playerStatus, 1) > 1 then
						if H55_AllAgainstOne == 1 then
							TTH_GLOBAL.doAiTeamUp();
						end;
					end;
				end;
				function TTH_GLOBAL.doAiTeamUp()
					local iIndexFirstAi = 1;
					for i = 1, 8 do
						if TTH_VARI.playerStatus[i] == 1 then
							iIndexFirstAi = i;
							break;
						end;
					end;
					for i = 1, 8 do
						if TTH_VARI.playerStatus[i] == 1 then
							SetPlayerTeam(i, iIndexFirstAi);
						end;
					end;
				end;

		-- 资源
			TTH_VARI.settleResource = {};

			-- 减少玩家资源
				function TTH_GLOBAL.reduceResource(iPlayer, enumResource, iReduceCount)
					local iCurrentCount = GetPlayerResource(iPlayer, enumResource);
					local iNewCount = iCurrentCount - iReduceCount;
					if iNewCount < 0 then
						SetPlayerResource (iPlayer, enumResource, 0);
					else
						SetPlayerResource (iPlayer, enumResource, iNewCount);
					end;
				end;

			-- 增加玩家资源
				function TTH_GLOBAL.increaseResource(iPlayer, enumResource, iIncreasedCount, strHero)
					local iCurrentCount = GetPlayerResource(iPlayer, enumResource);
					local iNewCount = iCurrentCount + iIncreasedCount;
					if iNewCount < 0 then
						SetPlayerResource(iPlayer, enumResource, 0);
					else
						if strHero == nil then
							SetPlayerResource(iPlayer, enumResource, iNewCount);
						else
							SetPlayerResource(iPlayer, enumResource, iNewCount, strHero);
						end;
					end;
				end;

			-- 初始化玩家资源结算表
				function TTH_GLOBAL.initSettleResource(iPlayer)
					if TTH_VARI.settleResource[iPlayer] == nil then
						TTH_VARI.settleResource[iPlayer] = {};
					end;
					for i = WOOD, GOLD do
						TTH_VARI.settleResource[iPlayer][i] = 0;
					end;
				end;

			-- 设置玩家资源
				function TTH_GLOBAL.putSettleResource(iPlayer, enumResource, iCount)
					TTH_VARI.settleResource[iPlayer][enumResource] = TTH_VARI.settleResource[iPlayer][enumResource] + iCount;
				end;

			-- 结算玩家资源
				function TTH_GLOBAL.dealSettleResource(iPlayer)
					TTH_MAIN.debug("TTH_GLOBAL.dealSettleResource", iPlayer, nil);

					for i = WOOD, GOLD do
						TTH_GLOBAL.increaseResource(iPlayer, i, TTH_VARI.settleResource[iPlayer][i]);
						TTH_VARI.settleResource[iPlayer][i] = 0;
					end;

					print("Player-"..iPlayer.." dealSettleResource-"..TTH_VARI.counterDealSettleResource[iPlayer].." event finished");
				end;

		-- 兵种特初始赠送生物 Specialty
			function TTH_GLOBAL.initHero4Specialty(strHero)
				TTH_MAIN.debug("TTH_GLOBAL.initHero4Specialty", nil, strHero);

				local arrSpecialty = TTH_TABLE.Hero[strHero]["Specialty"];
				if arrSpecialty ~= nil then
					for i, objSpecialty in arrSpecialty do
						local iCreatureId = objSpecialty["CreatureId"];
						local objCreature = TTH_TABLE_NCF_CREATURES[iCreatureId];
						local iInitNumber = objCreature["GROWTH"];
						if objCreature["TIER"] >= 4 then
							iInitNumber = TTH_COMMON.floor(iInitNumber / 2);
						end;
						TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iInitNumber, TTH_ENUM.AddCreature);
					end
				end;
			end;

		-- 兵种特每周赠送生物 Specialty
			function TTH_GLOBAL.giveHero4Specialty8Weekly(iPlayer, strHero)
				TTH_MAIN.debug("TTH_GLOBAL.giveHero4Specialty8Weekly", iPlayer, strHero);

				local arrSpecialty = TTH_TABLE.Hero[strHero]["Specialty"];
				if arrSpecialty ~= nil then
					local iHeroLevel = GetHeroLevel(strHero);
					for i, objSpecialty in arrSpecialty do
						local iCreatureId = objSpecialty["CreatureId"];
						local objCreature = TTH_TABLE_NCF_CREATURES[iCreatureId];
						local iGrowth = objCreature["GROWTH"];
						local iHeroStat = 0;
						if objSpecialty["Stat"] ~= nil then
							iHeroStat = GetHeroStat(strHero, objSpecialty["Stat"]);
						end;
						local fBonus8Artifact = 1;
						if objSpecialty["ArtifactId"] ~= nil then
							if HasArtefact(strHero, objSpecialty["ArtifactId"], 0) ~= nil then
								fBonus8Artifact = 1.5;
							end;
						end;

						local iWeeklyNumber = TTH_COMMON.round(iGrowth * (iHeroLevel + iHeroStat) / 40 * fBonus8Artifact);
						if iWeeklyNumber < 1 then
							iWeeklyNumber = 1;
						end;
						local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
						if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
							iWeeklyNumber = iWeeklyNumber * H55_AIArmyCoef; -- AI按倍数增兵
						end;

						if objCreature["Upgrade"] ~= nil then
							local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
							for i = 0, 6 do
								if arrCreature4Hero[i]["Id"] == objCreature["Upgrade"][1] then
									iCreatureId = objCreature["Upgrade"][1];
									break;
								elseif arrCreature4Hero[i]["Id"] == objCreature["Upgrade"][2] then
									iCreatureId = objCreature["Upgrade"][2];
									break;
								elseif arrCreature4Hero[i]["Id"] == iCreatureId then
									break;
								else
								end;
							end;
						end;

						TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iWeeklyNumber, TTH_ENUM.AddCreature);
					end
				end;
			end;

		-- 属性特增加属性 Attribute
			TTH_VARI.attribute4Hero = {};
			function TTH_GLOBAL.giveHero4Attribute(strHero)
				TTH_MAIN.debug("TTH_GLOBAL.giveHero4Attribute", nil, strHero);

				local objAttribute = TTH_TABLE.Hero[strHero]["Attribute"];
				if objAttribute ~= nil then
					if TTH_VARI.attribute4Hero[strHero] == nil then
						TTH_VARI.attribute4Hero[strHero] = 0;
					end;
					local iHeroLevel = GetHeroLevel(strHero);
					local iStep = objAttribute["Step"];
					local enumAttriType = objAttribute["Type"];
					local iDiffStat = TTH_COMMON.floor(iHeroLevel / iStep) - TTH_VARI.attribute4Hero[strHero];
					if iDiffStat > 0 then
						TTH_VARI.attribute4Hero[strHero] = TTH_COMMON.floor(iHeroLevel / iStep);
						if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
							local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
							if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
								TTH_GLOBAL.signChangeHeroStat(strHero, enumAttriType, iDiffStat, TTH_ENUM.Yes);
							end;
						end;
					end;
				end;
			end;

		-- 执行传送
			function TTH_GLOBAL.teleHero2Point(iPlayer, strHero, strPoint, bIsDeviation)
				local iPosX, iPosY, iPosZ = GetObjectPosition(strPoint);
				Play2DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndTPStart);
				PlayVisualEffect("/Effects/_(Effect)/Spells/townportal_start.xdb#xpointer(/Effect)", strPoint, "", 0, 0, 0, 0, iPosZ);
				if bIsDeviation == TTH_ENUM.Yes then
					SetObjectPosition(strHero, iPosX + 1, iPosY + 1, iPosZ);
				else
					SetObjectPosition(strHero, iPosX, iPosY, iPosZ);
				end;
				TTH_COMMON.wakeup();
				sleep(8);
				Play2DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndTPEnd);
			end;

		-- 获取
			-- 获取玩家种族
				function TTH_GLOBAL.getPlayerRace(iPlayer)
					return TTH_VARI.playerFaction[iPlayer];
				end;

			-- 根据城镇获取种族
				function TTH_GLOBAL.getRace8Town(strTown)
					local iTownRace = 0;
					if contains(GetObjectNamesByType("TOWN_HEAVEN"), strTown) ~= nil then
						iTownRace = TOWN_HEAVEN;
					elseif contains(GetObjectNamesByType("TOWN_PRESERVE"), strTown) ~= nil then
						iTownRace = TOWN_PRESERVE;
					elseif contains(GetObjectNamesByType("TOWN_ACADEMY"), strTown) ~= nil then
						iTownRace = TOWN_ACADEMY;
					elseif contains(GetObjectNamesByType("TOWN_DUNGEON"), strTown) ~= nil then
						iTownRace = TOWN_DUNGEON;
					elseif contains(GetObjectNamesByType("TOWN_NECROMANCY"), strTown) ~= nil then
						iTownRace = TOWN_NECROMANCY;
					elseif contains(GetObjectNamesByType("TOWN_INFERNO"), strTown) ~= nil then
						iTownRace = TOWN_INFERNO;
					elseif contains(GetObjectNamesByType("TOWN_FORTRESS"), strTown) ~= nil then
						iTownRace = TOWN_FORTRESS;
					elseif contains(GetObjectNamesByType("TOWN_STRONGHOLD"), strTown) ~= nil then
						iTownRace = TOWN_STRONGHOLD;
					end;
					return iTownRace;
				end;

			-- 根据英雄获取种族
				function TTH_GLOBAL.getRace8Hero(strHero)
					return TTH_TABLE.Hero[strHero]["Race"];
				end;

			-- 根据英雄获取玩家 该方法可在英雄在内城时使用 系统自带的GetObjectOwner不可在英雄在内城时使用
				function TTH_GLOBAL.GetObjectOwner(strHero)
					local iPlayer = 0;
					for i = 1, 8 do
						local arrHero = GetPlayerHeroes(i);
						if contains(arrHero, strHero) ~= nil then
							iPlayer = i;
							return iPlayer;
						end;
					end;
				end;

			-- 获取玩家是否为AI -- 0: 不是AI; 1: 是AI
				function TTH_GLOBAL.isAi(iPlayer)
					local bPlayerStatus = 0;
					if TTH_VARI.playerStatus[iPlayer] == 1 then
						bPlayerStatus = 1;
					end;
					return bPlayerStatus;
				end;

			-- 获取玩家拥有的城镇数组
				function TTH_GLOBAL.listTown8Player(iPlayer)
					local arrPlayerTown = {};
					for iIndexTown, objTown in TTH_VARI.arrTown do
						if GetObjectOwner(objTown) == iPlayer then
							TTH_COMMON.push(arrPlayerTown, objTown);
						end;
					end;
					return arrPlayerTown;
				end;

			-- 获取玩家拥有的城镇数量
				function TTH_GLOBAL.countTown8Player(iPlayer)
					local iCount = 0;
					for iIndexTown, objTown in TTH_VARI.arrTown do
						if GetObjectOwner(objTown) == iPlayer then
							iCount = iCount + 1;
						end;
					end;
					return iCount;
				end;

			-- 获取玩家拥有的该种族城镇数组
				function TTH_GLOBAL.listTown8Player4Race(iPlayer, iRace)
					local arrPlayerTown = {};
					for iIndexTown, objTown in GetObjectNamesByType(TTH_GLOBAL.getRaceType8RaceId(iRace)) do
						if GetObjectOwner(objTown) == iPlayer then
							TTH_COMMON.push(arrPlayerTown, objTown);
						end;
					end;
					return arrPlayerTown;
				end;

			-- 获取玩家所占领的前哨总数量，不分等级
				function TTH_GLOBAL.countDwelling8Player(iPlayer)
					local iCount = 0;
					for iTier = 1, 4 do
						for iRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
							local arrDwelling8Race = GetObjectNamesByType(TTH_TABLE.DwellingOnAdvMap[iTier][iRace]);
							for i, strDwelling in arrDwelling8Race do
								if GetObjectOwner(strDwelling) == iPlayer then
									iCount = iCount + 1;
								end;
							end;
						end;
					end;
					return iCount;
				end;

			-- 获取玩家所占领的资源矿总数量
				function TTH_GLOBAL.countMine8Player(iPlayer)
					local iCount = 0;
					for iIndex, strMineType in TTH_TABLE.MineOnAdvMap do
						for i, strMine in TTH_VARI.arrBuilding[strMineType] do
							if GetObjectOwner(strMine) == iPlayer then
								iCount = iCount + 1;
							end;
						end;
					end;
					return iCount;
				end;

			-- 根据种族ID获取城镇字符串
				function TTH_GLOBAL.getRaceType8RaceId(iRace)
					local strRaceType = "";
					if iRace == TOWN_HEAVEN then
						strRaceType = "TOWN_HEAVEN";
					elseif iRace == TOWN_PRESERVE then
						strRaceType = "TOWN_PRESERVE";
					elseif iRace == TOWN_ACADEMY then
						strRaceType = "TOWN_ACADEMY";
					elseif iRace == TOWN_DUNGEON then
						strRaceType = "TOWN_DUNGEON";
					elseif iRace == TOWN_NECROMANCY then
						strRaceType = "TOWN_NECROMANCY";
					elseif iRace == TOWN_INFERNO then
						strRaceType = "TOWN_INFERNO";
					elseif iRace == TOWN_FORTRESS then
						strRaceType = "TOWN_FORTRESS";
					elseif iRace == TOWN_STRONGHOLD then
						strRaceType = "TOWN_STRONGHOLD";
					end;
					return strRaceType;
				end;

			-- 获取英雄所在城门口 -- nil: 不在城门口; strTown: 城镇ID
				function TTH_GLOBAL.isHeroAtTownGate(strHero)
					local iPlayer = GetObjectOwner(strHero);
					local strTown = nil;
					for i, strGate in TTH_GLOBAL.listTown8Player(iPlayer) do
						if IsHeroInTown(strHero, strGate, 1, 0) == not nil then
							strTown = strGate;
							break;
						end;
					end;
					return strTown;
				end;

			-- 获取内城是否有英雄 -- 0: 否; 1: 是
				function TTH_GLOBAL.isGarrisonHasHero(iPlayer, strTown)
					local arrHero = GetPlayerHeroes(iPlayer);
					local bIsHeroAtTownGarrison = 0;
					for iIndexHero, strHero in arrHero do
						if TTH_GLOBAL.getDistance(strHero, strTown) == 0 then
							bIsHeroAtTownGarrison = 1;
							break;
						end;
					end;
					return bIsHeroAtTownGarrison;
				end;

			-- 获取英雄是否驻扎在内城 -- 0: 否; 1: 是
				function TTH_GLOBAL.isHeroAtGarrison(strHero)
					local bIsHeroAtGarrison = TTH_ENUM.No;
					-- 距离方式
						-- for iIndexTown, strTown in TTH_VARI.arrTown do
						-- 	if TTH_GLOBAL.getDistance(strHero, strTown) == 0 then
						-- 		bIsHeroAtGarrison = 1;
						-- 		break;
						-- 	end;
						-- end;

					if GetHeroTown(strHero) then
						bIsHeroAtGarrison = TTH_ENUM.Yes;
					end;
					return bIsHeroAtGarrison;
				end;

			-- 获取英雄离最近城镇的距离
				function TTH_GLOBAL.getDistance4Hero2NearestTown(strHero)
					local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
					local arrTown = TTH_GLOBAL.listTown8Player(iPlayer);
					local arrDistance = {};
					for i, strTown in arrTown do
						TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strTown, 1));
					end
					local iMinDistance = TTH_COMMON.min(arrDistance);
					return iMinDistance;
				end;

			-- 获取英雄离最近管辖城镇的距离
				function TTH_GLOBAL.getDistance4Hero2NearestMayorTown(strHero)
					local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
					local arrTown = TTH_VARI.arrMayor[strHero]["Town"];
					local arrDistance = {};
					for strTown, objTown in arrTown do
						TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strTown));
					end

					local arrDistanceMenel = TTH_TALENT.getDistance4Hero2NearestMayorTown8Menel(iPlayer, strHero);
					arrDistance = TTH_COMMON.concat(arrDistance, arrDistanceMenel);

					local arrDistanceWulfstan = TTH_TALENT.getDistance4Hero2NearestMayorTown8Wulfstan(iPlayer, strHero);
					arrDistance = TTH_COMMON.concat(arrDistance, arrDistanceWulfstan);

					local arrDistanceGillion = TTH_TALENT.getDistance4Hero2NearestMayorTown8Gillion(iPlayer, strHero);
					arrDistance = TTH_COMMON.concat(arrDistance, arrDistanceGillion);

					local arrDistanceBrem = TTH_TALENT.getDistance4Hero2NearestMayorTown8Brem(iPlayer, strHero);
					arrDistance = TTH_COMMON.concat(arrDistance, arrDistanceBrem);

					local arrDistanceAstral = TTH_TALENT.getDistance4Hero2NearestMayorTown8Astral(iPlayer, strHero);
					arrDistance = TTH_COMMON.concat(arrDistance, arrDistanceAstral);

					local iDistanceNikolay = TTH_TALENT.getDistance4Hero2NearestMayorTown8Nikolay(iPlayer, strHero);
					arrDistance = TTH_COMMON.push(arrDistance, iDistanceNikolay);

					local arrDistance182 = TTH_PERK.getDistance4Hero2NearestMayorTown8182(iPlayer, strHero);
					arrDistance = TTH_COMMON.concat(arrDistance, arrDistance182);

					local iMinDistance = TTH_COMMON.min(arrDistance);
					return iMinDistance;
				end;

			-- 获取英雄真实幸运
				function TTH_GLOBAL.getRealLuck8Hero(strHero)
					local iLuck = 0;
					if TTH_VARI.luck4Hero[strHero] ~= nil then
						iLuck = iLuck + TTH_VARI.luck4Hero[strHero];
					end;
					if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_GUARDIAN) >= 4 then
						iLuck = iLuck + 1;
					end;
					if HasArtefact(strHero, ARTIFACT_FOUR_LEAF_CLOVER, 1) ~= nil then
						iLuck = iLuck + 1;
					end;
					if HasArtefact(strHero, ARTIFACT_TAROT_DECK, 1) ~= nil then
						iLuck = iLuck + 1;
					end;
					if HasArtefact(strHero, ARTIFACT_GUARDIAN_02, 1) ~= nil then
						iLuck = iLuck + 1;
					end;
					if HasArtefact(strHero, ARTIFACT_GOLDEN_HORSESHOE, 1) ~= nil then
						iLuck = iLuck + 1;
					end;
					if HasArtefact(strHero, ARTIFACT_CROWN_OF_COURAGE, 1) ~= nil then
						iLuck = iLuck + 2;
					end;
					if HasArtefact(strHero, ARTIFACT_ANGEL_WINGS, 1) ~= nil then
						iLuck = iLuck + 2;
					end;
					if HasArtefact(strHero, ARTIFACT_INHERITANCE, 1) ~= nil then
						iLuck = iLuck + 2;
					end;
					if GetHeroSkillMastery(strHero, SKILL_LUCK) ~= nil then
						iLuck = iLuck + GetHeroSkillMastery(strHero, SKILL_LUCK);
					end;
					if HasHeroSkill(strHero, HERO_SKILL_FOREST_RAGE) ~= nil then
						iLuck = iLuck + 1;
					end;
					return iLuck;
				end;

			-- 获取英雄当前战力
				function TTH_GLOBAL.getPower8Hero(strHero)
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					local iPower = 0;
					for i = 0, 6 do
						if arrCreature4Hero[i]["Id"] ~= 0 then
							iPower = iPower + TTH_TABLE_NCF_CREATURES[arrCreature4Hero[i]["Id"]]["POWER"] * arrCreature4Hero[i]["Count"];
						end;
					end;
					return iPower;
				end;

			-- 获取对象当前战力
				function TTH_GLOBAL.getPower8Object(strHero)
					local arrCreature4Object = TTH_GLOBAL.getObjectCreatureInfo(strHero);
					local iPower = 0;
					for i = 0, 6 do
						if arrCreature4Object[i]["Id"] ~= 0 then
							iPower = iPower + TTH_TABLE_NCF_CREATURES[arrCreature4Object[i]["Id"]]["POWER"] * arrCreature4Object[i]["Count"];
						end;
					end;
					return iPower;
				end;

		-- 全局参数
			-- 保存英雄等级到游戏全局参数中
				function TTH_GLOBAL.setGameVar4HeroLevel(strHero)
					TTH_MAIN.debug("TTH_GLOBAL.setGameVar4HeroLevel", nil, strHero);

					local iHeroLevel = GetHeroLevel(strHero);
					TTH_COMMON.consoleSetGameVar('TTH_Var_HeroLevel_'..strHero, iHeroLevel);
				end;

			-- 保存英雄宝物到游戏全局参数中
				TTH_TABLE.CombatArtifact = {
					[0] = ARTIFACT_ANGELIC_ALLIANCE
					, [1] = ARTIFACT_CURSE_SHOULDER
					, [2] = ARTIFACT_SENTINEL
					, [3] = ARTIFACT_EIGHTFOLD
					, [4] = ARTIFACT_MOONBLADE
					, [5] = ARTIFACT_BAND_OF_CONJURER
					, [6] = ARTIFACT_PENDANT_OF_BLIND
					, [7] = ARTIFACT_DRUM_OF_CHARGE
					, [8] = ARTIFACT_GEM_OF_PHANTOM
					, [9] = ARTIFACT_BOOK_OF_MALASSA
					, [10] = ARTIFACT_RING_OF_MACHINE_AFFINITY					
				};
				function TTH_GLOBAL.setGameVar4HeroArtifact(iPlayer, strHero)
					TTH_MAIN.debug("TTH_GLOBAL.setGameVar4HeroArtifact", iPlayer, strHero);

					for iIndexArtifact, objArtifact in TTH_TABLE.CombatArtifact do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT..strHero..'_'..objArtifact;
						if HasArtefact(strHero, objArtifact, 1) ~= nil then
							local iValue = 1;
							if objArtifact == ARTIFACT_GEM_OF_PHANTOM then
								iValue = TTH_ARTI.calcValue102(iPlayer, strHero);
							end;
							if objArtifact == ARTIFACT_BOOK_OF_MALASSA then
								iValue = TTH_ARTI.calcValue147(iPlayer, strHero);
							end;
							TTH_COMMON.consoleSetGameVar(strKey, iValue);
						else
							TTH_COMMON.consoleSetGameVar(strKey, 0);
						end;
					end;
				end;
				function TTH_GLOBAL.removeGameVar4HeroArtifact(strHero)
					for iIndexArtifact, objArtifact in TTH_TABLE.CombatArtifact do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT..strHero..'_'..objArtifact;
						TTH_COMMON.consoleSetGameVar(strKey, 0);
					end;
				end;
				TTH_TABLE.CombatArtifactSet = {
					[1] = {
						["Id"] = TTH_ENUM.SET_OGRES
						, ["Count"] = 2
					}
				};
				function TTH_GLOBAL.setGameVar4HeroArtifactSet(iPlayer, strHero)
					TTH_MAIN.debug("TTH_GLOBAL.setGameVar4HeroArtifactSet", iPlayer, strHero);

					for i, objArtifactSet in TTH_TABLE.CombatArtifactSet do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACTSET..strHero..'_'..objArtifactSet["Id"]..'_'..objArtifactSet["Count"];
						local iCount = TTH_GLOBAL.getSetComponentCount(strHero, objArtifactSet["Id"]); -- 统计套装件数（含星尘坠饰）
						if iCount > 0 then
							TTH_COMMON.consoleSetGameVar(strKey, iCount);
						else
							TTH_COMMON.consoleSetGameVar(strKey, 0);
						end;
					end;
				end;
				function TTH_GLOBAL.removeGameVar4HeroArtifactSet(strHero)
					for i, objArtifactSet in TTH_TABLE.CombatArtifactSet do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACTSET..strHero..'_'..objArtifactSet["Id"]..'_'..objArtifactSet["Count"];
						TTH_COMMON.consoleSetGameVar(strKey, 0);
					end;
				end;

			-- 保存英雄技能到游戏全局参数中
				TTH_TABLE.CombatSkill = {
					[0] = HERO_SKILL_WEAKENING_STRIKE
					, [1] = HERO_SKILL_ELITE_CASTERS
					, [2] = HERO_SKILL_MYSTICISM
					, [3] = HERO_SKILL_PRAYER
					, [4] = HERO_SKILL_MASTER_OF_ICE
					, [5] = HERO_SKILL_MASTER_OF_FIRE
					, [6] = HERO_SKILL_MASTER_OF_LIGHTNINGS
					, [7] = HERO_SKILL_SEAL_OF_PROTECTION
					, [8] = HERO_SKILL_DEATH_TREAD
					, [9] = HERO_SKILL_EXPLODING_CORPSES
					, [10] = HERO_SKILL_FOREST_RAGE
					, [11] = HERO_SKILL_BALLISTA
					, [12] = HERO_SKILL_TRIPLE_BALLISTA
					, [13] = HERO_SKILL_CHILLING_STEEL
					, [14] = HERO_SKILL_WILDFIRE
				};
				TTH_TABLE.CombatSkill2Special = {
					[0] = HERO_SKILL_PARIAH
					, [1] = HERO_SKILL_TWILIGHT
				};
				function TTH_GLOBAL.setGameVar4HeroSkill(strHero)
					for iIndexSkill, objSkill in TTH_TABLE.CombatSkill do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..objSkill;
						if HasHeroSkill(strHero, objSkill) ~= nil then
							TTH_COMMON.consoleSetGameVar(strKey, 1);
						else
							TTH_COMMON.consoleSetGameVar(strKey, 0);
						end;
					end;
				end;
				function TTH_GLOBAL.setGameVar4HeroSkill2Special(strHero)
					for iIndexSkill, objSkill in TTH_TABLE.CombatSkill2Special do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..objSkill;
						if HasHeroSkill(strHero, objSkill) == nil then
							TTH_COMMON.consoleSetGameVar(strKey, 0);
						end;
					end;
				end;
				function TTH_GLOBAL.removeGameVar4HeroSkill(strHero)
					for iIndexSkill, objSkill in TTH_TABLE.CombatSkill do
						local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..objSkill;
						TTH_COMMON.consoleSetGameVar(strKey, 0);
					end;
				end;

		-- 战斗胜利后
			-- 魔法值恢复
				TTH_TABLE.RecoveryMana4Winner = {
					[0] = {
						["Id"] = ARTIFACT_MONK_01
						, ["Value"] = 4
						, ["Type"] = TTH_ENUM.Artifact
					}
					, [1] = {
						["Id"] = ARTIFACT_MONK_02
						, ["Value"] = 2
						, ["Type"] = TTH_ENUM.Artifact
					}
					, [2] = {
						["Id"] = ARTIFACT_MONK_04
						, ["Value"] = 3
						, ["Type"] = TTH_ENUM.Artifact
					}
					, [3] = {
						["Id"] = HERO_SKILL_ETERNAL_LIGHT
						, ["Value"] = 2
						, ["Type"] = TTH_ENUM.Perk
					}
					, [4] = {
						["Id"] = HERO_SKILL_PAYBACK
						, ["Value"] = 2
						, ["Type"] = TTH_ENUM.Perk
					}
					, [5] = {
						["Id"] = HERO_SKILL_SECRETS_OF_DESTRUCTION
						, ["Value"] = 2
						, ["Type"] = TTH_ENUM.Perk
					}
					, [6] = {
						["Id"] = HERO_SKILL_LIGHT_MAGIC
						, ["Value"] = 1
						, ["Type"] = TTH_ENUM.Mastery
					}
					, [7] = {
						["Id"] = HERO_SKILL_DARK_MAGIC
						, ["Value"] = 1
						, ["Type"] = TTH_ENUM.Mastery
					}
					, [8] = {
						["Id"] = HERO_SKILL_SUMMONING_MAGIC
						, ["Value"] = 1
						, ["Type"] = TTH_ENUM.Mastery
					}
					, [9] = {
						["Id"] = HERO_SKILL_DESTRUCTIVE_MAGIC
						, ["Value"] = 1
						, ["Type"] = TTH_ENUM.Mastery
					}
				}
				-- 执行
					function TTH_GLOBAL.dealRecoveryMana4Winner(iPlayer, strHero)
						TTH_MAIN.debug("TTH_GLOBAL.dealRecoveryMana4Winner", iPlayer, strHero);

						local iRecovery = TTH_GLOBAL.calcRecoveryMana4Winner(strHero);
						if iRecovery > 0 then
							ChangeHeroStat(strHero, STAT_MANA_POINTS, TTH_COMMON.round(iRecovery));
							if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
								local iPlayer = GetObjectOwner(strHero);
								if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
									ShowFlyingSign({"/Text/Game/Scripts/CombatManaReceived.txt";num=iRecovery}, strHero, iPlayer, 5);
									sleep(2);
								end;
							end;
						end;
					end;
				-- 计算
						function TTH_GLOBAL.calcRecoveryMana4Winner(strHero)
							local iRecovery = 0;
							for i, objItem in TTH_TABLE.RecoveryMana4Winner do
								if objItem["Type"] == TTH_ENUM.Artifact then
									if HasArtefact(strHero, objItem["Id"], 1) then
										iRecovery = iRecovery + objItem["Value"];
									end;
								elseif objItem["Type"] == TTH_ENUM.Perk then
									if HasHeroSkill(strHero, objItem["Id"]) then
										iRecovery = iRecovery + objItem["Value"];
									end;
								elseif objItem["Type"] == TTH_ENUM.Mastery then
									if GetHeroSkillMastery(strHero, objItem["Id"]) > 0 then
										iRecovery = iRecovery + objItem["Value"] * GetHeroSkillMastery(strHero, objItem["Id"]);
									end;
								end
							end;
							if iRecovery > 0 then
								if HasHeroSkill(strHero, HERO_SKILL_MYSTICISM) ~= nil
									or HasHeroSkill(strHero, HERO_SKILL_BARBARIAN_MYSTICISM) ~= nil then
									iRecovery = iRecovery * 2;
								end;
								iRecovery = iRecovery  * (1 + 0.5 * TTH_GLOBAL.isBonus8MonkMana(strHero));
							end;
							return iRecovery;
						end;

			-- 移动力恢复
				-- 执行
					function TTH_GLOBAL.dealRecoveryMove4Winner(iPlayer, strHero)
						TTH_MAIN.debug("TTH_GLOBAL.dealRecoveryMove4Winner", iPlayer, strHero);

						local iRecovery = TTH_GLOBAL.calcRecoveryMove4Winner(strHero);
						if iRecovery > 0 then
							ChangeHeroStat(strHero, STAT_MOVE_POINTS, TTH_COMMON.round(iRecovery));
						end;
					end;
				-- 计算
					function TTH_GLOBAL.calcRecoveryMove4Winner(strHero)
						local iRecovery = 0;
						if HasArtefact(strHero, ARTIFACT_MONK_03, 1) then
							iRecovery = iRecovery + 350;
						end;
						iRecovery = iRecovery + TTH_TALENT.dealHero2(strHero);
						if TTH_GLOBAL.isBonus8MonkMove(strHero) == TTH_ENUM.Enable then
							iRecovery = iRecovery  * 1.5;
							if HasHeroSkill(strHero, HERO_SKILL_PATH_OF_WAR) then
								iRecovery = iRecovery + 175;
							end;
						end;
						return iRecovery;
					end;

			-- 获得额外经验
				-- 执行
					function TTH_GLOBAL.dealGainExp4Winner(iPlayer, strHero)
						TTH_MAIN.debug("TTH_GLOBAL.dealGainExp4Winner", iPlayer, strHero);

						local iExp = TTH_GLOBAL.calcGainExp4Winner(strHero);
						if iExp > 0 then
							TTH_GLOBAL.giveExp(strHero, iExp);
						end;
					end;
				-- 计算
					function TTH_GLOBAL.calcGainExp4Winner(strHero)
						local iExp = 0;
						if HasArtefact(strHero, ARTIFACT_PIRATE_HAT, 1) then
							iExp = iExp + 200;
						end;
						if HasArtefact(strHero, ARTIFACT_PIRATE_RING, 1) then
							iExp = iExp + 200;
						end;
						if TTH_GLOBAL.isBonus8PirateExp(strHero) == TTH_ENUM.Enable then
							iExp = iExp  * 1.5;
						end;
						return iExp;
					end;

			-- 获得额外金币
				-- 执行
					function TTH_GLOBAL.dealGainGold4Winner(iPlayer, strHero)
						TTH_MAIN.debug("TTH_GLOBAL.dealGainGold4Winner", iPlayer, strHero);

						local iGold = TTH_GLOBAL.calcGainGold4Winner(strHero);
						if iGold > 0 then
							TTH_GLOBAL.increaseResource(iPlayer, GOLD, iGold, strHero);
						end;
					end;
				-- 计算
					function TTH_GLOBAL.calcGainGold4Winner(strHero)
						local iGold = 0;
						if HasArtefact(strHero, ARTIFACT_PIRATE_CHARM, 1) then
							iGold = iGold + 200;
						end;
						if TTH_GLOBAL.isBonus8PirateGold(strHero) == TTH_ENUM.Enable then
							iGold = iGold  * 1.5;
						end;
						return iGold;
					end;

			-- 获得额外资源
				-- 执行
					function TTH_GLOBAL.dealGainRes4Winner(iPlayer, strHero)
						TTH_MAIN.debug("TTH_GLOBAL.dealGainRes4Winner", iPlayer, strHero);

						local arrRes = TTH_GLOBAL.calcGainRes4Winner(strHero);
						for enumRes, iRes in arrRes do
							if iRes > 0 then
								TTH_GLOBAL.increaseResource(iPlayer, enumRes, iRes, strHero);
							end;
						end;
					end;
				-- 计算
					function TTH_GLOBAL.calcGainRes4Winner(strHero)
						local arrRes = {
							[WOOD] = 0
							, [ORE] = 0
							, [MERCURY] = 0
							, [CRYSTAL] = 0
							, [SULFUR] = 0
							, [GEM] = 0
						};
						if HasArtefact(strHero, ARTIFACT_PIRATE_HOOK, 1) then
							local enumRes = random(GEM);
							arrRes[enumRes] = 1;
						end;
						if TTH_GLOBAL.isBonus8PirateRes(strHero) == TTH_ENUM.Enable then
							for enumRes = WOOD, GEM do
								arrRes[enumRes] = arrRes[enumRes] + 1;
							end;
						end;
						return arrRes;
					end;

		-- 宝物套装属性
			TTH_VARI.artifactSetBonus8Hero = {};

			-- 英雄携带套装宝物件数 by 套装ID
				function TTH_GLOBAL.getSetComponentCount(strHero, iSetId)
	        local iCount = 0;
	        for iIndexComponent, iComponentId in TTH_TABLE.ArtifactSetBonus[iSetId]["Component"] do
	          if HasArtefact(strHero, iComponentId, 1) ~= nil then
	            iCount = iCount + 1;
	          end;
	        end;
		      -- 计算 星尘坠饰
		        if iCount > 0 then
			        if HasArtefact(strHero, ARTIFACT_PENDANT_OF_STARDUST, 1) ~= nil then
			          iCount = iCount + 1;
			        end;
		        end;
		      return iCount;
				end;

			-- 启迪2件套及启蒙技能的经验值加成
				function TTH_GLOBAL.giveExp(strHero, iExp)
					local fCoef = 1;
					if HasArtefact(strHero, ARTIFACT_HELM_OF_ENLIGHTMENT, 1) ~= nil then
					  fCoef = fCoef + 0.1;
					end;
					if HasArtefact(strHero, ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT, 1) ~= nil then
					  fCoef = fCoef + 0.2;
					end;
					if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_EDUCATIONAL) >= 2 then
					  fCoef = fCoef + 0.15;
					end;
					if GetHeroSkillMastery(strHero, SKILL_LEARNING) > 0 then
						fCoef = fCoef + 0.05 * GetHeroSkillMastery(strHero, SKILL_LEARNING);
					end;
					iExp = TTH_COMMON.round(iExp * fCoef);
					GiveExp(strHero, iExp);
				end;

			-- 先知法衣
				-- 2件套50%战后魔法值回复加成
					function TTH_GLOBAL.isBonus8MonkMana(strHero)
						local bBonusEnable = TTH_ENUM.Unable;
						if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_MONK) >= 2 then
							bBonusEnable = TTH_ENUM.Enable;
						end;
						return bBonusEnable;
					end;

				-- 4件套50%战后移动力回复加成
					function TTH_GLOBAL.isBonus8MonkMove(strHero)
						local bBonusEnable = TTH_ENUM.Unable;
						if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_MONK) >= 4 then
							bBonusEnable = TTH_ENUM.Enable;
						end;
						return bBonusEnable;
					end;

			-- 掠夺者
				-- 3件套50%战后额外经验加成
					function TTH_GLOBAL.isBonus8PirateExp(strHero)
						local bBonusEnable = TTH_ENUM.Unable;
						if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_PIRATE) >= 3 then
							bBonusEnable = TTH_ENUM.Enable;
						end;
						return bBonusEnable;
					end;

				-- 5件套50%战后额外金币加成
					function TTH_GLOBAL.isBonus8PirateGold(strHero)
						local bBonusEnable = TTH_ENUM.Unable;
						if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_PIRATE) >= 5 then
							bBonusEnable = TTH_ENUM.Enable;
						end;
						return bBonusEnable;
					end;

				-- 6件套50%战后额外资源加成
					function TTH_GLOBAL.isBonus8PirateRes(strHero)
						local bBonusEnable = TTH_ENUM.Unable;
						if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_PIRATE) >= 6 then
							bBonusEnable = TTH_ENUM.Enable;
						end;
						return bBonusEnable;
					end;

			-- 计算属性
				function TTH_GLOBAL.upgradeArtifactSetBonus8Hero(iPlayer, strHero)
					TTH_MAIN.debug("TTH_GLOBAL.upgradeArtifactSetBonus8Hero", nil, strHero);

				  if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
				    local iPlayer = GetObjectOwner(strHero);
				    for iSetId, objSet in TTH_TABLE.ArtifactSetBonus do
				      local iCount = TTH_GLOBAL.getSetComponentCount(strHero, iSetId); -- 统计套装件数（含星尘坠饰）

				      -- 初始化套装奖励在存储空间 by 英雄
				        if TTH_VARI.artifactSetBonus8Hero[strHero] == nil then
				          TTH_VARI.artifactSetBonus8Hero[strHero] = {};
				        end;
				        if TTH_VARI.artifactSetBonus8Hero[strHero][iSetId] == nil then
				          TTH_VARI.artifactSetBonus8Hero[strHero][iSetId] = {};
				        end;

				      -- 查验有几件套装组件，并随之改变英雄属性
					      if objSet["SetBonus"] ~= nil then
					      	local objSetBonus = objSet["SetBonus"];
						      for i = 1, 8 do
						        if objSetBonus[i] ~= nil then
						          if iCount >= i then
						            if TTH_VARI.artifactSetBonus8Hero[strHero][iSetId][i] == nil then
						              for iIndexStat, iNumStat in objSetBonus[i] do
						                if iNumStat ~= 0 then
						                  ChangeHeroStat(strHero, iIndexStat, iNumStat);
						                end;
						              end;
						              TTH_VARI.artifactSetBonus8Hero[strHero][iSetId][i] = 1;
						              TTH_GLOBAL.showArtifactSetFlyingSign(strHero, iPlayer, 1);
						            end;
						          end;
						          if iCount < i then
						            if TTH_VARI.artifactSetBonus8Hero[strHero][iSetId][i] == 1 then
						              for indexStat, iNumStat in objSetBonus[i] do
						                if iNumStat ~= 0 then
						                  ChangeHeroStat(strHero, indexStat, -1 * iNumStat);
						                end;
						              end;
						              TTH_VARI.artifactSetBonus8Hero[strHero][iSetId][i] = nil;
						              TTH_GLOBAL.showArtifactSetFlyingSign(strHero, iPlayer, 0);
						            end;
						          end;
						        end;
						      end;
					      end;
				    end;
				  end;
				end;

			-- 宝物送魔法
				TTH_VARI.artifactGiveMagic8Hero = {};
				function TTH_GLOBAL.upgradeArtifactGiveMagic8Hero(iPlayer, strHero)
					TTH_MAIN.debug("TTH_GLOBAL.upgradeArtifactGiveMagic8Hero", nil, strHero);

				  if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
				    local iPlayer = GetObjectOwner(strHero);
				    for iArtifactId, objArtifact8Magic in TTH_TABLE.Artifact4Magic do
				    	if HasArtefact(strHero, iArtifactId, 1) ~= nil then
                -- 初始化套装魔法奖励在存储空间 by 英雄
                  if TTH_VARI.artifactGiveMagic8Hero[strHero] == nil then
                    TTH_VARI.artifactGiveMagic8Hero[strHero] = {};
                  end;

                if TTH_VARI.artifactGiveMagic8Hero[strHero][iArtifactId] == nil then
		              TTH_VARI.artifactGiveMagic8Hero[strHero][iArtifactId] = 1;
		              TeachHeroSpell(strHero, objArtifact8Magic["GiveMagic"]);
		              local strText = {
		              	"/Text/Game/Scripts/Learnspell.txt"
		              	;name=TTH_TABLE_SPELL[objArtifact8Magic["GiveMagic"]]["NAME"]
		              };
		              TTH_GLOBAL.sign(strHero, strText);
		            end;
		          end;   
				    end;
				  end;
				end;

			-- 套装送魔法
				TTH_VARI.artifactSetGiveMagic8Hero = {};
				function TTH_GLOBAL.upgradeArtifactSetGiveMagic8Hero(iPlayer, strHero)
					TTH_MAIN.debug("TTH_GLOBAL.upgradeArtifactSetGiveMagic8Hero", nil, strHero);

				  if TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
				    local iPlayer = GetObjectOwner(strHero);
				    for iSetId, objSet in TTH_TABLE.ArtifactSetBonus do
				      local iCount = TTH_GLOBAL.getSetComponentCount(strHero, iSetId); -- 统计套装件数（含星尘坠饰）

				      -- 初始化套装魔法奖励在存储空间 by 英雄
				        if TTH_VARI.artifactSetGiveMagic8Hero[strHero] == nil then
				          TTH_VARI.artifactSetGiveMagic8Hero[strHero] = {};
				        end;
				        if TTH_VARI.artifactSetGiveMagic8Hero[strHero][iSetId] == nil then
				          TTH_VARI.artifactSetGiveMagic8Hero[strHero][iSetId] = {};
				        end;

				      -- 查验有几件套装组件，并随之赠送魔法
					      if objSet["GiveMagic"] ~= nil then
					      	local objGiveMagic = objSet["GiveMagic"];
						      for i = 1, 8 do
						        if objGiveMagic[i] ~= nil then
						          if iCount >= i then
						            if TTH_VARI.artifactSetGiveMagic8Hero[strHero][iSetId][i] == nil then
						              TTH_VARI.artifactSetGiveMagic8Hero[strHero][iSetId][i] = 1;
						              TeachHeroSpell(strHero, objGiveMagic[i]);
						              local strText = {
						              	"/Text/Game/Scripts/Learnspell.txt"
						              	;name=TTH_TABLE_SPELL[objGiveMagic[i]]["NAME"]
						              };
						              TTH_GLOBAL.sign(strHero, strText);
						            end;
						          end;
						        end;
						      end;
					      end;
				    end;
				  end;
				end;

			-- 飘字
				function TTH_GLOBAL.showArtifactSetFlyingSign(strHero, iPlayer, iShowType)
				  if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes and TTH_GLOBAL.isHeroAtGarrison(strHero) == 0 then
				    if iShowType == 0 then
				      ShowFlyingSign("/Text/Game/Scripts/SetLost.txt", strHero, iPlayer, 5);
				    else
				      ShowFlyingSign("/Text/Game/Scripts/SetBonus.txt", strHero, iPlayer, 5);
				    end;
				    sleep(1);
				  end;
				end;

		-- 英雄技能效果实装
			function TTH_GLOBAL.dealSkillBonus8Hero(strHero)
				TTH_MAIN.debug("TTH_GLOBAL.dealSkillBonus8Hero", nil, strHero);

				TTH_GLOBAL.implSkillBonus8Hero(strHero);
			end;
			function TTH_GLOBAL.implSkillBonus8Hero(strHero)
				sleep(1);
				TTH_GLOBAL.setGameVar4HeroSkill(strHero);
				TTH_GLOBAL.setGameVar4HeroSkill2Special(strHero);
				TTH_GLOBAL.giveMagic8Skill(strHero);
				TTH_GLOBAL.giveMagic8Wisdom(strHero);
				TTH_GLOBAL.giveAttribute8Skill(strHero);

				TTH_GLOBAL.dealForestGuardEmblem(strHero); -- 战地指挥官
				TTH_GLOBAL.dealLuckyStrike(strHero); -- 士兵的幸运
				TTH_GLOBAL.dealStudentAward(strHero); -- 毕业生
				TTH_GLOBAL.dealAcademyAward(strHero); -- 魔法师
				TTH_GLOBAL.dealInvocation(strHero); -- 穿透
			end;

			-- 根据英雄技能赠送魔法相关
				function TTH_GLOBAL.giveMagic8Skill(strHero)
					for i, objItem in TTH_TABLE_GIVE_MAGIC_BY_SKILL do
						if KnowHeroSpell(strHero, objItem["MAGIC"]["ID"]) == nil then
							local bCheck = 1;
							if length(objItem["SKILL_MASTERY"]) > 0 then
								for j, objMastery in objItem["SKILL_MASTERY"] do
									if GetHeroSkillMastery(strHero, objMastery["MASTERY"]) < objMastery["LEVEL"] then
										bCheck = 0;
										break;
									end;
								end;
							end;
							if length(objItem["SKILL_PERK"]) > 0 then
								for j, objPerk in objItem["SKILL_PERK"] do
									if HasHeroSkill(strHero, objPerk) == nil then
										bCheck = 0;
										break;
									end;
								end;
							end;
							if bCheck == 1 then
								TeachHeroSpell(strHero, objItem["MAGIC"]["ID"]);
								local strText = {
									"/Text/Game/Scripts/Learnspell.txt"
									;name=objItem["MAGIC"]["NAME"]
								};
								TTH_GLOBAL.sign(strHero, strText);
							end;
						end;
					end;
				end;

			-- 洞察魔力及力量书赠送魔法相关
				TTH_TABLE.MagicBonus8Wisdom = {
					[TTH_ENUM.Basic] = {
						[1] = SPELL_ANTI_MAGIC
						, [2] = SPELL_SORROW
						, [3] = SPELL_BLADE_BARRIER
						, [4] = SPELL_METEOR_SHOWER
					}
					, [TTH_ENUM.Advanced] = {
						[1] = SPELL_DIVINE_VENGEANCE
						, [2] = SPELL_BLIND
						, [3] = SPELL_PHANTOM
						, [4] = SPELL_IMPLOSION
					}
				};
				TTH_VARI.magicBonus8Wisdom4HeroRecord = {};
				TTH_ENUM.None = 1;
				TTH_ENUM.Basic = 2;
				TTH_ENUM.Advanced = 3;
				function TTH_GLOBAL.giveMagic8Wisdom(strHero)
					if HasHeroSkill(strHero, HERO_SKILL_WISDOM) ~= nil then
						if TTH_VARI.magicBonus8Wisdom4HeroRecord[strHero] == nil then
							TTH_VARI.magicBonus8Wisdom4HeroRecord[strHero] = TTH_ENUM.Basic;
							local arrMagic = TTH_TABLE.MagicBonus8Wisdom[TTH_ENUM.Basic];
							local arrMagicUnknow = {};
							for i = 1, 4 do
								if KnowHeroSpell(strHero, arrMagic[i]) == nil then
									TTH_COMMON.push(arrMagicUnknow, arrMagic[i]);
								end;
							end;
							if length(arrMagicUnknow) > 0 then
								local iRan = random(length(arrMagicUnknow));
								TeachHeroSpell(strHero, arrMagicUnknow[iRan]);
								local strText = {
									"/Text/Game/Scripts/Learnspell.txt"
									;name=TTH_TABLE_SPELL[arrMagicUnknow[iRan]]["NAME"]
								};
								TTH_GLOBAL.sign(strHero, strText);
							end;
						end;
						if HasArtefact(strHero, ARTIFACT_BOOK_OF_POWER, 1) ~= nil then
							if TTH_VARI.magicBonus8Wisdom4HeroRecord[strHero] == TTH_ENUM.Basic then
								TTH_VARI.magicBonus8Wisdom4HeroRecord[strHero] = TTH_ENUM.Advanced;
								local arrMagic = TTH_TABLE.MagicBonus8Wisdom[TTH_ENUM.Advanced];
								local arrMagicUnknow = {};
								for i = 1, 4 do
									if KnowHeroSpell(strHero, arrMagic[i]) == nil then
										TTH_COMMON.push(arrMagicUnknow, arrMagic[i]);
									end;
								end;
								if length(arrMagicUnknow) > 0 then
									local iRan = random(length(arrMagicUnknow));
									TeachHeroSpell(strHero, arrMagicUnknow[iRan]);
									local strText = {
										"/Text/Game/Scripts/Learnspell.txt"
										;name=TTH_TABLE_SPELL[arrMagicUnknow[iRan]]["NAME"]
									};
									TTH_GLOBAL.sign(strHero, strText);
								end;
							end;
						end;
					end;
				end;

			-- 英雄技能赠送属性
				TTH_TABLE.AttributeBonus8Skill = {
					[HERO_SKILL_DEMONIC_FLAME] = { -- 灼热之火
						["HeroLevel"] = 10
						, ["Stat"] = {
							[STAT_ATTACK] = 2
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_DEMONIC_RETALIATION] = { -- 地狱愤怒
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 2
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_CASTER_CERTIFICATE] = { -- 神秘精髓
						["HeroLevel"] = 20
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 2
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_DARK_REVELATION] = { -- 黑暗启示
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 2
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_BARBARIAN_DARK_REVELATION] = { -- 黑暗启示
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 2
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_ELITE_CASTERS] = { -- 精炼魔力
						["HeroLevel"] = 20
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 2
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_BARBARIAN_ELITE_CASTERS] = { -- 精炼魔力
						["HeroLevel"] = 20
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 2
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_CUNNING_OF_THE_WOODS] = { -- 知己知彼
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 1
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_FOREST_RAGE] = { -- 自然的愤怒
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 1
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_LORD_OF_UNDEAD] = { -- 丧尸之王
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 1
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_RAISE_ARCHERS] = { -- 宝物学者
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 1
							, [STAT_KNOWLEDGE] = 1
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_MARCH_OF_THE_MACHINES] = { -- 魔像行进
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 2
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_OFFENSIVE_FORMATION] = { -- 攻击编队
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 2
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_DEFENSIVE_FORMATION] = { -- 防御编队
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 2
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_RETRIBUTION] = { -- 报偿
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 2
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_ELEMENTAL_OVERKILL] = { -- 驱魔咒语
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 2
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_MASTER_OF_SECRETS] = { -- 法力提升
						["HeroLevel"] = 20
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 2
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_SECRETS_OF_DESTRUCTION] = { -- 毁灭之道
						["HeroLevel"] = 20
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 2
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
					, [HERO_SKILL_FOREST_GUARD_EMBLEM] = { -- 战地指挥官
						["HeroLevel"] = 1
						, ["Stat"] = {
							[STAT_ATTACK] = -1
							, [STAT_DEFENCE] = 1
							, [STAT_SPELL_POWER] = 0
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 1
						}
					}
					, [HERO_SKILL_DEADLY_COLD] = { -- 致命深寒
						["HeroLevel"] = 20
						, ["Stat"] = {
							[STAT_ATTACK] = 0
							, [STAT_DEFENCE] = 0
							, [STAT_SPELL_POWER] = 2
							, [STAT_KNOWLEDGE] = 0
							, [STAT_LUCK] = 0
							, [STAT_MORALE] = 0
						}
					}
				};
				TTH_VARI.attributeBonus8Skill4HeroRecord = {};
				function TTH_GLOBAL.giveAttribute8Skill(strHero)
					if TTH_VARI.attributeBonus8Skill4HeroRecord[strHero] == nil then
						TTH_VARI.attributeBonus8Skill4HeroRecord[strHero] = {};
					end;
					for iSkill, objItem in TTH_TABLE.AttributeBonus8Skill do
						if TTH_VARI.attributeBonus8Skill4HeroRecord[strHero][iSkill] == nil then
							TTH_VARI.attributeBonus8Skill4HeroRecord[strHero][iSkill] = TTH_ENUM.No;
						end;
						if TTH_VARI.attributeBonus8Skill4HeroRecord[strHero][iSkill] == TTH_ENUM.No
							and HasHeroSkill(strHero, iSkill) ~= nil
							and GetHeroLevel(strHero) >= objItem["HeroLevel"] then
							for i = STAT_ATTACK, STAT_MORALE do
								TTH_GLOBAL.signChangeHeroStat(strHero, i, objItem["Stat"][i]);
							end;
							TTH_VARI.attributeBonus8Skill4HeroRecord[strHero][iSkill] = TTH_ENUM.Yes;
						end;
						if TTH_VARI.attributeBonus8Skill4HeroRecord[strHero][iSkill] == TTH_ENUM.Yes
							and HasHeroSkill(strHero, iSkill) == nil then
							for i = STAT_ATTACK, STAT_MORALE do
								TTH_GLOBAL.signChangeHeroStat(strHero, i, -1 * objItem["Stat"][i]);
							end;
							TTH_VARI.attributeBonus8Skill4HeroRecord[strHero][iSkill] = TTH_ENUM.No;
						end;
					end;
				end;

			-- 战地指挥官
				TTH_VARI.recordForestGuardEmblem = {};
				function TTH_GLOBAL.dealForestGuardEmblem(strHero)
					if TTH_VARI.recordForestGuardEmblem[strHero] ~= nil then
						return nil;
					end;
					if TTH_VARI.recordForestGuardEmblem[strHero] == nil
						and HasHeroSkill(strHero, HERO_SKILL_FOREST_GUARD_EMBLEM) ~= nil then
						TTH_VARI.recordForestGuardEmblem[strHero] = TTH_ENUM.Yes;
					  local iCountWarDancer = TTH_COMMON.floor((TTH_VARI.absoluteWeek + 1) / 2) * 10;
					  if iCountWarDancer > 50 then
					  	iCountWarDancer = 50;
					  end;
					  RemoveHeroCreatures(strHero, CREATURE_WAR_DANCER, iCountWarDancer);
						local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
						local iRace = TTH_GLOBAL.getRace8Hero(strHero);
						local iGrowth = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[iRace][2][3]]["GROWTH"];
						local iCreatureId = 0;
					  for iSlot = 0, 6 do
					  	if arrCreature4Hero[iSlot]["Id"] == TTH_TABLE.Creature8RaceAndLevel[iRace][2][3] then
					  		iCreatureId = arrCreature4Hero[iSlot]["Id"];
					  		break;
					  	end;
					  end;
					  if iCreatureId == 0 then
							iCreatureId = TTH_TABLE.Creature8RaceAndLevel[iRace][2][2];
					  end;
					  TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iGrowth, TTH_ENUM.AddCreature);
					end;
				end;

			-- 士兵的幸运
				TTH_VARI.recordLuckyStrike = {};
				function TTH_GLOBAL.dealLuckyStrike(strHero)
					if TTH_VARI.recordLuckyStrike[strHero] == nil
						and HasHeroSkill(strHero, HERO_SKILL_LUCKY_STRIKE) ~= nil then
						TTH_VARI.recordLuckyStrike[strHero] = TTH_ENUM.Yes;
						if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_ACADEMY then
							TTH_GLOBAL.signChangeHeroStat(strHero, STAT_LUCK, 1);
						end;
					end;
				end;

			-- 毕业生
				TTH_VARI.recordStudentAward = {};
				function TTH_GLOBAL.dealStudentAward(strHero)
					if TTH_VARI.recordStudentAward[strHero] == nil
						and HasHeroSkill(strHero, HERO_SKILL_STUDENT_AWARD) ~= nil then
						TTH_VARI.recordStudentAward[strHero] = TTH_ENUM.Yes;
						TTH_GLOBAL.giveExp(strHero, GetHeroLevel(strHero) * 250);
					end;
				end;

			-- 魔法师
				TTH_VARI.recordAcademyAward = {};
				function TTH_GLOBAL.dealAcademyAward(strHero)
					if TTH_VARI.recordAcademyAward[strHero] == nil
						and HasHeroSkill(strHero, HERO_SKILL_ACADEMY_AWARD) ~= nil then
						TTH_VARI.recordAcademyAward[strHero] = TTH_ENUM.Yes;
						local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
						TTH_GLOBAL.increaseResource(iPlayer, GOLD, GetHeroLevel(strHero) * 250, strHero);
					end;
				end;

			-- 穿透
				TTH_VARI.recordInvocation = {};
				function TTH_GLOBAL.dealInvocation(strHero)
					local iPower = 0;
					iPower = iPower + GetHeroSkillMastery(strHero, SKILL_INVOCATION);
					if HasHeroSkill(strHero, SKILL_DESTRUCTIVE_MAGIC) == nil then
						iPower = iPower + GetHeroSkillMastery(strHero, SKILL_INVOCATION);
					end;
					if TTH_VARI.recordInvocation[strHero] == nil then
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iPower);
						TTH_VARI.recordInvocation[strHero] = iPower;
					end;
					if TTH_VARI.recordInvocation[strHero] ~= iPower then
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iPower - TTH_VARI.recordInvocation[strHero]);
						TTH_VARI.recordInvocation[strHero] = iPower;
					end;
				end;

		-- 更新银行时间剩余时间
			H55_BankLastVisit = {};
			H55_BankPlayerLastVisit = {{},{},{},{},{},{},{},{}};
			H55_BankCurrentPlayerVisit = {};
			function TTH_GLOBAL.refreshBankRestDay(iPlayer)
				TTH_MAIN.debug("TTH_GLOBAL.refreshBankRestDay", iPlayer, nil);

				for i, strBankName in TTH_TABLE.BankType do
					for j, objBank in TTH_VARI.arrBuilding[strBankName] do
						local iRestDay = H55_GetBank_Restday(objBank);
						local iType = 1;
						if iRestDay <= 0 then
							iType = 0;
						end;
						if iRestDay ~= 9999 and iRestDay >= 0 then
							OverrideObjectTooltipNameAndDescription(objBank, H55_BankTipsTextType[iType + 1], H55_BankTipsTextDay[iRestDay + 1]);
						end;
					end
				end
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
					result = 14 - (day - H55_BankLastVisit[bank])
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

		-- 获取英雄已学会魔法数量
			function TTH_GLOBAL.countHeroKnowSpell(strHero)
				local iCount = 0;
				for i, objMagicType in TTH_TABLE_SPELL_TYPE do
					for j, strMagicId in objMagicType["ID"] do
						if KnowHeroSpell(strHero, strMagicId) ~= nil then
							iCount = iCount + 1;
						end;
					end;
				end;
				return iCount;
			end;

		-- 获取英雄已学会元素魔法数量
			function TTH_GLOBAL.countHeroKnowElementSpell(strHero)
				local iCount = 0;
				for i, iMagicId in TTH_TABLE.ElementMagic do
					if KnowHeroSpell(strHero, iMagicId) ~= nil then
						iCount = iCount + 1;
					end;
				end;
				return iCount;
			end;

		-- 特殊
			-- 士气<-5 转化为亡灵巫师
				TTH_VARI.semiNecro = {};
				function TTH_GLOBAL.makeHeroNecro(iPlayer, strHero)
					if TTH_VARI.semiNecro[strHero] == nil
						and GetHeroStat(strHero, STAT_MORALE) <= -5 then
						MakeHeroNecromancer(strHero, 3);
						TTH_VARI.semiNecro[strHero] = TTH_ENUM.Yes;
						print("Make "..strHero.." to a Necromancer");
					end;
				end;

		-- 王国管理带信息的对话框
			-- 对话框（框架）
				function TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, iDialogType, strDetail, strCallbackOk, strCallbackCancel)
					local funcDialog = MessageBoxForPlayers;
					if iDialogType == TTH_ENUM.QuestionBox then
						funcDialog = QuestionBoxForPlayers;
					end;
					local strFrame = TTH_TABLE.KingManagePath["Widget"]["Frame"]["Text"];
					local strNavigation = TTH_GLOBAL.geneWidgetNavigation();
					local strMain = "";
					if strDetail ~= nil then
						strMain = TTH_GLOBAL.geneWidgetMain(iPlayer, strHero, strDetail);
					end;
					local strHeroInfo = TTH_GLOBAL.geneWidgetHeroInfo(iPlayer, strHero);
					local strMayorExpedition = "";
					local strMayorHero = "";
					local strMayorTown = "";
					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
						strMayorExpedition = TTH_GLOBAL.geneWidgetMayorExpedition(iPlayer, strHero);
						strMayorHero = TTH_GLOBAL.geneWidgetMayorHero(iPlayer, strHero);
						strMayorTown = TTH_GLOBAL.geneWidgetMayorTown(iPlayer, strHero);
					end;
					local strPlayer = TTH_GLOBAL.geneWidgetPlayer(iPlayer, strHero);
					local strMission = "";
					if TTH_VARI.MermaidsMission8Player[iPlayer]["HasAccept"] == TTH_ENUM.Yes then
						strMission = TTH_GLOBAL.geneWidgetMissionInfo(iPlayer, strHero);
					end;
					funcDialog(GetPlayerFilter(iPlayer)
						, {
							strFrame
							;strNavigation=strNavigation
							,strMain=strMain
							,strHeroInfo=strHeroInfo
							,strMayorExpedition=strMayorExpedition
							,strMayorHero=strMayorHero
							,strMayorTown=strMayorTown
							,strPlayer=strPlayer
							,strMission=strMission
						}
						, strCallbackOk
						, strCallbackCancel
					);
				end;

			-- 导航栏（控件）
				function TTH_GLOBAL.geneWidgetNavigation()
					local strPathNavigation = TTH_TABLE.KingManagePath["Widget"]["Navigation"]["Text"];
					local strPathAnchor = TTH_TABLE.KingManagePath["Widget"]["Anchor"]["Text"];
					local strPath = {
						strPathNavigation
						;strPathAnchor1={
							strPathAnchor
							;strArrow=TTH_VARI.arrPathArrow[0]
							,strAnchor=TTH_VARI.arrPathNavigation[0]
						}
						,strPathAnchor2={
							strPathAnchor
							;strArrow=TTH_VARI.arrPathArrow[1]
							,strAnchor=TTH_VARI.arrPathNavigation[1]
						}
						,strPathAnchor3={
							strPathAnchor
							;strArrow=TTH_VARI.arrPathArrow[2]
							,strAnchor=TTH_VARI.arrPathNavigation[2]
						}
						,strPathAnchor4={
							strPathAnchor
							;strArrow=TTH_VARI.arrPathArrow[3]
							,strAnchor=TTH_VARI.arrPathNavigation[3]
						}
						,strPathAnchor5={
							strPathAnchor
							;strArrow=TTH_VARI.arrPathArrow[4]
							,strAnchor=TTH_VARI.arrPathNavigation[4]
						}
					}
					return strPath;
				end;

			-- 主体信息（控件）
				function TTH_GLOBAL.geneWidgetMain(iPlayer, strHero, strDetail)
					local strPath = {
						TTH_TABLE.KingManagePath["Widget"]["Main"]["Text"]
						;strDetail=strDetail
					};
					return strPath;
				end;

			-- 英雄信息（控件）
				-- <color=8B4513>================英雄信息================
				-- <body_bright>英雄等级: <color=yellow><value=iHeroLevel>
				-- <body_bright>英雄战力: <color=yellow><value=iPower>
				-- <body_bright>英雄移动力: <color=yellow><value=iMovePoint>
				-- <body_bright>英雄魔法值: <color=yellow><value=iManaPoint>
				-- <body_bright>本周内政操作总次数: <color=yellow><value=iMaxOperTimes>
				-- <body_bright>本周内政操作剩余次数: <color=yellow><value=iRemainOperTimes>
				function TTH_GLOBAL.geneWidgetHeroInfo(iPlayer, strHero)
					local iHeroLevel = GetHeroLevel(strHero);
					local iPower = TTH_GLOBAL.getPower8Hero(strHero);
					local iMovePoint = GetHeroStat(strHero, STAT_MOVE_POINTS);
					local iManaPoint = GetHeroStat(strHero, STAT_MANA_POINTS);
					local iMaxOperTimes = TTH_MANAGE.getOperTimes(strHero);
					local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);
					local strPath = {
						TTH_TABLE.KingManagePath["Widget"]["HeroInfo"]["Text"]
						;iHeroLevel=iHeroLevel
						,iPower=iPower
						,iMovePoint=iMovePoint
						,iManaPoint=iManaPoint
						,iMaxOperTimes=iMaxOperTimes
						,iRemainOperTimes=iRemainOperTimes
					};
					return strPath;
				end;

			-- 远征信息（控件）
				-- <color=8B4513>================远征信息================
				-- <body_bright>距离最近管辖城镇的距离: <color=yellow><value=iDistanceNearestTown>
				-- <body_bright>是否远征: <color=yellow><value=bIsExpedition>
				-- <body_bright>远征天数: <color=yellow><value=iExpeditionDuration>
				-- <body_bright>每日远征军费: <color=yellow><value=iExpeditionCost>
				function TTH_GLOBAL.geneWidgetMayorExpedition(iPlayer, strHero)
					local iDistanceNearestTown = TTH_GLOBAL.getDistance4Hero2NearestMayorTown(strHero);
					local bIsExpedition = TTH_PATH.Switch[TTH_MANAGE.getHeroExpeditionStatus(strHero)];
					local iExpeditionDuration = TTH_MANAGE.getHeroExpeditionDuration(strHero);
					local iExpeditionCost = TTH_MANAGE.getHeroExpeditionCost(strHero);
					local strPath = {
						TTH_TABLE.KingManagePath["Widget"]["MayorExpedition"]["Text"]
						;iDistanceNearestTown=iDistanceNearestTown
						,bIsExpedition=bIsExpedition
						,iExpeditionDuration=iExpeditionDuration
						,iExpeditionCost=iExpeditionCost
					};
					return strPath;
				end;

			-- 内政英雄加成（控件）
				-- <color=8B4513>================英雄内政================
				-- <body_bright>管辖城镇总评分: <color=yellow><value=iTotalTownValue>
				-- <body_bright>每日获得政绩: <color=yellow><value=iReportPoint8Day>
				-- <body_bright>每天获得经验: <color=yellow><value=iExp8Day>
				-- <body_bright>额外攻击: <color=yellow><value=iBuffAttack>
				-- <body_bright>额外防御: <color=yellow><value=iBuffDefence>
				-- <body_bright>额外咒力: <color=yellow><value=iBuffSpellPower>
				-- <body_bright>额外知识: <color=yellow><value=iBuffKnowledge>
				-- <body_bright>额外士气: <color=yellow><value=iBuffMorale>
				-- <body_bright>额外幸运: <color=yellow><value=iBuffLuck>
				function TTH_GLOBAL.geneWidgetMayorHero(iPlayer, strHero)
					local iTotalTownValue = TTH_MANAGE.totalTownValue4Mayor(strHero);
					local iReportPoint8Day = TTH_MANAGE.calcDailyRecordPoint(strHero);
					local iExp8Day = TTH_MANAGE.calcDailyExp4Mayor(strHero);
					local objBuff = TTH_MANAGE.getMayorBonus(strHero);
					local strPath = {
						TTH_TABLE.KingManagePath["Widget"]["MayorHero"]["Text"]
						;iTotalTownValue=iTotalTownValue
						,iReportPoint8Day=iReportPoint8Day
						,iExp8Day=iExp8Day
						,iBuffAttack=objBuff[STAT_ATTACK]
						,iBuffDefence=objBuff[STAT_DEFENCE]
						,iBuffSpellPower=objBuff[STAT_SPELL_POWER]
						,iBuffKnowledge=objBuff[STAT_KNOWLEDGE]
						,iBuffMorale=objBuff[STAT_LUCK]
						,iBuffLuck=objBuff[STAT_MORALE]
					};
					return strPath;
				end;

			-- 内政城镇加成（控件）
				-- <color=8B4513>================城镇内政================
				-- <body_bright>1级生物周产增加: <color=yellow><value=iBuffTier1>
				-- <body_bright>2级生物周产增加: <color=yellow><value=iBuffTier2>
				-- <body_bright>3级生物周产增加: <color=yellow><value=iBuffTier3>
				-- <body_bright>4级生物周产增加: <color=yellow><value=iBuffTier4>
				-- <body_bright>5级生物周产增加: <color=yellow><value=iBuffTier5>
				-- <body_bright>6级生物周产增加: <color=yellow><value=iBuffTier6>
				-- <body_bright>7级生物周产增加: <color=yellow><value=iBuffTier7>
				function TTH_GLOBAL.geneWidgetMayorTown(iPlayer, strHero)
					local strSingleTown = "";
					for strTown, iTownValue in TTH_VARI.arrMayor[strHero]["Town"] do
						strSingleTown = strTown;
						break;
					end
					local arrCreatureGrowth8Tier = TTH_MANAGE.calcTownDwellingCreature(strSingleTown);
					local strPath = {
						TTH_TABLE.KingManagePath["Widget"]["MayorTown"]["Text"]
						;iBuffTier1=arrCreatureGrowth8Tier[1]
						,iBuffTier2=arrCreatureGrowth8Tier[2]
						,iBuffTier3=arrCreatureGrowth8Tier[3]
						,iBuffTier4=arrCreatureGrowth8Tier[4]
						,iBuffTier5=arrCreatureGrowth8Tier[5]
						,iBuffTier6=arrCreatureGrowth8Tier[6]
						,iBuffTier7=arrCreatureGrowth8Tier[7]
					};
					return strPath;
				end;

			-- 获取玩家的领土面积
				function TTH_GLOBAL.getPlayerTerritoryMeasure(iPlayer)
					local iTerritoryRadius = TTH_MANAGE.getTerritoryRadius(iPlayer);
					local iLenTown = length(TTH_GLOBAL.listTown8Player(iPlayer));
					local iTerritoryMeasure = TTH_COMMON.round(iLenTown * TTH_FINAL.PI * iTerritoryRadius * iTerritoryRadius);
					return iTerritoryMeasure;
				end;

			-- 获取地图面积
				function TTH_GLOBAL.getMapMeasure()
					local iMapSize = GetTerrainSize();
					local iMapMeasure = iMapSize * iMapSize;
					return iMapMeasure;
				end;

			-- 获取玩家所占领的前哨
				function TTH_GLOBAL.listDwelling8Player(iPlayer, iTier)
					local arrDwelling = {};
					for iRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
						local arrDwelling8Race = GetObjectNamesByType(TTH_TABLE.DwellingOnAdvMap[iTier][iRace]);
						for i, strDwelling in arrDwelling8Race do
							if GetObjectOwner(strDwelling) == iPlayer then
								TTH_COMMON.push(arrDwelling, strDwelling);
							end;
						end
					end;
					return arrDwelling;
				end;

			-- 玩家信息（控件）
				-- <color=8B4513>================玩家信息================
				-- <body_bright>玩家领土总面积: <color=yellow><value=iTerritoryMeasure>
				-- <body_bright>占地图面积的 <color=yellow><value=fTerritoryPercent> %
				-- <body_bright>玩家城镇: <color=yellow><value=iCountPlayerTown> <body_bright>座
				-- <body_bright>其中 <color=yellow><value=strRaceName> <body_bright>城镇: <color=yellow><value=iCountRaceTown> <body_bright>座
				-- <body_bright>已设立传送点的城镇: <color=yellow><value=iCountTeleportTown> <body_bright>座
				-- <body_bright>已有内政官管辖的城镇: <color=yellow><value=iCountMayorTown> <body_bright>座
				-- <body_bright>1级前哨: <color=yellow><value=iCountDwelling1> <body_bright>座
				-- <body_bright>2级前哨: <color=yellow><value=iCountDwelling2> <body_bright>座
				-- <body_bright>3级前哨: <color=yellow><value=iCountDwelling3> <body_bright>座
				-- <body_bright>军事前哨: <color=yellow><value=iCountDwelling4> <body_bright>座
				-- <body_bright>玩家当前政绩: <color=yellow><value=iReportPoint>
				-- <body_bright>玩家每日获得政绩: <color=yellow><value=iReportPoint8Daily>
				-- <body_bright>玩家每周额外内政操作次数: <color=yellow><value=iExtraOperTimes> <body_bright>次
				-- <body_bright>玩家额外内政管辖城镇数: <color=yellow><value=iExtraAbilityQuota> <body_bright>座
				-- <body_bright>玩家领地半径: <color=yellow><value=iDefaultTerritoryRadius> <body_bright>+ <color=green><value=iExtraTerritoryRadius>
				function TTH_GLOBAL.geneWidgetPlayer(iPlayer, strHero)
					local iTerritoryMeasure = TTH_GLOBAL.getPlayerTerritoryMeasure(iPlayer);
					local iMapMeasure = TTH_GLOBAL.getMapMeasure();
					local fTerritoryPercent = TTH_COMMON.round(iTerritoryMeasure / iMapMeasure * 100);
					local iCountPlayerTown = length(TTH_GLOBAL.listTown8Player(iPlayer));
					local iPlayerRace = TTH_GLOBAL.getPlayerRace(iPlayer);
					local strRaceName = TTH_PATH.Race[iPlayerRace];
					local iCountRaceTown = length(TTH_GLOBAL.listTown8Player4Race(iPlayer, iPlayerRace));
					local iCountTeleportTown = length(TTH_MANAGE.listTeleportTown(iPlayer));
					local iCountMayorTown = length(TTH_MANAGE.listMayorTown8Player(iPlayer));
					local iCountDwelling1 = length(TTH_GLOBAL.listDwelling8Player(iPlayer, 1));
					local iCountDwelling2 = length(TTH_GLOBAL.listDwelling8Player(iPlayer, 2));
					local iCountDwelling3 = length(TTH_GLOBAL.listDwelling8Player(iPlayer, 3));
					local iCountDwelling4 = length(TTH_GLOBAL.listDwelling8Player(iPlayer, 4));
					local iReportPoint = TTH_MANAGE.getRecordPoint(iPlayer);
					local iReportPoint8Daily = TTH_MANAGE.calcDailyRecordPoint8Daily(iPlayer);
					local iExtraOperTimes = TTH_MANAGE.getExtraOperTimes8Player(iPlayer);
					local iExtraAbilityQuota = TTH_MANAGE.getExtraAbilityQuota(iPlayer);
					local iDefaultTerritoryRadius = TTH_MANAGE.getDefaultTerritoryRadius(iPlayer);
					local iExtraTerritoryRadius = TTH_MANAGE.getExtraTerritoryRadius(iPlayer);
					local strPath = {
						TTH_TABLE.KingManagePath["Widget"]["Player"]["Text"]
						;iTerritoryMeasure=iTerritoryMeasure
						,iMapMeasure=iMapMeasure
						,fTerritoryPercent=fTerritoryPercent
						,iCountPlayerTown=iCountPlayerTown
						,iPlayerRace=iPlayerRace
						,strRaceName=strRaceName
						,iCountRaceTown=iCountRaceTown
						,iCountTeleportTown=iCountTeleportTown
						,iCountMayorTown=iCountMayorTown
						,iCountDwelling1=iCountDwelling1
						,iCountDwelling2=iCountDwelling2
						,iCountDwelling3=iCountDwelling3
						,iCountDwelling4=iCountDwelling4
						,iReportPoint=iReportPoint
						,iReportPoint8Daily=iReportPoint8Daily
						,iExtraOperTimes=iExtraOperTimes
						,iExtraAbilityQuota=iExtraAbilityQuota
						,iDefaultTerritoryRadius=iDefaultTerritoryRadius
						,iExtraTerritoryRadius=iExtraTerritoryRadius
					};
					return strPath;
				end;

			-- 任务信息（控件）
				-- <color=8B4513>================任务信息================
				-- <body_bright>任务奖励: <color=yellow><value=strTextReward>
				-- <value=strPathTemplate>
				---- <value=iCurrentValue>
				---- <value=iTargetValue>
				---- <value=strTargetText>
				function TTH_GLOBAL.geneWidgetMissionInfo(iPlayer, strHero)
					local strPath = "";

					if TTH_VARI.MermaidsMission8Player[iPlayer]["HasAccept"] == TTH_ENUM.Yes then -- 玩家已经接受任务
						if TTH_VARI.MermaidsMission8Player[iPlayer]["Hero"] == strHero then -- 当前英雄接受的任务
							local iRewardIndex = TTH_VARI.MermaidsMission8Player[iPlayer]["RewardIndex"];
							local objReward = TTH_TABLE.MermaidsReward[iRewardIndex];
							local strTextReward = "";
							if objReward["Type"] == TTH_ENUM.Artifact then
								strTextReward = TTH_TABLE.Artifact[objReward["Id"]]["Text"];
							end;
							if TTH_VISIT.hasCompleteVisitMermaids(iPlayer, strHero) == TTH_ENUM.Yes then
								strPath = {
									TTH_PATH.Visit["Mermaids"]["HasComplete"]
									;strTextReward=strTextReward
								};
							else
								local objMission = TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"];
								local iTargetId = objMission["TargetId"];
								local strTargetText = "";
								if objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Race then
									strTargetText = TTH_PATH.Race[iTargetId];
								elseif objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Special then
									local iCreatureId8Tier7 = TTH_TABLE.Creature8RaceAndLevel[iTargetId][7][1];
									strTargetText = TTH_TABLE_NCF_CREATURES[iCreatureId8Tier7]["NAME"];
								elseif objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Tier then
									strTargetText = TTH_COMMON.psp(iTargetId);
								elseif objMission["Type"] == TTH_ENUM.MermaidsLevelUp then
								elseif objMission["Type"] == TTH_ENUM.MermaidsConstructTown then
								elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureTown then
								elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureDwelling then
								elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureMine then
								end;
								local strPathTemplate = TTH_TABLE.MermaidsMission[objMission["Type"]]["TemplateAccept"];
								strPath = {
									TTH_PATH.Visit["Mermaids"]["MissionInfo"]
									;strTextReward=strTextReward
									,strPathTemplate={
										strPathTemplate
										;iCurrentValue=objMission["CurrentValue"]
										,iTargetValue=objMission["TargetValue"]
										,strTargetText=strTargetText
									}
								};
							end;
						end;
					end;
					return strPath;
				end;

	-- visit 访问建筑事件
		TTH_VISIT = {}

		-- 英雄访问建筑，不执行建筑脚本
			function TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback)
				SetTrigger(OBJECT_TOUCH_TRIGGER, strBuildingName, nil);
				SetObjectEnabled(strBuildingName, not nil);
				MakeHeroInteractWithObject(strHero, strBuildingName);
				SetTrigger(OBJECT_TOUCH_TRIGGER, strBuildingName, funcCallback);
				SetObjectEnabled(strBuildingName, nil);
				-- MarkObjectAsVisited(strBuildingName, strHero);
			end;

		-- 可占领的经济建筑
			TTH_VARI.economicBuildingOwner = {
				["BUILDING_MYSTICAL_GARDEN"] = {}
				, ["BUILDING_WINDMILL"] = {}
				, ["BUILDING_WATER_WHEEL"] = {}
				, ["BUILDING_WARMACHINE_FACTORY"] = {}
			};

			-- 访问
				function TTH_VISIT.visitEconomicBuilding(strHero, strBuildingName, strBuildingType, funcCallback)
					local iPlayer = GetObjectOwner(strHero);
					if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
						TTH_VISIT.captureEconomicBuilding4Ai(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					else
						TTH_VISIT.confirmEconomicBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					end;
				end;

			-- 执行AI占领
				function TTH_VISIT.captureEconomicBuilding4Ai(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					if TTH_VARI.economicBuildingOwner[strBuildingType][strBuildingName] == iPlayer then
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
					else
						TTH_VARI.economicBuildingOwner[strBuildingType][strBuildingName] = iPlayer;
						OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["Player"][iPlayer], TTH_PATH.Visit["Economic"][strBuildingType]["Desc"]);
						MarkObjectAsVisited(strBuildingName, strHero);
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
					end;
				end;

			-- 询问人类是否占领
				function TTH_VISIT.confirmEconomicBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					if TTH_VARI.economicBuildingOwner[strBuildingType][strBuildingName] == iPlayer then
						ShowFlyingSign(TTH_PATH.Visit["Economic"]["HasCapture"], strHero, iPlayer, 5);
						if strBuildingType == "BUILDING_WARMACHINE_FACTORY" then
							TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
						end;
						return nil;
					end;
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
						, TTH_PATH.Visit["Economic"][strBuildingType]["Confirm"]
						, "TTH_VISIT.captureEconomicBuilding4Human("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(strBuildingType)..","..TTH_COMMON.psp(funcCallback)..")"
						, "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")"
					);
				end;

			-- 执行人类占领
				function TTH_VISIT.captureEconomicBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					if GetPlayerResource(iPlayer, GOLD) < 1000 then
						ShowFlyingSign(TTH_PATH.Visit["Economic"]["NotEnoughRes"], strHero, iPlayer, 5);
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
						return nil;
					end;
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, 1000);
					TTH_VARI.economicBuildingOwner[strBuildingType][strBuildingName] = iPlayer;
					OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["Player"][iPlayer], TTH_PATH.Visit["Economic"][strBuildingType]["Desc"]);
					MarkObjectAsVisited(strBuildingName, strHero);
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				end;

			--神秘花园
				function TTH_VISIT.visitMysticalGarden(strHero, strBuildingName)
					local strBuildingType = "BUILDING_MYSTICAL_GARDEN";
					TTH_VISIT.visitEconomicBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitMysticalGarden");
				end;

			--矮人地穴
				function TTH_VISIT.visitWindmill(strHero, strBuildingName)
					local strBuildingType = "BUILDING_WINDMILL";
					TTH_VISIT.visitEconomicBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitWindmill");
				end;

			--风车
				function TTH_VISIT.visitWaterWheel(strHero, strBuildingName)
					local strBuildingType = "BUILDING_WATER_WHEEL";
					TTH_VISIT.visitEconomicBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitWaterWheel");
				end;

			--战争机械工厂
				function TTH_VISIT.visitWarmachineFactory(strHero, strBuildingName)
					local strBuildingType = "BUILDING_WARMACHINE_FACTORY";
					TTH_VISIT.visitEconomicBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitWarmachineFactory");
				end;

		-- 可占领的资源矿
			TTH_VARI.arrMineBuilding = {};
			TTH_TABLE.MineBuilding = {
				["BUILDING_SAWMILL"] = {
					["ArtifactId"] = ARTIFACT_RES_BASIC
					, ["Resource"] = WOOD
				}
				, ["BUILDING_ORE_PIT"] = {
					["ArtifactId"] = ARTIFACT_RES_BASIC
					, ["Resource"] = ORE
				}
				, ["BUILDING_ALCHEMIST_LAB"] = {
					["ArtifactId"] = ARTIFACT_RES_ADVANCED
					, ["Resource"] = MERCURY
				}
				, ["BUILDING_CRYSTAL_CAVERN"] = {
					["ArtifactId"] = ARTIFACT_RES_ADVANCED
					, ["Resource"] = CRYSTAL
				}
				, ["BUILDING_SULFUR_DUNE"] = {
					["ArtifactId"] = ARTIFACT_RES_ADVANCED
					, ["Resource"] = SULFUR
				}
				, ["BUILDING_GEM_POND"] = {
					["ArtifactId"] = ARTIFACT_RES_ADVANCED
					, ["Resource"] = GEM
				}
				, ["BUILDING_GOLD_MINE"] = {
					["ArtifactId"] = ARTIFACT_RES_EXPERT
					, ["Resource"] = GOLD
				}
			}

			-- 初始化资源矿的对象
				function TTH_GLOBAL.initMine()
					for strMineType, objMine in TTH_TABLE.MineBuilding do
						for i, strMineName in TTH_VARI.arrBuilding[strMineType] do
							TTH_VARI.arrMineBuilding[strMineName] = {
								["Type"] = strMineType
								, ["BonusLevel"] = 0
							};
						end;
					end;
				end;

			-- 每周资源矿的资源宝物加成结算
				function TTH_GLOBAL.dealWeeklyBonusMine(iPlayer)
					TTH_MAIN.debug("TTH_GLOBAL.dealWeeklyBonusMine", iPlayer, nil);

					for strMineName, objMine in TTH_VARI.arrMineBuilding do
						if GetObjectOwner(strMineName) == iPlayer then
							local objMine = TTH_VARI.arrMineBuilding[strMineName];
							if objMine["BonusLevel"] > 0 then
								local iPosX, iPosY, iPosZ = GetObjectPosition(strMineName);
								local iUnit = 5;
								if objMine["Type"] == "BUILDING_SAWMILL" then
									CreateTreasure("", 6, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
									sleep(1);
									CreateTreasure("", 6, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
								elseif objMine["Type"] == "BUILDING_ORE_PIT" then
									CreateTreasure("", 4, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
									sleep(1);
									CreateTreasure("", 4, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
								elseif objMine["Type"] == "BUILDING_ALCHEMIST_LAB" then
									CreateTreasure("", 3, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
								elseif objMine["Type"] == "BUILDING_CRYSTAL_CAVERN" then
									CreateTreasure("", 0, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
								elseif objMine["Type"] == "BUILDING_SULFUR_DUNE" then
									CreateTreasure("", 5, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
								elseif objMine["Type"] == "BUILDING_GEM_POND" then
									CreateTreasure("", 1, iUnit + random(iUnit), iPosX, iPosY, iPosZ);
								elseif objMine["Type"] == "BUILDING_GOLD_MINE" then
									CreateTreasure("", 2, iUnit * 10 + random(iUnit * 10), iPosX, iPosY, iPosZ);
								end;
							end;
						end;
					end;
				end;

			-- 访问
				function TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, funcCallback)
					local iPlayer = GetObjectOwner(strHero);
					if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
						TTH_VISIT.captureMineBuilding4Ai(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					else
						TTH_VISIT.captureMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					end;
				end;

			-- 执行AI占领
				function TTH_VISIT.captureMineBuilding4Ai(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				end;

			-- 执行人类占领
				function TTH_VISIT.captureMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					if GetObjectOwner(strBuildingName) == iPlayer then
						TTH_VISIT.checkPreMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					else
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
					end;
				end;

			-- 是否携带对应资源宝物
				function TTH_VISIT.checkPreMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					local strRedHeavenHero06 = "RedHeavenHero06";
					if strHero == strRedHeavenHero06 then
						TTH_TALENT.visitMineRedHeavenHero06(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					end;
					local iArtifactId = TTH_TABLE.MineBuilding[strBuildingType]["ArtifactId"];
					if HasArtefact(strHero, iArtifactId, 0) ~= nil then
						TTH_VISIT.confirmMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
					else
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
					end;
				end;

			-- 是否使用对应资源宝物
				function TTH_VISIT.confirmMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					TTH_COMMON.initNavi(TTH_PATH.Visit["Mine"]["Text"]);

					local strBuildingText = TTH_PATH.Mine[strBuildingType];
					local iArtifactId = TTH_TABLE.MineBuilding[strBuildingType]["ArtifactId"];
					local strArtifactName = TTH_TABLE.Artifact[iArtifactId]["Text"];
					local objBuilding = TTH_VARI.arrMineBuilding[strBuildingName];
					local iBonusLevel = objBuilding["BonusLevel"];
					local strPathMain={
						TTH_PATH.Visit["Mine"]["Confirm"]
						;strBuildingText=strBuildingText
						,strArtifactName=strArtifactName
						,iBonusLevel=iBonusLevel
					};
					local strCallbackOk = "TTH_VISIT.implMineBuilding4Human("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(strBuildingType)..","..TTH_COMMON.psp(funcCallback)..")";
					local strCallbackCancel = "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;

			-- 使用对应资源宝物
				function TTH_VISIT.implMineBuilding4Human(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
					RemoveArtefact(strHero, TTH_TABLE.MineBuilding[strBuildingType]["ArtifactId"]);
					TTH_VARI.arrMineBuilding[strBuildingName]["BonusLevel"] = TTH_VARI.arrMineBuilding[strBuildingName]["BonusLevel"] + 1;
					ShowFlyingSign(TTH_PATH.Visit["Mine"]["Success"], strHero, iPlayer, 5);
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				end;

				-- 木矿
					function TTH_VISIT.visitWood(strHero, strBuildingName)
						local strBuildingType = "BUILDING_SAWMILL";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitWood");
					end;
				-- 石矿
					function TTH_VISIT.visitOre(strHero, strBuildingName)
						local strBuildingType = "BUILDING_ORE_PIT";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitOre");
					end;
				-- 水银矿
					function TTH_VISIT.visitMercury(strHero, strBuildingName)
						local strBuildingType = "BUILDING_ALCHEMIST_LAB";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitMercury");
					end;
				-- 水晶矿
					function TTH_VISIT.visitCrystal(strHero, strBuildingName)
						local strBuildingType = "BUILDING_CRYSTAL_CAVERN";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitCrystal");
					end;
				-- 硫磺矿
					function TTH_VISIT.visitSulfur(strHero, strBuildingName)
						local strBuildingType = "BUILDING_SULFUR_DUNE";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitSulfur");
					end;
				-- 宝石矿
					function TTH_VISIT.visitGem(strHero, strBuildingName)
						local strBuildingType = "BUILDING_GEM_POND";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitGem");
					end;
				-- 金矿
					function TTH_VISIT.visitGold(strHero, strBuildingName)
						local strBuildingType = "BUILDING_GOLD_MINE";
						TTH_VISIT.visitMineBuilding(strHero, strBuildingName, strBuildingType, "TTH_VISIT.visitGold");
					end;

		-- 大地图上的兵种前哨建筑
			-- 访问
				function TTH_VISIT.visitDwellingOnAdvMap(strHero, strBuildingName)
					TTH_COMMON.initNavi(TTH_PATH.Visit["DwellingOnAdvMap"]["Text"]);

					local iPlayer = GetObjectOwner(strHero);
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					local funcCallback = "TTH_VISIT.visitDwellingOnAdvMap";
					if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
					else
						for iTier = 1, 4 do
							for jDwellingRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
								local arrDwelling = GetObjectNamesByType(TTH_TABLE.DwellingOnAdvMap[iTier][jDwellingRace]);
								for i, strDwelling in arrDwelling do
									if strBuildingName == strDwelling
										and GetObjectOwner(strBuildingName) == iPlayer then
										if jDwellingRace ~= iHeroRace then
											TTH_VISIT.confirmDwellingOnAdvMap4Human(iPlayer, strHero, strBuildingName, iTier, iHeroRace, funcCallback);
											return nil;
										else
											if strHero == "Wulfstan" then
												TTH_TALENT.visitDwellingWulfstan(iPlayer, strHero, strBuildingName, funcCallback);
												return nil;
											end;
											if strHero == "Sylsai" then
												TTH_TALENT.visitDwellingSylsai(iPlayer, strHero, strBuildingName, funcCallback);
												return nil;
											end;
											if strHero == "Azar" then
												TTH_TALENT.visitDwellingAzar(iPlayer, strHero, strBuildingName, funcCallback);
												return nil;
											end;
										end;
									end;
								end;
							end;
						end;
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
					end;
				end;

			-- 询问人类是否转化
				function TTH_VISIT.confirmDwellingOnAdvMap4Human(iPlayer, strHero, strBuildingName, iTier, iHeroRace, funcCallback)
					QuestionBoxForPlayers(GetPlayerFilter(iPlayer)
						, {
				      TTH_PATH.Visit["DwellingOnAdvMap"]["Confirm"]
				      ;iCountWood=TTH_TABLE.ConvertDwellingRes[iTier][WOOD]
				      ,iCountOre=TTH_TABLE.ConvertDwellingRes[iTier][ORE]
				      ,iCountGold=TTH_TABLE.ConvertDwellingRes[iTier][GOLD]
				      ,strHeroRaceName=TTH_PATH.Race[iHeroRace]
				      ,iTier=iTier
				    }
						, "TTH_VISIT.convertDwellingOnAdvMap4Human("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..iTier..","..iHeroRace..","..TTH_COMMON.psp(funcCallback)..")"
						, "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")"
					);
				end;

			-- 执行人类转化
				function TTH_VISIT.convertDwellingOnAdvMap4Human(iPlayer, strHero, strBuildingName, iTier, iHeroRace, funcCallback)
					if GetPlayerResource(iPlayer, WOOD) < TTH_TABLE.ConvertDwellingRes[iTier][WOOD]
						or GetPlayerResource(iPlayer, ORE) < TTH_TABLE.ConvertDwellingRes[iTier][ORE]
						or GetPlayerResource(iPlayer, GOLD) < TTH_TABLE.ConvertDwellingRes[iTier][GOLD] then
						ShowFlyingSign(TTH_PATH.Visit["DwellingOnAdvMap"]["NotEnoughRes"], strHero, iPlayer, 5);
						TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
						return nil;
					end;
					local iPosX, iPosY, iPosZ = GetObjectPosition(strBuildingName);
					TTH_GLOBAL.reduceResource(iPlayer, WOOD, TTH_TABLE.ConvertDwellingRes[iTier][WOOD]);
					TTH_GLOBAL.reduceResource(iPlayer, ORE, TTH_TABLE.ConvertDwellingRes[iTier][ORE]);
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, TTH_TABLE.ConvertDwellingRes[iTier][GOLD]);
					Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndCrash, iPosX, iPosY, iPosZ);
					ReplaceDwelling(strBuildingName, iHeroRace);
				end;

		-- 女巫小屋
			TTH_ENUM.WitchHutFixed = 1;
			TTH_ENUM.WitchHutBonus = 2;
			TTH_ENUM.WitchHutArtifact = 3;
			TTH_VARI.recordBuildingName = {};
			TTH_VARI.recordWitchHut = {};
			TTH_VARI.recordTop3WitchHutHumanVisit = {};
			TTH_FINAL.WITCHHUT_RESET_DAY = 14;
			TTH_FINAL.WITCHHUT_BONUS_GOLD_COST = 5000;
			TTH_FINAL.WITCHHUT_ARTIFACT_GOLD_COST = 50000;
			TTH_TABLE.WitchHutMasteryGroupMight = {
				["Class"] = {
					TTH_ENUM.Knight
					, TTH_ENUM.Paladin
					, TTH_ENUM.Retribution
					, TTH_ENUM.Ranger
					, TTH_ENUM.Warden
					, TTH_ENUM.GuildMaster
					, TTH_ENUM.DemonLord
					, TTH_ENUM.GateKeeper
					, TTH_ENUM.DeathKnight
					, TTH_ENUM.Reaver
					, TTH_ENUM.Engineer
					, TTH_ENUM.Flamekeepera
					, TTH_ENUM.BeastMaster
				}
				, ["Mastery"] = {
				  HERO_SKILL_LOGISTICS
				  , HERO_SKILL_LEARNING
				  , HERO_SKILL_OFFENCE
				  , HERO_SKILL_DEFENCE
				  , HERO_SKILL_LEADERSHIP
				  , HERO_SKILL_LUCK
				  , HERO_SKILL_WAR_MACHINES
				  , HERO_SKILL_LIGHT_MAGIC
				  , HERO_SKILL_DARK_MAGIC
				  , HERO_SKILL_SUMMONING_MAGIC
				  , HERO_SKILL_DESTRUCTIVE_MAGIC
				  , HERO_SKILL_SORCERY
				  , HERO_SKILL_TRAINING
				}
			};
			TTH_TABLE.WitchHutMasteryGroupMagic = {
				["Class"] = {
					TTH_ENUM.Heretic
					, TTH_ENUM.Enchanter
					, TTH_ENUM.Wizard
					, TTH_ENUM.ElementAlist
					, TTH_ENUM.Sorcerer
					, TTH_ENUM.Necromancer
					, TTH_ENUM.Runemage
					, TTH_ENUM.Seer
					, TTH_ENUM.Warlock
				}
				, ["Mastery"] = {
				  HERO_SKILL_LOGISTICS
				  , HERO_SKILL_LEARNING
				  , HERO_SKILL_OFFENCE
				  , HERO_SKILL_DEFENCE
				  , HERO_SKILL_LEADERSHIP
				  , HERO_SKILL_LUCK
				  , HERO_SKILL_WAR_MACHINES
				  , HERO_SKILL_LIGHT_MAGIC
				  , HERO_SKILL_DARK_MAGIC
				  , HERO_SKILL_SUMMONING_MAGIC
				  , HERO_SKILL_DESTRUCTIVE_MAGIC
				  , HERO_SKILL_SORCERY
				  , HERO_SKILL_INVOCATION
				}
			};
			TTH_TABLE.WitchHutMasteryGroupBarbarian = {
				["Class"] = {
					TTH_ENUM.Barbarian
				}
				, ["Mastery"] = {
				  HERO_SKILL_LOGISTICS
				  , HERO_SKILL_BARBARIAN_LEARNING
				  , HERO_SKILL_OFFENCE
				  , HERO_SKILL_DEFENCE
				  , HERO_SKILL_LEADERSHIP
				  , HERO_SKILL_LUCK
				  , HERO_SKILL_WAR_MACHINES
				  , HERO_SKILL_SHATTER_LIGHT_MAGIC
				  , HERO_SKILL_SHATTER_DARK_MAGIC
				  , HERO_SKILL_SHATTER_SUMMONING_MAGIC
				  , HERO_SKILL_SHATTER_DESTRUCTIVE_MAGIC
				  , HERO_SKILL_VOICE
				  , HERO_SKILL_TRAINING
				}
			};
			TTH_TABLE.WitchHutTypeOption = {
				[1] = {
					["Id"] = TTH_ENUM.WitchHutFixed
					, ["Text"] = TTH_PATH.Visit["WitchHut"]["Fixed"]["Option"]
					, ["Callback"] = "TTH_VISIT.visitWitchHut2Fixed"
				}
				, [2] = {
					["Id"] = TTH_ENUM.WitchHutBonus
					, ["Text"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Option"]
					, ["Callback"] = "TTH_VISIT.visitWitchHut2Bonus"
				}
				, [3] = {
					["Id"] = TTH_ENUM.WitchHutArtifact
					, ["Text"] = TTH_PATH.Visit["WitchHut"]["Artifact"]["Option"]
					, ["Callback"] = "TTH_VISIT.visitWitchHut2Artifact"
				}
			};
			function TTH_GLOBAL.initWitchHut(iPlayer, strHero)
				for i, strBuildingName in TTH_VARI.arrBuilding["BUILDING_WITCH_HUT"] do
					TTH_VARI.recordWitchHut[strBuildingName] = {
						["MasteryId"] = random(13) + 1
						, ["ResetDay"] = 0
					}
					for iPlayer = PLAYER_1, PLAYER_8 do
						if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
							SetAIPlayerAttractor(strBuildingName, iPlayer, -1); -- AI访问优先级设为最低
						end;
					end;
				end;
			end;
			function TTH_GLOBAL.getMasteryId4WitchHut(strHero, iWitchHutMasteryId)
				local iMasteryId = 0;
				local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
				if contains(TTH_TABLE.WitchHutMasteryGroupMight["Class"], enumHeroClass) ~= nil then
					iMasteryId = TTH_TABLE.WitchHutMasteryGroupMight["Mastery"][iWitchHutMasteryId];
				elseif contains(TTH_TABLE.WitchHutMasteryGroupMagic["Class"], enumHeroClass) ~= nil then
					iMasteryId = TTH_TABLE.WitchHutMasteryGroupMagic["Mastery"][iWitchHutMasteryId];
				elseif contains(TTH_TABLE.WitchHutMasteryGroupBarbarian["Class"], enumHeroClass) ~= nil then
					iMasteryId = TTH_TABLE.WitchHutMasteryGroupBarbarian["Mastery"][iWitchHutMasteryId];
				end;
				return iMasteryId;
			end;
			function TTH_VISIT.visitWitchHut(strHero, strBuildingName)
				TTH_COMMON.initNavi(TTH_PATH.Visit["WitchHut"]["Text"]);

				local funcCallback = "TTH_VISIT.visitWitchHut";
				MarkObjectAsVisited(strBuildingName, strHero);
				local iPlayer = GetObjectOwner(strHero);
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					print("AI Player: "..iPlayer.." Visits Witch Hut");
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				else
					TTH_VISIT.checkPreWitchHut4HasLeave(iPlayer, strHero, strBuildingName);
				end;
			end;
			function TTH_VISIT.checkPreWitchHut4HasLeave(iPlayer, strHero, strBuildingName)
				if TTH_VARI.recordWitchHut[strBuildingName]["ResetDay"] > 0 then
					local strPathMain = TTH_PATH.Visit["WitchHut"]["HasLeave"];
					TTH_GLOBAL.sign(strHero, strPathMain);
					return nil;
				end;

				TTH_VISIT.configureWitchHut4Top3(iPlayer, strHero, strBuildingName);
			end;
			function TTH_VISIT.configureWitchHut4Top3(iPlayer, strHero, strBuildingName)
				if length(TTH_VARI.recordTop3WitchHutHumanVisit) == 0 then
					if contains(TTH_VARI.recordTop3WitchHutHumanVisit, strBuildingName) == nil then
						TTH_COMMON.push(TTH_VARI.recordTop3WitchHutHumanVisit, strBuildingName);
						if H55_Witch_1_1 ~= 0 then
							TTH_VARI.recordWitchHut[strBuildingName]["MasteryId"] = H55_Witch_1_1;
						end;
					end;
				end;
				if length(TTH_VARI.recordTop3WitchHutHumanVisit) == 1 then
					if contains(TTH_VARI.recordTop3WitchHutHumanVisit, strBuildingName) == nil then
						TTH_COMMON.push(TTH_VARI.recordTop3WitchHutHumanVisit, strBuildingName);
						if H55_Witch_2_1 ~= 0 then
							TTH_VARI.recordWitchHut[strBuildingName]["MasteryId"] = H55_Witch_2_1;
						end;
					end;
				end;
				if length(TTH_VARI.recordTop3WitchHutHumanVisit) == 2 then
					if contains(TTH_VARI.recordTop3WitchHutHumanVisit, strBuildingName) == nil then
						TTH_COMMON.push(TTH_VARI.recordTop3WitchHutHumanVisit, strBuildingName);
						if H55_Witch_3_1 ~= 0 then
							TTH_VARI.recordWitchHut[strBuildingName]["MasteryId"] = H55_Witch_3_1;
						end;
					end;
				end;

				local iWitchHutMasteryId = TTH_VARI.recordWitchHut[strBuildingName]["MasteryId"];
				local iMasteryId = TTH_GLOBAL.getMasteryId4WitchHut(strHero, iWitchHutMasteryId);
				OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["WitchHut"]["Title"], TTH_PATH.Visit["WitchHut"]["Mastery"][iWitchHutMasteryId]);
				
				TTH_VISIT.radioWitchHut4Type(iPlayer, strHero, strBuildingName);
			end;
			function TTH_VISIT.radioWitchHut4Type(iPlayer, strHero, strBuildingName)
				TTH_VARI.recordBuildingName = strBuildingName;
				local iWitchHutMasteryId = TTH_VARI.recordWitchHut[strBuildingName]["MasteryId"];
				local iMasteryId = TTH_GLOBAL.getMasteryId4WitchHut(strHero, iWitchHutMasteryId);
				local strMasteryName = TTH_TABLE.Mastery[iMasteryId]["Text"];
				TTH_TABLE.WitchHutTypeOption[1]["Text"] = {
					TTH_PATH.Visit["WitchHut"]["Fixed"]["Option"]
					;strMasteryName=strMasteryName
				}
				TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.WitchHutTypeOption, TTH_PATH.Visit["WitchHut"]["RadioTips"]);
			end;
			function TTH_VISIT.resetWitchHut(strHero, strBuildingName)
				TTH_VARI.recordWitchHut[strBuildingName] = {
					["MasteryId"] = random(13) + 1
					, ["ResetDay"] = TTH_FINAL.WITCHHUT_RESET_DAY
				};
				local strPathMain = TTH_PATH.Visit["WitchHut"]["Success"];
				TTH_GLOBAL.sign(strHero, strPathMain);
				OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["WitchHut"]["Title"], TTH_PATH.Visit["WitchHut"]["Reset"][6]);
			end;
			function TTH_VISIT.refreshWitchHut(iPlayer)
				TTH_MAIN.debug("TTH_VISIT.refreshWitchHut", iPlayer, nil);

				for i, strBuildingName in TTH_VARI.arrBuilding["BUILDING_WITCH_HUT"] do
					local iResetDay = TTH_VARI.recordWitchHut[strBuildingName]["ResetDay"];
					if iResetDay > 0 then
						iResetDay = iResetDay - 1;
						TTH_VARI.recordWitchHut[strBuildingName]["ResetDay"] = iResetDay;
					end;
					if iResetDay > 0 and iResetDay <= 5 then
						OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["WitchHut"]["Title"], TTH_PATH.Visit["WitchHut"]["Reset"][iResetDay]);
					elseif iResetDay > 5 then
						OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["WitchHut"]["Title"], TTH_PATH.Visit["WitchHut"]["Reset"][6]);
					else
						local iMasteryId = TTH_VARI.recordWitchHut[strBuildingName]["MasteryId"];
						OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Visit["WitchHut"]["Title"], TTH_PATH.Visit["WitchHut"]["Mastery"][iMasteryId]);
					end;
				end;
			end;
			-- 固定技能
				function TTH_VISIT.visitWitchHut2Fixed(iPlayer, strHero)
					TTH_VISIT.checkPreWitchHut2Fixed4NotEnoughSlot(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreWitchHut2Fixed4NotEnoughSlot(iPlayer, strHero)
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					local arrMastery = {};
					if contains(TTH_TABLE.WitchHutMasteryGroupMight["Class"], enumHeroClass) ~= nil then
						arrMastery = TTH_TABLE.WitchHutMasteryGroupMight["Mastery"];
					elseif contains(TTH_TABLE.WitchHutMasteryGroupMagic["Class"], enumHeroClass) ~= nil then
						arrMastery = TTH_TABLE.WitchHutMasteryGroupMagic["Mastery"];
					elseif contains(TTH_TABLE.WitchHutMasteryGroupBarbarian["Class"], enumHeroClass) ~= nil then
						arrMastery = TTH_TABLE.WitchHutMasteryGroupBarbarian["Mastery"];
					end;
					local iCountMastery = 0;
					local bExistSuitableMastery = 0;
					local iWitchHutMasteryId = TTH_VARI.recordWitchHut[TTH_VARI.recordBuildingName]["MasteryId"];
					local iSuitableMasteryId = TTH_GLOBAL.getMasteryId4WitchHut(strHero, iWitchHutMasteryId);
					for iIndexId, iMasteryId in arrMastery do
						if GetHeroSkillMastery(strHero, iMasteryId) > 0 then
							iCountMastery = iCountMastery + 1;
						end;
						if GetHeroSkillMastery(strHero, iSuitableMasteryId) > 0 and GetHeroSkillMastery(strHero, iSuitableMasteryId) <= 2 then
							bExistSuitableMastery = 1;
						end;
					end;
					if iCountMastery == 8 and bExistSuitableMastery == 0 then
						local strPathMain = TTH_PATH.Visit["WitchHut"]["Fixed"]["NotEnoughSlot"];
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.confirmWitchHut2Fixed(iPlayer, strHero);
				end;
				function TTH_VISIT.confirmWitchHut2Fixed(iPlayer, strHero)
					local iWitchHutMasteryId = TTH_VARI.recordWitchHut[TTH_VARI.recordBuildingName]["MasteryId"];
					local iMasteryId = TTH_GLOBAL.getMasteryId4WitchHut(strHero, iWitchHutMasteryId);
					local strMasteryName = TTH_TABLE.Mastery[iMasteryId]["Text"];
					local strText = {
						TTH_PATH.Visit["WitchHut"]["Fixed"]["Confirm"]
						;strMasteryName=strMasteryName
					};
					local strCallbackOk = "TTH_VISIT.implWitchHut2Fixed("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implWitchHut2Fixed(iPlayer, strHero)
					local iWitchHutMasteryId = TTH_VARI.recordWitchHut[TTH_VARI.recordBuildingName]["MasteryId"];
					local iMasteryId = TTH_GLOBAL.getMasteryId4WitchHut(strHero, iWitchHutMasteryId);
					local strMasteryName = TTH_TABLE.Mastery[iMasteryId]["Text"];
					GiveHeroSkill(strHero, iMasteryId);
					sleep(1);
					TTH_GLOBAL.dealSkillBonus8Hero(strHero); -- 英雄技能效果实装
					local strPathMain = {
						TTH_PATH.Visit["WitchHut"]["Fixed"]["Success"]
						;strMasteryName=strMasteryName
					}
					TTH_GLOBAL.sign(strHero, strPathMain);
					TTH_VISIT.resetWitchHut(strHero, TTH_VARI.recordBuildingName);
				end;
			-- 提升技能
				function TTH_VISIT.visitWitchHut2Bonus(iPlayer, strHero)
					TTH_VISIT.checkPreWitchHut2Bonus4NotEnoughSlot(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreWitchHut2Bonus4NotEnoughSlot(iPlayer, strHero)
					local arrMasteryOption = {};
					local i = 1;
					local iCountMastery = 0;
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					for iMasteryId, objMastery in TTH_TABLE.Mastery do
						if GetHeroSkillMastery(strHero, iMasteryId) > 0	and GetHeroSkillMastery(strHero, iMasteryId) <= 2 then
							arrMasteryOption[i] = {
								["Id"] = iMasteryId
								, ["Text"] = objMastery["Text"]
								, ["Callback"] = "TTH_VISIT.checkPreWitchHut2Bonus4NotEnoughGold"
							};
							i = i + 1;
						end;
					end;

					if arrMasteryOption == nil
						or length(arrMasteryOption) == 0 then
						local strText = TTH_PATH.Visit["WitchHut"]["Bonus"]["NotOptionMastery"]
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;
					TTH_COMMON.optionRadio(iPlayer, strHero, arrMasteryOption, TTH_PATH.Visit["WitchHut"]["Bonus"]["RadioTipsMastery"]);
				end;
				function TTH_VISIT.checkPreWitchHut2Bonus4NotEnoughGold(iPlayer, strHero, iMasteryId)
					if GetPlayerResource(iPlayer, GOLD) < TTH_FINAL.WITCHHUT_BONUS_GOLD_COST then
						local strPathMain = TTH_PATH.Visit["WitchHut"]["Bonus"]["NotEnoughGold"];
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.confirmWitchHut2Bonus(iPlayer, strHero, iMasteryId);
				end;
				function TTH_VISIT.confirmWitchHut2Bonus(iPlayer, strHero, iMasteryId)
					local strMasteryName = TTH_TABLE.Mastery[iMasteryId]["Text"];
					local strText = {
						TTH_PATH.Visit["WitchHut"]["Bonus"]["Confirm"]
						;strMasteryName=strMasteryName
					};
					local strCallbackOk = "TTH_VISIT.implWitchHut2Bonus("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iMasteryId..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implWitchHut2Bonus(iPlayer, strHero, iMasteryId)
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, TTH_FINAL.WITCHHUT_BONUS_GOLD_COST);
					local strMasteryName = TTH_TABLE.Mastery[iMasteryId]["Text"];
					GiveHeroSkill(strHero, iMasteryId);
					sleep(1);
					TTH_GLOBAL.dealSkillBonus8Hero(strHero); -- 英雄技能效果实装
					local strPathMain = {
						TTH_PATH.Visit["WitchHut"]["Bonus"]["Success"]
						;strMasteryName=strMasteryName
					}
					TTH_GLOBAL.sign(strHero, strPathMain);
					TTH_VISIT.resetWitchHut(strHero, TTH_VARI.recordBuildingName);
				end;
			-- 技能坠饰
				function TTH_VISIT.visitWitchHut2Artifact(iPlayer, strHero)
					TTH_VISIT.checkPreWitchHut2Artifact4NotEnoughGold(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreWitchHut2Artifact4NotEnoughGold(iPlayer, strHero)
					if GetPlayerResource(iPlayer, GOLD) < TTH_FINAL.WITCHHUT_ARTIFACT_GOLD_COST then
						local strPathMain = TTH_PATH.Visit["WitchHut"]["Artifact"]["NotEnoughGold"];
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.confirmWitchHut2Artifact(iPlayer, strHero);
				end;
				function TTH_VISIT.confirmWitchHut2Artifact(iPlayer, strHero)
					local strText = TTH_PATH.Visit["WitchHut"]["Artifact"]["Confirm"];
					local strCallbackOk = "TTH_VISIT.implWitchHut2Artifact("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implWitchHut2Artifact(iPlayer, strHero)
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, TTH_FINAL.WITCHHUT_ARTIFACT_GOLD_COST);
					GiveArtefact(strHero, ARTIFACT_PEDANT_OF_MASTERY);
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Text"];
					local strPathMain = {
						TTH_PATH.Visit["WitchHut"]["Artifact"]["Success"]
						;strArtifactName=strArtifactName
					}
					TTH_GLOBAL.sign(strHero, strPathMain);
					TTH_VISIT.resetWitchHut(strHero, TTH_VARI.recordBuildingName);
				end;

		-- 先知小屋
			TTH_ENUM.MermaidsKillCreature8Race = 0;
			TTH_ENUM.MermaidsKillCreature8Special = 1;
			TTH_ENUM.MermaidsKillCreature8Tier = 2;
			TTH_ENUM.MermaidsLevelUp = 3;
			TTH_ENUM.MermaidsConstructTown = 4;
			TTH_ENUM.MermaidsCaptureTown = 5;
			TTH_ENUM.MermaidsCaptureDwelling = 6;
			TTH_ENUM.MermaidsCaptureMine = 7;
			TTH_TABLE.MermaidsReward = {
				[0] = {
					["Type"] = TTH_ENUM.Artifact
					, ["Id"] = ARTIFACT_ORB_AIR
				}
				, [1] = {
					["Type"] = TTH_ENUM.Artifact
					, ["Id"] = ARTIFACT_ORB_EARTH
				}
				, [2] = {
					["Type"] = TTH_ENUM.Artifact
					, ["Id"] = ARTIFACT_ORB_FIRE
				}
				, [3] = {
					["Type"] = TTH_ENUM.Artifact
					, ["Id"] = ARTIFACT_ORB_WATER
				}
			};
			TTH_TABLE.MermaidsMission = {
				[0] = {
					["Type"] = TTH_ENUM.MermaidsKillCreature8Race
					, ["TargetValue"] = 2000
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8RaceConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8RaceAccept"]
				}
				, [1] = {
					["Type"] = TTH_ENUM.MermaidsKillCreature8Special
					, ["TargetValue"] = 500
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8SpecialConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8SpecialAccept"]
				}
				, [2] = {
					["Type"] = TTH_ENUM.MermaidsKillCreature8Tier
					, ["TargetValue"] = 500
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8TierConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8TierAccept"]
				}
				, [3] = {
					["Type"] = TTH_ENUM.MermaidsLevelUp
					, ["TargetValue"] = 10
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["LevelUpConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["LevelUpAccept"]
				}
				, [4] = {
					["Type"] = TTH_ENUM.MermaidsConstructTown
					, ["TargetValue"] = 20
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["ConstructTownConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["ConstructTownAccept"]
				}
				, [5] = {
					["Type"] = TTH_ENUM.MermaidsCaptureTown
					, ["TargetValue"] = 2
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureTownConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureTownAccept"]
				}
				, [6] = {
					["Type"] = TTH_ENUM.MermaidsCaptureDwelling
					, ["TargetValue"] = 5
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureDwellingConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureDwellingAccept"]
				}
				, [7] = {
					["Type"] = TTH_ENUM.MermaidsCaptureMine
					, ["TargetValue"] = 10
					, ["TemplateConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureMineConfirm"]
					, ["TemplateAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureMineAccept"]
				}
			}
			TTH_VARI.MermaidsMission8Player = {};
			function TTH_GLOBAL.initMermaids()
				for i, strMermaidsName in TTH_VARI.arrBuilding["BUILDING_MERMAIDS"] do
					for iPlayer = PLAYER_1, PLAYER_8 do
						if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
							SetAIPlayerAttractor(strMermaidsName, iPlayer, -1); -- AI访问优先级设为最低
						end;
					end;
				end;
				for iPlayer = PLAYER_1, PLAYER_8 do
					TTH_VARI.MermaidsMission8Player[iPlayer] = {
						["LockDate"] = 0
						, ["HasAccept"] = TTH_ENUM.No
					};
				end;
			end;
			function TTH_VISIT.combatResultMermaids(iPlayer, strHero, iCombatIndex)
				if TTH_VARI.MermaidsMission8Player[iPlayer]["Hero"] == strHero then
					local objMission = TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"];
					local iMissionType = objMission["Type"];
					if iMissionType == TTH_ENUM.MermaidsKillCreature8Race
						or iMissionType == TTH_ENUM.MermaidsKillCreature8Special
						or iMissionType == TTH_ENUM.MermaidsKillCreature8Tier then
						local iTargetId = objMission["TargetId"];
						local iTargetValue = objMission["TargetValue"];
						local iCurrentValue = objMission["CurrentValue"];
						local iCountStacksLoser = GetSavedCombatArmyCreaturesCount(iCombatIndex, 0);
						local iCountKillCreature = 0;
						for i = 0, iCountStacksLoser - 1 do
						  local iCreatureId, iCountCreature, iCountCreatureDeath = GetSavedCombatArmyCreatureInfo(iCombatIndex, 0, i);
						  if iMissionType == TTH_ENUM.MermaidsKillCreature8Race then
						  	for i = 1, 7 do
						  		for j = 1, 3 do
								  	if iCreatureId == TTH_TABLE.Creature8RaceAndLevel[iTargetId][i][j] then
								  		iCountKillCreature = iCountKillCreature + iCountCreature;
								  	end;
						  		end;
						  	end;
						  elseif iMissionType == TTH_ENUM.MermaidsKillCreature8Special then
						  	for i = 1, 3 do
							  	if iCreatureId == TTH_TABLE.Creature8RaceAndLevel[iTargetId][7][i] then
							  		iCountKillCreature = iCountKillCreature + iCountCreature;
							  	end;
						  	end;
						  elseif iMissionType == TTH_ENUM.MermaidsKillCreature8Tier then
						  	if TTH_TABLE_NCF_CREATURES[iCreatureId]["TIER"] == iTargetId then
						  		iCountKillCreature = iCountKillCreature + iCountCreature;
						  	end;
						  end;
						end;
						TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] = TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] + iCountKillCreature;
					end;
				end;
			end;
			function TTH_VISIT.visitMermaids(strHero, strBuildingName)
				TTH_COMMON.initNavi(TTH_PATH.Visit["Mermaids"]["Text"]);

				MarkObjectAsVisited(strBuildingName, strHero);
				local funcCallback = "TTH_VISIT.visitMermaids";
				local iPlayer = GetObjectOwner(strHero);
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				else
					TTH_VISIT.checkPreVisitMermaids4LockDate(iPlayer, strHero, strBuildingName);
				end;
			end;
			function TTH_VISIT.checkPreVisitMermaids4LockDate(iPlayer, strHero, strBuildingName)
				if TTH_VARI.MermaidsMission8Player[iPlayer]["LockDate"] > TTH_VARI.day then
					local strText = TTH_PATH.Visit["Mermaids"]["LockDate"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_VISIT.checkPreVisitMermaids(iPlayer, strHero, strBuildingName);
			end;
			function TTH_VISIT.checkPreVisitMermaids(iPlayer, strHero, strBuildingName)
				if TTH_VARI.MermaidsMission8Player[iPlayer]["HasAccept"] == TTH_ENUM.Yes then -- 玩家已经接受任务
					if TTH_VARI.MermaidsMission8Player[iPlayer]["Hero"] == strHero then -- 当前英雄接受的任务
						if TTH_VISIT.hasCompleteVisitMermaids(iPlayer, strHero) == TTH_ENUM.Yes then -- 任务已完成
							-- 交付奖励
								TTH_VISIT.implVisitMermaids4Reward(iPlayer, strHero, strBuildingName);
						else -- 任务未完成
							-- 询问是否继续任务
								TTH_VISIT.confirmVisitMermaids4GoOn(iPlayer, strHero, strBuildingName);
						end;
					else -- 其它英雄接受的任务
						-- 提示
							local strText = TTH_PATH.Visit["Mermaids"]["OtherHeroHasAccept"];
							TTH_GLOBAL.sign(strHero, strText);
					end;
				else -- 玩家没有接受任务
					-- 询问是否接受任务
						TTH_VISIT.checkPreVisitMermaids4VisitedToday(iPlayer, strHero, strBuildingName);
				end;
			end;
			-- 查验是否已完成
				function TTH_VISIT.hasCompleteVisitMermaids(iPlayer, strHero)
					local bHasComplete = TTH_ENUM.No;
					local iTargetId = TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["TargetId"];
					local iMissionType = TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["Type"];
					if iMissionType == TTH_ENUM.MermaidsKillCreature8Race then
					elseif iMissionType == TTH_ENUM.MermaidsKillCreature8Special then
					elseif iMissionType == TTH_ENUM.MermaidsKillCreature8Tier then
					elseif iMissionType == TTH_ENUM.MermaidsLevelUp then
						TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] = GetHeroLevel(strHero);
					elseif iMissionType == TTH_ENUM.MermaidsConstructTown then
	      		local iTownLevel = 0;
	      		for i, strTown in TTH_VARI.arrTown do
	      			if GetObjectOwner(strTown) == iPlayer then
			      		local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
			      		local iTownBuildingTotalLevel = TTH_MANAGE.calcTownBuildingTotalLevel(objTown);
			      		iTownLevel = iTownLevel + iTownBuildingTotalLevel;
			      	end;
	      		end;
	      		TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] = iTownLevel;
					elseif iMissionType == TTH_ENUM.MermaidsCaptureTown then
	      		TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] = TTH_GLOBAL.countTown8Player(iPlayer);
					elseif iMissionType == TTH_ENUM.MermaidsCaptureDwelling then
	      		TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] = TTH_GLOBAL.countDwelling8Player(iPlayer);
					elseif iMissionType == TTH_ENUM.MermaidsCaptureMine then
	      		TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"]["CurrentValue"] = TTH_GLOBAL.countMine8Player(iPlayer);
					end;

					local objMission = TTH_VARI.MermaidsMission8Player[iPlayer]["Mission"];
					if objMission["CurrentValue"] >= objMission["TargetValue"] then
						bHasComplete = TTH_ENUM.Yes;
					end;
					return bHasComplete;
				end;
			-- 交付奖励
				function TTH_VISIT.implVisitMermaids4Reward(iPlayer, strHero, strBuildingName)
					local iRewardIndex = TTH_VARI.MermaidsMission8Player[iPlayer]["RewardIndex"];
					local objReward = TTH_TABLE.MermaidsReward[iRewardIndex];
					local strTextReward = "";
					if objReward["Type"] == TTH_ENUM.Artifact then
						strTextReward = TTH_TABLE.Artifact[objReward["Id"]]["Text"];
						GiveArtefact(strHero, objReward["Id"]);
					end;
					TTH_VARI.MermaidsMission8Player[iPlayer] = {
						["LockDate"] = TTH_VARI.day + 7
						, ["HasAccept"] = TTH_ENUM.No
					};
					local strPathMain = {
						TTH_PATH.Visit["Mermaids"]["Reward"]
						;strTextReward=strTextReward
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;
			-- 询问是否继续任务
				function TTH_VISIT.confirmVisitMermaids4GoOn(iPlayer, strHero, strBuildingName)
					local strWidgetMissionInfo = TTH_GLOBAL.geneWidgetMissionInfo(iPlayer, strHero);
					local strPathMain = {
						TTH_PATH.Visit["Mermaids"]["ConfirmGoOn"]
						;strWidgetMissionInfo=strWidgetMissionInfo
					};
					local strCallbackOk = "TTH_COMMON.cancelOption()";
					local strCallbackCancel = "TTH_VISIT.giveupVisitMermaids("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.giveupVisitMermaids(iPlayer, strHero, strBuildingName)
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, TTH_FINAL.MERMAIDS_FINE);
					TTH_VARI.MermaidsMission8Player[iPlayer] = {
						["LockDate"] = TTH_VARI.day + 7
						, ["HasAccept"] = TTH_ENUM.No
					};
					local strText = TTH_PATH.Visit["Mermaids"]["SuccessGiveup"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
			-- 询问是否接受任务
				function TTH_VISIT.checkPreVisitMermaids4VisitedToday(iPlayer, strHero, strBuildingName)
					if TTH_VARI.MermaidsMission8Player[iPlayer]["VisitedToday"] == TTH_VARI.day then
						local strText = TTH_PATH.Visit["Mermaids"]["VisitedToday"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_VARI.MermaidsMission8Player[iPlayer]["VisitedToday"] = TTH_VARI.day;
					TTH_VISIT.confirmVisitMermaids4Accept(iPlayer, strHero, strBuildingName);
				end;
				function TTH_VISIT.confirmVisitMermaids4Accept(iPlayer, strHero, strBuildingName)
					local iRandomReward = random(length(TTH_TABLE.MermaidsReward));
					local objReward = TTH_TABLE.MermaidsReward[iRandomReward];
					local strTextReward = "";
					if objReward["Type"] == TTH_ENUM.Artifact then
						strTextReward = TTH_TABLE.Artifact[objReward["Id"]]["Text"];
					end;
					local iRandomMission = random(length(TTH_TABLE.MermaidsMission));
					local objMission = TTH_TABLE.MermaidsMission[iRandomMission];
					local iTargetId = -1;
					local strTargetText = "";
					local iTargetValue = objMission["TargetValue"];
					if objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Race then
						iTargetId = random(8); -- TOWN_RACE 0~7
						strTargetText = TTH_PATH.Race[iTargetId];
					elseif objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Special then
						iTargetId = random(8); -- TOWN_RACE 0~7
						local iCreatureId8Tier7 = TTH_TABLE.Creature8RaceAndLevel[iTargetId][7][1];
						strTargetText = TTH_TABLE_NCF_CREATURES[iCreatureId8Tier7]["NAME"];
					elseif objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Tier then
						iTargetId = random(4) + 4; -- Tier 1~7
						strTargetText = TTH_COMMON.psp(iTargetId);
						iTargetValue = iTargetValue * (7 - iTargetId + 1);
					elseif objMission["Type"] == TTH_ENUM.MermaidsLevelUp then
					elseif objMission["Type"] == TTH_ENUM.MermaidsConstructTown then
					elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureTown then
					elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureDwelling then
					elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureMine then
					end;
					local strPathTemplate = objMission["TemplateConfirm"];

					local strPathMain = {
						TTH_PATH.Visit["Mermaids"]["ConfirmAccept"]
						;strTextReward=strTextReward
						,strPathTemplate={
							strPathTemplate
							;iTargetValue=iTargetValue
							,strTargetText=strTargetText
						}
					};
					local strCallbackOk = "TTH_VISIT.implVisitMermaids4Accept("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..iRandomReward..","..iRandomMission..","..iTargetId..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implVisitMermaids4Accept(iPlayer, strHero, strBuildingName, iRewardIndex, iMissionIndex, iTargetId)
					local objReward = TTH_TABLE.MermaidsReward[iRewardIndex];
					local strTextReward = "";
					if objReward["Type"] == TTH_ENUM.Artifact then
						strTextReward = TTH_TABLE.Artifact[objReward["Id"]]["Text"];
					end;
					local objMission = TTH_TABLE.MermaidsMission[iMissionIndex];
					local strTargetText = "";
					local iCurrentValue = 0;
					local iDiffValue = objMission["TargetValue"];
					if objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Race then
						strTargetText = TTH_PATH.Race[iTargetId];
					elseif objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Special then
						local iCreatureId8Tier7 = TTH_TABLE.Creature8RaceAndLevel[iTargetId][7][1];
						strTargetText = TTH_TABLE_NCF_CREATURES[iCreatureId8Tier7]["NAME"];
					elseif objMission["Type"] == TTH_ENUM.MermaidsKillCreature8Tier then
						strTargetText = TTH_COMMON.psp(iTargetId);
						iDiffValue = iDiffValue * (7 - iTargetId + 1);
					elseif objMission["Type"] == TTH_ENUM.MermaidsLevelUp then
						iCurrentValue = GetHeroLevel(strHero);
					elseif objMission["Type"] == TTH_ENUM.MermaidsConstructTown then
	      		local iTownLevel = 0;
	      		for i, strTown in TTH_VARI.arrTown do
	      			if GetObjectOwner(strTown) == iPlayer then
			      		local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
			      		local iTownBuildingTotalLevel = TTH_MANAGE.calcTownBuildingTotalLevel(objTown);
			      		iTownLevel = iTownLevel + iTownBuildingTotalLevel;
			      	end;
	      		end;
	      		iCurrentValue = iTownLevel;
					elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureTown then
	      		iCurrentValue = TTH_GLOBAL.countTown8Player(iPlayer);
					elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureDwelling then
	      		iCurrentValue = TTH_GLOBAL.countDwelling8Player(iPlayer);
					elseif objMission["Type"] == TTH_ENUM.MermaidsCaptureMine then
	      		iCurrentValue = TTH_GLOBAL.countMine8Player(iPlayer);
					end;
					local iTargetValue = iCurrentValue + iDiffValue;
					local strPathTemplate = objMission["TemplateAccept"];

					TTH_VARI.MermaidsMission8Player[iPlayer] = {
						["LockDate"] = 0
						, ["HasAccept"] = TTH_ENUM.Yes
						, ["Hero"] = strHero
						, ["BuildingName"] = strBuildingName
						, ["RewardIndex"] = iRewardIndex
						, ["Mission"] = {
							["Type"] = objMission["Type"]
							, ["TargetId"] = iTargetId
							, ["TargetValue"] = iTargetValue
							, ["CurrentValue"] = iCurrentValue
						}
					};
					local strPathMain = {
						TTH_PATH.Visit["Mermaids"]["SuccessAccept"]
						;strTextReward=strTextReward
						,strPathTemplate={
							strPathTemplate
							;iCurrentValue=iCurrentValue
							,iTargetValue=iTargetValue
							,strTargetText=strTargetText
						}
					};
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
				end;

		-- 宝物商店
			function TTH_GLOBAL.initBlackMarket()
				for i, strBlackMarketName in TTH_VARI.arrBuilding["BUILDING_BLACK_MARKET"] do
					for iPlayer = PLAYER_1, PLAYER_8 do
						if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
							SetAIPlayerAttractor(strBlackMarketName, iPlayer, -1); -- AI访问优先级设为最低
						end;
					end;
				end;
			end;
			function TTH_VISIT.visitBlackMarket(strHero, strBuildingName)
				local iPlayer = GetObjectOwner(strHero);
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					print("Blocked AI from visiting Artifact Merchant");
				else
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, "TTH_VISIT.visitBlackMarket");
				end;
			end;

		-- 红木了望塔
			function TTH_VISIT.visitRedwoordObservatory(strHero, strBuildingName)
				local iPlayer = GetObjectOwner(strHero);
				local funcCallback = "TTH_VISIT.visitRedwoordObservatory";
				TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
					local iPlayer = GetObjectOwner(strHero);
					if strHero == "Gillion" then
						TTH_TALENT.visitRedwoordGillion(iPlayer, strHero, strBuildingName, funcCallback);
						return nil;
					end;
				end;
			end;

		-- 马厩
			function TTH_VISIT.visitStables(strHero, strBuildingName)
				local iPlayer = GetObjectOwner(strHero);
				local funcCallback = "TTH_VISIT.visitStables";
				TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
					local iPlayer = GetObjectOwner(strHero);
					if strHero == "Brem" then
						TTH_TALENT.visitStablesBrem(iPlayer, strHero, strBuildingName, funcCallback);
						return nil;
					end;
				end;
			end;

		-- 魔力节点 启示水晶/天文台/魔法学校/启蒙图书馆
			function TTH_VISIT.visitMagicNode(strHero, strBuildingName)
				local iPlayer = GetObjectOwner(strHero);
				local funcCallback = "TTH_VISIT.visitMagicNode";
				TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
					local iPlayer = GetObjectOwner(strHero);
					if strHero == "Astral" then
						TTH_TALENT.visitMagicNodeAstral(iPlayer, strHero, strBuildingName, funcCallback);
						return nil;
					end;
				end;
			end;

		-- 杉提瑞圆盘/方尖碑
			TTH_ENUM.TrialCourage = 1;
			TTH_ENUM.TrialMight = 2;
			TTH_ENUM.TrialWisdom = 3;
			TTH_VARI.recordTrial = {};
			TTH_TABLE.ShantiriTrialTypeOption = {
				[1] = {
					["Id"] = TTH_ENUM.TrialCourage
					, ["Text"] = TTH_PATH.Visit["Shantiri"]["Courage"]["Option"]
					, ["Callback"] = "TTH_VISIT.visitShantiri2TrialCourage"
					, ["Power"] = 10000
					, ["StatBonus"] = 1
				}
				, [2] = {
					["Id"] = TTH_ENUM.TrialMight
					, ["Text"] = TTH_PATH.Visit["Shantiri"]["Might"]["Option"]
					, ["Callback"] = "TTH_VISIT.visitShantiri2TrialMight"
					, ["Power"] = 30000
				}
				, [3] = {
					["Id"] = TTH_ENUM.TrialWisdom
					, ["Text"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Option"]
					, ["Callback"] = "TTH_VISIT.visitShantiri2TrialWisdom"
					, ["Power"] = 50000
				}
			};
			function TTH_GLOBAL.initShantiri(iPlayer, strHero)
				if TTH_VARI.recordTrial[strHero] == nil then
					TTH_VARI.recordTrial[strHero] = {
						[TTH_ENUM.TrialCourage] = TTH_ENUM.No
						, [TTH_ENUM.TrialMight] = TTH_ENUM.No
						, [TTH_ENUM.TrialWisdom] = TTH_ENUM.No
					}
				end;
			end;
			function TTH_GLOBAL.initTrial()
				for i, strShantiriName in TTH_VARI.arrBuilding["BUILDING_SHANTIRI"] do
					for iPlayer = PLAYER_1, PLAYER_8 do
						if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
							SetAIPlayerAttractor(strShantiriName, iPlayer, -1); -- AI访问优先级设为最低
						end;
					end;
				end;
			end;
			function TTH_VISIT.visitShantiri(strHero, strBuildingName)
				TTH_COMMON.initNavi(TTH_PATH.Visit["Shantiri"]["Text"]);

				local funcCallback = "TTH_VISIT.visitShantiri";
				MarkObjectAsVisited(strBuildingName, strHero);
				local iPlayer = GetObjectOwner(strHero);
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
				else
					TTH_VISIT.radioShantiri4TrialType(iPlayer, strHero, strBuildingName);
				end;
			end;
			function TTH_VISIT.radioShantiri4TrialType(iPlayer, strHero, strBuildingName)
				TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.ShantiriTrialTypeOption, TTH_PATH.Visit["Shantiri"]["RadioTips"]);
			end;
			-- 勇气试炼
				function TTH_VISIT.visitShantiri2TrialCourage(iPlayer, strHero)
					TTH_VISIT.checkPreVisitShantiri2TrialCourage4HasComplete(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialCourage4HasComplete(iPlayer, strHero)
					TTH_GLOBAL.initShantiri(iPlayer, strHero);
					if TTH_VARI.recordTrial[strHero][TTH_ENUM.TrialCourage] == TTH_ENUM.Yes then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["HasComplete"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Courage"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.checkPreVisitShantiri2TrialCourage4Power(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialCourage4Power(iPlayer, strHero)
					if TTH_GLOBAL.getPower8Hero(strHero) < TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialCourage]["Power"] then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["NotEnoughPower"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Courage"]["Text"]
							,iPower=TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialCourage]["Power"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.confirmVisitShantiri2TrialCourage(iPlayer, strHero);
				end;
				function TTH_VISIT.confirmVisitShantiri2TrialCourage(iPlayer, strHero)
					local strText = TTH_PATH.Visit["Shantiri"]["Courage"]["Confirm"];
					local strCallbackOk = "TTH_VISIT.implVisitShantiri2TrialCourage("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implVisitShantiri2TrialCourage(iPlayer, strHero)
					local strCallbackWin = "TTH_VISIT.winVisitShantiri2TrialCourage";
					local strPathCombatLink = TTH_PATH.Visit["Shantiri"]["CombatLink"];
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					local iLenArrCreatureType = 7;
					for i = 0, length(arrCreature4Hero) - 1 do
						if arrCreature4Hero[i]["Id"] == 0 then
							iLenArrCreatureType = i;
							break;
						end;
					end;
					for i = 0, iLenArrCreatureType - 1 do
						if arrCreature4Hero[i]["Id"] == CREATURE_GOBLIN then
							arrCreature4Hero[i]["Id"] = CREATURE_GOBLIN_TRAPPER;
						end;
					end;
					local strEnemyHero = nil;
					local iCoef = TTH_AI.getTrialCoef8GameDifficulty();
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					if iLenArrCreatureType == 1 then
						StartCombat(strHero, strEnemyHero, 1
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					elseif iLenArrCreatureType == 2 then
						StartCombat(strHero, strEnemyHero, 2
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					elseif iLenArrCreatureType == 3 then
						StartCombat(strHero, strEnemyHero, 3
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iCoef
							, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					elseif iLenArrCreatureType == 4 then
						StartCombat(strHero, strEnemyHero, 4
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iCoef
							, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iCoef
							, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					elseif iLenArrCreatureType == 5 then
						StartCombat(strHero, strEnemyHero, 5
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iCoef
							, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iCoef
							, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iCoef
							, arrCreature4Hero[4]["Id"], arrCreature4Hero[4]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					elseif iLenArrCreatureType == 6 then
						StartCombat(strHero, strEnemyHero, 6
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iCoef
							, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iCoef
							, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iCoef
							, arrCreature4Hero[4]["Id"], arrCreature4Hero[4]["Count"] * iCoef
							, arrCreature4Hero[5]["Id"], arrCreature4Hero[5]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					else
						StartCombat(strHero, strEnemyHero, 7
							, arrCreature4Hero[0]["Id"], arrCreature4Hero[0]["Count"] * iCoef
							, arrCreature4Hero[1]["Id"], arrCreature4Hero[1]["Count"] * iCoef
							, arrCreature4Hero[2]["Id"], arrCreature4Hero[2]["Count"] * iCoef
							, arrCreature4Hero[3]["Id"], arrCreature4Hero[3]["Count"] * iCoef
							, arrCreature4Hero[4]["Id"], arrCreature4Hero[4]["Count"] * iCoef
							, arrCreature4Hero[5]["Id"], arrCreature4Hero[5]["Count"] * iCoef
							, arrCreature4Hero[6]["Id"], arrCreature4Hero[6]["Count"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					end;
				end;
				function TTH_VISIT.winVisitShantiri2TrialCourage(strHero, objResult)
					local iPlayer = GetObjectOwner(strHero);
					if objResult ~= nil then
						TTH_VARI.recordTrial[strHero][TTH_ENUM.TrialCourage] = TTH_ENUM.Yes;
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_ATTACK, TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialCourage]["StatBonus"]);
						sleep(1);
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_DEFENCE, TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialCourage]["StatBonus"]);
						sleep(1);
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialCourage]["StatBonus"]);
						sleep(1);
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_KNOWLEDGE, TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialCourage]["StatBonus"]);
						sleep(1);
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["Success"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Courage"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
					end;
				end;
			-- 力量试炼
				TTH_VARI.recordTrialMight = {};
				function TTH_VISIT.initVisitShantiri2TrialMight(iPlayer, strHero)
					if TTH_VARI.recordTrialMight[strHero] == nil then
						TTH_VARI.recordTrialMight[strHero] = {
							["Mastery"] = 0
							, ["Perk"] = 0
						}
					end;
				end;
				function TTH_VISIT.visitShantiri2TrialMight(iPlayer, strHero)
					TTH_VISIT.initVisitShantiri2TrialMight(iPlayer, strHero);
					TTH_VISIT.checkPreVisitShantiri2TrialMight4HasComplete(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialMight4HasComplete(iPlayer, strHero)
					TTH_GLOBAL.initShantiri(iPlayer, strHero);
					if TTH_VARI.recordTrial[strHero][TTH_ENUM.TrialMight] == TTH_ENUM.Yes then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["HasComplete"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Might"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.checkPreVisitShantiri2TrialMight4Power(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialMight4Power(iPlayer, strHero)
					if TTH_GLOBAL.getPower8Hero(strHero) < TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialMight]["Power"] then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["NotEnoughPower"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Might"]["Text"]
							,iPower=TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialMight]["Power"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.radioVisitShantiri2TrialMight4Mastery(iPlayer, strHero);
				end;
				function TTH_VISIT.radioVisitShantiri2TrialMight4Mastery(iPlayer, strHero)
					local arrMasteryOption = {};
					local i = 1;
					local iCountMastery = 0;
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					for iMasteryId, objMastery in TTH_TABLE.Mastery do
						if GetHeroSkillMastery(strHero, iMasteryId) > 0 then
							iCountMastery = iCountMastery + 1;
						end;
					end;
					for iMasteryId, objMastery in TTH_TABLE.Mastery do
						if objMastery["Class"] == nil
							or (
								objMastery["Class"] ~= nil
								and contains(objMastery["Class"], enumHeroClass) ~= nil
							) then
							if (
									GetHeroSkillMastery(strHero, iMasteryId) == 0
									and iCountMastery <= 7
								)
								or (
									GetHeroSkillMastery(strHero, iMasteryId) > 0
									and GetHeroSkillMastery(strHero, iMasteryId) <= 2
								)
								then
								arrMasteryOption[i] = {
									["Id"] = iMasteryId
									, ["Text"] = objMastery["Text"]
									, ["Callback"] = "TTH_VISIT.radioVisitShantiri2TrialMight4Perk"
								};
								i = i + 1;
							end;
						end;
					end;

					if arrMasteryOption == nil
						or length(arrMasteryOption) == 0 then
						local strText = TTH_PATH.Visit["Shantiri"]["Might"]["NotOptionMastery"]
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;
					TTH_COMMON.optionRadio(iPlayer, strHero, arrMasteryOption, TTH_PATH.Visit["Shantiri"]["Might"]["RadioTipsMastery"]);
				end;
				function TTH_VISIT.radioVisitShantiri2TrialMight4Perk(iPlayer, strHero, iMasteryId)
					TTH_VARI.recordTrialMight[strHero]["Mastery"] = iMasteryId;
					local arrPerkOption = {};
					local i = 1;
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					for iPerkId, objPerk in TTH_TABLE.Mastery[iMasteryId]["Perk"] do
						if HasHeroSkill(strHero, iPerkId) == nil and objPerk["IsAbsolute"] == nil then
							if objPerk["Depend"] == nil then
								arrPerkOption[i] = {
									["Id"] = iPerkId
									, ["Text"] = objPerk["Text"]
									, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialMight"
								};
								i = i + 1;
							else
								if objPerk["DependType"] == TTH_ENUM.Simple then
									local bCheckDepend = TTH_ENUM.Yes;
									for iIndex, iDependPerkId in objPerk["Depend"] do
										if HasHeroSkill(strHero, iDependPerkId) == nil then
											bCheckDepend = TTH_ENUM.No;
											break;
										end;
									end
									if bCheckDepend == TTH_ENUM.Yes then
										arrPerkOption[i] = {
											["Id"] = iPerkId
											, ["Text"] = objPerk["Text"]
											, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialMight"
										};
										i = i + 1;
									end;
								elseif objPerk["DependType"] == TTH_ENUM.Complicated then
									local bInclude = TTH_ENUM.No;
									for iIndexInclude, objInclude in objPerk["Include"] do
										if contains(objInclude["Class"], enumHeroClass) ~= nil then
											bInclude = TTH_ENUM.Yes;
											local bCheckDepend = TTH_ENUM.Yes;
											for iIndex, iDependPerkId in objInclude["Depend"] do
												if HasHeroSkill(strHero, iDependPerkId) == nil then
													bCheckDepend = TTH_ENUM.No;
													break;
												end;
											end
											if bCheckDepend == TTH_ENUM.Yes then
												arrPerkOption[i] = {
													["Id"] = iPerkId
													, ["Text"] = objPerk["Text"]
													, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialMight"
												};
												i = i + 1;
											end;
										end;
									end
									if bInclude == TTH_ENUM.No then
										local bCheckDepend = TTH_ENUM.Yes;
										for iIndex, iDependPerkId in objPerk["Depend"] do
											if HasHeroSkill(strHero, iDependPerkId) == nil then
												bCheckDepend = TTH_ENUM.No;
												break;
											end;
										end
										if bCheckDepend == TTH_ENUM.Yes then
											arrPerkOption[i] = {
												["Id"] = iPerkId
												, ["Text"] = objPerk["Text"]
												, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialMight"
											};
											i = i + 1;
										end;
									end;
								end;
							end;
						end;
					end;

					if arrPerkOption == nil
						or length(arrPerkOption) == 0 then
						local strText = TTH_PATH.Visit["Shantiri"]["Might"]["NotOptionPerk"]
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;
					TTH_COMMON.optionRadio(iPlayer, strHero, arrPerkOption, TTH_PATH.Visit["Shantiri"]["Might"]["RadioTipsPerk"]);
				end;
				function TTH_VISIT.confirmVisitShantiri2TrialMight(iPlayer, strHero, iPerkId)
					TTH_VARI.recordTrialMight[strHero]["Perk"] = iPerkId;
					local objMastery = TTH_TABLE.Mastery[TTH_VARI.recordTrialMight[strHero]["Mastery"]];
					local objPerk = objMastery["Perk"][TTH_VARI.recordTrialMight[strHero]["Perk"]];
					local strPathMain = {
						TTH_PATH.Visit["Shantiri"]["Might"]["Confirm"]
						;strMasteryName=objMastery["Text"]
						,strPerkName=objPerk["Text"]
					};
					local strCallbackOk = "TTH_VISIT.implVisitShantiri2TrialMight("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implVisitShantiri2TrialMight(iPlayer, strHero)
					local strCallbackWin = "TTH_VISIT.winVisitShantiri2TrialMight";
					local strPathCombatLink = TTH_PATH.Visit["Shantiri"]["CombatLink"];
					local iPower = TTH_GLOBAL.getPower8Hero(strHero);
					local iHeroLevel = GetHeroLevel(strHero);

					local strEnemyHero = nil;
					local iCoef = TTH_COMMON.round(sqrt(TTH_AI.getTrialCoef8GameDifficulty()) * sqrt(iHeroLevel));
					local iCoefMagic = TTH_COMMON.round(sqrt(TTH_AI.getTrialCoef8GameDifficulty()) * sqrt(iHeroLevel) * 1.5);
					local iHeroGroup = TTH_TABLE.Hero[strHero]["Group"];
		  		if iHeroGroup == GroupMight
		  			or iHeroRace == GroupBalanceNotNec
		  			or iHeroRace == GroupBalanceNec
		  			or iHeroRace == GroupBarbarian then
						StartCombat(strHero, strEnemyHero, 7
							, CREATURE_CHERUBIN, 1
							, CREATURE_RAINBOW_DRAGON, TTH_TABLE_NCF_CREATURES[CREATURE_RAINBOW_DRAGON]["GROWTH"] * iCoef
							, CREATURE_BATTLE_GRIFFIN, TTH_TABLE_NCF_CREATURES[CREATURE_BATTLE_GRIFFIN]["GROWTH"] * iCoef
							, CREATURE_FLAME_MAGE, TTH_TABLE_NCF_CREATURES[CREATURE_FLAME_MAGE]["GROWTH"] * iCoef
							, CREATURE_THUNDER_THANE, TTH_TABLE_NCF_CREATURES[CREATURE_THUNDER_THANE]["GROWTH"] * iCoef
							, CREATURE_STORM_LORD, TTH_TABLE_NCF_CREATURES[CREATURE_STORM_LORD]["GROWTH"] * iCoef
							, CREATURE_OBSIDIAN_GARGOYLE, TTH_TABLE_NCF_CREATURES[CREATURE_OBSIDIAN_GARGOYLE]["GROWTH"] * iCoef
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
		  		elseif iHeroGroup == GroupMagic then
						StartCombat(strHero, strEnemyHero, 7
							, CREATURE_DRAGON_KNIGHT, 1
							, CREATURE_QUASIT, TTH_TABLE_NCF_CREATURES[CREATURE_QUASIT]["GROWTH"] * iCoefMagic
							, CREATURE_FIREBREATHER_HOUND, TTH_TABLE_NCF_CREATURES[CREATURE_FIREBREATHER_HOUND]["GROWTH"] * iCoefMagic
							, CREATURE_INFERNAL_SUCCUBUS, TTH_TABLE_NCF_CREATURES[CREATURE_INFERNAL_SUCCUBUS]["GROWTH"] * iCoefMagic
							, CREATURE_BALOR, TTH_TABLE_NCF_CREATURES[CREATURE_BALOR]["GROWTH"] * iCoefMagic
							, CREATURE_BLACK_DRAGON, TTH_TABLE_NCF_CREATURES[CREATURE_BLACK_DRAGON]["GROWTH"] * iCoefMagic
							, CREATURE_RED_DRAGON, TTH_TABLE_NCF_CREATURES[CREATURE_RED_DRAGON]["GROWTH"] * iCoefMagic
							, nil
							, strCallbackWin
							, strPathCombatLink
							, 1);
					end;
				end;
				function TTH_VISIT.winVisitShantiri2TrialMight(strHero, objResult)
					local iPlayer = GetObjectOwner(strHero);
					if objResult ~= nil then
						TTH_VARI.recordTrial[strHero][TTH_ENUM.TrialMight] = TTH_ENUM.Yes;
						GiveHeroSkill(strHero, TTH_VARI.recordTrialMight[strHero]["Mastery"]);
						sleep(1);
						GiveHeroSkill(strHero, TTH_VARI.recordTrialMight[strHero]["Perk"]);
						sleep(1);
						TTH_GLOBAL.dealSkillBonus8Hero(strHero); -- 英雄技能效果实装
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["Success"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Might"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
					end;
				end;
			-- 智慧试炼
				TTH_VARI.recordTrialWisdom = {};
				function TTH_VISIT.initVisitShantiri2TrialWisdom(iPlayer, strHero)
					if TTH_VARI.recordTrialWisdom[strHero] == nil then
						TTH_VARI.recordTrialWisdom[strHero] = {
							["Mastery"] = 0
							, ["Perk"] = 0
						}
					end;
				end;
				function TTH_VISIT.visitShantiri2TrialWisdom(iPlayer, strHero)
					TTH_VISIT.initVisitShantiri2TrialWisdom(iPlayer, strHero);
					TTH_VISIT.checkPreVisitShantiri2TrialWisdom4HasComplete(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialWisdom4HasComplete(iPlayer, strHero)
					TTH_GLOBAL.initShantiri(iPlayer, strHero);
					if TTH_VARI.recordTrial[strHero][TTH_ENUM.TrialWisdom] == TTH_ENUM.Yes then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["HasComplete"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Wisdom"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.checkPreVisitShantiri2TrialWisdom4HasArtefact(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialWisdom4HasArtefact(iPlayer, strHero)
					if HasArtefact(strHero, ARTIFACT_PEDANT_OF_MASTERY, 0) == nil then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["Wisdom"]["HasNoArtifact"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Wisdom"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.checkPreVisitShantiri2TrialWisdom4Power(iPlayer, strHero);
				end;
				function TTH_VISIT.checkPreVisitShantiri2TrialWisdom4Power(iPlayer, strHero)
					if TTH_GLOBAL.getPower8Hero(strHero) < TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialWisdom]["Power"] then
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["NotEnoughPower"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Wisdom"]["Text"]
							,iPower=TTH_TABLE.ShantiriTrialTypeOption[TTH_ENUM.TrialWisdom]["Power"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VISIT.radioVisitShantiri2TrialWisdom4Mastery(iPlayer, strHero);
				end;
				function TTH_VISIT.radioVisitShantiri2TrialWisdom4Mastery(iPlayer, strHero)
					local arrMasteryOption = {};
					local i = 1;
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					for iMasteryId, objMastery in TTH_TABLE.Mastery do
						if objMastery["Class"] == nil
							or (
								objMastery["Class"] ~= nil
								and contains(objMastery["Class"], enumHeroClass) ~= nil
							) then
							if GetHeroSkillMastery(strHero, iMasteryId) == 3 then
								local iPerkCount = 0;
								for iPerkId, objPerk in TTH_TABLE.Mastery[iMasteryId]["Perk"] do
									if HasHeroSkill(strHero, iPerkId) ~= nil then
										iPerkCount = iPerkCount + 1;
									end;
								end;
								if iPerkCount == 3 then
									arrMasteryOption[i] = {
										["Id"] = iMasteryId
										, ["Text"] = objMastery["Text"]
										, ["Callback"] = "TTH_VISIT.radioVisitShantiri2TrialWisdom4Perk"
									};
									i = i + 1;
								end;
							end;
						end;
					end;

					if arrMasteryOption == nil
						or length(arrMasteryOption) == 0 then
						local strText = TTH_PATH.Visit["Shantiri"]["Wisdom"]["NotOptionMastery"]
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;
					TTH_COMMON.optionRadio(iPlayer, strHero, arrMasteryOption, TTH_PATH.Visit["Shantiri"]["Wisdom"]["RadioTipsMastery"]);
				end;
				function TTH_VISIT.radioVisitShantiri2TrialWisdom4Perk(iPlayer, strHero, iMasteryId)
					TTH_VARI.recordTrialWisdom[strHero]["Mastery"] = iMasteryId;
					local arrPerkOption = {};
					local i = 1;
					local enumHeroClass = TTH_TABLE.Hero[strHero]["Class"];
					for iPerkId, objPerk in TTH_TABLE.Mastery[iMasteryId]["Perk"] do
						if HasHeroSkill(strHero, iPerkId) == nil and objPerk["IsAbsolute"] == nil then
							if objPerk["Depend"] == nil then
								arrPerkOption[i] = {
									["Id"] = iPerkId
									, ["Text"] = objPerk["Text"]
									, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialWisdom"
								};
								i = i + 1;
							else
								if objPerk["DependType"] == TTH_ENUM.Simple then
									local bCheckDepend = TTH_ENUM.Yes;
									for iIndex, iDependPerkId in objPerk["Depend"] do
										if HasHeroSkill(strHero, iDependPerkId) == nil then
											bCheckDepend = TTH_ENUM.No;
											break;
										end;
									end
									if bCheckDepend == TTH_ENUM.Yes then
										arrPerkOption[i] = {
											["Id"] = iPerkId
											, ["Text"] = objPerk["Text"]
											, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialWisdom"
										};
										i = i + 1;
									end;
								elseif objPerk["DependType"] == TTH_ENUM.Complicated then
									local bInclude = TTH_ENUM.No;
									for iIndexInclude, objInclude in objPerk["Include"] do
										if contains(objInclude["Class"], enumHeroClass) ~= nil then
											bInclude = TTH_ENUM.Yes;
											local bCheckDepend = TTH_ENUM.Yes;
											for iIndex, iDependPerkId in objInclude["Depend"] do
												if HasHeroSkill(strHero, iDependPerkId) == nil then
													bCheckDepend = TTH_ENUM.No;
													break;
												end;
											end
											if bCheckDepend == TTH_ENUM.Yes then
												arrPerkOption[i] = {
													["Id"] = iPerkId
													, ["Text"] = objPerk["Text"]
													, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialWisdom"
												};
												i = i + 1;
											end;
										end;
									end
									if bInclude == TTH_ENUM.No then
										local bCheckDepend = TTH_ENUM.Yes;
										for iIndex, iDependPerkId in objPerk["Depend"] do
											if HasHeroSkill(strHero, iDependPerkId) == nil then
												bCheckDepend = TTH_ENUM.No;
												break;
											end;
										end
										if bCheckDepend == TTH_ENUM.Yes then
											arrPerkOption[i] = {
												["Id"] = iPerkId
												, ["Text"] = objPerk["Text"]
												, ["Callback"] = "TTH_VISIT.confirmVisitShantiri2TrialWisdom"
											};
											i = i + 1;
										end;
									end;
								end;
							end;
						end;
					end;

					if arrPerkOption == nil
						or length(arrPerkOption) == 0 then
						local strText = TTH_PATH.Visit["Shantiri"]["Wisdom"]["NotOptionPerk"]
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;
					TTH_COMMON.optionRadio(iPlayer, strHero, arrPerkOption, TTH_PATH.Visit["Shantiri"]["Wisdom"]["RadioTipsPerk"]);
				end;
				function TTH_VISIT.confirmVisitShantiri2TrialWisdom(iPlayer, strHero, iPerkId)
					TTH_VARI.recordTrialWisdom[strHero]["Perk"] = iPerkId;
					local objMastery = TTH_TABLE.Mastery[TTH_VARI.recordTrialWisdom[strHero]["Mastery"]];
					local objPerk = objMastery["Perk"][TTH_VARI.recordTrialWisdom[strHero]["Perk"]];
					local strPathMain = {
						TTH_PATH.Visit["Shantiri"]["Wisdom"]["Confirm"]
						;strMasteryName=objMastery["Text"]
						,strPerkName=objPerk["Text"]
					};
					local strCallbackOk = "TTH_VISIT.implVisitShantiri2TrialWisdom("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_VISIT.implVisitShantiri2TrialWisdom(iPlayer, strHero)
					local strCallbackWin = "TTH_VISIT.winVisitShantiri2TrialWisdom";
					local strPathCombatLink = TTH_PATH.Visit["Shantiri"]["CombatLink"];
					local iPower = TTH_GLOBAL.getPower8Hero(strHero);
					local iHeroLevel = GetHeroLevel(strHero);

					local strEnemyHero = nil;
					local iCoefBoss = TTH_COMMON.round(sqrt(TTH_AI.getTrialCoef8GameDifficulty()) * sqrt(iHeroLevel));
					local iCoef = TTH_COMMON.round(sqrt(TTH_AI.getTrialCoef8GameDifficulty()) * sqrt(iHeroLevel) * iPower / 50000);
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					StartCombat(strHero, strEnemyHero, 7
						, CREATURE_DRAGON_KNIGHT, 1 * iCoefBoss
						, CREATURE_CHERUBIN, 1 * iCoefBoss
						, CREATURE_QUASIT, TTH_TABLE_NCF_CREATURES[CREATURE_QUASIT]["GROWTH"] * iCoef
						, CREATURE_SNOW_APE, TTH_TABLE_NCF_CREATURES[CREATURE_SNOW_APE]["GROWTH"] * iCoef
						, CREATURE_ENCHANTER_NEUTRAL, TTH_TABLE_NCF_CREATURES[CREATURE_ENCHANTER_NEUTRAL]["GROWTH"] * iCoef
						, CREATURE_PHOENIX_MECHANICAL, TTH_TABLE_NCF_CREATURES[CREATURE_PHOENIX_MECHANICAL]["GROWTH"] * iCoef
						, CREATURE_Itil_Unicorn, TTH_TABLE_NCF_CREATURES[CREATURE_DEMILICH]["GROWTH"] * iCoef
						, nil
						, strCallbackWin
						, strPathCombatLink
						, 1);
				end;
				function TTH_VISIT.winVisitShantiri2TrialWisdom(strHero, objResult)
					local iPlayer = GetObjectOwner(strHero);
					if objResult ~= nil then
						TTH_VARI.recordTrial[strHero][TTH_ENUM.TrialWisdom] = TTH_ENUM.Yes;
						ExecConsoleCommand("enable_cheats")
						ExecConsoleCommand("add_skill "..TTH_VARI.recordTrialWisdom[strHero]["Perk"]);
						RemoveArtefact(strHero, ARTIFACT_PEDANT_OF_MASTERY);
						sleep(1);
						TTH_GLOBAL.dealSkillBonus8Hero(strHero); -- 英雄技能效果实装
						local strPathMain = {
							TTH_PATH.Visit["Shantiri"]["Success"]
							;strTrialType=TTH_PATH.Visit["Shantiri"]["Wisdom"]["Text"]
						}
						TTH_GLOBAL.sign(strHero, strPathMain);
					end;
				end;

	-- manage
		TTH_MANAGE = {};

		TTH_VARI.arrMayor = {}; -- 内政关系表
		TTH_VARI.arrDefeatMayor = {}; --战败表

		-- getter/setter/is
			-- 获取城镇的内政官 nil: 无; strHero: 有
				function TTH_MANAGE.getMayor8Town(strTown)
					local strMayor = nil;
					for strHero, objMayor in TTH_VARI.arrMayor do
						local arrTown = objMayor["Town"];
						if arrTown ~= nil and length(arrTown) > 0 then
							for strTownHasMayor, objTownHasMayor in arrTown do
								if strTownHasMayor == strTown then
									strMayor = strHero;
									return strMayor;
								end;
							end;
						end;
					end;
					return strMayor;
				end;

			-- 英雄是否是内政官
				function TTH_MANAGE.isMayor(strHero)
					local objMayor = TTH_VARI.arrMayor[strHero];
					local arrTown = objMayor["Town"];
					local bIsMayor = TTH_ENUM.No;
					if arrTown ~= nil and length(arrTown) > 0 then
						bIsMayor = TTH_ENUM.Yes;
					end;
					return bIsMayor;
				end;

			-- 获取内城官所辖城镇评分总和
				function TTH_MANAGE.totalTownValue4Mayor(strMayor)
					local objMayor = TTH_VARI.arrMayor[strMayor];
					local arrTown = objMayor["Town"];
					local iTotalTownValue = 0;
					for strTown, objTown in arrTown do
						iTotalTownValue = iTotalTownValue + objTown["Value"];
					end;
					iTotalTownValue = iTotalTownValue + TTH_TALENT.calcTownValueIsabell(strMayor, arrTown);
					iTotalTownValue = iTotalTownValue + TTH_TALENT.calcTownValueElleshar(strMayor, arrTown);
					iTotalTownValue = iTotalTownValue + TTH_TALENT.calcTownValueKunyak(strMayor, arrTown);
					return iTotalTownValue;
				end;

		-- 政绩
			-- 获取玩家当前政绩
				function TTH_MANAGE.getRecordPoint(iPlayer)
					return TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"];
				end;

			-- 计算英雄每日获得政绩
				function TTH_MANAGE.calcDailyRecordPoint(strHero)
					local iRecordPoint = 0;
					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
						local iTownValue = TTH_MANAGE.totalTownValue4Mayor(strHero);
						local iCoef = TTH_PERK.dealDaily099(nil, strHero);
						iTownValue = iTownValue * iCoef;
						iRecordPoint = iTownValue;
					end;
					return iRecordPoint;
				end;

			-- 计算玩家每日获得政绩
				function TTH_MANAGE.calcDailyRecordPoint8Daily(iPlayer)
					local arrHero = GetPlayerHeroes(iPlayer);
					local iRecordPoint = 0;
					for i, strHero in arrHero do
						iRecordPoint = iRecordPoint + TTH_MANAGE.calcDailyRecordPoint(strHero);
					end
					return iRecordPoint;
				end;

			-- 给予英雄每日政绩
				function TTH_MANAGE.giveDailyRecordPoint(iPlayer, strHero, iCoef)
					TTH_MAIN.debug("TTH_MANAGE.giveDailyRecordPoint", iPlayer, strHero);

					local iRecordPoint = TTH_MANAGE.calcDailyRecordPoint(strHero);
					if iCoef ~= nil then
						iRecordPoint = TTH_COMMON.round(iRecordPoint * iCoef);
					end;
					if iRecordPoint ~= 0 then
						TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"] = TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"] + iRecordPoint;
					end;
					return iRecordPoint;
				end;

			-- 给予玩家政绩
				function TTH_MANAGE.addRecordPoint(iPlayer, strHero, iRecordPoint)
					TTH_MAIN.debug("TTH_MANAGE.addRecordPoint", iPlayer, strHero, iRecordPoint);

					if iRecordPoint ~= 0 then
						TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"] = TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"] + iRecordPoint;
					end;
					return iRecordPoint;
				end;

			-- 英雄政绩兑换
				function TTH_MANAGE.useRecordPoint(iPlayer, strHero, iRecordPoint)
					if iRecordPoint ~= 0 then
						TTH_VARI.iExchangeRecordTimes[iPlayer] = TTH_VARI.iExchangeRecordTimes[iPlayer] + 1;
						TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"] = TTH_VARI.arrRecordPoint[iPlayer]["RecordPoint"] - iRecordPoint;
					end;
				end;

		-- 经验
			-- 获取内城官所辖城镇中有几座建造了献祭深坑的地狱建筑
				function TTH_MANAGE.totalSacrificialPit4Mayor(strMayor)
					if TTH_GLOBAL.getRace8Hero(strMayor) == TOWN_INFERNO then
						local objMayor = TTH_VARI.arrMayor[strMayor];
						local arrTown = objMayor["Town"];
						local iPitCount = 0;
						for strTown, objTown in arrTown do
							if GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_5) >= 1 then
								iPitCount = iPitCount + 1;
							end;
						end
						return iPitCount;
					end;
					return 0;
				end;

			-- 计算内政官每日获得经验
				function TTH_MANAGE.calcDailyExp4Mayor(strMayor)
					local iExp = 0;
					if TTH_MANAGE.isMayor(strMayor) == TTH_ENUM.Yes then
						local iTownValue = TTH_MANAGE.totalTownValue4Mayor(strMayor);
						local iHeroLevel = GetHeroLevel(strMayor);
						iCountPit = TTH_MANAGE.totalSacrificialPit4Mayor(strMayor);
						iExp = 200 * (1 + iCountPit) + iTownValue * iHeroLevel;
						if strMayor == "Calid2" then
							iExp = TTH_COMMON.round(iExp * 1.5);
						end;
						local iCoef = TTH_PERK.dealDaily099(nil, strMayor);
						iExp = iExp * iCoef;
					end;
					return iExp;
				end;

			-- 给予内政官每日经验
				function TTH_MANAGE.giveDailyExp4Mayor(iPlayer, strMayor)
					TTH_MAIN.debug("TTH_MANAGE.giveDailyExp4Mayor", iPlayer, strMayor);

					local iExp = TTH_MANAGE.calcDailyExp4Mayor(strMayor);
					TTH_GLOBAL.giveExp(strMayor, iExp);
				end;

		-- 初始化内政信息
			function TTH_MANAGE.initMayor(strHero)
				TTH_MAIN.debug("TTH_MANAGE.initMayor", nil, strHero);

				-- 战败表中没有该英雄的记录
					if TTH_VARI.arrDefeatMayor[strHero] == nil then
						-- 没有内政信息
							if TTH_VARI.arrMayor[strHero] == nil then
								TTH_VARI.arrMayor[strHero] = {};
								TTH_MANAGE.resetOperTimes(strHero);
								TTH_MANAGE.constructData4Mayor(strHero);

						-- 有内政信息
							else
								-- 内政信息中该英雄为战败状态
									if TTH_VARI.arrMayor[strHero]["IsDefeat"] ~= nil then
										-- 重置战败状态
											TTH_VARI.arrMayor[strHero]["IsDefeat"] = {
												["Status"] = TTH_ENUM.No
												, ["Duration"] = 0
											};

										-- 处理内政官加成
											TTH_MANAGE.dealMayorBonus(strHero);
									end;
							end;

				-- 战败表中有该英雄的记录
					else
						-- 根据战败表中的信息更新英雄加成
							TTH_MANAGE.implMayorBonus(strHero, TTH_VARI.arrMayor[strHero]["Bonus"], -1);

						-- 从战败表中删除该英雄的记录
							TTH_VARI.arrDefeatMayor[strHero] = nil;
					end;
			end;

		-- 每日刷新内政信息
			function TTH_MANAGE.refreshDailyMayor(iPlayer, strHero)
				TTH_MAIN.debug("TTH_MANAGE.refreshDailyMayor", iPlayer, strHero);

				local objMayor = TTH_VARI.arrMayor[strHero];
				-- 若英雄已战败3天，将英雄已加成属性记录到战败表中，否则战败时长增加1天
					if objMayor["IsDefeat"]["Status"] == TTH_ENUM.Yes then
						objMayor["IsDefeat"]["Duration"] = objMayor["IsDefeat"]["Duration"] + 1;
						if objMayor["IsDefeat"]["Duration"] >= 3 then
							TTH_VARI.arrDefeatMayor[strHero] = {
								["Bonus"] = TTH_MANAGE.constructData4HeroHasBonus(strHero)
							};
							TTH_MANAGE.constructData4Mayor(strHero);
						end;
					end;

				-- 查验内政关系-解绑不属于玩家的城镇
					local arrTown = objMayor["Town"];
					local bIsMayor = TTH_ENUM.No;
					if arrTown ~= nil and length(arrTown) > 0 then
						for strTown, objTown in arrTown do
							if GetObjectOwner(strTown) ~= iPlayer then
								TTH_MANAGE.unbindTown2Hero(strHero, strTown);
							else
								bIsMayor = TTH_ENUM.Yes;
								local objAnalysisTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								local iTownValue = TTH_MANAGE.calcTownValue(objAnalysisTown);
								TTH_MANAGE.bindTown2Hero(strHero, strTown, iTownValue);
							end;
						end
					end;

					TTH_MANAGE.dealMayorBonus(strHero); -- 处理内政官加成

				 -- 更新远征状态
					if bIsMayor == TTH_ENUM.Yes then
						TTH_MANAGE.updateExpeditionStatus(iPlayer, strHero, TTH_ENUM.Yes);
					end;
			end;

		-- 构造数据结构
			-- 构造政绩加成的数据结构
				function TTH_MANAGE.initConstructData4RecordPoint(iPlayer)
					TTH_VARI.arrRecordPoint[iPlayer] = {
					  ["RecordPoint"] = 0
					  , ["OperTimes"] = 0
					  , ["AbilityQuota"] = 0
					  , ["TerritoryRadius"] = 0
					};
				end;

			-- 构造内政信息初始的数据结构
				function TTH_MANAGE.constructData4Mayor(strHero)
					TTH_VARI.arrMayor[strHero]["Town"] = {};
					TTH_VARI.arrMayor[strHero]["Bonus"] = {
						[STAT_ATTACK] = 0
						, [STAT_DEFENCE] = 0
						, [STAT_SPELL_POWER] = 0
						, [STAT_KNOWLEDGE] = 0
						, [STAT_LUCK] = 0
						, [STAT_MORALE] = 0
					};
					TTH_VARI.arrMayor[strHero]["IsExpedition"] = {
						["Status"] = TTH_ENUM.No
						, ["Duration"] = 0
					};
					TTH_VARI.arrMayor[strHero]["IsDefeat"] = {
						["Status"] = TTH_ENUM.No
						, ["Duration"] = 0
					};
				end;

			-- 构造英雄已加成属性的数据结构
				function TTH_MANAGE.constructData4HeroHasBonus(strHero)
					local bIsExpedition = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Status"];
					local objBonus = {
						[STAT_ATTACK] = 0
						, [STAT_DEFENCE] = 0
						, [STAT_SPELL_POWER] = 0
						, [STAT_KNOWLEDGE] = 0
						, [STAT_LUCK] = 0
						, [STAT_MORALE] = 0
					};
					if bIsExpedition == TTH_ENUM.No then
						objBonus = TTH_VARI.arrMayor[strHero]["Bonus"];
					end;
					return objBonus;
				end;

			-- 构造英雄应加成属性的数据结构
				function TTH_MANAGE.constructData4HeroShouldBonus(strHero)
					local bIsExpedition = TTH_MANAGE.checkIsExpedition8Hero(strHero);
					local objBonus = {
						[STAT_ATTACK] = 0
						, [STAT_DEFENCE] = 0
						, [STAT_SPELL_POWER] = 0
						, [STAT_KNOWLEDGE] = 0
						, [STAT_LUCK] = 0
						, [STAT_MORALE] = 0
					};
					if bIsExpedition == TTH_ENUM.No then
						objBonus = TTH_MANAGE.getMayorBonus(strHero);
					end;
					return objBonus;
				end;

		-- 内政关系
			-- 绑定内政关系
				function TTH_MANAGE.bindTown2Hero(strHero, strTown, iTownValue)
					TTH_VARI.arrMayor[strHero]["Town"][strTown] = {
						["Value"] = iTownValue
					};
				end;

			-- 解绑内政关系
				function TTH_MANAGE.unbindTown2Hero(strHero, strTown)
					TTH_VARI.arrMayor[strHero]["Town"] = TTH_COMMON.remove8Key(TTH_VARI.arrMayor[strHero]["Town"], strTown);
				end;

		-- 内政官加成
			-- 处理内政官加成
				function TTH_MANAGE.dealMayorBonus(strHero)
					local bPreIsExpedition = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Status"]; -- 获取内政表中该英雄的远征状态
					local objPreBonus = TTH_MANAGE.constructData4HeroHasBonus(strHero); -- 获取已加成属性表
					local bPostIsExpedition = TTH_MANAGE.checkIsExpedition8Hero(strHero); -- 获取当前远征状态
					local objPostBonus = TTH_MANAGE.constructData4HeroShouldBonus(strHero); -- 获取应加成属性表

					local objDiffBonus = TTH_COMMON.diffObject(objPostBonus, objPreBonus);
					TTH_MANAGE.implMayorBonus(strHero, objDiffBonus, 1);
					TTH_VARI.arrMayor[strHero]["Bonus"] = objPostBonus;
				end;

			-- 根据城镇建筑计算内政官加成
				function TTH_MANAGE.calcMayorBonus(objTown)
					local iTownRace = objTown["TownRace"];
					local iAttack = 0;
					local iDefence = objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_FORT];
					local iSpellPower = 0;
					local iKnowledge = 0;
					local iLuck = 0;
					local iMorale = 0;

					-- 特殊建筑
						if iTownRace == TOWN_HEAVEN then
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iAttack = iAttack + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] * 2;
							iLuck = iLuck + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] * 1;
							iAttack = iAttack + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] * 2;
							iLuck = iLuck + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] * 1;
						elseif iTownRace == TOWN_PRESERVE then
							iAttack = iAttack + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] * 2;
							iMorale = iMorale + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] * 1;
							iAttack = iAttack + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] * 2;
							iMorale = iMorale + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] * 1;
						elseif iTownRace == TOWN_ACADEMY then
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iSpellPower = iSpellPower + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] * objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1];
						elseif iTownRace == TOWN_DUNGEON then
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iSpellPower = iSpellPower + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] * 2;
						elseif iTownRace == TOWN_NECROMANCY then
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iSpellPower = iSpellPower + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] * 2;
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] * 2;
						elseif iTownRace == TOWN_INFERNO then
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iSpellPower = iSpellPower + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] * 2;
						elseif iTownRace == TOWN_FORTRESS then
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iDefence = iDefence + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_FORT] * objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4];
							iSpellPower = iSpellPower + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1];
						elseif iTownRace == TOWN_STRONGHOLD then
							print("iKnowledge1:")
							print(iKnowledge)
							print("iAttack1:")
							print(iAttack)
							iKnowledge = iKnowledge + objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD];
							iAttack = iAttack + objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] * 2;
							print("iKnowledge2:")
							print(iKnowledge)
							print("iAttack2:")
							print(iAttack)
						end;

					local objHeroBonus = {
						[STAT_ATTACK] = iAttack
						, [STAT_DEFENCE] = iDefence
						, [STAT_SPELL_POWER] = iSpellPower
						, [STAT_KNOWLEDGE] = iKnowledge
						, [STAT_LUCK] = iLuck
						, [STAT_MORALE] = iMorale
					};
					return objHeroBonus;
				end;

			-- 获取英雄所辖城镇加成总和
				function TTH_MANAGE.getMayorBonus(strHero)
					local objTotalBonus = {
						[STAT_ATTACK] = 0
						, [STAT_DEFENCE] = 0
						, [STAT_SPELL_POWER] = 0
						, [STAT_KNOWLEDGE] = 0
						, [STAT_LUCK] = 0
						, [STAT_MORALE] = 0
					};
					local objMayor = TTH_VARI.arrMayor[strHero];
					if objMayor ~= nil then
						local arrTown = objMayor["Town"];
						if arrTown ~= nil then
							for strTown, objTown in arrTown do
								local objAnalysisTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								local objBonus = TTH_MANAGE.calcMayorBonus(objAnalysisTown);
								objTotalBonus = TTH_COMMON.combineObject(objTotalBonus, objBonus);
							end;
						end;
					end;
					return objTotalBonus;
				end;

			-- 实装内政官加成数据
				function TTH_MANAGE.implMayorBonus(strHero, objBonus, bDirection)
					if objBonus[STAT_ATTACK] ~= 0 then
						ChangeHeroStat(strHero, STAT_ATTACK, objBonus[STAT_ATTACK] * bDirection);
					end;
					if objBonus[STAT_DEFENCE] ~= 0 then
						ChangeHeroStat(strHero, STAT_DEFENCE, objBonus[STAT_DEFENCE] * bDirection);
					end;
					if objBonus[STAT_SPELL_POWER] ~= 0 then
						ChangeHeroStat(strHero, STAT_SPELL_POWER, objBonus[STAT_SPELL_POWER] * bDirection);
					end;
					if objBonus[STAT_KNOWLEDGE] ~= 0 then
						ChangeHeroStat(strHero, STAT_KNOWLEDGE, objBonus[STAT_KNOWLEDGE] * bDirection);
					end;
					if objBonus[STAT_LUCK] ~= 0 then
						ChangeHeroStat(strHero, STAT_LUCK, objBonus[STAT_LUCK] * bDirection);
					end;
					if objBonus[STAT_MORALE] ~= 0 then
						ChangeHeroStat(strHero, STAT_MORALE, objBonus[STAT_MORALE] * bDirection);
					end;
				end;

		-- 城镇兵种产量加成
			TTH_TABLE.Coef8Mayor4TownDwellingCreature = {
				[1] = 1.5
				, [2] = 2
				, [3] = 3
				, [4] = 4
				, [5] = 6
				, [6] = 8
				, [7] = 12
			};
			function TTH_MANAGE.bonusTownDwellingCreature8Mayor(strTown)
				TTH_MAIN.debug("TTH_MANAGE.bonusTownDwellingCreature8Mayor", nil, nil, strTown);

				local arrCreatureGrowth8Tier = TTH_MANAGE.calcTownDwellingCreature(strTown);
				TTH_GLOBAL.updateTownDwellingCreature(strTown, arrCreatureGrowth8Tier);
			end;
			function TTH_MANAGE.calcTownDwellingCreature(strTown)
				local arrCreatureGrowth8Tier = {
					[1] = 0
					, [2] = 0
					, [3] = 0
					, [4] = 0
					, [5] = 0
					, [6] = 0
					, [7] = 0
				};
				if TTH_MANAGE.checkIsExpedition8Town(strTown) == TTH_ENUM.No then
					local strMayor = TTH_MANAGE.getMayor8Town(strTown);
					if strMayor ~= nil then
						local iHeroLevel = GetHeroLevel(strMayor);
						local iHeroKnowledge = GetHeroStat(strMayor, STAT_KNOWLEDGE);
						for iTier = 1, 7 do
							arrCreatureGrowth8Tier[iTier] = TTH_COMMON.round(iHeroLevel / TTH_TABLE.Coef8Mayor4TownDwellingCreature[iTier]);
						end;
						if TTH_TABLE.Hero[strMayor]["Specialty"] ~= nil then
							for iTier = 1, 7 do
								if TTH_TABLE.Hero[strMayor]["Specialty"] ~= nil then
									local arrSpecialty = TTH_TABLE.Hero[strMayor]["Specialty"];
									if arrSpecialty ~= nil then
										for i, objSpecialty in arrSpecialty do
											local iCreatureId = objSpecialty["CreatureId"];
											local objCreature = TTH_TABLE_NCF_CREATURES[iCreatureId];
											if objCreature["Upgrade"] ~= nil and objCreature["TIER"] == iTier then
												local enumHeroStat = objSpecialty["Stat"];
												local iHeroStat = GetHeroStat(strMayor, enumHeroStat);
												arrCreatureGrowth8Tier[iTier] = TTH_COMMON.round((iHeroLevel + iHeroStat) / TTH_TABLE.Coef8Mayor4TownDwellingCreature[iTier]);
											end;
										end;
									end;
								end;
							end;
						end;
						if strMayor == "Cyrus" then
							for iTier = 1, 7 do
								arrCreatureGrowth8Tier[iTier] = TTH_COMMON.round((iHeroLevel + iHeroKnowledge) / TTH_TABLE.Coef8Mayor4TownDwellingCreature[iTier]);
							end;
						end;
					end;
				end;
				return arrCreatureGrowth8Tier;
			end;

		-- 远征
			-- 获取英雄的领地半径
				function TTH_MANAGE.getTerritoryRadius(iPlayer)
					local iTerritoryRadius = TTH_MANAGE.getDefaultTerritoryRadius(iPlayer) + TTH_MANAGE.getExtraTerritoryRadius(iPlayer);
					return iTerritoryRadius;
				end;

			-- 获取因地图默认的领地半径
				function TTH_MANAGE.getDefaultTerritoryRadius(iPlayer)
					local iTerritoryRadius = TTH_VARI.TerritoryRadius;
					return iTerritoryRadius;
				end;

			-- 获取政绩加成的额外领地半径
				function TTH_MANAGE.getExtraTerritoryRadius(iPlayer)
					local iTerritoryRadius = TTH_VARI.arrRecordPoint[iPlayer]["TerritoryRadius"];
					return iTerritoryRadius;
				end;

			-- 通过政绩永久加成额外领地半径
				function TTH_MANAGE.buffExtraTerritoryRadius(iPlayer, iRadius)
					if iRadius == nil then
						iRadius = 20;
					end;
					TTH_VARI.arrRecordPoint[iPlayer]["TerritoryRadius"] = TTH_VARI.arrRecordPoint[iPlayer]["TerritoryRadius"] + iRadius;
				end;

			-- 检测是否远征-英雄
				function TTH_MANAGE.checkIsExpedition8Hero(strHero)
					local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
					local iAlreadyMayor, arrMayorTown = TTH_MANAGE.getAlreadyMayorInfo(strHero);
					local bIsExpedition = TTH_ENUM.Yes;
					if iAlreadyMayor > 0 then
						for strTown, objTown in arrMayorTown do
							if TTH_GLOBAL.getDistance(strHero, strTown) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
								bIsExpedition = TTH_ENUM.No;
								break;
							end;
						end
						local bIsExpeditionWulfstan = TTH_TALENT.checkExpedition8Wulfstan(iPlayer, strHero);
						local bIsExpeditionGillion = TTH_TALENT.checkExpedition8Gillion(iPlayer, strHero);
						local bIsExpeditionBrem = TTH_TALENT.checkExpedition8Brem(iPlayer, strHero);
						local bIsExpeditionAstral = TTH_TALENT.checkExpedition8Astral(iPlayer, strHero);
						local bIsExpeditionNikolay = TTH_TALENT.checkExpedition8Nikolay(iPlayer, strHero);
						local bIsExpeditionMenel = TTH_TALENT.checkExpedition8Menel(iPlayer, strHero);
						local bIsExpedition182 = TTH_PERK.checkExpedition8182(iPlayer, strHero);
						if bIsExpedition == TTH_ENUM.No
							or bIsExpeditionWulfstan == TTH_ENUM.No
							or bIsExpeditionGillion == TTH_ENUM.No
							or bIsExpeditionBrem == TTH_ENUM.No
							or bIsExpeditionAstral == TTH_ENUM.No
							or bIsExpeditionNikolay == TTH_ENUM.No
							or bIsExpeditionMenel == TTH_ENUM.No
							or bIsExpedition182 == TTH_ENUM.No
							then
							bIsExpedition = TTH_ENUM.No;
						end;
					else
						bIsExpedition = TTH_ENUM.No;
					end;
					return bIsExpedition;
				end;

			-- 检测是否远征-城镇
				function TTH_MANAGE.checkIsExpedition8Town(strTown)
					local iPlayer = GetObjectOwner(strTown);
					local strHero = TTH_MANAGE.getMayor8Town(strTown);
					local iAlreadyMayor, arrMayorTown = TTH_MANAGE.getAlreadyMayorInfo(strHero);
					local bIsExpedition = TTH_ENUM.Yes;
					if iAlreadyMayor > 0 then
						for strTown, objTown in arrMayorTown do
							if TTH_GLOBAL.getDistance(strHero, strTown) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
								bIsExpedition = TTH_ENUM.No;
								break;
							end;
						end
						local bIsExpeditionWulfstan = TTH_TALENT.checkExpedition8Wulfstan(iPlayer, strHero);
						local bIsExpeditionGillion = TTH_TALENT.checkExpedition8Gillion(iPlayer, strHero);
						local bIsExpeditionBrem = TTH_TALENT.checkExpedition8Brem(iPlayer, strHero);
						local bIsExpeditionAstral = TTH_TALENT.checkExpedition8Astral(iPlayer, strHero);
						local bIsExpeditionNikolay = TTH_TALENT.checkExpedition8Nikolay(iPlayer, strHero);
						local bIsExpeditionMenel = TTH_TALENT.checkExpedition8Menel(iPlayer, strHero);
						if bIsExpedition == TTH_ENUM.No
							or bIsExpeditionWulfstan == TTH_ENUM.No
							or bIsExpeditionGillion == TTH_ENUM.No
							or bIsExpeditionBrem == TTH_ENUM.No
							or bIsExpeditionAstral == TTH_ENUM.No
							or bIsExpeditionNikolay == TTH_ENUM.No
							or bIsExpeditionMenel == TTH_ENUM.No
							then
							bIsExpedition = TTH_ENUM.No;
						end;
					else
						bIsExpedition = TTH_ENUM.No;
					end;
					return bIsExpedition;
				end;

			-- 更新远征状态
				function TTH_MANAGE.updateExpeditionStatus(iPlayer, strHero, bIsDaily)
					local bPreIsExpedition = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Status"];
					local bIsExpedition = TTH_MANAGE.checkIsExpedition8Hero(strHero);
					if bIsExpedition == TTH_ENUM.Yes then
						TTH_VARI.arrMayor[strHero]["IsExpedition"]["Status"] = bIsExpedition;
						if bIsDaily == TTH_ENUM.Yes then
							TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"] = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"] + 1;
							TTH_GLOBAL.putSettleResource(iPlayer, GOLD, -1 * TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"] * TTH_FINAL.MILITARY_EXPEDITION)
							local strText = {
								TTH_PATH.Mayor["BeginExpedition"]
								;iDuration=TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"]
							};
							TTH_GLOBAL.sign(strHero, strText);
						end;
					else
						TTH_VARI.arrMayor[strHero]["IsExpedition"]["Status"] = bIsExpedition;
						TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"] = 0;
						if bIsExpedition ~= bPreIsExpedition then
							if bIsDaily == TTH_ENUM.Yes then
								TTH_GLOBAL.sign(strHero, TTH_PATH.Mayor["EndExpedition"]);
							end;
						end;
					end;
				end;

			-- 获取英雄远征状态
				function TTH_MANAGE.getHeroExpeditionStatus(strHero)
					local bStatus = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Status"];
					return bStatus;
				end;

			-- 获取英雄远征天数
				function TTH_MANAGE.getHeroExpeditionDuration(strHero)
					local iDuration = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"];
					return iDuration;
				end;

			-- 获取英雄远征军费
				function TTH_MANAGE.getHeroExpeditionCost(strHero)
					local iCost = TTH_VARI.arrMayor[strHero]["IsExpedition"]["Duration"] * TTH_FINAL.MILITARY_EXPEDITION;
					return iCost;
				end;

		-- 内政操作次数
			-- 获取内政操作次数（重置值）
				function TTH_MANAGE.getOperTimes(strHero)
					local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
					local iTimes = TTH_MANAGE.getDefaultOperTimes(strHero)
						+ TTH_MANAGE.getExtraOperTimes8Player(iPlayer);
					return iTimes;
				end;

			-- 获取内政操作次数（重置值）（基础值）
				function TTH_MANAGE.getDefaultOperTimes(strHero)
					local iHeroLevel = GetHeroLevel(strHero);
					local iStep = 15;
					if strHero == "Hangvul" then
						iStep = 10;
					end;
					local iTimes = TTH_COMMON.floor(iHeroLevel / iStep) + 1;
					return iTimes;
				end;

			-- 获取内政操作次数（重置值）（通过政绩加成的额外值）
				function TTH_MANAGE.getExtraOperTimes8Player(iPlayer)
					local iTimes = TTH_VARI.arrRecordPoint[iPlayer]["OperTimes"];
					return iTimes;
				end;

			-- 永久增强英雄的内政操作次数
				function TTH_MANAGE.buffExtraOperTimes(iPlayer)
					TTH_VARI.arrRecordPoint[iPlayer]["OperTimes"] = TTH_VARI.arrRecordPoint[iPlayer]["OperTimes"] + 1;
					local arrHero = GetPlayerHeroes(iPlayer);
					for i, strHero in arrHero do
						TTH_MANAGE.addWeeklyOperTimes(strHero, 1);
					end
				end;

			-- 获取内政操作次数（剩余值）
				function TTH_MANAGE.getRemainOperTimes(strHero)
					local iTimes = 0;
					local objMayor = TTH_VARI.arrMayor[strHero];
					if objMayor ~= nil then
						iTimes = objMayor["Oper"]["MaxTimes"] - objMayor["Oper"]["UsedTimes"];
					end;
					return iTimes;
				end;

			-- 增加本周内政操作次数最大值
				function TTH_MANAGE.addWeeklyOperTimes(strHero, iTimes)
					local objMayor = TTH_VARI.arrMayor[strHero];
					if objMayor ~= nil then
						objMayor["Oper"]["MaxTimes"] = objMayor["Oper"]["MaxTimes"] + 1;
					end;
				end;

			-- 重置内政操作次数
				function TTH_MANAGE.resetOperTimes(strHero)
					local iMaxTimes = TTH_MANAGE.getOperTimes(strHero);
					TTH_VARI.arrMayor[strHero]["Oper"] = {
						["MaxTimes"] = iMaxTimes
						, ["UsedTimes"] = 0
					};
				end;

			-- 更新内政操作次数上限
				function TTH_MANAGE.updateMaxOperTimes(strHero)
					TTH_MAIN.debug("TTH_MANAGE.updateMaxOperTimes", nil, strHero);

					local iMaxTimes = TTH_MANAGE.getOperTimes(strHero);
					TTH_VARI.arrMayor[strHero]["Oper"]["MaxTimes"] = iMaxTimes;
				end;

			-- 使用内政操作次数
				function TTH_MANAGE.useOperTimes(strHero)
					TTH_VARI.arrMayor[strHero]["Oper"]["UsedTimes"] = TTH_VARI.arrMayor[strHero]["Oper"]["UsedTimes"] + 1;
				end;

			-- 增加最大内政操作次数
				function TTH_MANAGE.addMaxOperTimes(strHero)
					TTH_VARI.arrMayor[strHero]["Oper"]["MaxTimes"] = TTH_VARI.arrMayor[strHero]["Oper"]["MaxTimes"] + 1;
				end;

		-- 管辖城镇
			-- 获取英雄可管辖城镇的配额
				function TTH_MANAGE.getAbilityQuota(strHero)
					local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
					local iQuota = TTH_MANAGE.getDefaultAbilityQuota(strHero) + TTH_MANAGE.getExtraAbilityQuota(iPlayer);
					return iQuota;
				end;

			-- 获取英雄可管辖城镇的配额（基础值）
				function TTH_MANAGE.getDefaultAbilityQuota(strHero)
					local iHeroLevel = GetHeroLevel(strHero);
					local iStep = 15;
					if strHero == "Hangvul" then
						iStep = 10;
					end;
					local iQuota = TTH_COMMON.floor(iHeroLevel / iStep) + 1;
					return iQuota;
				end;

			-- 获取英雄可管辖城镇的配额（通过政绩加成的额外值）
				function TTH_MANAGE.getExtraAbilityQuota(iPlayer)
					local iQuota = TTH_VARI.arrRecordPoint[iPlayer]["AbilityQuota"];
					return iQuota;
				end;

			-- 永久增强英雄可管辖城镇的配额
				function TTH_MANAGE.buffExtraAbilityQuota(iPlayer)
					TTH_VARI.arrRecordPoint[iPlayer]["AbilityQuota"] = TTH_VARI.arrRecordPoint[iPlayer]["AbilityQuota"] + 1;
				end;

			-- :TODO 获取英雄已管辖城镇的数量
				function TTH_MANAGE.getAlreadyMayorInfo(strHero)
					local objMayor = TTH_VARI.arrMayor[strHero];
					local arrMayorTown = {};
					local iAlreadyMayor = 0;
					if objMayor ~= nil then
						arrMayorTown = objMayor["Town"];
						iAlreadyMayor = length(arrMayorTown);
					end;
					return iAlreadyMayor, arrMayorTown;
				end;

			-- 获取英雄所辖城镇评分总和
				function TTH_MANAGE.getMayorValue(strHero)
					local iValue = 0;
					local objMayor = TTH_VARI.arrMayor[strHero];
					if objMayor ~= nil then
						local arrTown = objMayor["Town"];
						if arrTown ~= nil then
							for iIndexTown, objTown in arrTown do
								iValue = iValue + objTown["Value"];
							end;
						end;
					end;
					return iValue;
				end;

			-- 获取玩家所辖城镇列表
				function TTH_MANAGE.listMayorTown8Player(iPlayer)
					local arrHero = GetPlayerHeroes(iPlayer);
					local arrTown = {};
					for i, strHero in arrHero do
						for strTown, iTownValue in TTH_VARI.arrMayor[strHero]["Town"] do
							if contains(arrTown, strTown) == nil then
							 	TTH_COMMON.push(arrTown, strTown);
							end;
						end;
					end;
					return arrTown;
				end;

			-- 获取英雄所辖城镇列表
				function TTH_MANAGE.listMayorTown8Hero(strHero)
					local arrRetTown = {};
					local objMayor = TTH_VARI.arrMayor[strHero];
					if objMayor ~= nil then
						local arrTown = objMayor["Town"];
						if arrTown ~= nil then
							for strTown, objTown in arrTown do
								if contains(arrRetTown, strTown) == nil then
								 	TTH_COMMON.push(arrRetTown, strTown);
								end;
							end;
						end;
					end;
					return arrRetTown;
				end;

		-- 城镇建筑
			-- 建造城镇建筑
				function TTH_MANAGE.constructTown(strTown, iLevel)
					if IsObjectExists(strTown) == 1 then
						local iRace = TTH_GLOBAL.getRace8Town(strTown);
						if iLevel >= 0 then
							-- 普通建筑
								UpgradeTownBuilding(strTown, TOWN_BUILDING_MARKETPLACE, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_TAVERN, 1);
						end;
						if iLevel >= 1 then
							-- 普通建筑
								UpgradeTownBuilding(strTown, TOWN_BUILDING_TOWN_HALL, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_BLACKSMITH, 1);
							-- 魔法塔
								if iRace ~= TOWN_STRONGHOLD then
									UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
								else
									UpgradeTownBuilding(strTown, TOWN_BUILDING_SPECIAL_1, 1);
								end;
						end;
						if iLevel >= 2 then
							-- 普通建筑
								UpgradeTownBuilding(strTown, TOWN_BUILDING_FORT, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_MARKETPLACE, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_1, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_2, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_3, 1);
							-- 魔法塔
								if iRace ~= TOWN_STRONGHOLD then
									UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
								else
									UpgradeTownBuilding(strTown, TOWN_BUILDING_SPECIAL_1, 1);
								end;
						end;
						if iLevel >= 3 then
							-- 普通建筑
								UpgradeTownBuilding(strTown, TOWN_BUILDING_TOWN_HALL, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_FORT, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_1, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_2, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_3, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_4, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_5, 1);
							-- 魔法塔
								if iRace ~= TOWN_STRONGHOLD then
									UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
								else
									UpgradeTownBuilding(strTown, TOWN_BUILDING_SPECIAL_1, 1);
								end;
						end;
						if iLevel >= 4 then
							-- 普通建筑
								UpgradeTownBuilding(strTown, TOWN_BUILDING_FORT, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_4, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_5, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_6, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_7, 1);
							-- 魔法塔
								if iRace ~= TOWN_STRONGHOLD then
									UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
								else
									UpgradeTownBuilding(strTown, TOWN_BUILDING_SPECIAL_3, 1);
								end;
						end;
						if iLevel >= 5 then
							-- 普通建筑
								UpgradeTownBuilding(strTown, TOWN_BUILDING_TOWN_HALL, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_6, 1);
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_7, 1);
							-- 魔法塔
								if iRace ~= TOWN_STRONGHOLD then
									UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
								end;
						end;
						if iLevel >= 6 then
							-- 特殊建筑
								for i = 0, 6 do
									if TTH_TABLE.SpecialBuilding[iRace][i] ~= nil then
										UpgradeTownBuilding(strTown, TTH_TABLE.SpecialBuilding[iRace][i], 1);
									end;
								end;
						end;
						if iLevel >= 7 then
							-- 眼泪
								UpgradeTownBuilding(strTown, TOWN_BUILDING_GRAIL, 1);
						end;
					end;
				end;

			-- 解析城镇建筑等级
				function TTH_MANAGE.analysisTownBuildLevel(strTown)
					local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
					local objTown = {
						["TownRace"] = iTownRace
						, [TTH_ENUM.TownBuildBasic] = {
							[TOWN_BUILDING_TOWN_HALL] = GetTownBuildingLevel(strTown, TOWN_BUILDING_TOWN_HALL)
							, [TOWN_BUILDING_FORT] = GetTownBuildingLevel(strTown, TOWN_BUILDING_FORT)
							, [TOWN_BUILDING_MARKETPLACE] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MARKETPLACE)
							, [TOWN_BUILDING_SHIPYARD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SHIPYARD)
							, [TOWN_BUILDING_TAVERN] = GetTownBuildingLevel(strTown, TOWN_BUILDING_TAVERN)
							, [TOWN_BUILDING_BLACKSMITH] = GetTownBuildingLevel(strTown, TOWN_BUILDING_BLACKSMITH)
						}
						, [TTH_ENUM.TownBuildDwelling] = {
							[TOWN_BUILDING_DWELLING_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_1)
							, [TOWN_BUILDING_DWELLING_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_2)
							, [TOWN_BUILDING_DWELLING_3] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_3)
							, [TOWN_BUILDING_DWELLING_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_4)
							, [TOWN_BUILDING_DWELLING_5] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_5)
							, [TOWN_BUILDING_DWELLING_6] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_6)
							, [TOWN_BUILDING_DWELLING_7] = GetTownBuildingLevel(strTown, TOWN_BUILDING_DWELLING_7)
						}
						, [TTH_ENUM.TownBuildSpecial] = {
							[TOWN_BUILDING_SPECIAL_0] = 0
							, [TOWN_BUILDING_SPECIAL_1] = 0
							, [TOWN_BUILDING_SPECIAL_2] = 0
							, [TOWN_BUILDING_SPECIAL_3] = 0
							, [TOWN_BUILDING_SPECIAL_4] = 0
							, [TOWN_BUILDING_SPECIAL_5] = 0
							, [TOWN_BUILDING_SPECIAL_6] = 0
						}
						, [TTH_ENUM.TownBuildGrail] = {
							[TOWN_BUILDING_GRAIL] = GetTownBuildingLevel(strTown, TOWN_BUILDING_GRAIL)
						}
					};

					-- 特殊建筑
						if iTownRace == TOWN_HEAVEN then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_5);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						elseif iTownRace == TOWN_PRESERVE then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_0);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_5);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						elseif iTownRace == TOWN_ACADEMY then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_3);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						elseif iTownRace == TOWN_DUNGEON then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_3);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_6);
						elseif iTownRace == TOWN_NECROMANCY then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_3);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						elseif iTownRace == TOWN_INFERNO then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_5);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						elseif iTownRace == TOWN_FORTRESS then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_3);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_5);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						elseif iTownRace == TOWN_STRONGHOLD then
							objTown[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1) + GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_3);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_0] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_1] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_2] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_2);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_3] = 0;
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_4] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_4);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_5] = GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_5);
							objTown[TTH_ENUM.TownBuildSpecial][TOWN_BUILDING_SPECIAL_6] = 0;
						end;

					return objTown;
				end;

			-- 计算内政点数（城镇评分）
				function TTH_MANAGE.calcTownValue(objTown)
					local iCalcValue = 0;

					local arrTownBuildBasic = objTown[TTH_ENUM.TownBuildBasic];
					local arrTownBuildDwelling = objTown[TTH_ENUM.TownBuildDwelling];
					local arrTownBuildSpecial = objTown[TTH_ENUM.TownBuildSpecial];
					local arrTownBuildGrail = objTown[TTH_ENUM.TownBuildGrail];
					for iBuildId, iValue in arrTownBuildBasic do
						iCalcValue = iCalcValue + iValue;
					end;
					for iBuildId, iValue in arrTownBuildDwelling do
						if objTown["TownRace"] == TOWN_NECROMANCY then
							iCalcValue = iCalcValue + iValue * 3;
						else
							iCalcValue = iCalcValue + iValue * 2;
						end;
					end;
					for iBuildId, iValue in arrTownBuildSpecial do
						if objTown["TownRace"] == TOWN_PRESERVE then
							iCalcValue = iCalcValue + iValue * 5;
						else
							iCalcValue = iCalcValue + iValue * 3;
						end;
					end;
					for iBuildId, iValue in arrTownBuildGrail do
						iCalcValue = iCalcValue + iValue * 10;
					end;

					return iCalcValue;
				end;

			-- 计算城镇建筑总等级
				function TTH_MANAGE.calcTownBuildingTotalLevel(objTown)
					local iTotalLevel = 0;

					local arrTownBuildBasic = objTown[TTH_ENUM.TownBuildBasic];
					local arrTownBuildDwelling = objTown[TTH_ENUM.TownBuildDwelling];
					local arrTownBuildSpecial = objTown[TTH_ENUM.TownBuildSpecial];
					local arrTownBuildGrail = objTown[TTH_ENUM.TownBuildGrail];
					for iBuildId, iValue in arrTownBuildBasic do
						iTotalLevel = iTotalLevel + iValue;
					end;
					for iBuildId, iValue in arrTownBuildDwelling do
						iTotalLevel = iTotalLevel + iValue;
					end;
					for iBuildId, iValue in arrTownBuildSpecial do
						iTotalLevel = iTotalLevel + iValue;
					end;
					for iBuildId, iValue in arrTownBuildGrail do
						iTotalLevel = iTotalLevel + iValue;
					end;

					return iTotalLevel;
				end;

			-- 重建城镇建筑
				function TTH_MANAGE.rebuildTownBuilding(strTown, iRace, objTownConvert)
					-- 普通建筑
						for i = 2, 4 do
							if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_TOWN_HALL] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_TOWN_HALL, 1);
							end;
						end;
						for i = 1, 3 do
							if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_FORT] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_FORT, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MARKETPLACE] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_MARKETPLACE, 1);
							end;
						end;
						if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_SHIPYARD] == 1 then
							UpgradeTownBuilding(strTown, TOWN_BUILDING_SHIPYARD, 1);
						end;
						if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_TAVERN] == 1 then
							UpgradeTownBuilding(strTown, TOWN_BUILDING_TAVERN, 1);
						end;
						if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_BLACKSMITH] == 1 then
							UpgradeTownBuilding(strTown, TOWN_BUILDING_BLACKSMITH, 1);
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_1] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_1, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_2] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_2, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_3] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_3, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_4] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_4, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_5] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_5, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_6] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_6, 1);
							end;
						end;
						for i = 1, 2 do
							if objTownConvert[TTH_ENUM.TownBuildDwelling][TOWN_BUILDING_DWELLING_7] >= i then
								UpgradeTownBuilding(strTown, TOWN_BUILDING_DWELLING_7, 1);
							end;
						end;
						if objTownConvert[TTH_ENUM.TownBuildGrail][TOWN_BUILDING_GRAIL] == 1 then
							UpgradeTownBuilding(strTown, TOWN_BUILDING_GRAIL, 1);
						end;

					-- 魔法塔
						if iRace ~= TOWN_STRONGHOLD then
							for i = 1, 5 do
								if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] >= i then
									UpgradeTownBuilding(strTown, TOWN_BUILDING_MAGIC_GUILD, 1);
								end;
							end;
						else
							for i = 1, 5 do
								if objTownConvert[TTH_ENUM.TownBuildBasic][TOWN_BUILDING_MAGIC_GUILD] >= i then
									if i <= 3 then
										UpgradeTownBuilding(strTown, TOWN_BUILDING_SPECIAL_1, 1);
									elseif i == 4 then
										UpgradeTownBuilding(strTown, TOWN_BUILDING_SPECIAL_3, 1);
									end;
								end;
							end;
						end;

					-- 特殊建筑
						local iPlayer = GetObjectOwner(strTown);
						TTH_GLOBAL.checkArtifactMerchant(iPlayer, strTown);

						local iTotalLevelBuildingSpecial = 0;
						for i = TOWN_BUILDING_SPECIAL_0, TOWN_BUILDING_SPECIAL_6 do
							iTotalLevelBuildingSpecial = iTotalLevelBuildingSpecial + objTownConvert[TTH_ENUM.TownBuildSpecial][i];
						end;
						if iTotalLevelBuildingSpecial == 1 then
							UpgradeTownBuilding(strTown, TTH_TABLE.SpecialBuilding[iRace][0], 1);
						elseif iTotalLevelBuildingSpecial > 1 then
							for i = 0, iTotalLevelBuildingSpecial - 1 do
								if TTH_TABLE.SpecialBuilding[iRace][i] ~= nil then
									UpgradeTownBuilding(strTown, TTH_TABLE.SpecialBuilding[iRace][i], 1);
								end;
							end;
						end;
				end;

			-- 特殊英雄成为内政官后建造附带建筑
				TTH_TABLE.AttachBuilding = {
					["Brem"] = TOWN_BUILDING_SPECIAL_4
					, ["Christian"] = TOWN_BUILDING_BLACKSMITH
					, ["Metlirn"] = TOWN_BUILDING_SPECIAL_0
					, ["Rissa"] = TOWN_BUILDING_SPECIAL_4
					, ["Nymus"] = TOWN_BUILDING_SPECIAL_1
					, ["Una"] = TOWN_BUILDING_SPECIAL_1
					, ["Quroq"] = TOWN_BUILDING_SPECIAL_5

					, ["OrtanCassius"] = TOWN_BUILDING_DWELLING_5
					, ["Sanguinius"] = TOWN_BUILDING_DWELLING_3
					, ["Avitus"] = TOWN_BUILDING_DWELLING_2
					, ["Gillion"] = TOWN_BUILDING_DWELLING_2
					, ["Razzak"] = TOWN_BUILDING_DWELLING_4
					, ["Menel"] = TOWN_BUILDING_DWELLING_3
					, ["Ferigl"] = TOWN_BUILDING_DWELLING_4
					, ["Oddrema"] = TOWN_BUILDING_DWELLING_4
					, ["Egil"] = TOWN_BUILDING_DWELLING_5
					, ["Hero4"] = TOWN_BUILDING_DWELLING_5
				}
				function TTH_MANAGE.attachBuilding(iPlayer, strHero, strTown)
					if TTH_TABLE.AttachBuilding[strHero] ~= nil then
						UpgradeTownBuilding(strTown, TTH_TABLE.AttachBuilding[strHero], 1);
					end;
				end;

		-- 根据玩家获取已经可定点传送的城镇列表 0: 没有; arrTown: 有
			function TTH_MANAGE.listTeleportTown(iPlayer)
				local arrTeleportTown = {};
				for iIndexTown, strTown in TTH_VARI.arrTown do
					if GetObjectOwner(strTown) == iPlayer then
						local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
						local bEnoughMagic = 0;
						if iTownRace == TOWN_STRONGHOLD then
							if GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1) == 3
								and GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_3) == 1 then
								bEnoughMagic = 1;
							end;
						elseif iTownRace == TOWN_INFERNO then
							if GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD) >= 1
								and GetTownBuildingLevel(strTown, TOWN_BUILDING_SPECIAL_1) == 1 then
								bEnoughMagic = 1;
							end;
						else
							if GetTownBuildingLevel(strTown, TOWN_BUILDING_MAGIC_GUILD) == 5 then
								bEnoughMagic = 1;
							end;
						end;
						if bEnoughMagic == 1 then
							TTH_COMMON.push(arrTeleportTown, strTown);
						end;
					end;
				end
				return arrTeleportTown;
			end;

		TTH_ENUM.KingManage = 0; -- 王国管理
		TTH_ENUM.ShowInfo = 1; -- 信息查询
		TTH_ENUM.SkillManage = 2; -- 技能管理
		TTH_ENUM.TownManage = 3; -- 城镇管理
		TTH_ENUM.ExchangeRecord = 4; -- 政绩管理
		TTH_ENUM.CombineArtifact = 5; -- 宝物合成
		TTH_ENUM.HireHero = 6; -- 招募指定英雄
		TTH_ENUM.EnableMultiScript = 7; -- 激活多人脚本

		TTH_TABLE.KingManagePath = {
			["Widget"] = {
				["Frame"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/Frame.txt"
				}
				, ["Navigation"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/Navigation.txt"
				}
				, ["Anchor"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/Anchor.txt"
				}
				, ["Main"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/Main.txt"
				}
				, ["HeroInfo"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/HeroInfo.txt"
				}
				, ["MayorExpedition"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/MayorExpedition.txt"
				}
				, ["MayorHero"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/MayorHero.txt"
				}
				, ["MayorTown"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/MayorTown.txt"
				}
				, ["Player"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/Widget/Player.txt"
				}
			}
			, ["KingManage"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/KingManage.txt"
			}
			, ["ShowInfo"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/ShowInfo.txt"
			}
			, ["SkillManage"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/SkillManage.txt"
				, ["NoOption"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/SkillManage/NoOption.txt"
				}
			}
			, ["TownManage"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage.txt"
				, ["NotAtGate"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/NotAtGate.txt"
				}
				, ["ConvertTown"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/ConvertTown.txt"
					, ["HasMayor"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/ConvertTown/HasMayor.txt"
					}
					, ["SameRace"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/ConvertTown/SameRace.txt"
					}
					, ["NotEnoughRes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/ConvertTown/NotEnoughRes.txt"
					}
					, ["GarrisonHero"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/ConvertTown/GarrisonHero.txt"
					}
					, ["ConfirmConvert"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/ConvertTown/ConfirmConvert.txt"
					}
				}
				, ["AssumeMayor"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor.txt"
					, ["NotSameRace"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/NotSameRace.txt"
					}
					, ["HasMayorOther"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/HasMayorOther.txt"
					}
					, ["HasMayorSelf"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/HasMayorSelf.txt"
					}
					, ["NoQuota"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/NoQuota.txt"
					}
					, ["NoOperTimes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/NoOperTimes.txt"
					}
					, ["ConfirmAssume"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/ConfirmAssume.txt"
					}
					, ["AssumeSuccess"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/AssumeMayor/AssumeSuccess.txt"
					}
				}
				, ["StepDownMayor"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/StepDownMayor.txt"
					, ["NotMatchHero"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/StepDownMayor/NotMatchHero.txt"
					}
					, ["NoOperTimes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/StepDownMayor/NoOperTimes.txt"
					}
					, ["ConfirmStepDown"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/StepDownMayor/ConfirmStepDown.txt"
					}
					, ["StepDownSuccess"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/StepDownMayor/StepDownSuccess.txt"
					}
				}
				, ["BuildStructure"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure.txt"
					, ["NoMayor"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NoMayor.txt"
					}
					, ["NotMatchHero"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NotMatchHero.txt"
					}
					, ["NoTownInfo"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NoTownInfo.txt"
					}
					, ["NoOperTimes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NoOperTimes.txt"
					}
					, ["NotEnoughMove"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NotEnoughMove.txt"
					}
					, ["NoUnbuilt"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NoUnbuilt.txt"
					}
					, ["NotEnoughRes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/NotEnoughRes.txt"
					}
					, ["ConfirmBuild"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/ConfirmBuild.txt"
					}
					, ["BuildSuccess"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuildStructure/BuildSuccess.txt"
					}
				}
				, ["Teleport2AppointTown"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown.txt"
					, ["NoTeleportTown"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/NoTeleportTown.txt"
					}
					, ["ConfirmTown"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/ConfirmTown.txt"
					}
					, ["HeroInGarrison"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/HeroInGarrison.txt"
					}
					, ["ResTip"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/ResTip.txt"
					}
					, ["ManaTip"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/ManaTip.txt"
					}
					, ["NotEnoughRes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/NotEnoughRes.txt"
					}
					, ["NotEnoughMana"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/NotEnoughMana.txt"
					}
					, ["GoldTip"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/GoldTip.txt"
					}
					, ["MoveTip"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/MoveTip.txt"
					}
					, ["NotEnoughGold"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/NotEnoughGold.txt"
					}
					, ["NotEnoughMove"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/Teleport2AppointTown/NotEnoughMove.txt"
					}
				}
				, ["BuyConsume"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume.txt"
					, ["OptionTips"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/OptionTips.txt"
					}
					, ["OptionTemplate"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/OptionTemplate.txt"
					}
					, ["NotEnoughRes"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/NotEnoughRes.txt"
					}
					, ["ConfirmNotExist"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/ConfirmNotExist.txt"
					}
					, ["ConfirmExist"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/ConfirmExist.txt"
					}
					, ["IsFull"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/IsFull.txt"
					}
					, ["SuccessBuy"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/SuccessBuy.txt"
					}
					, ["SuccessSupply"] = {
						["Text"] = "/Text/Game/Scripts/TTH_KingManage/TownManage/BuyConsume/SuccessSupply.txt"
					}
				}
			}
			, ["ExchangeRecord"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord.txt"
				, ["ChooseOption"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/ChooseOption.txt"
				}
				, ["NotEnoughPoint"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/NotEnoughPoint.txt"
				}
				, ["Success"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/Success.txt"
				}
				, ["PotionMaxTimes"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/PotionMaxTimes.txt"
				}
				, ["MaxOperTimes"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/MaxOperTimes.txt"
				}
				, ["AbilityQuota"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/AbilityQuota.txt"
				}
				, ["TerritoryRadius"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/ExchangeRecord/TerritoryRadius.txt"
				}
			}
			, ["CombineArtifact"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/CombineArtifact.txt"
				, ["HasNotOption"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/CombineArtifact/HasNotOption.txt"
				}
				, ["RadioTips"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/CombineArtifact/RadioTips.txt"
				}
				, ["Success"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/CombineArtifact/Success.txt"
				}
			}
			, ["HireHero"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero.txt"
				, ["RaceRadioTips"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero/RaceRadioTips.txt"
				}
				, ["ClassRadioTips"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero/ClassRadioTips.txt"
				}
				, ["HeroRadioTips"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero/HeroRadioTips.txt"
				}
				, ["HasExist"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero/HasExist.txt"
				}
				, ["Confirm"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero/Confirm.txt"
				}
				, ["Success"] = {
					["Text"] = "/Text/Game/Scripts/TTH_KingManage/HireHero/Success.txt"
				}
			}
			, ["EnableMultiScript"] = {
				["Text"] = "/Text/Game/Scripts/TTH_KingManage/EnableMultiScript.txt"
			}
		};

		-- 英雄主动技能4
			function TTH_MANAGE.customAbility(strHero, CUSTOM_ABILITY_ID)
				if CUSTOM_ABILITY_ID == CUSTOM_ABILITY_4 then
					TTH_MANAGE.kingManage(strHero);
				elseif CUSTOM_ABILITY_ID == CUSTOM_ABILITY_3 then
					TTH_MANAGE.dealTeleport2AppointTown(strHero);
				end;
			end;

		-- 王国管理-总入口
			TTH_TABLE.KingManageOption = {
				[1] = {
					["Id"] = TTH_ENUM.ShowInfo
					, ["Text"] = TTH_TABLE.KingManagePath["ShowInfo"]["Text"]
					, ["Callback"] = "TTH_MANAGE.dealShowInfo"
				}
				, [2] = {
					["Id"] = TTH_ENUM.SkillManage
					, ["Text"] = TTH_TABLE.KingManagePath["SkillManage"]["Text"]
					, ["Callback"] = "TTH_MANAGE.dealSkillManage"
				}
				, [3] = {
					["Id"] = TTH_ENUM.TownManage
					, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["Text"]
					, ["Callback"] = "TTH_MANAGE.dealTownManage"
				}
				, [4] = {
					["Id"] = TTH_ENUM.ExchangeRecord
					, ["Text"] = TTH_TABLE.KingManagePath["ExchangeRecord"]["Text"]
					, ["Callback"] = "TTH_MANAGE.dealExchangeRecord"
				}
				, [5] = {
					["Id"] = TTH_ENUM.CombineArtifact
					, ["Text"] = TTH_TABLE.KingManagePath["CombineArtifact"]["Text"]
					, ["Callback"] = "TTH_MANAGE.dealCombineArtifact"
				}
				, [6] = {
					["Id"] = TTH_ENUM.HireHero
					, ["Text"] = TTH_TABLE.KingManagePath["HireHero"]["Text"]
					, ["Callback"] = "TTH_MANAGE.dealHireHero"
				}
				, [7] = {
					["Id"] = TTH_ENUM.EnableMultiScript
					, ["Text"] = TTH_TABLE.KingManagePath["EnableMultiScript"]["Text"]
					, ["Callback"] = "TTH_MANAGE.enableMultiScript"
				}
			};
			function TTH_MANAGE.kingManage(strHero)
				TTH_COMMON.initNavi(TTH_TABLE.KingManagePath["KingManage"]["Text"]);

				local iPlayer = GetObjectOwner(strHero);
				TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.KingManageOption);
			end;

			-- 信息查询
				function TTH_MANAGE.dealShowInfo(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["ShowInfo"]["Text"]);

					TTH_GLOBAL.setGameVar4HeroLevel(strHero);
					TTH_GLOBAL.giveHero4Attribute(strHero);
					TTH_GLOBAL.dealSkillBonus8Hero(strHero);
					TTH_MANAGE.updateMaxOperTimes(strHero); -- 更新内政操作次数上限

					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero);
				end;

			-- 技能管理
				function TTH_MANAGE.dealSkillManage(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["SkillManage"]["Text"]);

					local strTown = TTH_GLOBAL.isHeroAtTownGate(strHero);
					TTH_VARI.townSkillManage = strTown;

					local optionSkillManage = {};
					local iIndex = 1;
					for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncActive] do
						if iKey == strHero then
							if strTown ~= nil	and objItem[TTH_ENUM.FuncAtGate] ~= nil then
								local objOption = {
									["Id"] = iKey
									, ["Text"] = objItem["Text"]
									, ["Callback"] = objItem[TTH_ENUM.FuncAtGate]
								};
								optionSkillManage[iIndex] = objOption;
								iIndex = iIndex + 1;
							end;
							if strTown == nil	and objItem[TTH_ENUM.FuncNotAtGate] ~= nil then
								local objOption = {
									["Id"] = strHero
									, ["Text"] = objItem["Text"]
									, ["Callback"] = objItem[TTH_ENUM.FuncNotAtGate]
								};
								optionSkillManage[iIndex] = objOption;
								iIndex = iIndex + 1;
							end;
						end;
					end;
					for iKey, objItem in TTH_TABLE.FuncArtifact[TTH_ENUM.FuncActive] do
						if HasArtefact(strHero, iKey, objItem["NeedWear"]) then
							if strTown ~= nil	and objItem[TTH_ENUM.FuncAtGate] ~= nil then
								local objOption = {
									["Id"] = iKey
									, ["Text"] = objItem["Text"]
									, ["Callback"] = objItem[TTH_ENUM.FuncAtGate]
								};
								optionSkillManage[iIndex] = objOption;
								iIndex = iIndex + 1;
							end;
							if strTown == nil	and objItem[TTH_ENUM.FuncNotAtGate] ~= nil then
								local objOption = {
									["Id"] = strHero
									, ["Text"] = objItem["Text"]
									, ["Callback"] = objItem[TTH_ENUM.FuncNotAtGate]
								};
								optionSkillManage[iIndex] = objOption;
								iIndex = iIndex + 1;
							end;
						end;
					end;
					for iKey, objItem in TTH_TABLE.FuncPerk[TTH_ENUM.FuncActive] do
						if HasHeroSkill(strHero, iKey) then
							if strTown ~= nil	and objItem[TTH_ENUM.FuncAtGate] ~= nil then
								local objOption = {
									["Id"] = iKey
									, ["Text"] = objItem["Text"]
									, ["Callback"] = objItem[TTH_ENUM.FuncAtGate]
								};
								optionSkillManage[iIndex] = objOption;
								iIndex = iIndex + 1;
							end;
							if strTown == nil	and objItem[TTH_ENUM.FuncNotAtGate] ~= nil then
								local objOption = {
									["Id"] = strHero
									, ["Text"] = objItem["Text"]
									, ["Callback"] = objItem[TTH_ENUM.FuncNotAtGate]
								};
								optionSkillManage[iIndex] = objOption;
								iIndex = iIndex + 1;
							end;
						end;
					end;

					if optionSkillManage == nil or length(optionSkillManage) == 0 then
						local strPath = TTH_TABLE.KingManagePath["SkillManage"]["NoOption"]["Text"];
						TTH_GLOBAL.sign(strHero, strPath);
					end;

					TTH_COMMON.optionRadio(iPlayer, strHero, optionSkillManage);
				end;

			-- 城镇管理
				TTH_ENUM.ConvertTown = 1; -- 转换城镇
				TTH_ENUM.AssumeMayor = 2; -- 成为内政官
				TTH_ENUM.StepDownMayor = 3; -- 解职内政官
				TTH_ENUM.BuildStructure = 4; -- 建造建筑
				TTH_ENUM.BuyConsume = 5; -- 购买消耗品

				function TTH_MANAGE.dealTownManage(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["TownManage"]["Text"]);

					local strTown = TTH_GLOBAL.isHeroAtTownGate(strHero);
					if strTown ~= nil then
						TTH_MANAGE.dealTownManageAtGate(iPlayer, strHero, strTown);
					else
						local strText = TTH_TABLE.KingManagePath["TownManage"]["NotAtGate"]["Text"];
						TTH_GLOBAL.sign(strHero, strText);
					end;
				end;

				TTH_TABLE.TownManageAtGateOption = {
					[1] = {
						["Id"] = TTH_ENUM.ConvertTown
						, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["Text"]
						, ["Callback"] = "TTH_MANAGE.dealConvertTown"
					}
					, [2] = {
						["Id"] = TTH_ENUM.AssumeMayor
						, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["Text"]
						, ["Callback"] = "TTH_MANAGE.dealAssumeMayor"
					}
					, [3] = {
						["Id"] = TTH_ENUM.StepDownMayor
						, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["StepDownMayor"]["Text"]
						, ["Callback"] = "TTH_MANAGE.dealStepDownMayor"
					}
					, [4] = {
						["Id"] = TTH_ENUM.BuildStructure
						, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["Text"]
						, ["Callback"] = "TTH_MANAGE.dealBuildStructure"
					}
					, [5] = {
						["Id"] = TTH_ENUM.BuyConsume
						, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["Text"]
						, ["Callback"] = "TTH_MANAGE.dealBuyConsume"
					}
				};
				TTH_VARI.townName4TownManage = "";
				TTH_VARI.townInfo4TownManage = {};
				function TTH_MANAGE.dealTownManageAtGate(iPlayer, strHero, strTown)
					TTH_VARI.townName4TownManage = strTown;
					TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.TownManageAtGateOption);
				end;

				-- 转换城镇
					-- 入口
						function TTH_MANAGE.dealConvertTown(iPlayer, strHero)
							TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["Text"]);

							local strTown = TTH_VARI.townName4TownManage;
							TTH_MANAGE.checkPreConvertTown4Mayor(iPlayer, strHero, strTown);
						end;

					-- 前置查验
						-- 当前城镇已有内政官
							function TTH_MANAGE.checkPreConvertTown4Mayor(iPlayer, strHero, strTown)
								if TTH_MANAGE.getMayor8Town(strTown) ~= nil then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["HasMayor"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreConvertTown4Race(iPlayer, strHero, strTown);
							end;

						-- 执行转换的英雄和当前城镇是否为同一种族
							function TTH_MANAGE.checkPreConvertTown4Race(iPlayer, strHero, strTown)
								if TTH_GLOBAL.getRace8Hero(strHero) == TTH_GLOBAL.getRace8Town(strTown) then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["SameRace"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreConvertTown4Garrison(iPlayer, strHero, strTown);
							end;

						-- 当前城镇的内城是否有英雄驻守
							function TTH_MANAGE.checkPreConvertTown4Garrison(iPlayer, strHero, strTown)
								if TTH_GLOBAL.isGarrisonHasHero(iPlayer, strTown) == 1 then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["GarrisonHero"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreConvertTown4Resource(iPlayer, strHero, strTown);
							end;

						-- 玩家是否有足够的资源转换城镇
							function TTH_MANAGE.checkPreConvertTown4Resource(iPlayer, strHero, strTown)
								local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								TTH_VARI.townInfo4TownManage = objTown;
								local iTownValue = TTH_MANAGE.calcTownValue(objTown);

								local iCountWood = iTownValue * 2;
								local iCountOre = iTownValue * 2;
								local iCountMercury = iTownValue * 1;
								local iCountCrystal = iTownValue * 1;
								local iCountSulphur = iTownValue * 1;
								local iCountGem = iTownValue * 1;
								local iCountGold = iTownValue * 1000;

								if iCountWood > GetPlayerResource(iPlayer, WOOD)
									or iCountOre > GetPlayerResource(iPlayer, ORE)
									or iCountMercury > GetPlayerResource(iPlayer, MERCURY)
									or iCountCrystal > GetPlayerResource(iPlayer, CRYSTAL)
									or iCountSulphur > GetPlayerResource(iPlayer, SULFUR)
									or iCountGem > GetPlayerResource(iPlayer, GEM)
									or iCountGold > GetPlayerResource(iPlayer, GOLD) then
									local strPathMain={
										TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["NotEnoughRes"]["Text"]
										;iTownValue=iTownValue
										,iCountWood=iCountWood
										,iCountOre=iCountOre
										,iCountMercury=iCountMercury
										,iCountCrystal=iCountCrystal
										,iCountSulphur=iCountSulphur
										,iCountGem=iCountGem
										,iCountGold=iCountGold
									};
									TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
									return nil;
								end;

								TTH_MANAGE.confirmConvertTown(iPlayer, strHero, strTown, iTownValue);
							end;

						-- 已满足条件，询问是否转换城镇
							function TTH_MANAGE.confirmConvertTown(iPlayer, strHero, strTown, iTownValue)
								local iCountWood = iTownValue * 2;
								local iCountOre = iTownValue * 2;
								local iCountMercury = iTownValue * 1;
								local iCountCrystal = iTownValue * 1;
								local iCountSulphur = iTownValue * 1;
								local iCountGem = iTownValue * 1;
								local iCountGold = iTownValue * 1000;
								local strPathMain={
									TTH_TABLE.KingManagePath["TownManage"]["ConvertTown"]["ConfirmConvert"]["Text"]
									;iTownValue=iTownValue
									,iCountWood=iCountWood
									,iCountOre=iCountOre
									,iCountMercury=iCountMercury
									,iCountCrystal=iCountCrystal
									,iCountSulphur=iCountSulphur
									,iCountGem=iCountGem
									,iCountGold=iCountGold
								};
								local strCallbackOk = "TTH_MANAGE.implConvertTown("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..","..iTownValue..")";
								local strCallbackCancel = "TTH_COMMON.cancelOption()";
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
							end;

					-- 执行转换
						function TTH_MANAGE.implConvertTown(iPlayer, strHero, strTown, iTownValue)
							local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
							local iMovePoint = GetHeroStat(strHero, STAT_MOVE_POINTS);

							-- 扣除资源及移动力
								TTH_GLOBAL.reduceResource(iPlayer, WOOD, iTownValue * 2);
								TTH_GLOBAL.reduceResource(iPlayer, ORE, iTownValue * 2);
								TTH_GLOBAL.reduceResource(iPlayer, MERCURY, iTownValue * 1);
								TTH_GLOBAL.reduceResource(iPlayer, CRYSTAL, iTownValue * 1);
								TTH_GLOBAL.reduceResource(iPlayer, SULFUR, iTownValue * 1);
								TTH_GLOBAL.reduceResource(iPlayer, GEM, iTownValue * 1);
								TTH_GLOBAL.reduceResource(iPlayer, GOLD, iTownValue * 1000);
								ChangeHeroStat(strHero, STAT_MOVE_POINTS, -1 * iMovePoint);

							-- 执行转换
								Play2DSoundForPlayers(GetPlayerFilter(iPlayer), "/Maps/Scenario/A2C2M1/Siege_WallCrash02sound.xdb#xpointer(/Sound)");
								TransformTown(strTown, iHeroRace);
								sleep(1);

							-- 重建建筑
								TTH_MANAGE.rebuildTownBuilding(strTown, iHeroRace, TTH_VARI.townInfo4TownManage);
								sleep(1);

							-- 英雄访问城镇
								MakeHeroInteractWithObject(strHero, strTown);
						end;

				-- 成为内政官
					-- 入口
						function TTH_MANAGE.dealAssumeMayor(iPlayer, strHero)
							TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["Text"]);

							local strTown = TTH_VARI.townName4TownManage;
							TTH_MANAGE.checkPreAssumeMayor4Race(iPlayer, strHero, strTown);
						end;

					-- 前置查验
						-- 当前英雄和当前城镇是否为同一种族
							function TTH_MANAGE.checkPreAssumeMayor4Race(iPlayer, strHero, strTown)
								if TTH_GLOBAL.getRace8Hero(strHero) ~= TTH_GLOBAL.getRace8Town(strTown) then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["NotSameRace"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreAssumeMayor4HasMayor(iPlayer, strHero, strTown);
							end;

						-- 当前城镇是否有内政官
							function TTH_MANAGE.checkPreAssumeMayor4HasMayor(iPlayer, strHero, strTown)
								local strMayor = TTH_MANAGE.getMayor8Town(strTown);
								if strMayor ~= nil then
									if strMayor ~= strHero then
										local strText = TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["HasMayorOther"]["Text"];
										TTH_GLOBAL.sign(strHero, strText);
									else
										local strText = TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["HasMayorSelf"]["Text"];
										TTH_GLOBAL.sign(strHero, strText);
									end;
									return nil;
								end;
								TTH_MANAGE.checkPreAssumeMayor4Quota(iPlayer, strHero, strTown);
							end;

						-- 当前英雄是否有足够的城镇管理配额
							function TTH_MANAGE.checkPreAssumeMayor4Quota(iPlayer, strHero, strTown)
								local iAbilityQuota = TTH_MANAGE.getAbilityQuota(strHero);
								local iAlreadyQuota = TTH_MANAGE.getAlreadyMayorInfo(strHero);
								if iAbilityQuota <= iAlreadyQuota then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["NoQuota"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreAssumeMayor4OperTimes(iPlayer, strHero, strTown);
							end;

						-- 当前英雄是否有足够的内政操作次数
							function TTH_MANAGE.checkPreAssumeMayor4OperTimes(iPlayer, strHero, strTown)
								local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);
								if iRemainOperTimes <= 0 then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["NoOperTimes"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.confirmAssumeMayor(iPlayer, strHero, strTown);
							end;

						-- 已满足条件，询问是否就职内政官
							function TTH_MANAGE.confirmAssumeMayor(iPlayer, strHero, strTown)
								local iPostRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero) - 1;
								local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								local iTownValue = TTH_MANAGE.calcTownValue(objTown);
								local iPostMayorValue = TTH_MANAGE.getMayorValue(strHero) + iTownValue;
								local iPostAlreadyMayor = TTH_MANAGE.getAlreadyMayorInfo(strHero) + 1;

								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["ConfirmAssume"]["Text"]
									;iTownValue=iTownValue
									,iPostRemainOperTimes=iPostRemainOperTimes
									,iPostMayorValue=iPostMayorValue
									,iPostAlreadyMayor=iPostAlreadyMayor
								};
								local strCallbackOk = "TTH_MANAGE.implAssumeMayor("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..","..iTownValue..")";
								local strCallbackCancel = "TTH_COMMON.cancelOption()";
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
							end;

					-- 执行就职
						function TTH_MANAGE.implAssumeMayor(iPlayer, strHero, strTown, iTownValue)
							-- 就职流程
								TTH_MANAGE.useOperTimes(strHero);
								TTH_MANAGE.bindTown2Hero(strHero, strTown, iTownValue);
								TTH_MANAGE.dealMayorBonus(strHero);
								TTH_MANAGE.updateExpeditionStatus(iPlayer, strHero, TTH_ENUM.No); -- 更新远征状态

							-- 执行成功
								local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);
								local iMayorValue = TTH_MANAGE.getMayorValue(strHero);
								local iAlreadyMayor = TTH_MANAGE.getAlreadyMayorInfo(strHero);
								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["AssumeMayor"]["AssumeSuccess"]["Text"]
									;iRemainOperTimes=iRemainOperTimes
									,iMayorValue=iMayorValue
									,iAlreadyMayor=iAlreadyMayor
								};
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);

							-- 附带建筑
								TTH_MANAGE.attachBuilding(iPlayer, strHero, strTown);
						end;

				-- 解职内政官
					-- 入口
						function TTH_MANAGE.dealStepDownMayor(iPlayer, strHero)
							TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["TownManage"]["StepDownMayor"]["Text"]);

							local strTown = TTH_VARI.townName4TownManage;
							TTH_MANAGE.checkPreStepDownMayor4Mayor(iPlayer, strHero, strTown);
						end;

					-- 前置查验
						-- 当前英雄是否为该城镇的内政官
							function TTH_MANAGE.checkPreStepDownMayor4Mayor(iPlayer, strHero, strTown)
								if TTH_VARI.arrMayor[strHero]["Town"][strTown] == nil then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["StepDownMayor"]["NotMatchHero"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreStepDownMayor4OperTimes(iPlayer, strHero, strTown);
							end;

						-- 当前英雄是否有足够的内政操作次数
							function TTH_MANAGE.checkPreStepDownMayor4OperTimes(iPlayer, strHero, strTown)
								local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);
								if iRemainOperTimes <= 0 then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["StepDownMayor"]["NoOperTimes"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.confirmStepDownMayor(iPlayer, strHero, strTown);
							end;

						-- 已满足条件，询问是否解职内政官
							function TTH_MANAGE.confirmStepDownMayor(iPlayer, strHero, strTown)
								local iPostRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero) - 1;
								local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								local iTownValue = TTH_MANAGE.calcTownValue(objTown);
								local iPostMayorValue = TTH_MANAGE.getMayorValue(strHero) - iTownValue;
								local iPostAlreadyMayor = TTH_MANAGE.getAlreadyMayorInfo(strHero) - 1;

								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["StepDownMayor"]["ConfirmStepDown"]["Text"]
									;iTownValue=iTownValue
									,iPostRemainOperTimes=iPostRemainOperTimes
									,iPostMayorValue=iPostMayorValue
									,iPostAlreadyMayor=iPostAlreadyMayor
								};
								local strCallbackOk = "TTH_MANAGE.implStepDownMayor("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
								local strCallbackCancel = "TTH_COMMON.cancelOption()";
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
							end;

					-- 执行解职
						function TTH_MANAGE.implStepDownMayor(iPlayer, strHero, strTown)
							-- 解职流程
								TTH_MANAGE.useOperTimes(strHero);
								TTH_MANAGE.unbindTown2Hero(strHero, strTown);
								TTH_MANAGE.dealMayorBonus(strHero);
								TTH_MANAGE.updateExpeditionStatus(iPlayer, strHero, TTH_ENUM.No); -- 更新远征状态

							-- 执行成功
								local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);
								local iMayorValue = TTH_MANAGE.getMayorValue(strHero);
								local iAlreadyMayor = TTH_MANAGE.getAlreadyMayorInfo(strHero);
								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["StepDownMayor"]["StepDownSuccess"]["Text"]
									;iRemainOperTimes=iRemainOperTimes
									,iMayorValue=iMayorValue
									,iAlreadyMayor=iAlreadyMayor
								};
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
						end;

				-- 建造建筑
					TTH_VARI.TownBuilding8Move = 2000;

					-- 入口
						function TTH_MANAGE.dealBuildStructure(iPlayer, strHero)
							TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["Text"]);

							local strTown = TTH_VARI.townName4TownManage;
							TTH_MANAGE.checkPreBuildStructure4Mayor(iPlayer, strHero, strTown);
						end;

					-- 前置查验
						-- 当前英雄是否为该城镇的内政官
							function TTH_MANAGE.checkPreBuildStructure4Mayor(iPlayer, strHero, strTown)
								if TTH_VARI.arrMayor[strHero]["Town"][strTown] == nil then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["NotMatchHero"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreBuildStructure4OperTimes(iPlayer, strHero, strTown);
							end;

						-- 当前英雄是否有足够的内政操作次数
							function TTH_MANAGE.checkPreBuildStructure4OperTimes(iPlayer, strHero, strTown)
								local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);
								if iRemainOperTimes <= 0 then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["NoOperTimes"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreBuildStructure4Move(iPlayer, strHero, strTown);
							end;

						-- 当前英雄是否有足够的移动力 >= 2000
							function TTH_MANAGE.checkPreBuildStructure4Move(iPlayer, strHero, strTown)
								local iMovePoint = GetHeroStat(strHero, STAT_MOVE_POINTS);
								if iMovePoint < TTH_VARI.TownBuilding8Move then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["NotEnoughMove"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_MANAGE.checkPreBuildStructure4Building(iPlayer, strHero, strTown);
							end;

						-- 当前城镇是否有剩余建筑未建造
							function TTH_MANAGE.checkPreBuildStructure4Building(iPlayer, strHero, strTown)
								local arrChooseBuildingOption = {};
								local iTownRace = TTH_GLOBAL.getRace8Town(strTown);

								local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
								local iTownBuildingTotalLevel = TTH_MANAGE.calcTownBuildingTotalLevel(objTown);
								local i = 1;
								for iIndexBuilding, objBuilding in TTH_TABLE.TownBuilding[iTownRace] do
									local iLevel = GetTownBuildingLevel(strTown, objBuilding["Id"]);
									-- 建筑对象需求的城镇等级 小于等于 当前城镇的城镇等级
									if objBuilding["TownLevel"] <= iTownBuildingTotalLevel then
										-- 建筑对象的等级 大于 当前城镇中该建筑的等级
										if objBuilding["Level"] > iLevel then
											-- 建筑对象需求的前置建筑的等级 小于等于 当前城镇中该前置建筑的等级
											if objBuilding["Base"]["Id"] == TTH_ENUM.TownBuildingNoBase
												or (
													objBuilding["Base"]["Id"] ~= TTH_ENUM.TownBuildingNoBase
													and objBuilding["Base"]["Level"] <= GetTownBuildingLevel(strTown, objBuilding["Base"]["Id"])
												)
												then
													arrChooseBuildingOption[i] = {
														["Id"] = iIndexBuilding
														, ["Text"] = objBuilding["Text"]
														, ["Callback"] = "TTH_MANAGE.checkPreBuildStructure4Res"
													};
													i = i + 1;
											end;
										end;
									end;
								end

								if arrChooseBuildingOption == nil
									or length(arrChooseBuildingOption) == 0 then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["NoUnbuilt"]["Text"]
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;
								TTH_COMMON.optionRadio(iPlayer, strHero, arrChooseBuildingOption);
							end;

						-- 当前玩家是否有足够的资源建造该建筑
							function TTH_MANAGE.checkPreBuildStructure4Res(iPlayer, strHero, iIndexBuilding)
								local strTown = TTH_VARI.townName4TownManage;
								local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
								local objBuilding = TTH_TABLE.TownBuilding[iTownRace][iIndexBuilding];

								local iCoef = 1
									* TTH_TALENT.calcCoefUfretin(strHero)
									* TTH_TALENT.calcCoefIsher(strHero);

								if iCoef * objBuilding["Resource"][WOOD] > GetPlayerResource(iPlayer, WOOD)
									or iCoef * objBuilding["Resource"][ORE] > GetPlayerResource(iPlayer, ORE)
									or iCoef * objBuilding["Resource"][MERCURY] > GetPlayerResource(iPlayer, MERCURY)
									or iCoef * objBuilding["Resource"][CRYSTAL] > GetPlayerResource(iPlayer, CRYSTAL)
									or iCoef * objBuilding["Resource"][SULFUR] > GetPlayerResource(iPlayer, SULFUR)
									or iCoef * objBuilding["Resource"][GEM] > GetPlayerResource(iPlayer, GEM)
									or iCoef * objBuilding["Resource"][GOLD] > GetPlayerResource(iPlayer, GOLD) then
									local strText = TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["NotEnoughRes"]["Text"];
									TTH_GLOBAL.sign(strHero, strText);
									return nil;
								end;

								TTH_MANAGE.confirmBuildStructure(iPlayer, strHero, strTown, iIndexBuilding);
							end;

						-- 已满足条件，询问是否建造建筑
							function TTH_MANAGE.confirmBuildStructure(iPlayer, strHero, strTown, iIndexBuilding)
								local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
								local objBuilding = TTH_TABLE.TownBuilding[iTownRace][iIndexBuilding];
								local strBuildingText = objBuilding["Text"];

								local iCoef = 1
									* TTH_TALENT.calcCoefUfretin(strHero)
									* TTH_TALENT.calcCoefIsher(strHero);

								local iCountWood = TTH_COMMON.round(iCoef * objBuilding["Resource"][WOOD]);
								local iCountOre = TTH_COMMON.round(iCoef * objBuilding["Resource"][ORE]);
								local iCountMercury = TTH_COMMON.round(iCoef * objBuilding["Resource"][MERCURY]);
								local iCountCrystal = TTH_COMMON.round(iCoef * objBuilding["Resource"][CRYSTAL]);
								local iCountSulphur = TTH_COMMON.round(iCoef * objBuilding["Resource"][SULFUR]);
								local iCountGem = TTH_COMMON.round(iCoef * objBuilding["Resource"][GEM]);
								local iCountGold = TTH_COMMON.round(iCoef * objBuilding["Resource"][GOLD]);

								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["ConfirmBuild"]["Text"]
									;strBuildingText=strBuildingText
									,iCountWood=iCountWood
									,iCountOre=iCountOre
									,iCountMercury=iCountMercury
									,iCountCrystal=iCountCrystal
									,iCountSulphur=iCountSulphur
									,iCountGem=iCountGem
									,iCountGold=iCountGold
								};
								local strCallbackOk = "TTH_MANAGE.implBuildStructure("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..","..iIndexBuilding..")";
								local strCallbackCancel = "TTH_COMMON.cancelOption()";
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
							end;

					-- 执行建造
						function TTH_MANAGE.implBuildStructure(iPlayer, strHero, strTown, iIndexBuilding)
							local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
							local objBuilding = TTH_TABLE.TownBuilding[iTownRace][iIndexBuilding];


							-- 建造流程
								-- 扣除资源
									local iCoef = 1
										* TTH_TALENT.calcCoefUfretin(strHero)
										* TTH_TALENT.calcCoefIsher(strHero);
									local iCountWood = TTH_COMMON.round(iCoef * objBuilding["Resource"][WOOD]);
									local iCountOre = TTH_COMMON.round(iCoef * objBuilding["Resource"][ORE]);
									local iCountMercury = TTH_COMMON.round(iCoef * objBuilding["Resource"][MERCURY]);
									local iCountCrystal = TTH_COMMON.round(iCoef * objBuilding["Resource"][CRYSTAL]);
									local iCountSulphur = TTH_COMMON.round(iCoef * objBuilding["Resource"][SULFUR]);
									local iCountGem = TTH_COMMON.round(iCoef * objBuilding["Resource"][GEM]);
									local iCountGold = TTH_COMMON.round(iCoef * objBuilding["Resource"][GOLD]);
									TTH_GLOBAL.reduceResource(iPlayer, WOOD, iCountWood);
									TTH_GLOBAL.reduceResource(iPlayer, ORE, iCountOre);
									TTH_GLOBAL.reduceResource(iPlayer, MERCURY, iCountMercury);
									TTH_GLOBAL.reduceResource(iPlayer, CRYSTAL, iCountCrystal);
									TTH_GLOBAL.reduceResource(iPlayer, SULFUR, iCountSulphur);
									TTH_GLOBAL.reduceResource(iPlayer, GEM, iCountGem);
									TTH_GLOBAL.reduceResource(iPlayer, GOLD, iCountGold);

								-- 扣除移动力
									ChangeHeroStat(strHero, STAT_MOVE_POINTS, -1 * TTH_VARI.TownBuilding8Move);

								-- 扣除内政操作次数
									TTH_MANAGE.useOperTimes(strHero);
									TTH_TALENT.useTimesUfretin(strHero);

								-- 执行建造
									UpgradeTownBuilding(strTown, objBuilding["Id"], 1);

								-- 处理内政官加成
									sleep(1);
									TTH_MANAGE.dealMayorBonus(strHero);

							-- 执行成功
								local strBuildingText = objBuilding["Text"];
								local iRemainOperTimes = TTH_MANAGE.getRemainOperTimes(strHero);

								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["BuildStructure"]["BuildSuccess"]["Text"]
									;strBuildingText=strBuildingText
									,iRemainOperTimes=iRemainOperTimes
								};
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
						end;

				-- 购买消耗品
					TTH_ENUM.DimensionDoor = 1; -- 回城令
					TTH_ENUM.PotionMana = 2; -- 法力药水
					TTH_ENUM.PotionEnergy = 3; -- 能量药水
					TTH_ENUM.PotionRevive = 4; -- 复活药水
					TTH_FINAL.POTION_MAXTIMES = 3;

					TTH_TABLE.BuyConsumeInfo = {
						[1] = {
							["ArtifactId"] = ARTIFACT_DIMENSION_DOOR
							, ["Cost"] = 5000
							, ["WeekStep"] = 500
						}
						, [2] = {
							["ArtifactId"] = ARTIFACT_POTION_MANA
							, ["Cost"] = 6000
							, ["WeekStep"] = 600
						}
						, [3] = {
							["ArtifactId"] = ARTIFACT_POTION_ENERGY
							, ["Cost"] = 8000
							, ["WeekStep"] = 800
						}
						, [4] = {
							["ArtifactId"] = ARTIFACT_POTION_REVIVE
							, ["Cost"] = 10000
							, ["WeekStep"] = 1000
						}
					};
					TTH_TABLE.BuyConsumeOption = {
						[1] = {
							["Id"] = TTH_ENUM.DimensionDoor
							, ["Text"] = {
									TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
									;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"]
									,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.DimensionDoor]["Cost"]
								}
							, ["Callback"] = "TTH_MANAGE.dealDimensionDoor"
						}
						, [2] = {
							["Id"] = TTH_ENUM.PotionMana
							, ["Text"] = {
									TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
									;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_POTION_MANA]["Text"]
									,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionMana]["Cost"]
								}
							, ["Callback"] = "TTH_MANAGE.dealPotion"
						}
						, [3] = {
							["Id"] = TTH_ENUM.PotionEnergy
							, ["Text"] = {
									TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
									;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_POTION_ENERGY]["Text"]
									,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionEnergy]["Cost"]
								}
							, ["Callback"] = "TTH_MANAGE.dealPotion"
						}
						, [4] = {
							["Id"] = TTH_ENUM.PotionRevive
							, ["Text"] = {
									TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
									;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_POTION_REVIVE]["Text"]
									,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionRevive]["Cost"]
								}
							, ["Callback"] = "TTH_MANAGE.dealPotion"
						}
					};
					TTH_VARI.recordPotion = {};

					-- 入口
						function TTH_MANAGE.dealBuyConsume(iPlayer, strHero)
							TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["Text"]);

							local strText = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTips"]["Text"];
							local arrOption = TTH_TABLE.BuyConsumeOption;
							arrOption[1]["Text"] = {
								TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
								;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"]
								,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.DimensionDoor]["Cost"]
								+ (TTH_VARI.absoluteWeek - 1) * TTH_TABLE.BuyConsumeInfo[TTH_ENUM.DimensionDoor]["WeekStep"]
							};
							arrOption[2]["Text"] = {
								TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
								;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_POTION_MANA]["Text"]
								,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionMana]["Cost"]
								+ (TTH_VARI.absoluteWeek - 1) * TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionMana]["WeekStep"]
							};
							arrOption[3]["Text"] = {
								TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
								;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_POTION_ENERGY]["Text"]
								,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionEnergy]["Cost"]
								+ (TTH_VARI.absoluteWeek - 1) * TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionEnergy]["WeekStep"]
							};
							arrOption[4]["Text"] = {
								TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["OptionTemplate"]["Text"]
								;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_POTION_REVIVE]["Text"]
								,iCost=TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionRevive]["Cost"]
								+ (TTH_VARI.absoluteWeek - 1) * TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionRevive]["WeekStep"]
							};
							TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strText);
						end;

					-- 购买回城令
						function TTH_MANAGE.dealDimensionDoor(iPlayer, strHero)
							local objBuy = TTH_TABLE.BuyConsumeInfo[TTH_ENUM.DimensionDoor];
							local iCost = objBuy["Cost"] + (TTH_VARI.absoluteWeek - 1) * objBuy["WeekStep"]
							local strPathMain = {
								TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["ConfirmNotExist"]["Text"]
								;strArtifactName=TTH_TABLE.Artifact[objBuy["ArtifactId"]]["Text"]
								,iCost=iCost
							};
							local strCallbackOk = "TTH_MANAGE.checkPreDimensionDoor4Res("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iCost..")";
							local strCallbackCancel = "TTH_COMMON.cancelOption()";
							TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
						end;
						function TTH_MANAGE.checkPreDimensionDoor4Res(iPlayer, strHero, iCost)
							if GetPlayerResource(iPlayer, GOLD) < iCost then
								local strText = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["NotEnoughRes"]["Text"];
								TTH_GLOBAL.sign(strHero, strText);
								return nil;
							end;

							TTH_MANAGE.implDimensionDoor(iPlayer, strHero, iCost);
						end;
						function TTH_MANAGE.implDimensionDoor(iPlayer, strHero, iCost)
							TTH_GLOBAL.reduceResource(iPlayer, GOLD, iCost);
							GiveArtefact(strHero, ARTIFACT_DIMENSION_DOOR);
							local strPathMain = {
								TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["Success"]["Text"]
								;strArtifactName=TTH_TABLE.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"]
							};
							TTH_GLOBAL.sign(strHero, strPathMain);
						end;

					-- 购买药水
						function TTH_MANAGE.dealPotion(iPlayer, strHero, iPotionId)
							local objBuy = TTH_TABLE.BuyConsumeInfo[iPotionId];
							local iMaxTimes = TTH_FINAL.POTION_MAXTIMES;
							local iArtifactId = objBuy["ArtifactId"];
							local iRemainTimes = 0;
							local strTemplate = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["ConfirmNotExist"]["Text"];
							if HasArtefact(strHero, iArtifactId, 0) ~= nil then
								if TTH_VARI.recordPotion[iArtifactId] ~= nil
									and TTH_VARI.recordPotion[iArtifactId][strHero] ~= nil then
									if TTH_VARI.recordPotion[iArtifactId][strHero]["RemainTimes"] == iMaxTimes then
										local strPathMain = {
											TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["IsFull"]["Text"]
											;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
										};
										TTH_GLOBAL.sign(strHero, strPathMain);
										return nil;
									end;
									iRemainTimes = TTH_VARI.recordPotion[iArtifactId][strHero]["RemainTimes"];
									strTemplate = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["ConfirmExist"]["Text"];
								end;
							end;
							local iCost = TTH_COMMON.round((iMaxTimes - iRemainTimes) / iMaxTimes * (objBuy["Cost"] + (TTH_VARI.absoluteWeek - 1) * objBuy["WeekStep"]));
							local strPathMain = {
								strTemplate
								;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
								,iRemainTimes=iRemainTimes
								,iMaxTimes=iMaxTimes
								,iCost=iCost
							};
							local strCallbackOk = "TTH_MANAGE.checkPrePotion4Res("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iPotionId..","..iCost..")";
							local strCallbackCancel = "TTH_COMMON.cancelOption()";
							TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
						end;
						function TTH_MANAGE.checkPrePotion4Res(iPlayer, strHero, iPotionId, iCost)
							if GetPlayerResource(iPlayer, GOLD) < iCost then
								local strText = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["NotEnoughRes"]["Text"];
								TTH_GLOBAL.sign(strHero, strText);
								return nil;
							end;

							TTH_MANAGE.implPotion(iPlayer, strHero, iPotionId, iCost)
						end;
						function TTH_MANAGE.implPotion(iPlayer, strHero, iPotionId, iCost)
							local objBuy = TTH_TABLE.BuyConsumeInfo[iPotionId];
							local iArtifactId = objBuy["ArtifactId"];
							TTH_GLOBAL.reduceResource(iPlayer, GOLD, iCost);
							local strTemplate = "";
							if HasArtefact(strHero, iArtifactId, 0) ~= nil then
								TTH_ARTI.resetTimesPotion(iPlayer, strHero, iPotionId);
								strTemplate = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["SuccessSupply"]["Text"];
							else
								GiveArtefact(strHero, iArtifactId, 1);
								TTH_ARTI.initPotion(iPlayer, strHero, iPotionId);
								strTemplate = TTH_TABLE.KingManagePath["TownManage"]["BuyConsume"]["SuccessBuy"]["Text"];
							end;
							local strPathMain = {
								strTemplate
								;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
							};
							TTH_GLOBAL.sign(strHero, strPathMain);
						end;

					-- 药水存量上限+1
						function TTH_MANAGE.buffExtraPotionMaxTimes(iPlayer)
							TTH_FINAL.POTION_MAXTIMES = TTH_FINAL.POTION_MAXTIMES + 1;
						end;

			-- 政绩管理
				TTH_ENUM.PotionMaxTimes = 1; -- 药水存量上限+1
				TTH_ENUM.MaxOperTimes = 2; -- 周内政操作次数上限+1
				TTH_ENUM.AbilityQuota = 3; -- 可管辖城镇配额+1
				TTH_ENUM.TerritoryRadius = 4; -- 领地范围+20

				TTH_TABLE.ExchangeRecordCost = {
					[1] = 800
					, [2] = 1300
					, [3] = 2100
					, [4] = 3400
					, [5] = 5500
					, [6] = 8900
					, [7] = 14400
					, [8] = 19900
				};

				TTH_TABLE.ExchangeRecordOption = {
					[1] = {
						["Id"] = TTH_ENUM.PotionMaxTimes
						, ["Text"] = TTH_TABLE.KingManagePath["ExchangeRecord"]["PotionMaxTimes"]["Text"]
						, ["Callback"] = "TTH_MANAGE.checkPreExchangeRecord4Point"
					}
					, [2] = {
						["Id"] = TTH_ENUM.MaxOperTimes
						, ["Text"] = TTH_TABLE.KingManagePath["ExchangeRecord"]["MaxOperTimes"]["Text"]
						, ["Callback"] = "TTH_MANAGE.checkPreExchangeRecord4Point"
					}
					, [3] = {
						["Id"] = TTH_ENUM.AbilityQuota
						, ["Text"] = TTH_TABLE.KingManagePath["ExchangeRecord"]["AbilityQuota"]["Text"]
						, ["Callback"] = "TTH_MANAGE.checkPreExchangeRecord4Point"
					}
					, [4] = {
						["Id"] = TTH_ENUM.TerritoryRadius
						, ["Text"] = TTH_TABLE.KingManagePath["ExchangeRecord"]["TerritoryRadius"]["Text"]
						, ["Callback"] = "TTH_MANAGE.checkPreExchangeRecord4Point"
					}
				};

				TTH_VARI.iExchangeRecordTimes = {};

				-- 计算当前玩家政绩花费
					function TTH_MANAGE.calcExchangeRecordCost(iPlayer)
						local iCost = 0;
						if TTH_VARI.iExchangeRecordTimes[iPlayer] == nil then
							TTH_VARI.iExchangeRecordTimes[iPlayer] = 0;
							iCost = TTH_TABLE.ExchangeRecordCost[1];
						else
							local iTimes = TTH_VARI.iExchangeRecordTimes[iPlayer] + 1;
							if iTimes >= length(TTH_TABLE.ExchangeRecordCost) then
								iTimes = length(TTH_TABLE.ExchangeRecordCost);
							end;
							iCost = TTH_TABLE.ExchangeRecordCost[iTimes];
						end;
						return iCost;
					end;

				-- 入口
					function TTH_MANAGE.dealExchangeRecord(iPlayer, strHero)
						TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["ExchangeRecord"]["Text"]);

						local iCurrentPoint = TTH_MANAGE.getRecordPoint(iPlayer);
						local iReportPoint8Daily = TTH_MANAGE.calcDailyRecordPoint8Daily(iPlayer);
						local iCost = TTH_MANAGE.calcExchangeRecordCost(iPlayer);

						local strPathMain = {
							TTH_TABLE.KingManagePath["ExchangeRecord"]["ChooseOption"]["Text"]
							;iCurrentPoint=iCurrentPoint
							,iReportPoint8Daily=iReportPoint8Daily
							,iCost=iCost
						};
						TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.ExchangeRecordOption, strPathMain);
					end;

				-- 是否有足够的政绩
					function TTH_MANAGE.checkPreExchangeRecord4Point(iPlayer, strHero, iType)
						if TTH_MANAGE.getRecordPoint(iPlayer) < TTH_MANAGE.calcExchangeRecordCost(iPlayer) then
							local strPath = TTH_TABLE.KingManagePath["ExchangeRecord"]["NotEnoughPoint"]["Text"];
							TTH_GLOBAL.sign(strHero, strPath);
							return nil;
						end;

						TTH_MANAGE.implExchangeRecord(iPlayer, strHero, iType)
					end;

				-- 兑换
					function TTH_MANAGE.implExchangeRecord(iPlayer, strHero, iType)
						local iCost = TTH_MANAGE.calcExchangeRecordCost(iPlayer);
						TTH_MANAGE.useRecordPoint(iPlayer, strHero, iCost);
						if iType == TTH_ENUM.PotionMaxTimes then
							TTH_MANAGE.buffExtraPotionMaxTimes(iPlayer);
						elseif iType == TTH_ENUM.MaxOperTimes then
							TTH_MANAGE.buffExtraOperTimes(iPlayer);
						elseif iType == TTH_ENUM.AbilityQuota then
							TTH_MANAGE.buffExtraAbilityQuota(iPlayer);
						elseif iType == TTH_ENUM.TerritoryRadius then
							TTH_MANAGE.buffExtraTerritoryRadius(iPlayer);
						end;

						local strPathMain = {
							TTH_TABLE.KingManagePath["ExchangeRecord"]["Success"]["Text"]
							;iCost=iCost
							,strReward=TTH_TABLE.ExchangeRecordOption[iType]["Text"]
						};
						TTH_GLOBAL.sign(strHero, strPathMain);
					end;

			-- 宝物合成
				TTH_TABLE.CombineArtifact = {
					[ARTIFACT_ANGELIC_ALLIANCE] = {
						["Id"] = ARTIFACT_ANGELIC_ALLIANCE
						, ["Text"] = "/Text/Game/Artifacts/Angelic_Alliance/Name.txt"
						, ["Component"] = {
							[ARTIFACT_GUARDIAN_01] = {
								["Id"] = ARTIFACT_GUARDIAN_01
								, ["Text"] = "/Text/Game/Artifacts/Guardian_Helmet/Name.txt"
							}
							, [ARTIFACT_GUARDIAN_02] = {
								["Id"] = ARTIFACT_GUARDIAN_02
								, ["Text"] = "/Text/Game/Artifacts/Guardian_Boots/Name.txt"
							}
							, [ARTIFACT_GUARDIAN_03] = {
								["Id"] = ARTIFACT_GUARDIAN_03
								, ["Text"] = "/Text/Game/Artifacts/Guardian_Shield/Name.txt"
							}
							, [ARTIFACT_PLATE_MAIL_OF_STABILITY] = {
								["Id"] = ARTIFACT_PLATE_MAIL_OF_STABILITY
								, ["Text"] = "/Text/Game/Artifacts/PlateMailOfStability/Name.txt"
							}
						}
					}
					, [ARTIFACT_GRAAL] = {
						["Id"] = ARTIFACT_GRAAL
						, ["Text"] = "/Text/Game/Artifacts/Graal/Name.txt"
						, ["Component"] = {
							[ARTIFACT_LEGION_BASIC] = {
								["Id"] = ARTIFACT_LEGION_BASIC
								, ["Text"] = "/Text/Game/Artifacts/Legion_Basic/Name.txt"
							}
							, [ARTIFACT_LEGION_ADVANCED] = {
								["Id"] = ARTIFACT_LEGION_ADVANCED
								, ["Text"] = "/Text/Game/Artifacts/Legion_Advanced/Name.txt"
							}
							, [ARTIFACT_LEGION_EXPERT] = {
								["Id"] = ARTIFACT_LEGION_EXPERT
								, ["Text"] = "/Text/Game/Artifacts/Legion_Expert/Name.txt"
							}
							, [ARTIFACT_ENDLESS_BAG_OF_GOLD] = {
								["Id"] = ARTIFACT_ENDLESS_BAG_OF_GOLD
								, ["Text"] = "/Text/Game/Artifacts/Endless_Bag_Of_Gold/Name.txt"
							}
							, [ARTIFACT_CROWN_OF_LEADER] = {
								["Id"] = ARTIFACT_CROWN_OF_LEADER
								, ["Text"] = "/Text/Game/Artifacts/Crown_Of_Leader/Name.txt"
							}
						}
					}
					, [ARTIFACT_HORN_OF_PLENTY] = {
						["Id"] = ARTIFACT_HORN_OF_PLENTY
						, ["Text"] = "/Text/Game/Artifacts/Horn_Of_Plenty/Name.txt"
						, ["Component"] = {
							[ARTIFACT_RES_BASIC] = {
								["Id"] = ARTIFACT_RES_BASIC
								, ["Text"] = "/Text/Game/Artifacts/Res_Basic/Name.txt"
							}
							, [ARTIFACT_RES_ADVANCED] = {
								["Id"] = ARTIFACT_RES_ADVANCED
								, ["Text"] = "/Text/Game/Artifacts/Res_Advanced/Name.txt"
							}
							, [ARTIFACT_RES_EXPERT] = {
								["Id"] = ARTIFACT_RES_EXPERT
								, ["Text"] = "/Text/Game/Artifacts/Res_Expert/Name.txt"
							}
							, [ARTIFACT_BAND_OF_CONJURER] = {
								["Id"] = ARTIFACT_BAND_OF_CONJURER
								, ["Text"] = "/Text/Game/Artifacts/Band_Of_Conjurer/Name.txt"
							}
						}
					}
					, [ARTIFACT_CURSE_SHOULDER] = {
						["Id"] = ARTIFACT_CURSE_SHOULDER
						, ["Text"] = "/Text/Game/Artifacts/Curse_Shoulder/Name.txt"
						, ["Component"] = {
							[ARTIFACT_CLOAK_OF_MOURNING] = {
								["Id"] = ARTIFACT_CLOAK_OF_MOURNING
								, ["Text"] = "/Text/Game/Artifacts/Cloak_of_mourning/Name.txt"
							}
							, [ARTIFACT_STAFF_OF_VEXINGS] = {
								["Id"] = ARTIFACT_STAFF_OF_VEXINGS
								, ["Text"] = "/Text/Game/Artifacts/Staff_of_vexing/Name.txt"
							}
							, [ARTIFACT_RING_OF_DEATH] = {
								["Id"] = ARTIFACT_RING_OF_DEATH
								, ["Text"] = "/Text/Game/Artifacts/Ring_of_Death/Name.txt"
							}
							, [ARTIFACT_NECROMANCER_PENDANT] = {
								["Id"] = ARTIFACT_NECROMANCER_PENDANT
								, ["Text"] = "/Text/Game/Artifacts/Necromancer_Pendant/Name.txt"
							}
						}
					}
					, [ARTIFACT_DRACONIC] = {
						["Id"] = ARTIFACT_DRACONIC
						, ["Text"] = "/Text/Game/Artifacts/Draconic/Name.txt"
						, ["Component"] = {
							[ARTIFACT_DRAGON_SCALE_ARMOR] = {
								["Id"] = ARTIFACT_DRAGON_SCALE_ARMOR
								, ["Text"] = "/Text/Game/Artifacts/Dragon_scale_armor/Name.txt"
							}
							, [ARTIFACT_DRAGON_SCALE_SHIELD] = {
								["Id"] = ARTIFACT_DRAGON_SCALE_SHIELD
								, ["Text"] = "/Text/Game/Artifacts/DragonscaleShield/Name.txt"
							}
							, [ARTIFACT_DRAGON_BONE_GRAVES] = {
								["Id"] = ARTIFACT_DRAGON_BONE_GRAVES
								, ["Text"] = "/Text/Game/Artifacts/Dragon_bone_greaves/Name.txt"
							}
							, [ARTIFACT_DRAGON_WING_MANTLE] = {
								["Id"] = ARTIFACT_DRAGON_WING_MANTLE
								, ["Text"] = "/Text/Game/Artifacts/Dragon_wing_mantle/Name.txt"
							}
							, [ARTIFACT_DRAGON_TEETH_NECKLACE] = {
								["Id"] = ARTIFACT_DRAGON_TEETH_NECKLACE
								, ["Text"] = "/Text/Game/Artifacts/Dragon_teeth_necklace/Name.txt"
							}
							, [ARTIFACT_DRAGON_TALON_CROWN] = {
								["Id"] = ARTIFACT_DRAGON_TALON_CROWN
								, ["Text"] = "/Text/Game/Artifacts/Dragon_talon_crown/Name.txt"
							}
							, [ARTIFACT_DRAGON_EYE_RING] = {
								["Id"] = ARTIFACT_DRAGON_EYE_RING
								, ["Text"] = "/Text/Game/Artifacts/Dragon_eye_ring/Name.txt"
							}
							, [ARTIFACT_DRAGON_FLAME_TONGUE] = {
								["Id"] = ARTIFACT_DRAGON_FLAME_TONGUE
								, ["Text"] = "/Text/Game/Artifacts/Dragon_flame_tongue/Name.txt"
							}
						}
					}
					, [ARTIFACT_SENTINEL] = {
						["Id"] = ARTIFACT_SENTINEL
						, ["Text"] = "/Text/Game/Artifacts/Sentinel/Name.txt"
						, ["Component"] = {
							[ARTIFACT_DWARVEN_MITHRAL_CUIRASS] = {
								["Id"] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
								, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_cuirass/Name.txt"
							}
							, [ARTIFACT_DWARVEN_MITHRAL_GREAVES] = {
								["Id"] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
								, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_greaves/Name.txt"
							}
							, [ARTIFACT_DWARVEN_MITHRAL_HELMET] = {
								["Id"] = ARTIFACT_DWARVEN_MITHRAL_HELMET
								, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_helmet/Name.txt"
							}
							, [ARTIFACT_DWARVEN_MITHRAL_SHIELD] = {
								["Id"] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
								, ["Text"] = "/Text/Game/Artifacts/Dwarven_mithral_shield/Name.txt"
							}
						}
					}
					, [ARTIFACT_EIGHTFOLD] = {
						["Id"] = ARTIFACT_EIGHTFOLD
						, ["Text"] = "/Text/Game/Artifacts/Eightfold/Name.txt"
						, ["Component"] = {
							[ARTIFACT_ROBE_OF_MAGI] = {
								["Id"] = ARTIFACT_ROBE_OF_MAGI
								, ["Text"] = "/Text/Game/Artifacts/Robe_of_magi/Name.txt"
							}
							, [ARTIFACT_STAFF_OF_MAGI] = {
								["Id"] = ARTIFACT_STAFF_OF_MAGI
								, ["Text"] = "/Text/Game/Artifacts/Staff_of_magi/Name.txt"
							}
							, [ARTIFACT_CROWN_OF_MAGI] = {
								["Id"] = ARTIFACT_CROWN_OF_MAGI
								, ["Text"] = "/Text/Game/Artifacts/Crown_of_magi/Name.txt"
							}
							, [ARTIFACT_RING_OF_MAGI] = {
								["Id"] = ARTIFACT_RING_OF_MAGI
								, ["Text"] = "/Text/Game/Artifacts/Ring_of_magi/Name.txt"
							}
						}
					}
					, [ARTIFACT_CODEX] = {
						["Id"] = ARTIFACT_CODEX
						, ["Text"] = "/Text/Game/Artifacts/Codex/Name.txt"
						, ["Component"] = {
							[ARTIFACT_TOME_OF_DESTRUCTION] = {
								["Id"] = ARTIFACT_TOME_OF_DESTRUCTION
								, ["Text"] = "/Text/Game/Artifacts/Tome_of_Destruction/Name.txt"
							}
							, [ARTIFACT_TOME_OF_LIGHT_MAGIC] = {
								["Id"] = ARTIFACT_TOME_OF_LIGHT_MAGIC
								, ["Text"] = "/Text/Game/Artifacts/Tome_of_Light_Magic/Name.txt"
							}
							, [ARTIFACT_TOME_OF_DARK_MAGIC] = {
								["Id"] = ARTIFACT_TOME_OF_DARK_MAGIC
								, ["Text"] = "/Text/Game/Artifacts/Tome_of_Dark_Magic/Name.txt"
							}
							, [ARTIFACT_TOME_OF_SUMMONING_MAGIC] = {
								["Id"] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
								, ["Text"] = "/Text/Game/Artifacts/Tome_of_Summoning_Magic/Name.txt"
							}
						}
					}
					, [ARTIFACT_PLATE_MAIL_OF_STABILITY] = {
						["Id"] = ARTIFACT_PLATE_MAIL_OF_STABILITY
						, ["Text"] = "/Text/Game/Artifacts/PlateMailOfStability/Name.txt"
						, ["Component"] = {
							[ARTIFACT_SWORD_OF_RUINS] = {
								["Id"] = ARTIFACT_SWORD_OF_RUINS
								, ["Text"] = "/Text/Game/Artifacts/SwordOfRuin/Name.txt"
							}
							, [ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD] = {
								["Id"] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
								, ["Text"] = "/Text/Game/Artifacts/Breastplate_of_petrified_wood/Name.txt"
							}
							, [ARTIFACT_SKULL_HELMET] = {
								["Id"] = ARTIFACT_SKULL_HELMET
								, ["Text"] = "/Text/Game/Artifacts/Skull_Helmet/Name.txt"
							}
							, [ARTIFACT_BUCKLER] = {
								["Id"] = ARTIFACT_BUCKLER
								, ["Text"] = "/Text/Game/Artifacts/Buckler/Name.txt"
							}
							, [ARTIFACT_BOOTS_OF_INTERFERENCE] = {
								["Id"] = ARTIFACT_BOOTS_OF_INTERFERENCE
								, ["Text"] = "/Text/Game/Artifacts/Boots_of_interference/Name.txt"
							}
						}
					}
					, [ARTIFACT_TOME_OF_DESTRUCTION] = {
						["Id"] = ARTIFACT_TOME_OF_DESTRUCTION
						, ["Text"] = "/Text/Game/Artifacts/Tome_of_Destruction/Name.txt"
						, ["Component"] = {
							[ARTIFACT_TITANS_TRIDENT] = {
								["Id"] = ARTIFACT_TITANS_TRIDENT
								, ["Text"] = "/Text/Game/Artifacts/Titan`s_trident/Name.txt"
							}
							, [ARTIFACT_EVERCOLD_ICICLE] = {
								["Id"] = ARTIFACT_EVERCOLD_ICICLE
								, ["Text"] = "/Text/Game/Artifacts/Evercold_icicle/Name.txt"
							}
							, [ARTIFACT_PHOENIX_FEATHER_CAPE] = {
								["Id"] = ARTIFACT_PHOENIX_FEATHER_CAPE
								, ["Text"] = "/Text/Game/Artifacts/Phoenix_feather_cape/Name.txt"
							}
							, [ARTIFACT_EARTHSLIDERS] = {
								["Id"] = ARTIFACT_EARTHSLIDERS
								, ["Text"] = "/Text/Game/Artifacts/Earthsliders/Name.txt"
							}
						}
					}
					, [ARTIFACT_SHIELD_OF_WOLF_DUCHY] = {
					  ["Id"] = ARTIFACT_SHIELD_OF_WOLF_DUCHY
					  , ["Text"] = "/Text/TTH/Artifact/166-ShieldOfWolfDuchy/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_RING_OF_LIFE] = {
					      ["Id"] = ARTIFACT_RING_OF_LIFE
					      , ["Text"] = "/Text/TTH/Artifact/021-RingOfLife/Text.txt"
					    }
					    , [ARTIFACT_BEARHIDE_WRAPS] = {
					      ["Id"] = ARTIFACT_BEARHIDE_WRAPS
					      , ["Text"] = "/Text/TTH/Artifact/084-BearhideWraps/Text.txt"
					    }
					  }
					}
					, [ARTIFACT_GUARDIAN_03] = {
					  ["Id"] = ARTIFACT_GUARDIAN_03
					  , ["Text"] = "/Text/TTH/Artifact/122-Guardian03/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_ICEBERG_SHIELD] = {
					      ["Id"] = ARTIFACT_ICEBERG_SHIELD
					      , ["Text"] = "/Text/TTH/Artifact/009-IcebergShield/Text.txt"
					    }
					    , [ARTIFACT_DWARVEN_SMITHY_HUMMER] = {
					      ["Id"] = ARTIFACT_DWARVEN_SMITHY_HUMMER
					      , ["Text"] = "/Text/TTH/Artifact/085-DwarvenSmithyHummer/Text.txt"
					    }
					  }
					}
					, [ARTIFACT_INHERITANCE] = {
					  ["Id"] = ARTIFACT_INHERITANCE
					  , ["Text"] = "/Text/TTH/Artifact/115-Inheritance/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_FOUR_LEAF_CLOVER] = {
					      ["Id"] = ARTIFACT_FOUR_LEAF_CLOVER
					      , ["Text"] = "/Text/TTH/Artifact/008-FourLeafClover/Text.txt"
					    }
					    , [ARTIFACT_TAROT_DECK] = {
					      ["Id"] = ARTIFACT_TAROT_DECK
					      , ["Text"] = "/Text/TTH/Artifact/087-TarotDeck/Text.txt"
					    }
					    , [ARTIFACT_GOLDEN_SEXTANT] = {
					      ["Id"] = ARTIFACT_GOLDEN_SEXTANT
					      , ["Text"] = "/Text/TTH/Artifact/010-GoldenSextant/Text.txt"
					    }
					  }
					}
					, [ARTIFACT_PENDANT_OF_INTERFERENCE] = {
					  ["Id"] = ARTIFACT_PENDANT_OF_INTERFERENCE
					  , ["Text"] = "/Text/TTH/Artifact/174-PendantOfInterference/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_EDGE_OF_BALANCE] = {
					      ["Id"] = ARTIFACT_EDGE_OF_BALANCE
					      , ["Text"] = "/Text/TTH/Artifact/090-EdgeOfBalance/Text.txt"
					    }
					    , [ARTIFACT_RING_OF_LIGHTING_PROTECTION] = {
					      ["Id"] = ARTIFACT_RING_OF_LIGHTING_PROTECTION
					      , ["Text"] = "/Text/TTH/Artifact/020-RingOfLightingProtection/Text.txt"
					    }
					    , [ARTIFACT_SPIRIT_OF_OPPRESSION] = {
					      ["Id"] = ARTIFACT_SPIRIT_OF_OPPRESSION
					      , ["Text"] = "/Text/TTH/Artifact/175-SpiritOfOppression/Text.txt"
					    }
					  }
					}
					, [ARTIFACT_RING_OF_FORGOTTEN] = {
					  ["Id"] = ARTIFACT_RING_OF_FORGOTTEN
					  , ["Text"] = "/Text/TTH/Artifact/180-RingOfForgotten/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_BEGINNER_MAGIC_STICK] = {
					      ["Id"] = ARTIFACT_BEGINNER_MAGIC_STICK
					      , ["Text"] = "/Text/TTH/Artifact/080-BeginnerMagicStick/Text.txt"
					    }
					    , [ARTIFACT_RIGID_MANTLE] = {
					      ["Id"] = ARTIFACT_RIGID_MANTLE
					      , ["Text"] = "/Text/TTH/Artifact/062-RigidMantle/Text.txt"
					    }
					  }
					}
					, [ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT] = {
					  ["Id"] = ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT
					  , ["Text"] = "/Text/TTH/Artifact/168-HelmetOfHeavenlyEnlightenment/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING] = {
					      ["Id"] = ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING
					      , ["Text"] = "/Text/TTH/Artifact/002-GreatAxeOfGiantSlaying/Text.txt"
					    }
					    , [ARTIFACT_CROWN_OF_MANY_EYES] = {
					      ["Id"] = ARTIFACT_CROWN_OF_MANY_EYES
					      , ["Text"] = "/Text/TTH/Artifact/012-CrownOfManyEyes/Text.txt"
					    }
					    , [ARTIFACT_VALORIOUS_ARMOR] = {
					      ["Id"] = ARTIFACT_VALORIOUS_ARMOR
					      , ["Text"] = "/Text/TTH/Artifact/056-ValoriousArmor/Text.txt"
					    }
					    , [ARTIFACT_STEADFAST] = {
					      ["Id"] = ARTIFACT_STEADFAST
					      , ["Text"] = "/Text/TTH/Artifact/110-Steadfast/Text.txt"
					    }
					  }
					}
					, [ARTIFACT_BOOK_OF_MALASSA] = {
					  ["Id"] = ARTIFACT_BOOK_OF_MALASSA
					  , ["Text"] = "/Text/TTH/Artifact/147-BookOfMalassa/Text.txt"
					  , ["Component"] = {
					    [ARTIFACT_JINXING_BAND] = {
					      ["Id"] = ARTIFACT_JINXING_BAND
					      , ["Text"] = "/Text/TTH/Artifact/063-JinxingBand/Text.txt"
					    }
					    , [ARTIFACT_BONESTUDDED_LEATHER] = {
					      ["Id"] = ARTIFACT_BONESTUDDED_LEATHER
					      , ["Text"] = "/Text/TTH/Artifact/064-BonestuddedLeather/Text.txt"
					    }
					    , [ARTIFACT_RING_OF_THE_SHADOWBRAND] = {
					      ["Id"] = ARTIFACT_RING_OF_THE_SHADOWBRAND
					      , ["Text"] = "/Text/TTH/Artifact/073-RingOfTheShadowbrand/Text.txt"
					    }
					    , [ARTIFACT_BOOK_OF_POWER] = {
					      ["Id"] = ARTIFACT_BOOK_OF_POWER
					      , ["Text"] = "/Text/TTH/Artifact/094-BookOfPower/Text.txt"
					    }
					    , [ARTIFACT_RING_OF_FORGOTTEN] = {
					      ["Id"] = ARTIFACT_RING_OF_FORGOTTEN
					      , ["Text"] = "/Text/TTH/Artifact/180-RingOfForgotten/Text.txt"
					    }
					  }
					}
				};

				-- 入口
					function TTH_MANAGE.dealCombineArtifact(iPlayer, strHero)
						TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["CombineArtifact"]["Text"]);

						TTH_MANAGE.checkPreCombineArtifact4Exist(iPlayer, strHero);
					end;

				-- 构造宝物合成选项
					function TTH_MANAGE.checkPreCombineArtifact4Exist(iPlayer, strHero)
						local i = 1;
						local arrOption = {};
						for iIndexComponent, objComponent in TTH_TABLE.CombineArtifact do
							local iCountComponent = length(objComponent["Component"]);
							local iCountHasArtifact = 0;
							for iIndexArtifact, objArtifact in objComponent["Component"] do
								if HasArtefact(strHero, objArtifact["Id"], 0) ~= nil then
									iCountHasArtifact = iCountHasArtifact + 1;
								end;
							end;
							if iCountComponent == iCountHasArtifact then
								arrOption[i] = {
									["Id"] = objComponent["Id"]
									, ["Text"] = objComponent["Text"]
									, ["Callback"] = "TTH_MANAGE.implCombineArtifact"
								};
								i = i + 1;
							end;
						end;

						if length(arrOption) == 0 then
							local strText = TTH_TABLE.KingManagePath["CombineArtifact"]["HasNotOption"]["Text"];
			  			TTH_GLOBAL.sign(strHero, strText);
							return nil;
						end;

						local strTextTips = TTH_TABLE.KingManagePath["CombineArtifact"]["RadioTips"]["Text"];
						TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strTextTips);
					end;

				-- 合成
					function TTH_MANAGE.implCombineArtifact(iPlayer, strHero, iArtifactId)
						local objComponent = TTH_TABLE.CombineArtifact[iArtifactId];
						local strArtifactName = objComponent["Text"];
						for iIndexArtifact, objArtifact in objComponent["Component"] do
							RemoveArtefact(strHero, objArtifact["Id"]);
						end;
						GiveArtefact(strHero, objComponent["Id"]);

						local strPathMain = {
							TTH_TABLE.KingManagePath["CombineArtifact"]["Success"]["Text"]
							;strArtifactName=strArtifactName
						};
						TTH_GLOBAL.sign(strHero, strPathMain);
					end;

			-- 指定英雄
				TTH_VARI.hireHero = {};
				function TTH_MANAGE.initHireHero()
					TTH_VARI.hireHero = {
						["Race"] = TTH_ENUM.Default
						, ["Class"] = TTH_ENUM.Default
						, ["Hero"] = TTH_ENUM.Default
					};
				end;
				function TTH_MANAGE.dealHireHero(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["HireHero"]["Text"]);

					TTH_MANAGE.initHireHero();
					TTH_MANAGE.radioHireHero4Race(iPlayer, strHero);
				end;
				function TTH_MANAGE.radioHireHero4Race(iPlayer, strHero)
					local arrOption4HireHero4Race = {};
					local i = 1;
					local strCallback = "TTH_MANAGE.radioHireHero4Class";
					for iHeroRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
						arrOption4HireHero4Race[i] = {
							["Id"] = iHeroRace
							, ["Text"] = TTH_PATH.Race[iHeroRace]
							, ["Callback"] = strCallback
						};
						i = i + 1;
					end;
					local strRadioTips = TTH_TABLE.KingManagePath["HireHero"]["RaceRadioTips"]["Text"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption4HireHero4Race, strRadioTips);
				end;
				function TTH_MANAGE.radioHireHero4Class(iPlayer, strHero, iHeroRace)
					TTH_VARI.hireHero["Race"] = iHeroRace;
					local arrOption4HireHero4Class = {};
					local i = 1;
					local strCallback = "TTH_MANAGE.radioHireHero4Hero";
					for iHeroClass, objHeroClass in TTH_TABLE.Hero8RaceAndClass[iHeroRace] do
						arrOption4HireHero4Class[i] = {
							["Id"] = iHeroClass
							, ["Text"] = TTH_PATH.HeroClass[iHeroClass]
							, ["Callback"] = strCallback
						};
						i = i + 1;
					end;
					local strRadioTips = TTH_TABLE.KingManagePath["HireHero"]["ClassRadioTips"]["Text"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption4HireHero4Class, strRadioTips);
				end;
				function TTH_MANAGE.radioHireHero4Hero(iPlayer, strHero, iHeroClass)
					TTH_VARI.hireHero["Class"] = iHeroClass;
					TTH_VARI.arrTeleportTown8Class = {};
					local arrOption4HireHero4Hero = {};
					local i = 1;
					local strCallback = "TTH_MANAGE.checkPreHireHero4HasExist";
					for iHeroIndex, strHero in TTH_TABLE.Hero8RaceAndClass[TTH_VARI.hireHero["Race"]][iHeroClass] do
						arrOption4HireHero4Hero[i] = {
							["Id"] = iHeroIndex
							, ["Text"] = TTH_TABLE.Hero[strHero]["Text"]
							, ["Callback"] = strCallback
						};
						i = i + 1;
					end;
					local strRadioTips = TTH_TABLE.KingManagePath["HireHero"]["HeroRadioTips"]["Text"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption4HireHero4Hero, strRadioTips);
				end;
				function TTH_MANAGE.checkPreHireHero4HasExist(iPlayer, strHero, iHeroIndex)
					local iHeroRace = TTH_VARI.hireHero["Race"];
					local iHeroClass = TTH_VARI.hireHero["Class"];
					TTH_VARI.hireHero["Hero"] = TTH_TABLE.Hero8RaceAndClass[iHeroRace][iHeroClass][iHeroIndex];
					for iPlayer = PLAYER_1, PLAYER_8 do
						local arrHero = GetPlayerHeroes(iPlayer);
						for iIndexHero, strExistHero in arrHero do
							if strExistHero == TTH_VARI.hireHero["Hero"] then
								local strText = TTH_TABLE.KingManagePath["HireHero"]["HasExist"]["Text"];
								TTH_GLOBAL.sign(strHero, strText);
								return nil;
							end;
						end;
					end;

					TTH_MANAGE.comfirmHireHero(iPlayer, strHero);
				end;
      	function TTH_MANAGE.comfirmHireHero(iPlayer, strHero)
					local strHireHero = TTH_VARI.hireHero["Hero"];
					local strHireHeroName = TTH_TABLE.Hero[strHireHero]["Text"];

					local strText = {
						TTH_TABLE.KingManagePath["HireHero"]["Confirm"]["Text"]
						;strHireHeroName=strHireHeroName
					};
					local strCallbackOk = "TTH_MANAGE.implHireHero("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
      	end;
      	function TTH_MANAGE.implHireHero(iPlayer, strHero)
					local strHireHero = TTH_VARI.hireHero["Hero"];
					local strHireHeroName = TTH_TABLE.Hero[strHireHero]["Text"];
					print("strHireHero: ");
					print(strHireHero);

      		TTH.hero1(iPlayer, strHireHero);
      		local strText = {
						TTH_TABLE.KingManagePath["HireHero"]["Success"]["Text"]
						;strHireHeroName=strHireHeroName
					};
      		TTH_GLOBAL.sign(strHero, strText);
      	end;

			-- 激活多人脚本
				function TTH_MANAGE.enableMultiScript(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_TABLE.KingManagePath["EnableMultiScript"]["Text"]);

					if TTH_VARI.switchSingleton == 0 then
						TTH_VARI.switchSingleton = 1;
						TTH_TABLE.KingManageOption[7] = nil;
						startThread(TTH_GLOBAL.startUpMultiPlayer);
						startThread(TTH_MAIN.init);
						TTH_COMMON.consoleSetGameVar("TTH_Var_SwitchSingleton", TTH_VARI.switchSingleton);
					end;
				end;

		-- 定点回城
			-- 传送状态开关
				TTH_ENUM.TownManageTeleportTown4TeleportStart = 1;
				TTH_ENUM.TownManageTeleportTown4TeleportEnd = 2;
				TTH_VARI.bTownManageTeleportTown4TeleportStatus = TTH_ENUM.TownManageTeleportTown4TeleportEnd;

			-- 参数
				TTH_VARI.teleportTown = ""; -- 玩家选择了将要传送的城镇
				TTH_VARI.arrTeleportTown = {}; -- 玩家城镇中已设立了传送点的城镇列表
				TTH_VARI.arrTeleportTown8Race = {}; -- 玩家城镇中已设立了传送点的城镇列表 按种族分类

				TTH_ENUM.TownManageTeleport2AppointTown8Res = 1;
				TTH_ENUM.TownManageTeleport2AppointTown8Mana = 2;
				TTH_ENUM.TownManageTeleport2AppointTown8Gold = 1;
				TTH_ENUM.TownManageTeleport2AppointTown8Move = 2;
				TTH_VARI.teleport2AppointTownChosenResOrMana = 1;
				TTH_VARI.teleport2AppointTownChosenGoldOrMove = 1;
				TTH_VARI.teleport2AppointTownUnitRes = 5;
				TTH_VARI.teleport2AppointTownLimitMana = 5;
				TTH_VARI.teleport2AppointTownLimitMove = 50;

			-- 传送状态: 开启
				function TTH_MANAGE.startStatusTeleport2AppointTown()
					TTH_VARI.bTownManageTeleportTown4TeleportStatus = TTH_ENUM.TownManageTeleportTown4TeleportStart;
				end;
			-- 传送状态: 关闭
				function TTH_MANAGE.endStatusTeleport2AppointTown()
					TTH_VARI.bTownManageTeleportTown4TeleportStatus = TTH_ENUM.TownManageTeleportTown4TeleportEnd;
				end;

			-- 入口
				function TTH_MANAGE.dealTeleport2AppointTown(strHero)
					TTH_COMMON.initNavi(TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["Text"]);

					local iPlayer = GetObjectOwner(strHero);
					TTH_MANAGE.checkPreTeleport2AppointTown4HasTeleportTown(iPlayer, strHero);
				end;

			-- 前置查验
				-- 玩家是否有已设立传送点的城镇
					function TTH_MANAGE.checkPreTeleport2AppointTown4HasTeleportTown(iPlayer, strHero)
						TTH_VARI.arrTeleportTown = TTH_MANAGE.listTeleportTown(iPlayer);
						if TTH_VARI.arrTeleportTown == nil or length(TTH_VARI.arrTeleportTown) == 0 then
							local strText = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["NoTeleportTown"]["Text"];
							TTH_GLOBAL.sign(strHero, strText);
							return nil;
						end;
						TTH_MANAGE.radioTeleport2AppointTown4Race(iPlayer, strHero);
					end;

				-- 选择要传送城镇的种族
					function TTH_MANAGE.radioTeleport2AppointTown4Race(iPlayer, strHero)
						TTH_VARI.arrTeleportTown8Race = {};
						local arrTeleportRaceOption = {};
						local i = 1;
						local strCallback = "TTH_MANAGE.cameraTeleport2AppointTown4Town";
						for iIndexTown, strTown in TTH_VARI.arrTeleportTown do
							local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
							if TTH_VARI.arrTeleportTown8Race[iTownRace] == nil then
								arrTeleportRaceOption[i] = {
									["Id"] = iTownRace
									, ["Text"] = TTH_PATH.Race[iTownRace]
									, ["Callback"] = strCallback
								};
								i = i + 1;
								TTH_VARI.arrTeleportTown8Race[iTownRace] = {
									[0] = strTown
								};
							else
								TTH_VARI.arrTeleportTown8Race[iTownRace] = TTH_COMMON.push(TTH_VARI.arrTeleportTown8Race[iTownRace], strTown);
							end;
						end;
						TTH_COMMON.optionRadio(iPlayer, strHero, arrTeleportRaceOption);
					end;

				-- 选择要传送的城镇<视角定位>
					function TTH_MANAGE.cameraTeleport2AppointTown4Town(iPlayer, strHero, iTownRace)
						local arrTown = TTH_VARI.arrTeleportTown8Race[iTownRace];
						local iManaPoint = GetHeroStat(strHero, STAT_MANA_POINTS);
						local iMovePoint = GetHeroStat(strHero, STAT_MOVE_POINTS);

						TTH_MANAGE.startStatusTeleport2AppointTown();
						for iIndexTown, strTown in arrTown do
							if TTH_VARI.bTownManageTeleportTown4TeleportStatus == TTH_ENUM.TownManageTeleportTown4TeleportStart then
								-- 视角定位
									local iPosX, iPosY, iPosZ = GetObjectPosition(strTown);
									MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
									sleep(2);

								local strPathMain = {
									TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["ConfirmTown"]["Text"]
									;iPosX=iPosX
									,iPosY=iPosY
									,iPosZ=TTH_PATH.Basic["PosZ"][iPosZ]
									,iManaPoint=iManaPoint
									,iMovePoint=iMovePoint
								};
								local strCallbackOk = "TTH_MANAGE.checkPreTeleport2AppointTown4GarrisonHero("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
								local strCallbackCancel = "TTH_COMMON.wakeup()";
								TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
								TTH_COMMON.sleep();
							end;
						end;
					end;


				-- 确认内城是否有英雄
					function TTH_MANAGE.checkPreTeleport2AppointTown4GarrisonHero(iPlayer, strHero, strTown)
						if TTH_GLOBAL.isGarrisonHasHero(iPlayer, strTown) == 1 then
							local strText = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["HeroInGarrison"]["Text"];
							TTH_GLOBAL.sign(strHero, strText);
							TTH_MANAGE.endStatusTeleport2AppointTown();
							TTH_COMMON.wakeup();
							return nil;
						end;
						TTH_VARI.teleportTown = strTown;
						TTH_MANAGE.checkPreTeleport2AppointTown4ResOrMana(iPlayer, strHero);
					end;

				-- 玩家选择消耗资源or魔法值
					TTH_TABLE.TownManageTeleport2AppointTown4ResOrManaOption = {
						[1] = {
							["Id"] = TTH_ENUM.TownManageTeleport2AppointTown8Res
							, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["ResTip"]["Text"]
							, ["Callback"] = "TTH_MANAGE.checkPreTeleport2AppointTown4Res"
						}
						, [2] = {
							["Id"] = TTH_ENUM.TownManageTeleport2AppointTown8Mana
							, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["ManaTip"]["Text"]
							, ["Callback"] = "TTH_MANAGE.checkPreTeleport2AppointTown4Mana"
						}
					};
					function TTH_MANAGE.checkPreTeleport2AppointTown4ResOrMana(iPlayer, strHero)
						TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.TownManageTeleport2AppointTown4ResOrManaOption);
					end;

				-- 是否有足够的资源
					function TTH_MANAGE.checkPreTeleport2AppointTown4Res(iPlayer, strHero)
						TTH_VARI.teleport2AppointTownChosenResOrMana = TTH_ENUM.TownManageTeleport2AppointTown8Res;
						local iCountMercury = TTH_VARI.teleport2AppointTownUnitRes * 1;
						local iCountCrystal = TTH_VARI.teleport2AppointTownUnitRes * 1;
						local iCountSulphur = TTH_VARI.teleport2AppointTownUnitRes * 1;
						local iCountGem = TTH_VARI.teleport2AppointTownUnitRes * 1;
						if iCountMercury > GetPlayerResource(iPlayer, MERCURY)
							or iCountCrystal > GetPlayerResource(iPlayer, CRYSTAL)
							or iCountSulphur > GetPlayerResource(iPlayer, SULFUR)
							or iCountGem > GetPlayerResource(iPlayer, GEM) then
							local strText = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["NotEnoughRes"]["Text"];
							TTH_GLOBAL.sign(strHero, strText);

							TTH_MANAGE.endStatusTeleport2AppointTown();
							TTH_COMMON.wakeup();
							local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
							MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
							sleep(2);

							return nil;
						end;

						TTH_MANAGE.checkPreTeleport2AppointTown4GoldOrMove(iPlayer, strHero);
					end;

				-- 是否有足够的魔法值
					function TTH_MANAGE.checkPreTeleport2AppointTown4Mana(iPlayer, strHero)
						TTH_VARI.teleport2AppointTownChosenResOrMana = TTH_ENUM.TownManageTeleport2AppointTown8Mana;
						local iManaPoint = GetHeroStat(strHero, STAT_MANA_POINTS);
						if iManaPoint < TTH_VARI.teleport2AppointTownLimitMana then
							local strText = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["NotEnoughMana"]["Text"];
							TTH_GLOBAL.sign(strHero, strText);

							TTH_MANAGE.endStatusTeleport2AppointTown();
							TTH_COMMON.wakeup();
							local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
							MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
							sleep(2);

							return nil;
						end;

						TTH_MANAGE.checkPreTeleport2AppointTown4GoldOrMove(iPlayer, strHero);
					end;

				-- 玩家选择消耗金币or移动力
					TTH_TABLE.TownManageTeleport2AppointTown4GoldOrMoveOption = {
						[1] = {
							["Id"] = TTH_ENUM.TownManageTeleport2AppointTown8Gold
							, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["GoldTip"]["Text"]
							, ["Callback"] = "TTH_MANAGE.checkPreTeleport2AppointTown4Gold"
						}
						, [2] = {
							["Id"] = TTH_ENUM.TownManageTeleport2AppointTown8Move
							, ["Text"] = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["MoveTip"]["Text"]
							, ["Callback"] = "TTH_MANAGE.checkPreTeleport2AppointTown4Move"
						}
					};

					function TTH_MANAGE.checkPreTeleport2AppointTown4GoldOrMove(iPlayer, strHero)
						TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.TownManageTeleport2AppointTown4GoldOrMoveOption);
					end;

				-- 是否有足够的金币
					function TTH_MANAGE.checkPreTeleport2AppointTown4Gold(iPlayer, strHero)
						TTH_VARI.teleport2AppointTownChosenGoldOrMove = TTH_ENUM.TownManageTeleport2AppointTown8Gold;

						local iCountGold = TTH_VARI.teleport2AppointTownUnitRes * 1000;
						if iCountGold > GetPlayerResource(iPlayer, GOLD) then
							local strText = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["NotEnoughGold"]["Text"];
							TTH_GLOBAL.sign(strHero, strText);

							TTH_MANAGE.endStatusTeleport2AppointTown();
							TTH_COMMON.wakeup();
							local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
							MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
							sleep(2);

							return nil;
						end;

						TTH_MANAGE.implTeleport2AppointTown(iPlayer, strHero);
					end;

				-- 是否有足够的移动力
					function TTH_MANAGE.checkPreTeleport2AppointTown4Move(iPlayer, strHero)
						TTH_VARI.teleport2AppointTownChosenGoldOrMove = TTH_ENUM.TownManageTeleport2AppointTown8Move;
						local iMovePoint = GetHeroStat(strHero, STAT_MOVE_POINTS);
						if iMovePoint < TTH_VARI.teleport2AppointTownLimitMove then
							local strText = TTH_TABLE.KingManagePath["TownManage"]["Teleport2AppointTown"]["NotEnoughMove"]["Text"];
							TTH_GLOBAL.sign(strHero, strText);

							TTH_MANAGE.endStatusTeleport2AppointTown();
							TTH_COMMON.wakeup();
							local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
							MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
							sleep(2);

							return nil;
						end;

						TTH_MANAGE.implTeleport2AppointTown(iPlayer, strHero);
					end;

			-- 执行定点回城
					function TTH_MANAGE.implTeleport2AppointTown(iPlayer, strHero)
						local strTown = TTH_VARI.teleportTown;

						-- 扣除资源/魔法值/金币/移动力
							if TTH_VARI.teleport2AppointTownChosenResOrMana == TTH_ENUM.TownManageTeleport2AppointTown8Res then
								local iCountMercury = TTH_VARI.teleport2AppointTownUnitRes * 1;
								local iCountCrystal = TTH_VARI.teleport2AppointTownUnitRes * 1;
								local iCountSulphur = TTH_VARI.teleport2AppointTownUnitRes * 1;
								local iCountGem = TTH_VARI.teleport2AppointTownUnitRes * 1;
								TTH_GLOBAL.reduceResource(iPlayer, MERCURY, iCountMercury);
								TTH_GLOBAL.reduceResource(iPlayer, CRYSTAL, iCountCrystal);
								TTH_GLOBAL.reduceResource(iPlayer, SULFUR, iCountSulphur);
								TTH_GLOBAL.reduceResource(iPlayer, GEM, iCountGem);
							else
								local iManaPoint = GetHeroStat(strHero, STAT_MANA_POINTS);
								ChangeHeroStat(strHero, STAT_MANA_POINTS, -1 * iManaPoint);
							end;
							if TTH_VARI.teleport2AppointTownChosenGoldOrMove == TTH_ENUM.TownManageTeleport2AppointTown8Gold then
								local iCountGold = TTH_VARI.teleport2AppointTownUnitRes * 1000;
								TTH_GLOBAL.reduceResource(iPlayer, GOLD, iCountGold);
							else
								local iMovePoint = GetHeroStat(strHero, STAT_MOVE_POINTS);
								ChangeHeroStat(strHero, STAT_MOVE_POINTS, -1 * iMovePoint);
							end;

						-- 执行传送
							TTH_MANAGE.endStatusTeleport2AppointTown();
							TTH_GLOBAL.teleHero2Point(iPlayer, strHero, strTown);
					end;

	-- trigger
		TTH_TRIGGER = {};

		function TTH_TRIGGER.errorHookTrigger()
			TTH_MAIN.listDebug[TTH_VARI.day] = TTH_COMMON.push(TTH_MAIN.listDebug[TTH_VARI.day], TTH_MAIN.recordDebug);
		end;

		-- 战斗结束触发器
			TTH_VARI.combatIndex = -1;
			function TTH_TRIGGER.combatResults(iCombatIndex)
				TTH_VARI.combatIndex = iCombatIndex;
				startThread(TTH_TRIGGER.thread4CombatResults);
			end;
			function TTH_TRIGGER.thread4CombatResults()
				local iCombatIndex = TTH_VARI.combatIndex;

				local iPlayerWinner = GetSavedCombatArmyPlayer(iCombatIndex, 1);
				local strHeroWinner = GetSavedCombatArmyHero(iCombatIndex, 1);

				TTH_MAIN.debug("TTH_TRIGGER.combatResults", iPlayerWinner, strHeroWinner);

				-- 胜利英雄
					if strHeroWinner ~= nil then
						-- 通用
							TTH_GLOBAL.dealRecoveryMana4Winner(iPlayerWinner, strHeroWinner); -- 战斗胜利后魔法值恢复
							TTH_GLOBAL.dealRecoveryMove4Winner(iPlayerWinner, strHeroWinner); -- 战斗胜利后移动力恢复
							TTH_GLOBAL.dealGainExp4Winner(iPlayerWinner, strHeroWinner); -- 战斗胜利后获得经验值
							TTH_GLOBAL.dealGainGold4Winner(iPlayerWinner, strHeroWinner); -- 战斗胜利后获得金币
							TTH_GLOBAL.dealGainRes4Winner(iPlayerWinner, strHeroWinner); -- 战斗胜利后资源

						TTH_TALENT.combatResultNikolay(iPlayerWinner, strHeroWinner, iCombatIndex); -- 尼科莱
						TTH_TALENT.combatResultCalid2(iPlayerWinner, strHeroWinner, iCombatIndex); -- 卡利德
						TTH_VISIT.combatResultMermaids(iPlayerWinner, strHeroWinner, iCombatIndex); -- 先知小屋

						for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncCombatResult] do
							if iKey == strHeroWinner then
								TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayerWinner, strHeroWinner, iCombatIndex);
							end;
						end;
						for iKey, objItem in TTH_TABLE.FuncArtifact[TTH_ENUM.FuncCombatResult] do
							if HasArtefact(strHeroWinner, iKey, objItem["NeedWear"]) then
								TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayerWinner, strHeroWinner, iCombatIndex);
							end;
						end;
						for iKey, objItem in TTH_TABLE.FuncPerk[TTH_ENUM.FuncCombatResult] do
							if HasHeroSkill(strHeroWinner, iKey) then
								TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayerWinner, strHeroWinner, iCombatIndex);
							end;
						end;
					end;

				-- 模块
					TTH_TRIGGER.interfaceCombatResults4LoseCreature(iCombatIndex);
					TTH_TRIGGER.interfaceCombatResults4ReviveCreature(iCombatIndex);
			end;

			-- 失去生物接口
				function TTH_TRIGGER.interfaceCombatResults4LoseCreature(iCombatIndex)
				end;

			-- 复活生物接口
				function TTH_TRIGGER.interfaceCombatResults4ReviveCreature(iCombatIndex)
				end;

		-- 英雄升级触发器
			TTH_VARI.heroLevelUp = "";
			TTH_VARI.filterHeroLevelUp = {};
			function TTH_TRIGGER.heroLevelUp(strHero)
				local iHeroLevel = GetHeroLevel(strHero);
				if TTH_VARI.filterHeroLevelUp[strHero] == nil
					or TTH_VARI.filterHeroLevelUp[strHero] < iHeroLevel then
					TTH_VARI.filterHeroLevelUp[strHero] = iHeroLevel;
					TTH_VARI.heroLevelUp = strHero;
					print(strHero.." level up to Lv."..iHeroLevel);

					TTH_GLOBAL.setGameVar4HeroLevel(strHero);
					TTH_GLOBAL.giveHero4Attribute(strHero);
					TTH_GLOBAL.dealSkillBonus8Hero(strHero);
					TTH_MANAGE.updateMaxOperTimes(strHero); -- 更新内政操作次数上限
					for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncLevelUp] do
						if iKey == strHero then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], strHero);
						end;
					end;
				end;
			end;

			doFile("/scripts/TTH_Trigger_HeroLevelUp.lua");

		-- 玩家招募英雄触发器
			TTH_VARI.hero8PlayerAdd = "";
			function TTH_TRIGGER.playerAddHero(strHero)
				print("Player add a Hero-"..strHero);
				TTH_VARI.hero8PlayerAdd = strHero;
				startThread(TTH_TRIGGER.thread4PlayerAddHero);
			end;
			function TTH_TRIGGER.thread4PlayerAddHero()
				local strHero = TTH_VARI.hero8PlayerAdd;

				TTH_MAIN.debug("TTH_TRIGGER.playerAddHero", nil, strHero);

				SetTrigger(HERO_LEVELUP_TRIGGER, strHero, "TTH_TRIGGER.heroLevelUp"..strHero);
				TTH_GLOBAL.initHero4Specialty(strHero);
				TTH_GLOBAL.bindHeroCustomAbility4Hero(strHero);
				TTH_GLOBAL.bindHeroCustomAbility3Hero(strHero);
				TTH_MANAGE.initMayor(strHero);
				TTH_GLOBAL.setGameVar4HeroLevel(strHero);
				TTH_GLOBAL.giveHero4Attribute(strHero);
				TTH_GLOBAL.dealSkillBonus8Hero(strHero);
				TTH_MANAGE.updateMaxOperTimes(strHero); -- 更新内政操作次数上限

				for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncInit] do
					if iKey == strHero then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], strHero);
					end;
				end;
			end;

		-- 玩家失去英雄触发器
			TTH_VARI.hero8PlayerRemove = "";
			TTH_VARI.heroWinner8PlayerRemove = "";
			function TTH_TRIGGER.playerRemoveHero(strHero, strHeroWinner)
				TTH_MAIN.debug("TTH_TRIGGER.playerRemoveHero", nil, strHero, strHeroWinner);

				print(strHero..' has defeated');
				TTH_VARI.hero8PlayerRemove = strHero;
				TTH_VARI.heroWinner8PlayerRemove = strHeroWinner;
				startThread(TTH_TRIGGER.thread4PlayerRemoveHero);
			end;
			function TTH_TRIGGER.thread4PlayerRemoveHero()
				local strHero = TTH_VARI.hero8PlayerRemove;
				local strHeroWinner = TTH_VARI.heroWinner8PlayerRemove;

				TTH_GLOBAL.removeGameVar4HeroArtifact(strHero);
				TTH_GLOBAL.removeGameVar4HeroArtifactSet(strHero);
				TTH_GLOBAL.removeGameVar4HeroSkill(strHero);
			end;

	-- 英雄天赋
		TTH_TALENT = {};

		-- 转化类英雄天赋
			TTH_VARI.castCreatureGcd = {};
			function TTH_TALENT.initCastCreature(strHero)
				TTH_MAIN.debug("TTH_TALENT.initCastCreature", nil, strHero);

				TTH_VARI.castCreatureGcd[strHero] = 0;
			end;
			function TTH_TALENT.activeCastCreature(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Talent["Cast"]["Hero"][strHero]);

				TTH_TALENT.checkPreActiveCastCreature4Gcd(iPlayer, strHero);
			end;
			function TTH_TALENT.checkPreActiveCastCreature4Gcd(iPlayer, strHero)
				local iGcd = TTH_VARI.castCreatureGcd[strHero];
    		if iGcd > 0 then
    			local strCastType = TTH_PATH.CastCreatureType[TTH_TABLE.CastCreature[strHero]["CastType"]];
    			local strPathMain = {
    				TTH_PATH.Talent["Cast"]["InGcd"]
    				;iGcd=iGcd
    				,strCastType=strCastType
    			};
    			TTH_GLOBAL.sign(strHero, strPathMain);
    			return nil;
    		end;

    		TTH_TALENT.checkPreActiveCastCreature4CreatureExsit(iPlayer, strHero);
    	end;
			function TTH_TALENT.checkPreActiveCastCreature4CreatureExsit(iPlayer, strHero)
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				local arrPreCreature = TTH_TABLE.CastCreature[strHero]["PreCreature"];
				local iCreatureNumber4Hero = 0;
				local i = 1;
				local arrOption = {};
				for iIndexSlot = 0, 6 do
					local iSlotCreatureId = arrCreature4Hero[iIndexSlot]["Id"];
					for iPreCreatureId, objPreCreature in arrPreCreature do
						if iPreCreatureId == iSlotCreatureId then
							arrOption[i] = {
								["Id"] = iSlotCreatureId
								, ["Text"] = TTH_TABLE_NCF_CREATURES[iPreCreatureId]["NAME"]
								, ["Callback"] = "TTH_TALENT.checkPreActiveCastCreature4Limit"
							};
							i = i + 1;
						end;
					end;
				end;

				if length(arrOption) == 0 then
					local strCastType = TTH_PATH.CastCreatureType[TTH_TABLE.CastCreature[strHero]["CastType"]];
					local strPathMain = {
						TTH_PATH.Talent["Cast"]["NoSuitableCreature"]
						;strCastType=strCastType
					};
    			TTH_GLOBAL.sign(strHero, strPathMain);
					return nil;
				end;

				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
			end;
			function TTH_TALENT.checkPreActiveCastCreature4Limit(iPlayer, strHero, iPreCreatureId)
				local iHeroLevel = GetHeroLevel(strHero);
				local objPreCreature = TTH_TABLE.CastCreature[strHero]["PreCreature"][iPreCreatureId];
				local arrRes = {};
				arrRes[WOOD] = GetPlayerResource(iPlayer, WOOD);
				arrRes[ORE] = GetPlayerResource(iPlayer, ORE);
				arrRes[MERCURY] = GetPlayerResource(iPlayer, MERCURY);
				arrRes[CRYSTAL] = GetPlayerResource(iPlayer, CRYSTAL);
				arrRes[SULFUR] = GetPlayerResource(iPlayer, SULFUR);
				arrRes[GEM] = GetPlayerResource(iPlayer, GEM);
				arrRes[GOLD] = GetPlayerResource(iPlayer, GOLD);

				-- 根据 转化前后生物比例 计算 可转化生物数量
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					local iPreCreatureCount = 0;
					for iIndexSlot = 0, 6 do
						if iPreCreatureId == arrCreature4Hero[iIndexSlot]["Id"] then
							iPreCreatureCount = arrCreature4Hero[iIndexSlot]["Count"];
							break;
						end;
					end;
					local iCountCreature8Scale = TTH_COMMON.floor(iPreCreatureCount / objPreCreature["Scale"]);

				-- 根据 英雄等级 计算 可转化生物数量（至少为1）
					local iCountCreature8Step = TTH_COMMON.floor(iHeroLevel / objPreCreature["HeroStep"]) + 1;

				-- 根据 玩家资源及转化单个生物消耗 计算 可转化生物数量
					for i = WOOD, GOLD do
						if objPreCreature["Res"][i] == 0 then
							arrRes[i] = TTH_FINAL.NUM_MAX;
						else
							arrRes[i] = TTH_COMMON.floor(arrRes[i] / objPreCreature["Res"][i]);
						end;
					end;
					local iCountCreature8Res = TTH_COMMON.min(arrRes);
					local iPostCreatureNum = TTH_COMMON.min({iCountCreature8Scale, iCountCreature8Step, iCountCreature8Res});

				if iPostCreatureNum <= 0 then
					local strCastType = TTH_PATH.CastCreatureType[TTH_TABLE.CastCreature[strHero]["CastType"]];
					local strPathMain = {
						TTH_PATH.Talent["Cast"]["Limit"]
						;strCastType=strCastType
					};
    			TTH_GLOBAL.sign(strHero, strPathMain);
					return nil;
				end;

				TTH_TALENT.confirmActiveCastCreature(iPlayer, strHero, iPreCreatureId, iPostCreatureNum);
			end;
			function TTH_TALENT.confirmActiveCastCreature(iPlayer, strHero, iPreCreatureId, iPostCreatureNum)
				local objPreCreature = TTH_TABLE.CastCreature[strHero]["PreCreature"][iPreCreatureId];
				local strCastType = TTH_PATH.CastCreatureType[TTH_TABLE.CastCreature[strHero]["CastType"]];
				local iPreCreatureNum = iPostCreatureNum * objPreCreature["Scale"];
				local strPreCreatureName = TTH_TABLE_NCF_CREATURES[iPreCreatureId]["NAME"];
				local iPostCreatureId = objPreCreature["PostCreatureId"];
				local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iPostCreatureId]["NAME"];
				local objRes = objPreCreature["Res"];
				local iCountWood = iPostCreatureNum * objRes[WOOD];
				local iCountOre = iPostCreatureNum * objRes[ORE];
				local iCountMercury = iPostCreatureNum * objRes[MERCURY];
				local iCountCrystal = iPostCreatureNum * objRes[CRYSTAL];
				local iCountSulfur = iPostCreatureNum * objRes[SULFUR];
				local iCountGem = iPostCreatureNum * objRes[GEM];
				local iCountGold = iPostCreatureNum * objRes[GOLD];
				local iMaxGcd = objPreCreature["MaxGcd"];

				local strPathMain={
					TTH_PATH.Talent["Cast"]["Confirm"]
					;strCastType=strCastType
					,iPreCreatureNum=iPreCreatureNum
					,strPreCreatureName=strPreCreatureName
					,iPostCreatureNum=iPostCreatureNum
					,strPostCreatureName=strPostCreatureName
					,iCountWood=iCountWood
					,iCountOre=iCountOre
					,iCountMercury=iCountMercury
					,iCountCrystal=iCountCrystal
					,iCountSulfur=iCountSulfur
					,iCountGem=iCountGem
					,iCountGold=iCountGold
					,iMaxGcd=iMaxGcd
				};
				local strCallbackOk = "TTH_TALENT.implActiveCastCreature("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iPreCreatureId..","..iPostCreatureNum..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_TALENT.implActiveCastCreature(iPlayer, strHero, iPreCreatureId, iPostCreatureNum)
				local objPreCreature = TTH_TABLE.CastCreature[strHero]["PreCreature"][iPreCreatureId];
				local strCastType = TTH_PATH.CastCreatureType[TTH_TABLE.CastCreature[strHero]["CastType"]];
				local iPreCreatureNum = iPostCreatureNum * objPreCreature["Scale"];
				local strPreCreatureName = TTH_TABLE_NCF_CREATURES[iPreCreatureId]["NAME"];
				local iPostCreatureId = objPreCreature["PostCreatureId"];
				local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iPostCreatureId]["NAME"];
				local objRes = objPreCreature["Res"];
				local iCountWood = iPostCreatureNum * objRes[WOOD];
				local iCountOre = iPostCreatureNum * objRes[ORE];
				local iCountMercury = iPostCreatureNum * objRes[MERCURY];
				local iCountCrystal = iPostCreatureNum * objRes[CRYSTAL];
				local iCountSulfur = iPostCreatureNum * objRes[SULFUR];
				local iCountGem = iPostCreatureNum * objRes[GEM];
				local iCountGold = iPostCreatureNum * objRes[GOLD];
				local iMaxGcd = objPreCreature["MaxGcd"];

				local strPathMain={
					TTH_PATH.Talent["Cast"]["Success"]
					;strCastType=strCastType
					,iPreCreatureNum=iPreCreatureNum
					,strPreCreatureName=strPreCreatureName
					,iPostCreatureNum=iPostCreatureNum
					,strPostCreatureName=strPostCreatureName
					,iCountWood=iCountWood
					,iCountOre=iCountOre
					,iCountMercury=iCountMercury
					,iCountCrystal=iCountCrystal
					,iCountSulfur=iCountSulfur
					,iCountGem=iCountGem
					,iCountGold=iCountGold
					,iMaxGcd=iMaxGcd
				};
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);

				TTH_GLOBAL.reduceResource(iPlayer, WOOD, iCountWood);
				TTH_GLOBAL.reduceResource(iPlayer, ORE, iCountOre);
				TTH_GLOBAL.reduceResource(iPlayer, MERCURY, iCountMercury);
				TTH_GLOBAL.reduceResource(iPlayer, CRYSTAL, iCountCrystal);
				TTH_GLOBAL.reduceResource(iPlayer, SULFUR, iCountSulfur);
				TTH_GLOBAL.reduceResource(iPlayer, GEM, iCountGem);
				TTH_GLOBAL.reduceResource(iPlayer, GOLD, iCountGold);
				TTH_GLOBAL.replaceCreature4Hero(strHero, iPreCreatureId, iPreCreatureNum, iPostCreatureId, iPostCreatureNum);
				TTH_VARI.castCreatureGcd[strHero] = iMaxGcd;
			end;
			function TTH_TALENT.combatResultCastCreature(iPlayer, strHero, iCombatIndex)
				TTH_MAIN.debug("TTH_TALENT.combatResultCastCreature", iPlayer, strHero, iCombatIndex);

				TTH_TALENT.reduceGcdCastCreature(iPlayer, strHero);
			end;
			function TTH_TALENT.resetDailyCastCreature(iPlayer, strHero)
				TTH_MAIN.debug("TTH_TALENT.resetDailyCastCreature", iPlayer, strHero);

				TTH_TALENT.reduceGcdCastCreature(iPlayer, strHero);
			end;
			function TTH_TALENT.reduceGcdCastCreature(iPlayer, strHero)
				if TTH_VARI.castCreatureGcd[strHero] > 0 then
					TTH_VARI.castCreatureGcd[strHero] = TTH_VARI.castCreatureGcd[strHero] - 1;
				end;
				local strPathMain = "";
				local strCastType = TTH_PATH.CastCreatureType[TTH_TABLE.CastCreature[strHero]["CastType"]];
				local iGcd = TTH_VARI.castCreatureGcd[strHero];
				if iGcd > 0 then
					strPathMain = {
						TTH_PATH.Talent["Cast"]["CantCast"]
						;strCastType=strCastType
						,iGcd=iGcd
					};
				else
					strPathMain = {
						TTH_PATH.Talent["Cast"]["CanCast"]
						;strCastType=strCastType
					};
				end;
  			TTH_GLOBAL.sign(strHero, strPathMain);
			end;

		-- Heaven
      -- Nathaniel 001 埃兰妮
      	function TTH_TALENT.initNathaniel(strHero)
					TTH_MAIN.debug("TTH_TALENT.initNathaniel", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["UsedTimes"] = 0
					};
      	end;
      	function TTH_TALENT.activeNathaniel(iPlayer, strHero)
      		TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreActiveNathaniel4Creature(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveNathaniel4Creature(iPlayer, strHero)
					local iTimes = TTH_VARI.talent[strHero]["UsedTimes"] + 1;
					local iRequireCreatureNumber = 10;
					for i = 1, iTimes do
						iRequireCreatureNumber = iRequireCreatureNumber * 2;
					end;

					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					local iCreatureNumber4Hero = 0;
					for iIndexSlot = 0, 6 do
						for j = 1, 3 do
							if arrCreature4Hero[iIndexSlot]["Id"] == TTH_TABLE.Creature8RaceAndLevel[TOWN_HEAVEN][1][j] then
								iCreatureNumber4Hero = iCreatureNumber4Hero + arrCreature4Hero[iIndexSlot]["Count"];
							end;
						end;
					end;

      		if iCreatureNumber4Hero < iRequireCreatureNumber then
	    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughCreature"]);
	    			return nil;
      		end;

      		TTH_TALENT.comfirmActiveNathaniel(iPlayer, strHero, iTimes, iRequireCreatureNumber, iCreatureNumber4Hero);
      	end;
      	function TTH_TALENT.comfirmActiveNathaniel(iPlayer, strHero, iTimes, iRequireCreatureNumber, iCreatureNumber4Hero)
					local iCreatureId = TTH_TABLE.Creature8RaceAndLevel[TOWN_HEAVEN][1][1];
					local iCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];

					local strPathMain={
						TTH_PATH.Talent[strHero]["ConfirmActive"]
						;iTimes=iTimes
						,iCreatureName=iCreatureName
						,iRequireCreatureNumber=iRequireCreatureNumber
						,iCreatureNumber4Hero=iCreatureNumber4Hero
					};
					local strCallbackOk = "TTH_TALENT.implActiveNathaniel("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
      	end;
      	function TTH_TALENT.implActiveNathaniel(iPlayer, strHero)
					local iTimes = TTH_VARI.talent[strHero]["UsedTimes"] + 1;
					local iRequireCreatureNumber = 10;
					local strPath = TTH_PATH.Talent[strHero]["LoseCreature"];
					for i = 1, iTimes do
						iRequireCreatureNumber = iRequireCreatureNumber * 2;
					end;

					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					for iIndexSlot = 0, 6 do
						for j = 1, 3 do
							if iRequireCreatureNumber > 0
								and arrCreature4Hero[iIndexSlot]["Id"] == TTH_TABLE.Creature8RaceAndLevel[TOWN_HEAVEN][1][j] then
								local iCreatureId = arrCreature4Hero[iIndexSlot]["Id"];
								if iRequireCreatureNumber >= arrCreature4Hero[iIndexSlot]["Count"] then
									local iCreatureNumber = arrCreature4Hero[iIndexSlot]["Count"];
									TTH_GLOBAL.reduceCreature4Hero8Sign(strHero, iCreatureId, iCreatureNumber, strPath);
									iRequireCreatureNumber = iRequireCreatureNumber - iCreatureNumber;
								else
									local iCreatureNumber = iRequireCreatureNumber;
									TTH_GLOBAL.reduceCreature4Hero8Sign(strHero, iCreatureId, iCreatureNumber, strPath);
									iRequireCreatureNumber = 0;
								end;
							end;
						end;
					end;

					TTH_MANAGE.addMaxOperTimes(strHero);
					TTH_VARI.talent[strHero]["UsedTimes"] = TTH_VARI.talent[strHero]["UsedTimes"] + 1;
					local strText = TTH_PATH.Talent[strHero]["Success"];
    			TTH_GLOBAL.sign(strHero, strText);
      	end;
      	function TTH_TALENT.resetWeeklyNathaniel(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyNathaniel", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["UsedTimes"] = 0;
      	end;

      -- Isabell 006 伊莎贝尔
      	function TTH_TALENT.calcTownValueIsabell(strHero, arrTown)
					TTH_MAIN.debug("TTH_TALENT.calcTownValueIsabell", nil, strHero, arrTown);

					local iTownValue = 0;
					local strHeroIsabell = "Isabell";
					if strHero == strHeroIsabell then
						iTownValue = length(arrTown) * 20;
					end;
					return iTownValue;
      	end;

			-- Brem 010 拉特格
				function TTH_TALENT.initBrem(strHero)
					TTH_MAIN.debug("TTH_TALENT.initBrem", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["BonusLevel"] = 0
						, ["Stables"] = {}
						, ["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
				end;
				function TTH_TALENT.activeBrem(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreActiveBrem4Times(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveBrem4Times(iPlayer, strHero)
					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
					if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
						if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
							if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, strText);
			  				return nil;
							end;
						else
			  			TTH_GLOBAL.sign(strHero, strText);
							return nil;
			  		end;
					end;

					TTH_TALENT.checkPreActiveBrem4SuitableStables(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveBrem4SuitableStables(iPlayer, strHero, strBuildingName)
					local arrOptionStables = {};
					local arrStables = GetObjectNamesByType("BUILDING_STABLES");
					local i = 1;
					for iIndexStables, strStablesStack in arrStables do
						if TTH_GLOBAL.getDistance(strHero, strStablesStack) <= 5 then
							local iPosX, iPosY, iPosZ = GetObjectPosition(strStablesStack);
							arrOptionStables[i] = {
								["Id"] = strStablesStack
								, ["Text"] = {
										TTH_PATH.Talent[strHero]["OptionTemplate"]
										;iPosX=iPosX
										,iPosY=iPosY
									}
								, ["Callback"] = "TTH_TALENT.checkPreActiveBrem4HasStables"
							};
							i = i + 1;
						end;
					end;
					if length(arrOptionStables) <= 0 then
						local strText = TTH_PATH.Talent[strHero]["NoSuitableStables"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTips"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionStables, strPathOption);
				end;
				function TTH_TALENT.checkPreActiveBrem4HasStables(iPlayer, strHero, strBuildingName)
					if contains(TTH_VARI.talent[strHero]["Stables"], strBuildingName) ~= nil then
						TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["HasStables"]);
						return nil;
					end;

					TTH_TALENT.comfirmActiveBrem(iPlayer, strHero, strBuildingName);
				end;
				function TTH_TALENT.comfirmActiveBrem(iPlayer, strHero, strBuildingName)
					local strText = TTH_PATH.Talent[strHero]["ConfirmVisitStables"];
					local strCallbackOk = "TTH_TALENT.implVisitStablesBrem("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implVisitStablesBrem(iPlayer, strHero, strBuildingName)
					if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
						TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
			  	else
						if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
			  			TTH_MANAGE.useOperTimes(strHero);
			  		end;
					end;
					if contains(TTH_VARI.talent[strHero]["Stables"], strBuildingName) == nil then
						TTH_VARI.talent[strHero]["Stables"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["Stables"], strBuildingName);
					end;
					OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Title"], TTH_PATH.Talent[strHero]["Desc"]);
					local strText = TTH_PATH.Talent[strHero]["SuccessVisitStables"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
				function TTH_TALENT.resetWeeklyBrem(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.resetWeeklyBrem", iPlayer, strHero);

					TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
				end;
				function TTH_TALENT.checkExpedition8Brem(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.checkExpedition8Brem", iPlayer, strHero);

					local bIsExpedition = TTH_ENUM.Yes;
					if strHero == "Brem" then
						bIsExpedition = TTH_ENUM.No;
					else
			  		if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_HEAVEN
			  			and TTH_VARI.talent["Brem"] ~= nil then
			    		local arrStables = TTH_VARI.talent["Brem"]["Stables"];
			    		for i, strStablesName in arrStables do
			    			if TTH_GLOBAL.getDistance(strHero, strStablesName) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
			    				bIsExpedition = TTH_ENUM.No;
			    				break;
			    			end;
			    		end;
			  		end;
					end;
					return bIsExpedition;
				end;
				function TTH_TALENT.getDistance4Hero2NearestMayorTown8Brem(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.getDistance4Hero2NearestMayorTown8Brem", iPlayer, strHero);

					local strBrem = "Brem";
					local arrDistance = {};
					if TTH_VARI.talent[strBrem] ~= nil
			  		and contains(GetPlayerHeroes(iPlayer), strBrem) ~= nil
						and TTH_GLOBAL.getRace8Hero(strHero) == TOWN_HEAVEN then
						local arrStables = TTH_VARI.talent["Brem"]["Stables"];
						for i, strStablesName in arrStables do
							TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strStablesName));
						end
					end;
					return arrDistance;
				end;

      -- RedHeavenHero06 017 加布里埃尔
      	function TTH_TALENT.initRedHeavenHero06(strHero)
					TTH_MAIN.debug("TTH_TALENT.initRedHeavenHero06", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
      	function TTH_TALENT.visitMineRedHeavenHero06(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
    			TTH_COMMON.initNavi(TTH_PATH.Talent[strHero]["Text"]);

      		TTH_TALENT.checkPreActiveRedHeavenHero064Times(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
      	end;
      	function TTH_TALENT.checkPreActiveRedHeavenHero064Times(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughTimes"]);
		    				return nil;
      				end;
      			else
		    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughTimes"]);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.confirmVisitMineRedHeavenHero06(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback);
      	end;
    		function TTH_TALENT.confirmVisitMineRedHeavenHero06(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
    			local strBuildingText = TTH_PATH.Mine[strBuildingType];
    			local objBuilding = TTH_VARI.arrMineBuilding[strBuildingName];
    			local iBonusLevel = objBuilding["BonusLevel"];
    			local strPathMain = {
    				TTH_PATH.Talent[strHero]["Confirm"]
    				;strBuildingText=strBuildingText
    				,iBonusLevel=iBonusLevel
    			};
    			local strCallbackOk = "TTH_TALENT.implVisitMineRedHeavenHero06("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(strBuildingType)..","..TTH_COMMON.psp(funcCallback)..")";
    			local strCallbackCancel = "TTH_COMMON.cancelOption()";
    			TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
    		end;
    		function TTH_TALENT.implVisitMineRedHeavenHero06(iPlayer, strHero, strBuildingName, strBuildingType, funcCallback)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;
    			TTH_VARI.arrMineBuilding[strBuildingName]["BonusLevel"] = TTH_VARI.arrMineBuilding[strBuildingName]["BonusLevel"] + 1;
      		local strText = TTH_PATH.Talent[strHero]["Success"]
    			TTH_GLOBAL.sign(strHero, strText);
    		end;
      	function TTH_TALENT.resetWeeklyRedHeavenHero06(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyRedHeavenHero06", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;

		-- Preserve
			-- Metlirn 022 安文
				TTH_FINAL.METLIRN_REWARD = 100;
				function TTH_TALENT.initMetlirn(iPlayer, strHero)
					if TTH_VARI.talent[strHero] == nil then
						TTH_VARI.talent[strHero] = {
							["OperTimes"] = 1
							, ["MaxOperTimes"] = 1
							, ["Race"] = 0
							, ["Level"] = 0
							, ["Growth"] = 0
							, ["Index"] = 1
						};
					end;
				end;
				function TTH_TALENT.activeMetlirn(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.initMetlirn(iPlayer, strHero);
					TTH_TALENT.checkPreActiveMetlirn4NotEnoughTimes(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveMetlirn4NotEnoughTimes(iPlayer, strHero)
					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
					if TTH_VARI.talent[strHero]["OperTimes"] <= 0 then
						if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
							if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, strText);
			  				return nil;
							end;
						else
			  			TTH_GLOBAL.sign(strHero, strText);
							return nil;
			  		end;
					end;

					TTH_TALENT.radioActiveMetlirn4Race(iPlayer, strHero);
				end;
				function TTH_TALENT.radioActiveMetlirn4Race(iPlayer, strHero)
					local arrOptionRace = {};
					for iRace = TOWN_HEAVEN, TOWN_STRONGHOLD do
						arrOptionRace[iRace + 1] = {
							["Id"] = iRace
							, ["Text"] = TTH_PATH.Race[iRace]
							, ["Callback"] = "TTH_TALENT.radioActiveMetlirn4Level"
						};
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTipsRace"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionRace, strPathOption);
				end;
				function TTH_TALENT.radioActiveMetlirn4Level(iPlayer, strHero, iRace)
					TTH_VARI.talent[strHero]["Race"] = iRace;
					local arrOptionLevel = {};
					for iLevel = 1, 7 do
						local iCreatureId = TTH_TABLE.Creature8RaceAndLevel[iRace][iLevel][1];
						arrOptionLevel[iLevel] = {
							["Id"] = iLevel
							, ["Text"] = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
							, ["Callback"] = "TTH_TALENT.radioActiveMetlirn4Growth"
						};
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTipsLevel"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionLevel, strPathOption);
				end;
				function TTH_TALENT.radioActiveMetlirn4Growth(iPlayer, strHero, iLevel)
					TTH_VARI.talent[strHero]["Level"] = iLevel;
					local arrOptionGrowth = {};
					for iGrowth = 1, 7 do
						arrOptionGrowth[iGrowth] = {
							["Id"] = iGrowth
							, ["Text"] = {
								TTH_PATH.Talent[strHero]["OptionGrowthTemplate"]
								;iGrowth=iGrowth
							}
							, ["Callback"] = "TTH_TALENT.confirmActiveMetlirn"
						};
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTipsGrowth"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionGrowth, strPathOption);
				end;
				function TTH_TALENT.confirmActiveMetlirn(iPlayer, strHero, iGrowth)
					TTH_VARI.talent[strHero]["Growth"] = iGrowth;
					local iRace = TTH_VARI.talent[strHero]["Race"];
					local iLevel = TTH_VARI.talent[strHero]["Level"];
					local iCreatureId = TTH_TABLE.Creature8RaceAndLevel[iRace][iLevel][1];
					local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];
					local iCreatureNumber = TTH_TABLE_NCF_CREATURES[iCreatureId]["GROWTH"] * iGrowth;
					local iReward = TTH_FINAL.METLIRN_REWARD * iLevel * iGrowth;
					local strPathMain = {
						TTH_PATH.Talent[strHero]["Confirm"]
						;strCreatureName=strCreatureName
						,iCreatureNumber=iCreatureNumber
						,iReward=iReward
					};
					local strCallbackOk = "TTH_TALENT.implActiveMetlirn("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implActiveMetlirn(iPlayer, strHero)
					if TTH_VARI.talent[strHero]["OperTimes"] > 0 then
						TTH_VARI.talent[strHero]["OperTimes"] = TTH_VARI.talent[strHero]["OperTimes"] - 1;
					else
						TTH_MANAGE.useOperTimes(strHero);
					end;

					local iRace = TTH_VARI.talent[strHero]["Race"];
					local iLevel = TTH_VARI.talent[strHero]["Level"];
					local iGrowth = TTH_VARI.talent[strHero]["Growth"];
					local iCreatureId = TTH_TABLE.Creature8RaceAndLevel[iRace][iLevel][1];
					local iCreatureNumber = TTH_TABLE_NCF_CREATURES[iCreatureId]["GROWTH"] * iGrowth;
					local strMonsterName = strHero.."-"..TTH_VARI.talent[strHero]["Index"];
					TTH_VARI.talent[strHero]["Index"] = TTH_VARI.talent[strHero]["Index"] + 1;
					local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
					CreateMonster(strMonsterName, iCreatureId, iCreatureNumber, iPosX, iPosY, iPosZ, MONSTER_MOOD_WILD, MONSTER_COURAGE_ALWAYS_FIGHT, 0);
					sleep(1);
					MakeHeroInteractWithObject(strHero, strMonsterName);
				end;
  			function TTH_TALENT.combatResultMetlirn(iPlayer, strHero, iCombatIndex)
  				TTH_MAIN.debug("TTH_TALENT.combatResultMetlirn", iPlayer, strHero, iCombatIndex);

  				local strHeroMetlirn = "Metlirn";
  				if strHero == strHeroMetlirn then
  					local iLevel = TTH_VARI.talent[strHero]["Level"];
						local iGrowth = TTH_VARI.talent[strHero]["Growth"];
						if iLevel ~= 0 and iGrowth ~= 0 then
							local iReward = TTH_FINAL.METLIRN_REWARD * iLevel * iGrowth;
							TTH_GLOBAL.increaseResource(iPlayer, GOLD, iReward, strHero);
							local strText = TTH_PATH.Talent[strHero]["Success"];
							TTH_GLOBAL.sign(strHero, strText);
							TTH_VARI.talent[strHero]["Race"] = 0;
							TTH_VARI.talent[strHero]["Level"] = 0;
							TTH_VARI.talent[strHero]["Growth"] = 0;
	  				end;
  				end;
  			end;
				function TTH_TALENT.resetWeeklyMetlirn(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.resetWeeklyMetlirn", iPlayer, strHero);

					TTH_TALENT.initMetlirn(iPlayer, strHero);
					TTH_VARI.talent[strHero]["OperTimes"] = TTH_VARI.talent[strHero]["MaxOperTimes"];
				end;

			-- Kyrre 029 凯琳
  			function TTH_TALENT.combatResultKyrre(iPlayer, strHero, iCombatIndex)
  				TTH_MAIN.debug("TTH_TALENT.combatResultKyrre", iPlayer, strHero, iCombatIndex);

  				local strHeroKyrre = "Kyrre";
  				if strHero == strHeroKyrre then
  					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes
  						and TTH_MANAGE.getHeroExpeditionStatus(strHero) == TTH_ENUM.No then
  						local iHeroLevel = GetHeroLevel(strHero);
  						local iCoef = 0.2 + 0.01 * iHeroLevel;
  						local iRecordPoint = TTH_MANAGE.giveDailyRecordPoint(iPlayer, strHero, iCoef);
  						local strPathMain = {
  							TTH_PATH.Talent["Kyrre"]["GainRecordPoint"]
  							;iRecordPoint=iRecordPoint
  						};
  	    			TTH_GLOBAL.sign(strHero, strPathMain);
  					end;
  				end;
  			end;

			-- Gillion 030 吉尔里恩
      	function TTH_TALENT.initGillion(strHero)
					TTH_MAIN.debug("TTH_TALENT.initGillion", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["BonusLevel"] = 0
						, ["Redwoord"] = {}
						, ["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
				function TTH_TALENT.visitRedwoordGillion(iPlayer, strHero, strBuildingName, funcCallback)
					TTH_COMMON.initNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreVisitRedwoordGillion4Times(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitRedwoordGillion4Times(iPlayer, strHero, strBuildingName, funcCallback)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
      					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
			    			TTH_GLOBAL.sign(strHero, strText);

			    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
		    				return nil;
      				end;
      			else
    					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
		    			TTH_GLOBAL.sign(strHero, strText);

		    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.checkPreVisitRedwoordGillion4HasRedwoord(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitRedwoordGillion4HasRedwoord(iPlayer, strHero, strBuildingName, funcCallback)
      		if contains(TTH_VARI.talent[strHero]["Redwoord"], strBuildingName) ~= nil then
	    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["HasRedwoord"]);

		    		TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
    				return nil;
      		end;

      		TTH_TALENT.confirmVisitRedwoordGillion(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.confirmVisitRedwoordGillion(iPlayer, strHero, strBuildingName, funcCallback)
					local strText = TTH_PATH.Talent[strHero]["ConfirmVisitRedwoord"];
					local strCallbackOk = "TTH_TALENT.implVisitRedwoordGillion("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					local strCallbackCancel = "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implVisitRedwoordGillion(iPlayer, strHero, strBuildingName)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;
      		if contains(TTH_VARI.talent[strHero]["Redwoord"], strBuildingName) == nil then
						TTH_VARI.talent[strHero]["Redwoord"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["Redwoord"], strBuildingName);
      		end;
      		OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Title"], TTH_PATH.Talent[strHero]["Desc"]);
					local strText = TTH_PATH.Talent[strHero]["SuccessVisitRedwoord"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
      	function TTH_TALENT.resetWeeklyGillion(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyGillion", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;
      	function TTH_TALENT.checkExpedition8Gillion(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.checkExpedition8Gillion", iPlayer, strHero);

      		local bIsExpedition = TTH_ENUM.Yes;
      		if strHero == "Gillion" then
      			bIsExpedition = TTH_ENUM.No;
      		else
	      		if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_PRESERVE
	      			and TTH_VARI.talent["Gillion"] ~= nil then
		      		local arrRedwoord = TTH_VARI.talent["Gillion"]["Redwoord"];
		      		for i, strRedwoordName in arrRedwoord do
		      			if TTH_GLOBAL.getDistance(strHero, strRedwoordName) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
		      				bIsExpedition = TTH_ENUM.No;
		      				break;
		      			end;
		      		end;
	      		end;
      		end;
      		return bIsExpedition;
      	end;
      	function TTH_TALENT.getDistance4Hero2NearestMayorTown8Gillion(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.getDistance4Hero2NearestMayorTown8Gillion", iPlayer, strHero);

      		local strGillion = "Gillion";
      		local arrDistance = {};
      		if TTH_VARI.talent[strGillion] ~= nil
	      		and contains(GetPlayerHeroes(iPlayer), strGillion) ~= nil
      			and TTH_GLOBAL.getRace8Hero(strHero) == TOWN_PRESERVE then
      			local arrRedwoord = TTH_VARI.talent["Gillion"]["Redwoord"];
      			for i, strRedwoordName in arrRedwoord do
      				TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strRedwoordName));
      			end
      		end;
      		return arrDistance;
      	end;

      -- Melodia 032 马洛迪亚
      	function TTH_TALENT.initMelodia(strHero)
					TTH_MAIN.debug("TTH_TALENT.initMelodia", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
      	function TTH_TALENT.activeMelodia(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreActiveMelodia4Times(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMelodia4Times(iPlayer, strHero)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughTimes"]);
		    				return nil;
      				end;
      			else
		    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughTimes"]);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.implActiveMelodia(iPlayer, strHero);
      	end;
      	function TTH_TALENT.implActiveMelodia(iPlayer, strHero)
      		local iLuck = TTH_GLOBAL.getRealLuck8Hero(strHero) + 1;
    			local iHeroLevel = GetHeroLevel(strHero);
    			local iArtifactLevel = TTH_COMMON.floor(sqrt(iLuck + iHeroLevel));
    			if iArtifactLevel > 7 then
    				iArtifactLevel = 7;
    			end;
    			local iRandomIndex = random(length(TTH_TABLE_Artifacts[iArtifactLevel]));
    			local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
    			local iArtifactId = TTH_TABLE_Artifacts[iArtifactLevel][iRandomIndex];
    			CreateArtifact("", iArtifactId, iPosX, iPosY, iPosZ);

      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;

      		local strText = TTH_PATH.Talent[strHero]["Success"]
    			TTH_GLOBAL.sign(strHero, strText);
      	end;
      	function TTH_TALENT.resetWeeklyMelodia(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyMelodia", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;

      -- Elleshar 036 温利尔
      	function TTH_TALENT.calcTownValueElleshar(strHero, arrTown)
					TTH_MAIN.debug("TTH_TALENT.calcTownValueElleshar", nil, strHero, arrTown);

					local iTownValue = 0;
					local strHeroElleshar = "Elleshar";
					local iPlayer = TTH_GLOBAL.GetObjectOwner(strHero);
					local arrHero = GetPlayerHeroes(iPlayer);
					if contains(arrHero, strHeroElleshar) ~= nil then
						local iHeroLevel = GetHeroLevel(strHeroElleshar);
						local iHeroKnowledge = GetHeroStat(strHeroElleshar, STAT_KNOWLEDGE);
						iTownValue = iHeroLevel + iHeroKnowledge;
					end;
					return iTownValue;
      	end;

			-- Ildar 037 娜瑞莎
      	function TTH_TALENT.initIldar(strHero)
					TTH_MAIN.debug("TTH_TALENT.initIldar", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["PreGameVar"] = "TTH_Var_Talent_"
						, ["CurrentType"] = TTH_ENUM.IldarLight
					};
					local strKey = TTH_VARI.talent[strHero]["PreGameVar"]..strHero;
					TTH_COMMON.consoleSetGameVar(strKey, TTH_VARI.talent[strHero]["CurrentType"]);
      	end;
      	function TTH_TALENT.activeIldar(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.confirmActiveIldar(iPlayer, strHero);
      	end;
      	function TTH_TALENT.confirmActiveIldar(iPlayer, strHero)
					local iCurrentType = TTH_VARI.talent[strHero]["CurrentType"];
					local strCurrentTypeName = TTH_PATH.Talent[strHero][iCurrentType];
					local iTargetType = 1 - iCurrentType;
					local strTargetTypeName = TTH_PATH.Talent[strHero][iTargetType];

					local strPathMain={
						TTH_PATH.Talent[strHero]["ConfirmActive"]
						;strCurrentTypeName=strCurrentTypeName
						,strTargetTypeName=strTargetTypeName
					};
					local strCallbackOk = "TTH_TALENT.implActiveIldar("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
      	end;
      	function TTH_TALENT.implActiveIldar(iPlayer, strHero)
      		local iCurrentType = TTH_VARI.talent[strHero]["CurrentType"];
      		local iTargetType = 1 - iCurrentType;
      		TTH_VARI.talent[strHero]["CurrentType"] = iTargetType;
					local strKey = TTH_VARI.talent[strHero]["PreGameVar"]..strHero;
					TTH_COMMON.consoleSetGameVar(strKey, iTargetType);
      		local strTargetTypeName = TTH_PATH.Talent[strHero][iTargetType];
      		local strPathMain={
      			TTH_PATH.Talent[strHero]["Success"]
      			;strTargetTypeName=strTargetTypeName
      		};
    			TTH_GLOBAL.sign(strHero, strPathMain);
      	end;

			-- Vinrael 艾丽莎
				function TTH_TALENT.levelUpVinrael(strHero)
					TTH_MAIN.debug("TTH_TALENT.levelUpVinrael", iPlayer, strHero);

					ChangeHeroStat(strHero, STAT_MANA_POINTS, TTH_FINAL.NUM_MAX);
				end;

		-- Academy
			-- Isher 043 拉扎克
				function TTH_TALENT.calcCoefIsher(strHero)
					local strHeroIsher = "Isher";
					local iCoef = 1;
					if strHeroIsher == strHero then
						local iHeroLevel = GetHeroLevel(strHero)
						iCoef = 1 - (0.2 + iHeroLevel * 0.01);
					end;
					if iCoef < 0 then
						iCoef = 0;
					end;
					return iCoef;
				end;

      -- Rissa 046 瑞萨
      	function TTH_TALENT.initRissa(strHero)
					TTH_MAIN.debug("TTH_TALENT.initRissa", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
      	function TTH_TALENT.activeRissa(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreActiveRissa4Times(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveRissa4Times(iPlayer, strHero)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughTimes"]);
		    				return nil;
      				end;
      			else
		    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughTimes"]);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.implActiveRissa(iPlayer, strHero);
      	end;
      	function TTH_TALENT.implActiveRissa(iPlayer, strHero)
    			local iHeroLevel = GetHeroLevel(strHero);
    			local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
    			local iResCount = TTH_COMMON.round((iHeroLevel + iKnowledge) / 3);
    			local iRandomIndex = random(4);
    			local iTreasureId = TTH_ENUM.TreasureNone;
    			if iRandomIndex == 0 then
    				iTreasureId = TTH_ENUM.TreasureMercury;
    			elseif iRandomIndex == 1 then
    				iTreasureId = TTH_ENUM.TreasureCrystal;
    			elseif iRandomIndex == 2 then
    				iTreasureId = TTH_ENUM.TreasureSulfur;
    			elseif iRandomIndex == 3 then
    				iTreasureId = TTH_ENUM.TreasureGem;
    			end;
    			local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
    			CreateTreasure("", iTreasureId, iResCount, iPosX, iPosY, iPosZ);

      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;

      		local strText = TTH_PATH.Talent[strHero]["Success"]
    			TTH_GLOBAL.sign(strHero, strText);
      	end;
      	function TTH_TALENT.resetWeeklyRissa(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyMelodia", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;

			-- Razzak 047 纳克西斯
				function TTH_TALENT.initRazzak(strHero)
					TTH_MAIN.debug("TTH_TALENT.initRazzak", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["PreGameVar"] = "TTH_Var_Talent_"
						, ["CurrentSpellId"] = TTH_ENUM.No
					};
					local strKey = TTH_VARI.talent[strHero]["PreGameVar"]..strHero;
					TTH_COMMON.consoleSetGameVar(strKey, TTH_VARI.talent[strHero]["CurrentSpellId"]);
				end;
				function TTH_TALENT.activeRazzak(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.radioRazzak4Type(iPlayer, strHero);
				end;
				function TTH_TALENT.radioRazzak4Type(iPlayer, strHero)
					local arrOption = {};
					local i = 1;
					arrOption[i] = {
						["Id"] = 0
						, ["Text"] = TTH_PATH.Talent["Razzak"]["Unknow"]
						, ["Callback"] = "TTH_TALENT.confirmActiveRazzak"
					};
					i = i + 1;
					for iTypeId, itemType in TTH_TABLE.ImbueBallistaSpell do
						arrOption[i] = {
							["Id"] = iTypeId
							, ["Text"] = TTH_TABLE.Mastery[iTypeId]["Text"]
							, ["Callback"] = "TTH_TALENT.radioRazzak4Magic"
						};
						i = i + 1;
					end;

					local strTextTips = TTH_PATH.Talent["Razzak"]["RadioTipsType"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strTextTips);
				end;
				function TTH_TALENT.radioRazzak4Magic(iPlayer, strHero, iTypeId)
					local arrOption = {};
					local i = 1;
					for iIndex, iSpellId in TTH_TABLE.ImbueBallistaSpell[iTypeId] do
						if KnowHeroSpell(strHero, iSpellId) ~= nil then
							arrOption[i] = {
								["Id"] = iSpellId
								, ["Text"] = TTH_TABLE_SPELL[iSpellId]["NAME"]
								, ["Callback"] = "TTH_TALENT.confirmActiveRazzak"
							};
							i = i + 1;
						end;
					end;

					if length(arrOption) == 0 then
	    			local strText = TTH_PATH.Talent[strHero]["NoSuitableSpell"];
						TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strText);
						return nil;
					end;

					local strTextTips = TTH_PATH.Talent["Razzak"]["RadioTipsSpell"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strTextTips);
				end;
				function TTH_TALENT.confirmActiveRazzak(iPlayer, strHero, iTargetSpellId)
					local iCurrentSpellId = TTH_VARI.talent[strHero]["CurrentSpellId"];
					local strCurrentSpellName = "";
					if iCurrentSpellId == TTH_ENUM.No then
						strCurrentSpellName = TTH_PATH.Talent["Razzak"]["Unknow"];
					else
						strCurrentSpellName = TTH_TABLE_SPELL[iCurrentSpellId]["NAME"];
					end;
					local strTargetSpellName = "";
					if iTargetSpellId == TTH_ENUM.No then
						strTargetSpellName = TTH_PATH.Talent["Razzak"]["Unknow"];
					else
						strTargetSpellName = TTH_TABLE_SPELL[iTargetSpellId]["NAME"];
					end;

					local strPathMain={
						TTH_PATH.Talent[strHero]["ConfirmActive"]
						;strCurrentSpellName=strCurrentSpellName
						,strTargetSpellName=strTargetSpellName
					};
					local strCallbackOk = "TTH_TALENT.implActiveRazzak("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iTargetSpellId..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implActiveRazzak(iPlayer, strHero, iTargetSpellId)
					local strTargetTypeName = "";
					if iTargetSpellId == TTH_ENUM.No then
						strTargetTypeName = TTH_PATH.Talent["Razzak"]["Unknow"];
					else
						strTargetTypeName = TTH_TABLE_SPELL[iTargetSpellId]["NAME"];
					end;
					TTH_VARI.talent[strHero]["CurrentSpellId"] = iTargetSpellId;
					local strKey = TTH_VARI.talent[strHero]["PreGameVar"]..strHero;
					TTH_COMMON.consoleSetGameVar(strKey, iTargetSpellId);
					if iTargetSpellId == 0 then
						local strText = TTH_PATH.Talent["Razzak"]["Cancel"];
						TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strText);
					else
						local strPathMain = {
							TTH_PATH.Talent["Razzak"]["Success"]
			  			;strSpellName=strTargetTypeName
						};
						TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
					end;
				end;

      -- Maahir 马希尔 050
      	function TTH_TALENT.initMaahir(strHero)
					TTH_MAIN.debug("TTH_TALENT.initMaahir", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
      	function TTH_TALENT.activeMaahir(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreActiveMaahir4OtherHero(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMaahir4OtherHero(iPlayer, strHero)
					local arrHero = GetPlayerHeroes(iPlayer);
      		if length(arrHero) == 1 then
  					local strText = TTH_PATH.Talent[strHero]["NoOtherHero"];
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
      		end;

      		TTH_TALENT.checkPreActiveMaahir4OperTimes(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMaahir4OperTimes(iPlayer, strHero)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
      					local strText = TTH_PATH.Talent[strHero]["NotEnoughOperTimes"];
			    			TTH_GLOBAL.sign(strHero, strText);
		    				return nil;
      				end;
      			else
    					local strText = TTH_PATH.Talent[strHero]["NotEnoughOperTimes"];
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.checkPreActiveMaahir4Mana(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMaahir4Mana(iPlayer, strHero)
      		if GetHeroStat(strHero, STAT_MANA_POINTS) < 20 then
      			local strText = TTH_PATH.Talent[strHero]["NotEnoughMana"];
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
      		end;

      		TTH_TALENT.checkPreActiveMaahir4SuitableHero(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMaahir4SuitableHero(iPlayer, strHero)
					local arrOption = {};
					local arrHero = GetPlayerHeroes(iPlayer);
					local i = 1;
					for iIndexHero, strTeleHero in arrHero do
						if strTeleHero ~= strHero
							and TTH_GLOBAL.isHeroAtGarrison(strTeleHero) == TTH_ENUM.No then
							arrOption[i] = {
								["Id"] = strTeleHero
								, ["Text"] = TTH_TABLE.Hero[strTeleHero]["Text"]
								, ["Callback"] = "TTH_TALENT.implActiveMaahir"
							};
							i = i + 1;
						end;
					end;
					if length(arrOption) == 0 then
	    			local strText = TTH_PATH.Talent[strHero]["NotSuitableHero"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
      	end;
      	function TTH_TALENT.implActiveMaahir(iPlayer, strHero, strTeleHero)
      		local iMovePoints = GetHeroStat(strHero, STAT_MOVE_POINTS);
      		ChangeHeroStat(strHero, STAT_MOVE_POINTS, iMovePoints * -1);
      		ChangeHeroStat(strHero, STAT_MANA_POINTS, -20);
      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;
      		TTH_GLOBAL.teleHero2Point(iPlayer, strTeleHero, strHero, TTH_ENUM.Yes);

      		local strText = TTH_PATH.Talent[strHero]["Success"];
    			TTH_GLOBAL.sign(strHero, strText);
      	end;
      	function TTH_TALENT.resetDailyMaahir(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetDailyMaahir", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;

			-- Astral 055 努尔
				function TTH_TALENT.initAstral(strHero)
					TTH_MAIN.debug("TTH_TALENT.initAstral", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["PreGameVar"] = "TTH_Var_Talent_"
						, ["BonusLevel"] = 0
						, ["MagicNode"] = {}
						, ["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
				end;
				function TTH_TALENT.activeAstral(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreActiveAstral4Times(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveAstral4Times(iPlayer, strHero)
					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
					if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
						if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
							if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, strText);
			  				return nil;
							end;
						else
			  			TTH_GLOBAL.sign(strHero, strText);
							return nil;
			  		end;
					end;

					TTH_TALENT.checkPreActiveAstral4SuitableStables(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveAstral4SuitableStables(iPlayer, strHero, strBuildingName)
					local arrOptionMagicNode = {};
					local arrMagicNode = TTH_VARI.arrBuilding["BUILDING_MAGICNODE"];
					local i = 1;
					for iIndexMagicNode, strMagicNodeStack in arrMagicNode do
						if TTH_GLOBAL.getDistance(strHero, strMagicNodeStack) <= 5 then
							local iPosX, iPosY, iPosZ = GetObjectPosition(strMagicNodeStack);
							arrOptionMagicNode[i] = {
								["Id"] = strMagicNodeStack
								, ["Text"] = {
										TTH_PATH.Talent[strHero]["OptionTemplate"]
										;iPosX=iPosX
										,iPosY=iPosY
									}
								, ["Callback"] = "TTH_TALENT.checkPreActiveAstral4HasMagicNode"
							};
							i = i + 1;
						end;
					end;
					if length(arrOptionMagicNode) <= 0 then
						local strText = TTH_PATH.Talent[strHero]["NoSuitableMagicNode"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTips"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionMagicNode, strPathOption);
				end;
				function TTH_TALENT.checkPreActiveAstral4HasMagicNode(iPlayer, strHero, strBuildingName)
					if contains(TTH_VARI.talent[strHero]["MagicNode"], strBuildingName) ~= nil then
						TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["HasMagicNode"]);
						return nil;
					end;

					TTH_TALENT.comfirmActiveAstral(iPlayer, strHero, strBuildingName);
				end;
				function TTH_TALENT.comfirmActiveAstral(iPlayer, strHero, strBuildingName)
					local strText = TTH_PATH.Talent[strHero]["ConfirmVisitMagicNode"];
					local strCallbackOk = "TTH_TALENT.implVisitMagicNodeAstral("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implVisitMagicNodeAstral(iPlayer, strHero, strBuildingName)
					if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
						TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
			  	else
						if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
			  			TTH_MANAGE.useOperTimes(strHero);
			  		end;
					end;
					if contains(TTH_VARI.talent[strHero]["MagicNode"], strBuildingName) == nil then
						TTH_VARI.talent[strHero]["MagicNode"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["MagicNode"], strBuildingName);
					end;
					OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Title"], TTH_PATH.Talent[strHero]["Desc"]);
					local strKey = TTH_VARI.talent[strHero]["PreGameVar"]..strHero;
					local iMagicNodeCount = length(TTH_VARI.talent[strHero]["MagicNode"]);
					TTH_COMMON.consoleSetGameVar(strKey, iMagicNodeCount);
					local strPathMain = {
						TTH_PATH.Talent[strHero]["SuccessVisitMagicNode"]
				    ;iMagicNodeCount=iMagicNodeCount
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;
				function TTH_TALENT.resetWeeklyAstral(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.resetWeeklyAstral", iPlayer, strHero);

					TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
				end;
				function TTH_TALENT.checkExpedition8Astral(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.checkExpedition8Astral", iPlayer, strHero);

					local bIsExpedition = TTH_ENUM.Yes;
					if strHero == "Astral" then
						bIsExpedition = TTH_ENUM.No;
					else
			  		if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_HEAVEN
			  			and TTH_VARI.talent["Astral"] ~= nil then
			    		local arrMagicNode = TTH_VARI.talent["Astral"]["MagicNode"];
			    		for i, strMagicNodeName in arrMagicNode do
			    			if TTH_GLOBAL.getDistance(strHero, strMagicNodeName) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
			    				bIsExpedition = TTH_ENUM.No;
			    				break;
			    			end;
			    		end;
			  		end;
					end;
					return bIsExpedition;
				end;
				function TTH_TALENT.getDistance4Hero2NearestMayorTown8Astral(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.getDistance4Hero2NearestMayorTown8Astral", iPlayer, strHero);

					local strAstral = "Astral";
					local arrDistance = {};
					if TTH_VARI.talent[strAstral] ~= nil
			  		and contains(GetPlayerHeroes(iPlayer), strAstral) ~= nil
						and TTH_GLOBAL.getRace8Hero(strHero) == TOWN_ACADEMY then
						local arrMagicNode = TTH_VARI.talent["Astral"]["MagicNode"];
						for i, strMagicNodeName in arrMagicNode do
							TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strMagicNodeName));
						end
					end;
					return arrDistance;
				end;

		-- Dungeon
			-- Menel 060 基特拉
      	TTH_TABLE.MenelDirectionOption = {
      		[1] = {
      			["Id"] = TTH_ENUM.DirectionNorth
      			, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionNorth]
      			, ["Callback"] = "TTH_TALENT.threadActiveMenel"
      			, ["Rotate"] = TTH_ENUM.RotateNorth
      		}
      		, [2] = {
      			["Id"] = TTH_ENUM.DirectionEast
      			, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionEast]
      			, ["Callback"] = "TTH_TALENT.threadActiveMenel"
      			, ["Rotate"] = TTH_ENUM.RotateEast
      		}
      		, [3] = {
      			["Id"] = TTH_ENUM.DirectionSouth
      			, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionSouth]
      			, ["Callback"] = "TTH_TALENT.threadActiveMenel"
      			, ["Rotate"] = TTH_ENUM.RotateSouth
      		}
      		, [4] = {
      			["Id"] = TTH_ENUM.DirectionWest
      			, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionWest]
      			, ["Callback"] = "TTH_TALENT.threadActiveMenel"
      			, ["Rotate"] = TTH_ENUM.RotateWest
      		}
      	};
      	TTH_TABLE.MenelDwellingLevelOption = {
      		[1] = {
      			["Id"] = 1
      			, ["Text"] = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[TOWN_DUNGEON][1][1]]["NAME"]
      			, ["Callback"] = "TTH_TALENT.checkPreActiveMenel4Res"
      			, ["CostGold"] = 1000
      			, ["Level"] = 1
      		}
      		, [2] = {
      			["Id"] = 2
      			, ["Text"] = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[TOWN_DUNGEON][2][1]]["NAME"]
      			, ["Callback"] = "TTH_TALENT.checkPreActiveMenel4Res"
      			, ["CostGold"] = 2000
      			, ["Level"] = 2
      		}
      		, [3] = {
      			["Id"] = 3
      			, ["Text"] = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[TOWN_DUNGEON][3][1]]["NAME"]
      			, ["Callback"] = "TTH_TALENT.checkPreActiveMenel4Res"
      			, ["CostGold"] = 3000
      			, ["Level"] = 3
      		}
      		, [4] = {
      			["Id"] = 4
      			, ["Text"] = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[TOWN_DUNGEON][4][1]]["NAME"]
      			, ["Callback"] = "TTH_TALENT.checkPreActiveMenel4Res"
      			, ["CostGold"] = 4000
      			, ["Level"] = 4
      		}
      		, [5] = {
      			["Id"] = 5
      			, ["Text"] = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[TOWN_DUNGEON][5][1]]["NAME"]
      			, ["Callback"] = "TTH_TALENT.checkPreActiveMenel4Res"
      			, ["CostGold"] = 5000
      			, ["Level"] = 5
      		}
      		, [6] = {
      			["Id"] = 6
      			, ["Text"] = TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[TOWN_DUNGEON][6][1]]["NAME"]
      			, ["Callback"] = "TTH_TALENT.checkPreActiveMenel4Res"
      			, ["CostGold"] = 6000
      			, ["Level"] = 6
      		}
      	};
      	TTH_VARI.threadActiveMenel = {};
      	function TTH_TALENT.initMenel(strHero)
					TTH_MAIN.debug("TTH_TALENT.initMenel", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["Manor"] = {}
						, ["Index"] = 0
					};
      	end;
      	function TTH_TALENT.activeMenel(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Active"]["Text"]);

    			TTH_TALENT.checkPreActiveMenel4IsMayor(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMenel4IsMayor(iPlayer, strHero)
    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.No then
    				local strText = TTH_PATH.Talent[strHero]["Active"]["NotMayor"];
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
      		end;

      		TTH_TALENT.checkPreActiveMenel4AbilityQuota(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPreActiveMenel4AbilityQuota(iPlayer, strHero)
      		local iAlreadyManor = length(TTH_VARI.talent[strHero]["Manor"]);
      		local iAlreadyMayor, arrMayorTown = TTH_MANAGE.getAlreadyMayorInfo(strHero);
      		if iAlreadyManor >= iAlreadyMayor then
    				local strText = TTH_PATH.Talent[strHero]["Active"]["NotEnoughQuota"];
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
      		end;

      		local strText = TTH_PATH.Talent[strHero]["Active"]["TipsDwellingLevel"];
      		TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.MenelDwellingLevelOption, strText);
      	end;
      	function TTH_TALENT.checkPreActiveMenel4Res(iPlayer, strHero, iDwellingId)
      		local iCost = TTH_TABLE.MenelDwellingLevelOption[iDwellingId]["CostGold"];
      		if GetPlayerResource(iPlayer, GOLD) < iCost then
						local strPathMain = {
							TTH_PATH.Talent[strHero]["Active"]["NotEnoughRes"]
					    ;iCost=iCost
						};
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_VARI.threadActiveMenel = {
						["Player"] = iPlayer
						, ["Hero"] = strHero
						, ["DwellingId"] = iDwellingId
					};
      		local strText = TTH_PATH.Talent[strHero]["Active"]["TipsDirection"];
      		TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.MenelDirectionOption, strText);
      	end;
      	function TTH_TALENT.checkPreActiveMenel4NegetivePlace()
  				local strText = TTH_PATH.Talent["Menel"]["Active"]["NegetivePlace"];
    			TTH_GLOBAL.sign("Menel", strText);
  				return nil;
      	end;
      	function TTH_TALENT.threadActiveMenel(iPlayer, strHero, iDirectionId)
      		TTH_VARI.threadActiveMenel["DirectionId"] = iDirectionId;
      		startThread(TTH_TALENT.implActiveMenel);
      	end;
      	function TTH_TALENT.implActiveMenel()
      		errorHook(TTH_TALENT.checkPreActiveMenel4NegetivePlace);

      		local iPlayer = TTH_VARI.threadActiveMenel["Player"];
      		local strHero = TTH_VARI.threadActiveMenel["Hero"];
      		local iDwellingId = TTH_VARI.threadActiveMenel["DwellingId"];
      		local iDwellingLevel = TTH_TABLE.MenelDwellingLevelOption[iDwellingId]["Level"];
      		local iCostGold = TTH_TABLE.MenelDwellingLevelOption[iDwellingId]["CostGold"];
      		local iDirectionId = TTH_VARI.threadActiveMenel["DirectionId"];

      		TTH_VARI.talent[strHero]["Index"] = TTH_VARI.talent[strHero]["Index"] + 1;
      		local iIndexManor = TTH_VARI.talent[strHero]["Index"];
      		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
      		local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
      		if iDirectionId == TTH_ENUM.DirectionNorth then
      			iPosY = iPosY + 3;
      		elseif iDirectionId == TTH_ENUM.DirectionEast then
      			iPosX = iPosX + 3;
      		elseif iDirectionId == TTH_ENUM.DirectionSouth then
      			iPosY = iPosY - 4;
      		elseif iDirectionId == TTH_ENUM.DirectionWest then
      			iPosX = iPosX - 4;
      		end;
      		local strBuildingName = strHero.."-"..iIndexManor;
      		CreateDwelling(strBuildingName, iHeroRace, iDwellingLevel, iPlayer, iPosX, iPosY, iPosZ, TTH_TABLE.MenelDirectionOption[iDirectionId]["Rotate"]);
      		sleep(1);
      		OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Active"]["Title"], TTH_PATH.Talent[strHero]["Active"]["Desc"]);
      		TTH_GLOBAL.reduceResource(iPlayer, GOLD, iCostGold);
      		TTH_VARI.talent[strHero]["Manor"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["Manor"], strBuildingName);
  				local strText = TTH_PATH.Talent[strHero]["Active"]["Success"];
    			TTH_GLOBAL.sign(strHero, strText);
      	end;
				function TTH_TALENT.dealDailyMenel(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealDailyMenel", iPlayer, strHero);

					local arrManor = TTH_VARI.talent[strHero]["Manor"];
					for i, strManor in arrManor do
						if GetObjectOwner(strManor) ~= iPlayer then
							TTH_VARI.talent[strHero]["Manor"] = TTH_COMMON.remove8Value(TTH_VARI.talent[strHero]["Manor"], strManor);
      				OverrideObjectTooltipNameAndDescription(strManor, TTH_PATH.Talent[strHero]["Daily"]["TitleCapture"], TTH_PATH.Talent[strHero]["Daily"]["DescCapture"]);
						end;
					end
				end;
      	function TTH_TALENT.checkExpedition8Menel(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.checkExpedition8Menel", iPlayer, strHero);

      		local bIsExpedition = TTH_ENUM.Yes;
      		if strHero == "Menel" then
      			bIsExpedition = TTH_ENUM.No;
      		else
	      		if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_DUNGEON
	      			and TTH_VARI.talent["Menel"] ~= nil then
		      		local arrDwelling = TTH_VARI.talent["Menel"]["Manor"];
		      		for i, strDwellingName in arrDwelling do
		      			if TTH_GLOBAL.getDistance(strHero, strDwellingName) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
		      				bIsExpedition = TTH_ENUM.No;
		      				break;
		      			end;
		      		end;
	      		end;
      		end;
      		return bIsExpedition;
      	end;
      	function TTH_TALENT.getDistance4Hero2NearestMayorTown8Menel(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.getDistance4Hero2NearestMayorTown8Menel", iPlayer, strHero);

      		local strMenel = "Menel";
      		local arrDistance = {};
      		if TTH_VARI.talent[strMenel] ~= nil
	      		and contains(GetPlayerHeroes(iPlayer), strMenel) ~= nil
      			and TTH_GLOBAL.getRace8Hero(strHero) == TOWN_DUNGEON then
      			local arrDwelling = TTH_VARI.talent["Menel"]["Manor"];
      			for i, strDwellingName in arrDwelling do
      				TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strDwellingName));
      			end
      		end;
      		return arrDistance;
      	end;

			-- Sylsai 062 希尔塞
				TTH_FINAL.SYLSAI_COST = 5000;
      	function TTH_TALENT.initSylsai(strHero)
					TTH_MAIN.debug("TTH_TALENT.initSylsai", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
						, ["SpecialCreature"] = {
							CREATURE_LEGATE
							, CREATURE_CROSSBOW
						}
						, ["AppointCreature"] = CREATURE_UNKNOWN
						, ["Diplomacy"] = {}
					};
      	end;
      	function TTH_TALENT.activeSylsai(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent["Sylsai"]["Text"]);

					if TTH_VARI.talent[strHero]["AppointCreature"] == CREATURE_UNKNOWN then
						TTH_TALENT.radioActiveSylsai4DiplomacyCreature(iPlayer, strHero);
					else
      			TTH_TALENT.checkPreActiveSylsai4OperTimes(iPlayer, strHero);
					end;
      	end;
      	function TTH_TALENT.checkPreActiveSylsai4OperTimes(iPlayer, strHero)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughOperTimes"]);
		    				return nil;
      				end;
      			else
		    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NotEnoughOperTimes"]);
	    				return nil;
		    		end;
      		end;

					TTH_TALENT.radioActiveSylsai4DiplomacyCreature(iPlayer, strHero);
      	end;
      	function TTH_TALENT.radioActiveSylsai4DiplomacyCreature(iPlayer, strHero)
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
      		local arrOption = {};
      		local i = 1;
					for iIndex = 0, 6 do
						if arrCreature4Hero[iIndex]["Count"] > 0 then
							local iCreatureId = arrCreature4Hero[iIndex]["Id"];
							arrOption[i] = {
								["Id"] = iCreatureId
								, ["Text"] = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
								, ["Callback"] = "TTH_TALENT.confirmActiveSylsaiSpecialCreature"
							};
							i = i + 1;
						end;
					end;

					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
      	end;
      	function TTH_TALENT.confirmActiveSylsaiSpecialCreature(iPlayer, strHero, iCreatureId)
      		if contains(TTH_VARI.talent[strHero]["SpecialCreature"], iCreatureId) ~= nil then
			  		local strSpecialCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];
						local strPathMain = {
							TTH_PATH.Talent[strHero]["MatchSpecialCreature"]
					    ;strCreatureName=strSpecialCreatureName
						};
						TTH_GLOBAL.sign(strHero, strPathMain);
    				return nil;
					end;

					TTH_TALENT.confirmActiveSylsai(iPlayer, strHero, iCreatureId);
      	end;
      	function TTH_TALENT.confirmActiveSylsai(iPlayer, strHero, iCreatureId)
      		local strPathConfirm = TTH_PATH.Talent[strHero]["ConfirmActiveInit"];
      		local strPreCreatureName = "";
      		if TTH_VARI.talent[strHero]["AppointCreature"] ~= CREATURE_UNKNOWN then
      			strPathConfirm = TTH_PATH.Talent[strHero]["ConfirmActiveChange"];
      			local iPreCreatureId = TTH_VARI.talent[strHero]["AppointCreature"];
	      		strPreCreatureName = TTH_TABLE_NCF_CREATURES[iPreCreatureId]["NAME"];
	      	end;
      		local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];
    			local strPathMain = {
    				strPathConfirm
    		    ;strPreCreatureName=strPreCreatureName
    				,strPostCreatureName=strPostCreatureName
    			};
    			local strCallbackOk = "TTH_TALENT.implActiveSylsai("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(iCreatureId)..")";
    			local strCallbackCancel = "TTH_COMMON.cancelOption()";
    			TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
      	end;
      	function TTH_TALENT.implActiveSylsai(iPlayer, strHero, iCreatureId)
      		if TTH_VARI.talent[strHero]["AppointCreature"] ~= CREATURE_UNKNOWN then
	      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
	    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
			    	else
	      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
			    			TTH_MANAGE.useOperTimes(strHero);
			    		end;
	      		end;
      		end;
      		TTH_VARI.talent[strHero]["AppointCreature"] = iCreatureId;
					local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];
					local strPathMain = {
						TTH_PATH.Talent[strHero]["SuccessActive"]
				    ;strCreatureName=strCreatureName
					};
		    	TTH_GLOBAL.sign(strHero, strPathMain);
      	end;
				function TTH_TALENT.visitDwellingSylsai(iPlayer, strHero, strBuildingName, funcCallback)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreVisitDwellingSylsai4Times(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingSylsai4Times(iPlayer, strHero, strBuildingName, funcCallback)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
      					local strText = TTH_PATH.Talent[strHero]["NotEnoughOperTimes"];
			    			TTH_GLOBAL.sign(strHero, strText);

			    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
		    				return nil;
      				end;
      			else
    					local strText = TTH_PATH.Talent[strHero]["NotEnoughOperTimes"];
		    			TTH_GLOBAL.sign(strHero, strText);

		    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.checkPreVisitDwellingSylsai4Gold(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingSylsai4Gold(iPlayer, strHero, strBuildingName, funcCallback)
					local iGold = length(TTH_VARI.talent[strHero]["Diplomacy"]) * TTH_FINAL.SYLSAI_COST;
      		if GetPlayerResource(iPlayer, GOLD) < iGold then
      			local strPathMain = {
							TTH_PATH.Talent[strHero]["NotEnoughGold"]
					    ;iGold=iGold
      			};
	    			TTH_GLOBAL.sign(strHero, strPathMain);

	    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
    				return nil;
      		end;

      		TTH_TALENT.checkPreVisitDwellingSylsai4AppointCreature(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingSylsai4AppointCreature(iPlayer, strHero, strBuildingName, funcCallback)
      		if TTH_VARI.talent[strHero]["AppointCreature"] == CREATURE_UNKNOWN then
	    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["NoAppointCreature"]);

		    		TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
    				return nil;
      		end;

      		TTH_TALENT.confirmVisitDwellingSylsai(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.confirmVisitDwellingSylsai(iPlayer, strHero, strBuildingName, funcCallback)
					local iCreatureId = TTH_VARI.talent[strHero]["AppointCreature"];
					local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];

					local strPathMain = {
						TTH_PATH.Talent[strHero]["ConfirmVisitDwelling"]
				    ;strCreatureName=strCreatureName
					};
					local strCallbackOk = "TTH_TALENT.implVisitDwellingSylsai("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					local strCallbackCancel = "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implVisitDwellingSylsai(iPlayer, strHero, strBuildingName)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, length(TTH_VARI.talent[strHero]["Diplomacy"]) * TTH_FINAL.SYLSAI_COST);

      		local iPosX, iPosY, iPosZ = GetObjectPosition(strBuildingName);
      		Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndCrash, iPosX, iPosY, iPosZ);
      		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					local iCreatureId = TTH_VARI.talent[strHero]["AppointCreature"];

      		if contains(TTH_VARI.talent[strHero]["Diplomacy"], strBuildingName) == nil then
						TTH_VARI.talent[strHero]["Diplomacy"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["Diplomacy"], strBuildingName);
					end;
      		ReplaceDwelling(strBuildingName, iHeroRace, iCreatureId);
      		OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Title"], TTH_PATH.Talent[strHero]["Desc"]);
					local strText = TTH_PATH.Talent[strHero]["SuccessVisitDwelling"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
      	function TTH_TALENT.dealWeeklySylsai(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.dealWeeklySylsai", iPlayer, strHero);

					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
						local iCreatureId = TTH_VARI.talent[strHero]["AppointCreature"];
						local iGrowth = TTH_TABLE_NCF_CREATURES[iCreatureId]["GROWTH"];
						if TTH_VARI.talent[strHero]["Diplomacy"] ~= nil then
							local arrDiplomacy = TTH_VARI.talent[strHero]["Diplomacy"];
							iGrowth = iGrowth + length(arrDiplomacy);
						end;
	    			local arrTown = TTH_MANAGE.listMayorTown8Hero(strHero);
	    			for i, strTown in arrTown do
	    				AddObjectCreatures(strTown, iCreatureId, iGrowth);
	    			end;
						TTH_GLOBAL.signHero4TownJoin(strHero);
	    		end;
      	end;
      	function TTH_TALENT.resetWeeklySylsai(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklySylsai", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;
				function TTH_TALENT.dealDailySylsai(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealDailySylsai", iPlayer, strHero);

					local arrDiplomacy = TTH_VARI.talent[strHero]["Diplomacy"];
					for i, strDiplomacy in arrDiplomacy do
						if GetObjectOwner(strDiplomacy) ~= iPlayer then
							TTH_VARI.talent[strHero]["Diplomacy"] = TTH_COMMON.remove8Value(TTH_VARI.talent[strHero]["Diplomacy"], strDiplomacy);
						end;
					end
				end;

		-- Necromancy
			-- Nikolay 080 尼科莱
      	function TTH_TALENT.initNikolay(strHero)
					TTH_MAIN.debug("TTH_TALENT.initNikolay", nil, strHero);

      		TTH_VARI.talent[strHero] = {
      			["Tier"] = {
	      			[1] = 0
	      			, [2] = 0
	      			, [3] = 0
	      			, [4] = 0
	      			, [5] = 0
	      			, [6] = 0
	      			, [7] = 0
	      		}
      		};
      	end;
				function TTH_TALENT.combatResultNikolay(iPlayer, strHero, iCombatIndex)
					TTH_MAIN.debug("TTH_TALENT.combatResultNikolay", iPlayer, strHero, iCombatIndex);

					local strHeroNikolay = "Nikolay";
      		local bInArea = TTH_ENUM.No;
      		if strHero == strHeroNikolay then
      			bInArea = TTH_ENUM.Yes;
      		else
	      		if (
	      				TTH_GLOBAL.getRace8Hero(strHero) == TOWN_NECROMANCY
	      			  or TTH_VARI.semiNecro[strHero] ~= nil
	      			)
	      			and contains(GetPlayerHeroes(iPlayer), strHeroNikolay) ~= nil
	      			and TTH_GLOBAL.getDistance(strHero, strHeroNikolay) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
	      			bInArea = TTH_ENUM.Yes;
	      		end;
      		end;
      		if bInArea == TTH_ENUM.Yes then
      			local iHeroLevel = GetHeroLevel(strHeroNikolay);
      			local iCoef = GetHeroSkillMastery(strHero, SKILL_NECROMANCY) * 0.1 + iHeroLevel * 0.01;
      			local iCountStacksWinner = GetSavedCombatArmyCreaturesCount(iCombatIndex, 1);
      			for i = 0, iCountStacksWinner - 1 do
      			  local iCreatureId, iCountCreature, iCountCreatureDeath = GetSavedCombatArmyCreatureInfo(iCombatIndex, 1, i);
      			  for iTier = 1, 7 do
      			  	for jType = 1, 3 do
      			  		local iTempCreatureId = TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][iTier][jType];
      			  		if iCountCreatureDeath > 0 and iCreatureId == iTempCreatureId  then
      			  			TTH_VARI.talent[strHeroNikolay]["Tier"][iTier] = TTH_VARI.talent[strHeroNikolay]["Tier"][iTier] + iCoef * iCountCreatureDeath;
      			  		end;
      			  	end;
      			  end;
      			end;
						local strText = TTH_PATH.Talent[strHeroNikolay]["GainPower"];
						TTH_GLOBAL.sign(strHeroNikolay, strText);
      		end;
				end;
				function TTH_TALENT.activeNikolay(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					local strTown = TTH_VARI.townSkillManage;
					TTH_TALENT.checkPreActiveNikolay4TowmRace(iPlayer, strHero, strTown);
				end;
				function TTH_TALENT.checkPreActiveNikolay4TowmRace(iPlayer, strHero, strTown)
					if TTH_GLOBAL.getRace8Town(strTown) ~= TOWN_NECROMANCY then
						local strText = TTH_PATH.Talent[strHero]["NotNecTown"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_TALENT.confirmActiveNikolay(iPlayer, strHero, strTown);
				end;
				function TTH_TALENT.confirmActiveNikolay(iPlayer, strHero, strTown)
					local strPathMain = {
						TTH_PATH.Talent[strHero]["ConfirmActive"]
				    ;iCountTier1=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][1])
						,iCountTier2=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][2])
						,iCountTier3=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][3])
						,iCountTier4=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][4])
						,iCountTier5=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][5])
						,iCountTier6=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][6])
						,iCountTier7=TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][7])
					};
					local strCallbackOk = "TTH_TALENT.implActiveNikolay("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implActiveNikolay(iPlayer, strHero, strTown)
					local arrCreatureGrowth8Tier = {
						[1] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][1])
						, [2] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][2])
						, [3] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][3])
						, [4] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][4])
						, [5] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][5])
						, [6] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][6])
						, [7] = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][7])
					};
					TTH_VARI.talent[strHero]["Tier"] = {
						[1] = TTH_VARI.talent[strHero]["Tier"][1] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][1])
						, [2] = TTH_VARI.talent[strHero]["Tier"][2] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][2])
						, [3] = TTH_VARI.talent[strHero]["Tier"][3] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][3])
						, [4] = TTH_VARI.talent[strHero]["Tier"][4] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][4])
						, [5] = TTH_VARI.talent[strHero]["Tier"][5] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][5])
						, [6] = TTH_VARI.talent[strHero]["Tier"][6] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][6])
						, [7] = TTH_VARI.talent[strHero]["Tier"][7] - TTH_COMMON.floor(TTH_VARI.talent[strHero]["Tier"][7])
					};

					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
						local arrTown = TTH_MANAGE.listMayorTown8Hero(strHero);
						for i, strMayorTown in arrTown do
							TTH_GLOBAL.updateTownDwellingCreature(strMayorTown, arrCreatureGrowth8Tier);
						end
					else
						TTH_GLOBAL.updateTownDwellingCreature(strTown, arrCreatureGrowth8Tier);
					end;
					TTH_GLOBAL.signHero4TownRecruit(strHero);
				end;
      	function TTH_TALENT.checkExpedition8Nikolay(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.checkExpedition8Nikolay", iPlayer, strHero);

      		local bIsExpedition = TTH_ENUM.Yes;
      		local strHeroNikolay = "Nikolay";
      		if strHero == strHeroNikolay then
      			bIsExpedition = TTH_ENUM.No;
      		else
	      		if (
	      				TTH_GLOBAL.getRace8Hero(strHero) == TOWN_NECROMANCY
	      			  or TTH_VARI.semiNecro[strHero] ~= nil
	      			)
	      			and contains(GetPlayerHeroes(iPlayer), strHeroNikolay) ~= nil
	      			and TTH_GLOBAL.getDistance(strHero, strHeroNikolay) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
	      			bIsExpedition = TTH_ENUM.No;
	      		end;
      		end;
      		return bIsExpedition;
      	end;
      	function TTH_TALENT.getDistance4Hero2NearestMayorTown8Nikolay(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.getDistance4Hero2NearestMayorTown8Nikolay", iPlayer, strHero);

      		local iDistance = TTH_FINAL.NUM_MAX;
      		local strHeroNikolay = "Nikolay";
      		if strHero == strHeroNikolay then
      			iDistance = 0;
      		else
	      		if (
	      				TTH_GLOBAL.getRace8Hero(strHero) == TOWN_NECROMANCY
	      			  or TTH_VARI.semiNecro[strHero] ~= nil
	      			)
	      			and contains(GetPlayerHeroes(iPlayer), strHeroNikolay) ~= nil then
	      		  iDistance = TTH_GLOBAL.getDistance(strHero, strHeroNikolay);
	      		end;
      		end;
      		return iDistance;
      	end;

			-- Pelt 094 弗拉基米尔
				function TTH_TALENT.initPelt(strHero)
					TTH_MAIN.debug("TTH_TALENT.initPelt", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["Power"] = 0
					};
				end;
				function TTH_TALENT.combatResultPelt(iPlayer, strHero, iCombatIndex)
					TTH_MAIN.debug("TTH_TALENT.combatResultPelt", iPlayer, strHero, iCombatIndex);

					local iPlayer = GetObjectOwner(strHero);
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					local iNecroSet = TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_NECROMANCERS_PELT);
					local iHeroLevel = GetHeroLevel(strHero);
					local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
					local iTownCount = length(TTH_GLOBAL.listTown8Player4Race(iPlayer, TOWN_NECROMANCY));
					local iGainPower = TTH_COMMON.round((30 * iKnowledge + 50 * iTownCount) * (1 + iNecroSet * 0.1));
					TTH_VARI.talent[strHero]["Power"] = TTH_VARI.talent[strHero]["Power"]	+ iGainPower;

					local strPathMain = {
    				TTH_PATH.Talent[strHero]["GainPower"]
	    			;iGainPower=iGainPower
						,iCurrentPower=TTH_VARI.talent[strHero]["Power"]
	    		};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;
				function TTH_TALENT.activePelt(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					local iNecroSet = TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_NECROMANCERS_PELT);
					local iCastLevel = iNecroSet + 1;
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
      		local arrOption = {};
      		local i = 1;
					for iIndex = 0, 6 do
						local iCreatureId = arrCreature4Hero[iIndex]["Id"];
						for jIndex = 1, iCastLevel do
							for kIndex = 1, 3 do
								if iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][jIndex][kIndex]
									and TTH_VARI.talent[strHero]["Power"] >= TTH_TABLE_NCF_CREATURES[iCreatureId]["POWER"] then
									arrOption[i] = {
										["Id"] = iCreatureId
										, ["Text"] = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
										, ["Callback"] = "TTH_TALENT.implActivePelt"
									};
									i = i + 1;
								end;
							end;
						end;
						if (
								(iCreatureId == CREATURE_MUMMY	and iCastLevel >= 5)
								or (iCreatureId == CREATURE_DEATH_KNIGHT and iCastLevel >= 6)
								or (iCreatureId == CREATURE_935 and iCastLevel >= 5)
							)
							and TTH_VARI.talent[strHero]["Power"] >= TTH_TABLE_NCF_CREATURES[iCreatureId]["POWER"] then
							arrOption[i] = {
								["Id"] = iCreatureId
								, ["Text"] = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
								, ["Callback"] = "TTH_TALENT.implActivePelt"
							};
							i = i + 1;
						end;
					end;

					if length(arrOption) == 0 then
						local arrArtifactNameExist = {};
						local arrArtifactNameNotExist = {};
						for i = 0, 5 do
							local iComponentId = TTH_TABLE.ArtifactSetBonus[TTH_ENUM.SET_NECROMANCERS_PELT]["Component"][i];
							if HasArtefact(strHero, iComponentId, 1) ~= nil then
							  arrArtifactNameExist[i + 1] = TTH_TABLE.Artifact[iComponentId]["Text"];
							  arrArtifactNameNotExist[i + 1] = "";
							else
							  arrArtifactNameExist[i + 1] = "";
							  arrArtifactNameNotExist[i + 1] = TTH_TABLE.Artifact[iComponentId]["Text"];
							end;
						end;
						local strPathMain = {
	    				TTH_PATH.Talent[strHero]["NoCreature4Cast"]
		    			;iCurrentPower=TTH_VARI.talent[strHero]["Power"]
		    			,iCastLevel=iCastLevel
		    			,strTownRace=TTH_PATH.Race[TOWN_NECROMANCY]
		    			,strArtifactNameExist1=arrArtifactNameExist[1]
		    			,strArtifactNameNotExist1=arrArtifactNameNotExist[1]
		    			,strArtifactNameExist2=arrArtifactNameExist[2]
		    			,strArtifactNameNotExist2=arrArtifactNameNotExist[2]
		    			,strArtifactNameExist3=arrArtifactNameExist[3]
		    			,strArtifactNameNotExist3=arrArtifactNameNotExist[3]
		    			,strArtifactNameExist4=arrArtifactNameExist[4]
		    			,strArtifactNameNotExist4=arrArtifactNameNotExist[4]
		    			,strArtifactNameExist5=arrArtifactNameExist[5]
		    			,strArtifactNameNotExist5=arrArtifactNameNotExist[5]
		    			,strArtifactNameExist6=arrArtifactNameExist[6]
		    			,strArtifactNameNotExist6=arrArtifactNameNotExist[6]
		    		};
			    	TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
						return nil;
					end;

					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
				end;
				function TTH_TALENT.implActivePelt(iPlayer, strHero, iCreatureId)
					local iPower4Creature = TTH_TABLE_NCF_CREATURES[iCreatureId]["POWER"];
					local iCreatureNumber = TTH_COMMON.floor(TTH_VARI.talent[strHero]["Power"] / iPower4Creature);
					local iUsedPower = iPower4Creature * iCreatureNumber;
					TTH_VARI.talent[strHero]["Power"] = TTH_VARI.talent[strHero]["Power"] - iUsedPower;
					TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iCreatureNumber, TTH_ENUM.CastCreature);
					local strPathMain = {
    				TTH_PATH.Talent[strHero]["Success"]
	    			;iCreatureNumber=iCreatureNumber
						,strCreatureName=TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
						,iUsedPower=iUsedPower
	    		};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;

			-- Sandro 山德鲁
				TTH_VARI.talent["Sandro"] = {
					["Step"] = 5
					, ["Bonus"] = 0
				};
				function TTH_TALENT.dealSandro(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealSandro", iPlayer, strHero);

					local iCountMagic = TTH_GLOBAL.countHeroKnowSpell(strHero);
					if iCountMagic / TTH_VARI.talent[strHero]["Step"] > TTH_VARI.talent[strHero]["Bonus"] then
						local iStatBonusNumber = TTH_COMMON.ceil(iCountMagic / TTH_VARI.talent[strHero]["Step"]) - TTH_VARI.talent[strHero]["Bonus"];
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iStatBonusNumber);
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_KNOWLEDGE, iStatBonusNumber);
						TTH_VARI.talent[strHero]["Bonus"] = TTH_COMMON.ceil(iCountMagic / TTH_VARI.talent[strHero]["Step"]);
					end;
				end;

		-- Inferno
			-- Sovereign 110 卡-贝勒斯
				TTH_VARI.talent["Sovereign"] = {
					["Building8Level"] = {
						["BUILDING_FONTAIN_OF_FORTUNE"] = {
							["Level"] = 1
						}
						, ["BUILDING_TEMPLE"] = {
							["Level"] = 5
						}
						, ["BUILDING_FORTUITOUS_SANCTUARY"] = {
							["Level"] = 9
						}
						, ["BUILDING_FONTAIN_OF_YOUTH"] = {
							["Level"] = 13
						}
						, ["BUILDING_FAERIE_RING"] = {
							["Level"] = 17
						}
						, ["BUILDING_NOMADS_SHAMAN"] = {
							["Level"] = 21
						}
						, ["BUILDING_RALLY_FLAG"] = {
							["Level"] = 25
						}
						, ["BUILDING_IDOL_OF_FORTUNE"] = {
							["Level"] = 29
						}
						, ["BUILDING_MAGIC_WELL"] = {
							["Level"] = 33
						}
						, ["BUILDING_OASIS"] = {
							["Level"] = 37
						}
					}
				};
        function TTH_TALENT.combatResultSovereign(iPlayer, strHero, iCombatIndex)
        	TTH_MAIN.debug("TTH_TALENT.combatResultSovereign", iPlayer, strHero, iCombatIndex);

        	local iHeroLevel = GetHeroLevel(strHero);
        	for strBuilding, objItem in TTH_VARI.talent["Sovereign"]["Building8Level"] do
        		if length(TTH_VARI.arrBuilding[strBuilding]) > 0
        			and iHeroLevel >= objItem["Level"] then
        			MakeHeroInteractWithObject(strHero, TTH_VARI.arrBuilding[strBuilding][0]);
        		end;
        	end
        end;

      -- Biara 114 拜娅拉
      	function TTH_TALENT.dealDailyBiara(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.dealDailyBiara", iPlayer, strHero);

      		if TTH_VARI.dayOfWeek == 4 then
  					local iHeroLevel = GetHeroLevel(strHero);
  					local iHeroKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
  					local arrCreatureGrowth8Tier = {};
  					for iTier = 1, 7 do
  						arrCreatureGrowth8Tier[iTier] = TTH_COMMON.round(iHeroLevel / TTH_TABLE.Coef8Mayor4TownDwellingCreature[iTier]);
  					end;
      			local arrTown = TTH_MANAGE.listMayorTown8Hero(strHero);
      			if arrTown ~= nil and length(arrTown) > 0 then
	      			for i, strTown in arrTown do
	    					TTH_GLOBAL.updateTownDwellingCreature(strTown, arrCreatureGrowth8Tier);
	      			end;
	      			TTH_GLOBAL.signHero4TownRecruit(strHero);
	      		end;
      		end;
      	end;

			-- Calid2 115 卡利德
				function TTH_TALENT.combatResultCalid2(iPlayer, strHero, iCombatIndex)
					TTH_MAIN.debug("TTH_TALENT.combatResultCalid2", iPlayer, strHero, iCombatIndex);

					local strHeroCalid2 = "Calid2";
      		local bInArea = TTH_ENUM.No;
      		if strHero == strHeroCalid2 then
      			bInArea = TTH_ENUM.Yes;
      		else
	      		if contains(GetPlayerHeroes(iPlayer), strHeroCalid2) ~= nil
	      			and TTH_GLOBAL.getDistance(strHero, strHeroCalid2) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
	      			bInArea = TTH_ENUM.Yes;
	      		end;
      		end;
      		if bInArea == TTH_ENUM.Yes then
      			local iExp = TTH_MANAGE.calcDailyExp4Mayor(strHeroCalid2);
      			TTH_GLOBAL.giveExp(strHero, iExp);
      		end;
				end;

      -- Sheltem 116 谢尔坦
      	function TTH_TALENT.initSheltem(strHero)
					TTH_MAIN.debug("TTH_TALENT.initSheltem", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["Flag"] = TTH_ENUM.Enable
					};
      	end;
      	function TTH_TALENT.activeSheltem(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPredealSheltem4Times(iPlayer, strHero);
      	end;
      	function TTH_TALENT.checkPredealSheltem4Times(iPlayer, strHero)
      		if TTH_VARI.talent[strHero] == TTH_ENUM.Unable then
      			local strText = TTH_PATH.Talent[strHero]["HasUsed"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
      		end;
      		TTH_TALENT.radioActiveSheltem(iPlayer, strHero);
      	end;
      	function TTH_TALENT.radioActiveSheltem(iPlayer, strHero)
      		local iSpellPower = GetHeroStat(strHero, STAT_SPELL_POWER);
      		local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
      		local iChangeSpellPower = TTH_COMMON.floor(iSpellPower / 2);
      		local iChangeKnowledge = TTH_COMMON.floor(iKnowledge / 2);
	      	local strPathP2K = {
	      		TTH_PATH.Talent[strHero]["P2K"]
	      		;iChangeSpellPower=iChangeSpellPower
	      	};
	      	local strPathK2P = {
	      		TTH_PATH.Talent[strHero]["K2P"]
	      		;iChangeKnowledge=iChangeKnowledge
	      	};
      		local arrOption = {
						[1] = {
							["Id"] = STAT_SPELL_POWER
							, ["Text"] = strPathP2K
							, ["Callback"] = "TTH_TALENT.implActiveSheltem"
						}
						, [2] = {
							["Id"] = STAT_KNOWLEDGE
							, ["Text"] = strPathK2P
							, ["Callback"] = "TTH_TALENT.implActiveSheltem"
						}
					};
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
      	end;
      	function TTH_TALENT.implActiveSheltem(iPlayer, strHero, iStat)
      		if iStat == STAT_SPELL_POWER then
      			local iSpellPower = GetHeroStat(strHero, STAT_SPELL_POWER);
      			local iChangeSpellPower = TTH_COMMON.floor(iSpellPower / 2);
      			if iChangeSpellPower > 0 then
      				TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iChangeSpellPower * -1);
      				TTH_GLOBAL.signChangeHeroStat(strHero, STAT_KNOWLEDGE, iChangeSpellPower * 1);
      			end;
      		elseif iStat == STAT_KNOWLEDGE then
      			local iKnowledge = GetHeroStat(strHero, STAT_KNOWLEDGE);
      			local iChangeKnowledge = TTH_COMMON.floor(iKnowledge / 2);
      			if iChangeKnowledge > 0 then
      				TTH_GLOBAL.signChangeHeroStat(strHero, STAT_KNOWLEDGE, iChangeKnowledge * -1);
      				TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iChangeKnowledge * 1);
      			end;
      		end;
      		TTH_VARI.talent[strHero] = TTH_ENUM.Unable;
      	end;
      	function TTH_TALENT.resetDailySheltem(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetDailySheltem", iPlayer, strHero);

      		TTH_VARI.talent[strHero] = TTH_ENUM.Enable;
      	end;

		-- Fortress
			-- Una 128 英伽
				TTH_TABLE.UnaRune = {
					[249] = { -- 冲锋符文
						["Id"] = SPELL_RUNE_OF_CHARGE
						, ["Level"] = 1
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_CHARGE]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Skill
							, ["Value"] = {
								[1] = HERO_SKILL_LEADERSHIP
								, [2] = HERO_SKILL_ENCOURAGE
							}
						}
					}
					, [250] = { -- 狂暴符文
						["Id"] = SPELL_RUNE_OF_BERSERKING
						, ["Level"] = 1
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_BERSERKING]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Skill
							, ["Value"] = {
								[1] = HERO_SKILL_OFFENCE
								, [2] = HERO_SKILL_FRENZY
							}
						}
					}
					, [252] = { -- 驱魔符文
						["Id"] = SPELL_RUNE_OF_EXORCISM
						, ["Level"] = 2
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_EXORCISM]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Spell
							, ["Value"] = {
								[1] = SPELL_MASS_DISPEL
							}
						}
					}
					, [253] = { -- 元素免疫符文
						["Id"] = SPELL_RUNE_OF_ELEMENTAL_IMMUNITY
						, ["Level"] = 2
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_ELEMENTAL_IMMUNITY]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Spell
							, ["Value"] = {
								[1] = SPELL_ANTI_MAGIC
							}
						}
					}
					, [251] = { -- 魔控符文
						["Id"] = SPELL_RUNE_OF_MAGIC_CONTROL
						, ["Level"] = 3
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_MAGIC_CONTROL]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Skill
							, ["Value"] = {
								[1] = HERO_SKILL_LIGHT_MAGIC
								, [2] = HERO_SKILL_MASTER_OF_BLESSING
							}
						}
					}
					, [254] = { -- 雷鸣符文
						["Id"] = SPELL_RUNE_OF_STUNNING
						, ["Level"] = 3
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_STUNNING]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Skill
							, ["Value"] = {
								[1] = HERO_SKILL_DESTRUCTIVE_MAGIC
								, [2] = HERO_SKILL_MASTER_OF_LIGHTNINGS
							}
						}
					}
					, [256] = { -- 空灵符文
						["Id"] = SPELL_RUNE_OF_ETHEREALNESS
						, ["Level"] = 4
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_ETHEREALNESS]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Skill
							, ["Value"] = {
								[1] = HERO_SKILL_DEFENCE
								, [2] = HERO_SKILL_EVASION
							}
						}
					}
					, [257] = { -- 复活符文
						["Id"] = SPELL_RUNE_OF_REVIVE
						, ["Level"] = 4
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_REVIVE]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Spell
							, ["Value"] = {
								[1] = SPELL_REGENERATION
							}
						}
					}
					, [255] = { -- 暴怒符文
						["Id"] = SPELL_RUNE_OF_BATTLERAGE
						, ["Level"] = 5
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_BATTLERAGE]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Skill
							, ["Value"] = {
								[1] = HERO_SKILL_DARK_MAGIC
								, [2] = HERO_SKILL_MASTER_OF_MIND
							}
						}
					}
					, [258] = { -- 龙形符文
						["Id"] = SPELL_RUNE_OF_DRAGONFORM
						, ["Level"] = 5
						, ["ConfirmText"] = TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_DRAGONFORM]
						, ["Reward"] = {
							["Type"] = TTH_ENUM.Stat
							, ["Value"] = {
								[STAT_ATTACK] = 2
								, [STAT_DEFENCE] = 2
								, [STAT_SPELL_POWER] = 2
								, [STAT_KNOWLEDGE] = 2
							}
						}
					}
				};
				function TTH_TALENT.initUna(iPlayer, strHero)
					if TTH_VARI.talent[strHero] == nil then
						TTH_VARI.talent[strHero] = {
							["OperTimes"] = 1
							, ["MaxOperTimes"] = 1
							, ["Rune"] = {
								[1] = TTH_ENUM.No
								, [2] = TTH_ENUM.No
								, [3] = TTH_ENUM.No
								, [4] = TTH_ENUM.No
								, [5] = TTH_ENUM.No
							}
						};
					end;
				end;
				function TTH_TALENT.activeUna(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.initUna(iPlayer, strHero);
					TTH_TALENT.checkPreActiveUna4NotEnoughTimes(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveUna4NotEnoughTimes(iPlayer, strHero)
					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
					if TTH_VARI.talent[strHero]["OperTimes"] <= 0 then
						if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
							if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, strText);
			  				return nil;
							end;
						else
			  			TTH_GLOBAL.sign(strHero, strText);
							return nil;
			  		end;
					end;

					TTH_TALENT.checkPreActiveUna4SuitableRune(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveUna4SuitableRune(iPlayer, strHero)
					local arrOptionRune = {};
					local i = 1;
					for iRuneId, objRune in TTH_TABLE.UnaRune do
						if TTH_VARI.talent[strHero]["Rune"][objRune["Level"]] == TTH_ENUM.No then
							if KnowHeroSpell(strHero, iRuneId) ~= nil then
								arrOptionRune[i] = {
									["Id"] = iRuneId
									, ["Text"] = TTH_TABLE.Rune[iRuneId]["Text"]
									, ["Callback"] = "TTH_TALENT.confirmActiveUna"
								};
								i = i + 1;
							end;
						end;
					end;
					if length(arrOptionRune) <= 0 then
						local strText = TTH_PATH.Talent[strHero]["NoSuitableRune"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTips"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionRune, strPathOption);
				end;
				function TTH_TALENT.confirmActiveUna(iPlayer, strHero, iRuneId)
					local strText = TTH_TABLE.UnaRune[iRuneId]["ConfirmText"];
					local strCallbackOk = "TTH_TALENT.implActiveUna("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iRuneId..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implActiveUna(iPlayer, strHero, iRuneId)
					if TTH_VARI.talent[strHero]["OperTimes"] > 0 then
						TTH_VARI.talent[strHero]["OperTimes"] = TTH_VARI.talent[strHero]["OperTimes"] - 1;
					else
						TTH_MANAGE.useOperTimes(strHero);
					end;
					TTH_VARI.talent[strHero]["Rune"][TTH_TABLE.UnaRune[iRuneId]["Level"]] = TTH_ENUM.Yes; -- 标记该等级符文已解析
					local enumType = TTH_TABLE.UnaRune[iRuneId]["Reward"]["Type"];
					local arrRewardValue = TTH_TABLE.UnaRune[iRuneId]["Reward"]["Value"];
					if enumType == TTH_ENUM.Skill then
						for iIndex, iSkillId in arrRewardValue do
							GiveHeroSkill(strHero, iSkillId);
							sleep(1);
						end;
					elseif enumType == TTH_ENUM.Spell then
						for iIndex, iSpellId in arrRewardValue do
							TeachHeroSpell(strHero, iSpellId);
							local strText = {
								"/Text/Game/Scripts/Learnspell.txt"
								;name=TTH_TABLE_SPELL[iSpellId]["NAME"]
							};
							TTH_GLOBAL.sign(strHero, strText);
						end;
					elseif enumType == TTH_ENUM.Stat then
						for iStatId, iStatValue in arrRewardValue do
							TTH_GLOBAL.signChangeHeroStat(strHero, iStatId, iStatValue);
						end;
					end;
					local strText = TTH_PATH.Talent[strHero]["Success"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
				function TTH_TALENT.resetWeeklyUna(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.resetWeeklyUna", iPlayer, strHero);

					TTH_TALENT.initUna(iPlayer, strHero);
					TTH_VARI.talent[strHero]["OperTimes"] = TTH_VARI.talent[strHero]["MaxOperTimes"];
				end;

			-- Rolf 132 洛尔夫
				function TTH_TALENT.initRolf(iPlayer, strHero)
					if TTH_VARI.talent[strHero] == nil then
						TTH_VARI.talent[strHero] = {
							["OperTimes"] = 1
							, ["MaxOperTimes"] = 1
						};
					end;
				end;
				function TTH_TALENT.activeRolf(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.initRolf(iPlayer, strHero);
					TTH_TALENT.checkPreActiveRolf4NotEnoughTimes(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveRolf4NotEnoughTimes(iPlayer, strHero)
					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
	    		if TTH_VARI.talent[strHero]["OperTimes"] <= 0 then
	    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
	    				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
			    			TTH_GLOBAL.sign(strHero, strText);
		    				return nil;
	    				end;
	    			else
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
		    		end;
	    		end;

					TTH_TALENT.checkPreActiveRolf4SuitableCreature(iPlayer, strHero);
				end;
				function TTH_TALENT.checkPreActiveRolf4SuitableCreature(iPlayer, strHero)
					local arrOptionCreature = {};
					local arrCreature = GetObjectNamesByType("CREATURE");
					local i = 1;
					for iIndexCreature, strCreatureStack in arrCreature do
						if TTH_GLOBAL.getDistance(strHero, strCreatureStack) <= 5 then
							local iPosX, iPosY, iPosZ = GetObjectPosition(strCreatureStack);
							arrOptionCreature[i] = {
								["Id"] = strCreatureStack
								, ["Text"] = {
										TTH_PATH.Talent[strHero]["OptionTemplate"]
										;iPosX=iPosX
										,iPosY=iPosY
									}
								, ["Callback"] = "TTH_TALENT.confirmActiveRolf"
							};
							i = i + 1;
						end;
					end;
					if length(arrOptionCreature) <= 0 then
						local strText = TTH_PATH.Talent[strHero]["NoSuitableCreature"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					local strPathOption = TTH_PATH.Talent[strHero]["RadioTips"];
					TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionCreature, strPathOption);
				end;
				function TTH_TALENT.confirmActiveRolf(iPlayer, strHero, strCreatureStack)
					local arrTemplateCreature = {"", "", "", "", "", "", ""};
					local strTemplateCreature = TTH_PATH.Talent[strHero]["TemplateCreature"];
					local arrCreatureSlot = TTH_GLOBAL.getObjectCreatureInfo(strCreatureStack);
					local iHeroLevel = GetHeroLevel(strHero);
					local iCoef = 0.1 + iHeroLevel * 0.02;
					for iSlot = 0, 6 do
						if arrCreatureSlot[iSlot]["Id"] > 0 then
							local iSlotCount = TTH_COMMON.round(iCoef * arrCreatureSlot[iSlot]["Count"]);
							arrTemplateCreature[iSlot] = {
								strTemplateCreature
								;strCreatureName=TTH_TABLE_NCF_CREATURES[arrCreatureSlot[iSlot]["Id"]]["NAME"]
								,iCreatureCount=iSlotCount
							};
						end;
					end;

					local strPathMain = {
						TTH_PATH.Talent[strHero]["Confirm"]
						;strTemplateCreature0=arrTemplateCreature[0]
						,strTemplateCreature1=arrTemplateCreature[1]
						,strTemplateCreature2=arrTemplateCreature[2]
						,strTemplateCreature3=arrTemplateCreature[3]
						,strTemplateCreature4=arrTemplateCreature[4]
						,strTemplateCreature5=arrTemplateCreature[5]
						,strTemplateCreature6=arrTemplateCreature[6]
					};
					local strCallbackOk = "TTH_TALENT.implActiveRolf("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strCreatureStack)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implActiveRolf(iPlayer, strHero, strCreatureStack)
	    		if TTH_VARI.talent[strHero]["OperTimes"] > 0 then
	    			TTH_VARI.talent[strHero]["OperTimes"] = TTH_VARI.talent[strHero]["OperTimes"] - 1;
	    		else
	    			TTH_MANAGE.useOperTimes(strHero);
	    		end;
	    		local arrCreatureSlot = TTH_GLOBAL.getObjectCreatureInfo(strCreatureStack);
	    		local iHeroLevel = GetHeroLevel(strHero);
	    		local iCoef = 0.1 + iHeroLevel * 0.02;
	    		for iSlot = 0, 6 do
	    			local iCreatureId = arrCreatureSlot[iSlot]["Id"];
	    			if iCreatureId > 0 then
	    				local iSlotCount = TTH_COMMON.round(iCoef * arrCreatureSlot[iSlot]["Count"]);
	    				RemoveObjectCreatures(strCreatureStack, iCreatureId, iSlotCount);
	    			end;
	    		end;
	    		local strText = TTH_PATH.Talent[strHero]["Success"];
	    		TTH_GLOBAL.sign(strHero, strText);
				end;
				function TTH_TALENT.resetWeeklyRolf(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.resetWeeklyRolf", iPlayer, strHero);

					TTH_TALENT.initRolf(iPlayer, strHero);
	    		TTH_VARI.talent[strHero]["OperTimes"] = TTH_VARI.talent[strHero]["MaxOperTimes"];
				end;

			-- Ufretin 133 尤佛瑞汀
      	function TTH_TALENT.initUfretin(strHero)
					TTH_MAIN.debug("TTH_TALENT.initUfretin", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["TownLevel"] = 0
						, ["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
				function TTH_TALENT.calcCoefUfretin(strHero)
					local strHeroUfretin = "Ufretin";
					local iCoef = 1;
					if strHeroUfretin == strHero then
						if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
							iCoef = 0;
						end;
					end;
					return iCoef;
				end;
				function TTH_TALENT.useTimesUfretin(strHero)
					local strHeroUfretin = "Ufretin";
					if strHeroUfretin == strHero then
						if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
							TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
						end;
					end;
				end;
      	function TTH_TALENT.resetWeeklyUfretin(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyUfretin", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;
      	function TTH_TALENT.dealDailyUfretin(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealDailyUfretin", iPlayer, strHero);

      		if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
	      		local arrTown = TTH_MANAGE.listMayorTown8Hero(strHero);
	      		local iTownLevel = 0;
	      		for i, strTown in arrTown do
		      		local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
		      		local iTownBuildingTotalLevel = TTH_MANAGE.calcTownBuildingTotalLevel(objTown);
		      		iTownLevel = iTownLevel + iTownBuildingTotalLevel;
	      		end
	      		local iDiff = iTownLevel - TTH_VARI.talent[strHero]["TownLevel"];
	      		if iDiff > 0 then
	      			TTH_VARI.talent[strHero]["TownLevel"] = iTownLevel;
	      			TTH_GLOBAL.giveExp(strHero, iDiff * 500);
	      		end;
	      	end;
      	end;

			-- Wulfstan 134 乌尔夫斯坦
				TTH_FINAL.WULFSTAN_BONUS = 2;
      	function TTH_TALENT.initWulfstan(strHero)
					TTH_MAIN.debug("TTH_TALENT.initWulfstan", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["BonusLevel"] = 0
						, ["Outpost"] = {}
						, ["OutpostHistory"] = {}
						, ["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
					};
      	end;
				function TTH_TALENT.dealDailyWulfstan(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealDailyWulfstan", iPlayer, strHero);

					local arrOutpost = TTH_VARI.talent[strHero]["Outpost"];
					for i, strOutpost in arrOutpost do
						if GetObjectOwner(strOutpost) ~= iPlayer then
							TTH_VARI.talent[strHero]["Outpost"] = TTH_COMMON.remove8Value(TTH_VARI.talent[strHero]["Outpost"], strOutpost);
      				OverrideObjectTooltipNameAndDescription(strOutpost, TTH_PATH.Talent[strHero]["TitleCapture"], TTH_PATH.Talent[strHero]["DescCapture"]);
						end;
					end
				end;
				function TTH_TALENT.visitDwellingWulfstan(iPlayer, strHero, strBuildingName, funcCallback)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreVisitDwellingWulfstan4Times(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingWulfstan4Times(iPlayer, strHero, strBuildingName, funcCallback)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
      					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
			    			TTH_GLOBAL.sign(strHero, strText);

			    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
		    				return nil;
      				end;
      			else
    					local strText = TTH_PATH.Talent[strHero]["NotEnoughTimes"];
		    			TTH_GLOBAL.sign(strHero, strText);

		    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.checkPreVisitDwellingWulfstan4HasOutpost(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingWulfstan4HasOutpost(iPlayer, strHero, strBuildingName, funcCallback)
      		if contains(TTH_VARI.talent[strHero]["Outpost"], strBuildingName) ~= nil then
	    			TTH_GLOBAL.sign(strHero, TTH_PATH.Talent[strHero]["HasOutpost"]);

		    		TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
    				return nil;
      		end;

      		TTH_TALENT.confirmVisitDwellingWulfstan(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.confirmVisitDwellingWulfstan(iPlayer, strHero, strBuildingName, funcCallback)
					local strText = TTH_PATH.Talent[strHero]["ConfirmVisitDwelling"];
					local strCallbackOk = "TTH_TALENT.implVisitDwellingWulfstan("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					local strCallbackCancel = "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implVisitDwellingWulfstan(iPlayer, strHero, strBuildingName)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;
					TTH_VARI.talent[strHero]["Outpost"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["Outpost"], strBuildingName);
      		if contains(TTH_VARI.talent[strHero]["OutpostHistory"], strBuildingName) == nil then
						TTH_VARI.talent[strHero]["OutpostHistory"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["OutpostHistory"], strBuildingName);
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_ATTACK, TTH_FINAL.WULFSTAN_BONUS);
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_DEFENCE, TTH_FINAL.WULFSTAN_BONUS);
      		end;
      		OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Title"], TTH_PATH.Talent[strHero]["Desc"]);
					local strText = TTH_PATH.Talent[strHero]["SuccessVisitDwelling"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
      	function TTH_TALENT.resetWeeklyWulfstan(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyWulfstan", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;
      	function TTH_TALENT.checkExpedition8Wulfstan(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.checkExpedition8Wulfstan", iPlayer, strHero);

      		local bIsExpedition = TTH_ENUM.Yes;
      		if strHero == "Wulfstan" then
      			bIsExpedition = TTH_ENUM.No;
      		else
	      		if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_FORTRESS
	      			and TTH_VARI.talent["Wulfstan"] ~= nil then
		      		local arrDwelling = TTH_VARI.talent["Wulfstan"]["Outpost"];
		      		for i, strDwellingName in arrDwelling do
		      			if TTH_GLOBAL.getDistance(strHero, strDwellingName) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
		      				bIsExpedition = TTH_ENUM.No;
		      				break;
		      			end;
		      		end;
	      		end;
      		end;
      		return bIsExpedition;
      	end;
      	function TTH_TALENT.getDistance4Hero2NearestMayorTown8Wulfstan(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.getDistance4Hero2NearestMayorTown8Wulfstan", iPlayer, strHero);

      		local strWulfstan = "Wulfstan";
      		local arrDistance = {};
      		if TTH_VARI.talent[strWulfstan] ~= nil
	      		and contains(GetPlayerHeroes(iPlayer), strWulfstan) ~= nil
      			and TTH_GLOBAL.getRace8Hero(strHero) == TOWN_FORTRESS then
      			local arrDwelling = TTH_VARI.talent["Wulfstan"]["Outpost"];
      			for i, strDwellingName in arrDwelling do
      				TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strDwellingName));
      			end
      		end;
      		return arrDistance;
      	end;

		-- Stronghold
			-- :TODO Hero2 厄格特
				function TTH_TALENT.dealHero2(strHero)
					local iRecovery = 0;
					if strHero == "Hero2" then
						local iHeroLevel = GetHeroLevel(strHero);
						iRecovery = 10 * iHeroLevel;
					end;
					return iRecovery;
				end;

      -- Kunyak 148 库恩亚克
      	function TTH_TALENT.calcTownValueKunyak(strHero, arrTown)
					TTH_MAIN.debug("TTH_TALENT.calcTownValueKunyak", nil, strHero, arrTown);

					local iTownValue = 0;
					local strHeroKunyak = "Kunyak";
					if strHero == strHeroKunyak then
						local iGoblinCount = 0;
						for strTown, objTown in arrTown do
							local arrCreature4Object = TTH_GLOBAL.getObjectCreatureInfo(strTown);
							for iSlot = 0, 6 do
								if arrCreature4Object[iSlot]["Count"] > 0
									and contains(TTH_TABLE.StrongholdCreature, arrCreature4Object[iSlot]["Id"]) ~= nil then
									iGoblinCount = iGoblinCount + arrCreature4Object[iSlot]["Count"];
								end;
							end;
						end;
						local arrCreature4Object = TTH_GLOBAL.getHeroCreatureInfo(strHero);
						for iSlot = 0, 6 do
							if arrCreature4Object[iSlot]["Count"] > 0
								and contains(TTH_TABLE.StrongholdCreature, arrCreature4Object[iSlot]["Id"]) ~= nil then
								iGoblinCount = iGoblinCount + arrCreature4Object[iSlot]["Count"];
							end;
						end;
						iTownValue = TTH_COMMON.round(iGoblinCount / 3);
					end;
					return iTownValue;
      	end;

      -- Hero9 135 科尔汉
				function TTH_TALENT.dealDailyHero9(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealDailyHero9", iPlayer, strHero);

	    		local iCreatureId = CREATURE_GOBLIN;
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					for iIndex = 0, 6 do
						if arrCreature4Hero[iIndex]["Count"] > 0 then
							if arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN_TRAPPER
								or arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN_DEFILER then
								iCreatureId = arrCreature4Hero[iIndex]["Id"];
								break;
							end;
						end;
					end;
	    		local iCreatureNumber = 1;
					for iIndex = 0, 6 do
						if arrCreature4Hero[iIndex]["Count"] > 0 then
							if arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN
								or arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN_TRAPPER
								or arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN_DEFILER then
								iCreatureNumber = iCreatureNumber + arrCreature4Hero[iIndex]["Count"];
							end;
						end;
					end;
	    		TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, 1, TTH_ENUM.AddCreature);
	    		TTH_GLOBAL.putSettleResource(iPlayer, GOLD, iCreatureNumber);
				end;

			-- Quroq 150 魁洛克
      	function TTH_TALENT.initQuroq(strHero)
					TTH_MAIN.debug("TTH_TALENT.initQuroq", nil, strHero);

					TTH_VARI.talent[strHero] = {
						["TownLevel"] = 0
					};
      	end;
      	function TTH_TALENT.dealDailyQuroq(iPlayer, strHero)
					TTH_MAIN.debug("TTH_TALENT.dealDailyQuroq", iPlayer, strHero);

      		if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
	      		local arrTown = TTH_MANAGE.listMayorTown8Hero(strHero);
	      		local iTownLevel = 0;
	      		for i, strTown in arrTown do
		      		local objTown = TTH_MANAGE.analysisTownBuildLevel(strTown);
		      		local iTownBuildingTotalLevel = TTH_MANAGE.calcTownBuildingTotalLevel(objTown);
		      		iTownLevel = iTownLevel + iTownBuildingTotalLevel;
	      		end
	      		local iDiff = iTownLevel - TTH_VARI.talent[strHero]["TownLevel"];
	      		if iDiff > 0 then
	      			TTH_VARI.talent[strHero]["TownLevel"] = iTownLevel;
	    				TTH_GLOBAL.putSettleResource(iPlayer, GOLD, iDiff * 500);
	      		end;
	      	end;
      	end;

			-- Azar 138 艾扎-埃克
				TTH_FINAL.AZAR_COST = 5000;
      	function TTH_TALENT.initAzar(strHero)
					TTH_MAIN.debug("TTH_TALENT.initAzar", nil, strHero);

      		TTH_VARI.talent[strHero] = {
						["CurrentTimes"] = 1
						, ["MaxTimes"] = 1
						, ["WolfLair"] = {}
					};
      	end;
				function TTH_TALENT.visitDwellingAzar(iPlayer, strHero, strBuildingName, funcCallback)
					TTH_COMMON.nextNavi(TTH_PATH.Talent[strHero]["Text"]);

					TTH_TALENT.checkPreVisitDwellingAzar4Times(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingAzar4Times(iPlayer, strHero, strBuildingName, funcCallback)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] <= 0 then
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
      				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
      					local strText = TTH_PATH.Talent[strHero]["NotEnoughOperTimes"];
			    			TTH_GLOBAL.sign(strHero, strText);

			    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
		    				return nil;
      				end;
      			else
    					local strText = TTH_PATH.Talent[strHero]["NotEnoughOperTimes"];
		    			TTH_GLOBAL.sign(strHero, strText);

		    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
	    				return nil;
		    		end;
      		end;

      		TTH_TALENT.checkPreVisitDwellingAzar4Gold(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.checkPreVisitDwellingAzar4Gold(iPlayer, strHero, strBuildingName, funcCallback)
					local iGold = length(TTH_VARI.talent[strHero]["WolfLair"]) * TTH_FINAL.AZAR_COST;
      		if GetPlayerResource(iPlayer, GOLD) < iGold then
      			local strPathMain = {
							TTH_PATH.Talent[strHero]["NotEnoughGold"]
					    ;iGold=iGold
      			};
	    			TTH_GLOBAL.sign(strHero, strPathMain);

	    			TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
    				return nil;
      		end;

      		TTH_TALENT.confirmVisitDwellingAzar(iPlayer, strHero, strBuildingName, funcCallback);
				end;
				function TTH_TALENT.confirmVisitDwellingAzar(iPlayer, strHero, strBuildingName, funcCallback)
					local strCreatureName = TTH_TABLE_NCF_CREATURES[CREATURE_WOLF]["NAME"];

					local strPathMain = {
						TTH_PATH.Talent[strHero]["ConfirmVisitDwelling"]
				    ;strCreatureName=strCreatureName
					};
					local strCallbackOk = "TTH_TALENT.implVisitDwellingAzar("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..")";
					local strCallbackCancel = "TTH_VISIT.visitBuildingWithoutScript("..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strBuildingName)..","..TTH_COMMON.psp(funcCallback)..")";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_TALENT.implVisitDwellingAzar(iPlayer, strHero, strBuildingName)
      		if TTH_VARI.talent[strHero]["CurrentTimes"] > 0 then
    				TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["CurrentTimes"] - 1;
		    	else
      			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
		    			TTH_MANAGE.useOperTimes(strHero);
		    		end;
      		end;
					TTH_GLOBAL.reduceResource(iPlayer, GOLD, length(TTH_VARI.talent[strHero]["WolfLair"]) * TTH_FINAL.AZAR_COST);

      		local iPosX, iPosY, iPosZ = GetObjectPosition(strBuildingName);
      		Play3DSoundForPlayers(GetPlayerFilter(iPlayer), H55_SndCrash, iPosX, iPosY, iPosZ);
      		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);

      		if contains(TTH_VARI.talent[strHero]["WolfLair"], strBuildingName) == nil then
						TTH_VARI.talent[strHero]["WolfLair"] = TTH_COMMON.push(TTH_VARI.talent[strHero]["WolfLair"], strBuildingName);
					end;
      		ReplaceDwelling(strBuildingName, iHeroRace, CREATURE_WOLF);
      		OverrideObjectTooltipNameAndDescription(strBuildingName, TTH_PATH.Talent[strHero]["Title"], TTH_PATH.Talent[strHero]["Desc"]);
					local strText = TTH_PATH.Talent[strHero]["SuccessVisitDwelling"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
      	function TTH_TALENT.resetWeeklyAzar(iPlayer, strHero)
      		TTH_MAIN.debug("TTH_TALENT.resetWeeklyAzar", iPlayer, strHero);

      		TTH_VARI.talent[strHero]["CurrentTimes"] = TTH_VARI.talent[strHero]["MaxTimes"];
      	end;

	-- 宝物
		TTH_ARTI = {};

		-- ARTIFACT_DIMENSION_DOOR 103 回城令
			TTH_VARI.mainTown4Player = {};
			function TTH_ARTI.init1034Player(iPlayer) -- 初始化玩家的主城
				TTH_MAIN.debug("TTH_ARTI.init1034Player", iPlayer, nil);

				for i, strTown in TTH_VARI.arrTown do
					if iPlayer == GetObjectOwner(strTown)
						and TTH_VARI.mainTown4Player[iPlayer] == nil then
						TTH_VARI.mainTown4Player[iPlayer] = strTown;
						break;
					end;
				end;
			end;
			function TTH_ARTI.active103(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"]);

				local strTown = TTH_VARI.mainTown4Player[iPlayer];
				TTH_ARTI.checkPreActive1034HasLostTown(iPlayer, strHero, strTown)
			end;
			function TTH_ARTI.checkPreActive1034HasLostTown(iPlayer, strHero, strTown)
				if GetObjectOwner(strTown) ~= iPlayer then
					local strText = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["HasLostTown"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_ARTI.confirmActive103(iPlayer, strHero, strTown);
			end;
			function TTH_ARTI.confirmActive103(iPlayer, strHero, strTown)
				local strTown = TTH_VARI.mainTown4Player[iPlayer];
				local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"];

				-- 视角定位
					local iPosX, iPosY, iPosZ = GetObjectPosition(strTown);
					MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
					sleep(2);

				local strPathMain={
					TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Confirm"]
					;strArtifactName=strArtifactName
				};
				local strCallbackOk = "TTH_ARTI.implActive103("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_ARTI.implActive103(iPlayer, strHero, strTown)
				RemoveArtefact(strHero, ARTIFACT_DIMENSION_DOOR);
				MakeHeroInteractWithObject(strHero, strTown);
			end;

		-- 药水宝物 ARTIFACT_POTION_X
			function TTH_ARTI.initPotion(iPlayer, strHero, iPotionId)
				local objBuy = TTH_TABLE.BuyConsumeInfo[iPotionId];
				local iArtifactId = objBuy["ArtifactId"];
				local iMaxTimes = TTH_FINAL.POTION_MAXTIMES;
				if TTH_VARI.recordPotion[iArtifactId] == nil then
					TTH_VARI.recordPotion[iArtifactId] = {};
				end;
				if TTH_VARI.recordPotion[iArtifactId][strHero] == nil then
					TTH_VARI.recordPotion[iArtifactId][strHero] = {
						["RemainTimes"] = iMaxTimes
						, ["Day"] = 0
						, ["CombatIndex"] = -1
					};
				end;
			end;
			function TTH_ARTI.resetTimesPotion(iPlayer, strHero, iPotionId)
				local objBuy = TTH_TABLE.BuyConsumeInfo[iPotionId];
				local iArtifactId = objBuy["ArtifactId"];
				local iMaxTimes = TTH_FINAL.POTION_MAXTIMES;
				TTH_VARI.recordPotion[iArtifactId][strHero]["RemainTimes"] = iMaxTimes;
			end;
			-- ARTIFACT_POTION_MANA 137 魔力药水
				function TTH_ARTI.active137(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Text"]);

					TTH_ARTI.initPotion(iPlayer, strHero, TTH_ENUM.PotionMana);
					TTH_ARTI.checkPreActive1374RemainTimes(iPlayer, strHero)
				end;
				function TTH_ARTI.checkPreActive1374RemainTimes(iPlayer, strHero)
					if TTH_VARI.recordPotion[ARTIFACT_POTION_MANA][strHero]["RemainTimes"] <= 0 then
						local strText = TTH_PATH.Artifact["Potion"]["NotEnoughTimes"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.checkPreActive1374HasUsedToday(iPlayer, strHero);
				end;
				function TTH_ARTI.checkPreActive1374HasUsedToday(iPlayer, strHero)
					if TTH_VARI.recordPotion[ARTIFACT_POTION_MANA][strHero]["Day"] == TTH_VARI.day then
						local strText = TTH_PATH.Artifact["Potion"]["HasUsedToday"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.confirmActive137(iPlayer, strHero);
				end;
				function TTH_ARTI.confirmActive137(iPlayer, strHero)
					local iArtifactId = ARTIFACT_POTION_MANA;
					local strArtifactName = TTH_TABLE.Artifact[iArtifactId]["Text"];
					local iRemainTimes = TTH_VARI.recordPotion[iArtifactId][strHero]["RemainTimes"];
					local objBuy = TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionMana];
					local iMaxTimes = TTH_FINAL.POTION_MAXTIMES;
					local strPathMain={
						TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Confirm"]
						;strArtifactName=strArtifactName
						,iRemainTimes=iRemainTimes
						,iMaxTimes=iMaxTimes
					};
					local strCallbackOk = "TTH_ARTI.implActive137("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive137(iPlayer, strHero)
					TTH_VARI.recordPotion[ARTIFACT_POTION_MANA][strHero]["RemainTimes"] = TTH_VARI.recordPotion[ARTIFACT_POTION_MANA][strHero]["RemainTimes"] - 1;
					TTH_VARI.recordPotion[ARTIFACT_POTION_MANA][strHero]["Day"] = TTH_VARI.day;
					ChangeHeroStat(strHero, STAT_MANA_POINTS, TTH_FINAL.NUM_MAX);
					local strText = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Success"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
			-- ARTIFACT_POTION_ENERGY 138 能量药水
				TTH_FINAL.POTION_ENERGY_RECOVERY = 1500;
				function TTH_ARTI.active138(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Text"]);

					TTH_ARTI.initPotion(iPlayer, strHero, TTH_ENUM.PotionEnergy);
					TTH_ARTI.checkPreActive1384RemainTimes(iPlayer, strHero)
				end;
				function TTH_ARTI.checkPreActive1384RemainTimes(iPlayer, strHero)
					if TTH_VARI.recordPotion[ARTIFACT_POTION_ENERGY][strHero]["RemainTimes"] <= 0 then
						local strText = TTH_PATH.Artifact["Potion"]["NotEnoughTimes"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.checkPreActive1384HasUsedToday(iPlayer, strHero);
				end;
				function TTH_ARTI.checkPreActive1384HasUsedToday(iPlayer, strHero)
					if TTH_VARI.recordPotion[ARTIFACT_POTION_ENERGY][strHero]["Day"] == TTH_VARI.day then
						local strText = TTH_PATH.Artifact["Potion"]["HasUsedToday"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.confirmActive138(iPlayer, strHero);
				end;
				function TTH_ARTI.confirmActive138(iPlayer, strHero)
					local iArtifactId = ARTIFACT_POTION_ENERGY;
					local strArtifactName = TTH_TABLE.Artifact[iArtifactId]["Text"];
					local iRemainTimes = TTH_VARI.recordPotion[iArtifactId][strHero]["RemainTimes"];
					local objBuy = TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionEnergy];
					local iMaxTimes = TTH_FINAL.POTION_MAXTIMES;
					local strPathMain={
						TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Confirm"]
						;strArtifactName=strArtifactName
						,iRemainTimes=iRemainTimes
						,iMaxTimes=iMaxTimes
					};
					local strCallbackOk = "TTH_ARTI.implActive138("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive138(iPlayer, strHero)
					TTH_VARI.recordPotion[ARTIFACT_POTION_ENERGY][strHero]["RemainTimes"] = TTH_VARI.recordPotion[ARTIFACT_POTION_ENERGY][strHero]["RemainTimes"] - 1;
					TTH_VARI.recordPotion[ARTIFACT_POTION_ENERGY][strHero]["Day"] = TTH_VARI.day;
					if HasHeroSkill(strHero, HERO_SKILL_DARK_RITUAL) == nil then
						ChangeHeroStat(strHero, STAT_MOVE_POINTS, TTH_FINAL.POTION_ENERGY_RECOVERY);
					else
						ChangeHeroStat(strHero, STAT_MOVE_POINTS, TTH_FINAL.POTION_ENERGY_RECOVERY * 2);
					end;
					local strText = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Success"];
					TTH_GLOBAL.sign(strHero, strText);
				end;
			-- ARTIFACT_POTION_REVIVE 139 复活药水
				function TTH_ARTI.active139(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Text"]);

					TTH_ARTI.initPotion(iPlayer, strHero, TTH_ENUM.PotionRevive);
					TTH_ARTI.checkPreActive1394CombatIndex(iPlayer, strHero)
				end;
				function TTH_ARTI.checkPreActive1394CombatIndex(iPlayer, strHero)
					local iCombatIndex = TTH_VARI.combatIndex;
					if iCombatIndex == -1
						or GetSavedCombatArmyHero(iCombatIndex, 1) ~= strHero then
						local strText = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["NoLastCombat"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.checkPreActive1394RemainTimes(iPlayer, strHero);
				end;
				function TTH_ARTI.checkPreActive1394RemainTimes(iPlayer, strHero)
					if TTH_VARI.recordPotion[ARTIFACT_POTION_REVIVE][strHero]["RemainTimes"] <= 0 then
						local strText = TTH_PATH.Artifact["Potion"]["NotEnoughTimes"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.checkPreActive1394HasUsedCombatIndex(iPlayer, strHero);
				end;
				function TTH_ARTI.checkPreActive1394HasUsedCombatIndex(iPlayer, strHero)
					if TTH_VARI.recordPotion[ARTIFACT_POTION_REVIVE][strHero]["CombatIndex"] == TTH_VARI.combatIndex then
						local strText = TTH_PATH.Artifact["Potion"]["HasUsedCombatIndex"];
						TTH_GLOBAL.sign(strHero, strText);
						return nil;
					end;

					TTH_ARTI.confirmActive139(iPlayer, strHero);
				end;
				function TTH_ARTI.confirmActive139(iPlayer, strHero)
					local iArtifactId = ARTIFACT_POTION_REVIVE;
					local strArtifactName = TTH_TABLE.Artifact[iArtifactId]["Text"];
					local iRemainTimes = TTH_VARI.recordPotion[iArtifactId][strHero]["RemainTimes"];
					local objBuy = TTH_TABLE.BuyConsumeInfo[TTH_ENUM.PotionRevive];
					local iMaxTimes = TTH_FINAL.POTION_MAXTIMES;
					local strPathMain={
						TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Confirm"]
						;strArtifactName=strArtifactName
						,iRemainTimes=iRemainTimes
						,iMaxTimes=iMaxTimes
					};
					local strCallbackOk = "TTH_ARTI.implActive139("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive139(iPlayer, strHero)
					TTH_VARI.recordPotion[ARTIFACT_POTION_REVIVE][strHero]["RemainTimes"] = TTH_VARI.recordPotion[ARTIFACT_POTION_REVIVE][strHero]["RemainTimes"] - 1;
					TTH_VARI.recordPotion[ARTIFACT_POTION_REVIVE][strHero]["CombatIndex"] = TTH_VARI.combatIndex;
					local iCoef = 0.3 + GetHeroStat(strHero, STAT_KNOWLEDGE) * 0.01;
					if HasHeroSkill(strHero, HERO_SKILL_DARK_RITUAL) == nil then
						if iCoef > 0.5 then
							iCoef = 0.5;
						end;
					else
						if iCoef > 0.75 then
							iCoef = 0.75;
						end;
					end;
					local iCombatIndex = TTH_VARI.combatIndex;
					local iCountStacksWinner = GetSavedCombatArmyCreaturesCount(iCombatIndex, 1);
					for i = 0, iCountStacksWinner - 1 do
					  local iCreatureId, iCountCreature, iCountCreatureDeath = GetSavedCombatArmyCreatureInfo(iCombatIndex, 1, i);
					  local iCountCreatureRevive = TTH_COMMON.round(iCoef * iCountCreatureDeath);
					  if iCountCreatureRevive > 0 then
						  TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iCountCreatureRevive, TTH_ENUM.ReviveCreature);
						end;
					end;
				end;

		-- 军团宝物 ARTIFACT_LEGION_X
			TTH_VARI.bonusLegion4Town = {};

			-- 每周城镇生物周产结算
				function TTH_ARTI.bonusTownDwellingCreature8Legion(strTown)
					TTH_MAIN.debug("TTH_ARTI.bonusTownDwellingCreature8Legion", nil, nil, strTown);

					if TTH_VARI.bonusLegion4Town[strTown] ~= nil then
						local arrCreatureGrowth8Tier = {
							[1] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_BASIC] * 2
							, [2] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_BASIC] * 2
							, [3] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_BASIC] * 2
							, [4] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_ADVANCED] * 1
							, [5] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_ADVANCED] * 1
							, [6] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_EXPERT] * 1
							, [7] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_EXPERT] * 1
						};
						TTH_GLOBAL.updateTownDwellingCreature(strTown, arrCreatureGrowth8Tier);
					end;
				end;

			-- ARTIFACT_LEGION_BASIC 104 军团之证
				function TTH_ARTI.active104(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_BASIC]["Text"]);

					local strTown = TTH_VARI.townSkillManage;
					TTH_ARTI.confirmActive104(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.confirmActive104(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_LEGION_BASIC]["Text"];
					local iBonusLevel = 0;
					if TTH_VARI.bonusLegion4Town[strTown] ~= nil then
						iBonusLevel = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_BASIC];
					end;
					local strPathMain={
						TTH_PATH.Artifact["Legion"]["Confirm"]
						;strArtifactName=strArtifactName
						,iTierMin=1
						,iTierMax=3
						,iBonusNumber=2
						,iBonusLevel=iBonusLevel
					};
					local strCallbackOk = "TTH_ARTI.implActive104("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive104(iPlayer, strHero, strTown)
					if TTH_VARI.bonusLegion4Town[strTown] == nil then
						TTH_VARI.bonusLegion4Town[strTown] = {
							[ARTIFACT_LEGION_BASIC] = 0
							, [ARTIFACT_LEGION_ADVANCED] = 0
							, [ARTIFACT_LEGION_EXPERT] = 0
						};
					end;
					RemoveArtefact(strHero, ARTIFACT_LEGION_BASIC);
					TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_BASIC] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_BASIC] + 1;
					local strPathMain={
						TTH_PATH.Artifact["Legion"]["Success"]
						;iTierMin=1
						,iTierMax=3
						,iBonusNumber=2
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;

			-- ARTIFACT_LEGION_ADVANCED 108 军团斗篷
				function TTH_ARTI.active108(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_ADVANCED]["Text"]);

					local strTown = TTH_VARI.townSkillManage;
					TTH_ARTI.confirmActive108(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.confirmActive108(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_LEGION_ADVANCED]["Text"];
					local iBonusLevel = 0;
					if TTH_VARI.bonusLegion4Town[strTown] ~= nil then
						iBonusLevel = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_ADVANCED];
					end;
					local strPathMain={
						TTH_PATH.Artifact["Legion"]["Confirm"]
						;strArtifactName=strArtifactName
						,iTierMin=4
						,iTierMax=5
						,iBonusNumber=1
						,iBonusLevel=iBonusLevel
					};
					local strCallbackOk = "TTH_ARTI.implActive108("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive108(iPlayer, strHero, strTown)
					if TTH_VARI.bonusLegion4Town[strTown] == nil then
						TTH_VARI.bonusLegion4Town[strTown] = {
							[ARTIFACT_LEGION_BASIC] = 0
							, [ARTIFACT_LEGION_ADVANCED] = 0
							, [ARTIFACT_LEGION_EXPERT] = 0
						};
					end;
					RemoveArtefact(strHero, ARTIFACT_LEGION_ADVANCED);
					TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_ADVANCED] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_ADVANCED] + 1;
					local strPathMain={
						TTH_PATH.Artifact["Legion"]["Success"]
						;iTierMin=4
						,iTierMax=5
						,iBonusNumber=1
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;

			-- ARTIFACT_LEGION_EXPERT 109 军团之帜
				function TTH_ARTI.active109(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_EXPERT]["Text"]);

					local strTown = TTH_VARI.townSkillManage;
					TTH_ARTI.confirmActive109(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.confirmActive109(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_LEGION_EXPERT]["Text"];
					local iBonusLevel = 0;
					if TTH_VARI.bonusLegion4Town[strTown] ~= nil then
						iBonusLevel = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_EXPERT];
					end;
					local strPathMain={
						TTH_PATH.Artifact["Legion"]["Confirm"]
						;strArtifactName=strArtifactName
						,iTierMin=6
						,iTierMax=7
						,iBonusNumber=1
						,iBonusLevel=iBonusLevel
					};
					local strCallbackOk = "TTH_ARTI.implActive109("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive109(iPlayer, strHero, strTown)
					if TTH_VARI.bonusLegion4Town[strTown] == nil then
						TTH_VARI.bonusLegion4Town[strTown] = {
							[ARTIFACT_LEGION_BASIC] = 0
							, [ARTIFACT_LEGION_ADVANCED] = 0
							, [ARTIFACT_LEGION_EXPERT] = 0
						};
					end;
					RemoveArtefact(strHero, ARTIFACT_LEGION_EXPERT);
					TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_EXPERT] = TTH_VARI.bonusLegion4Town[strTown][ARTIFACT_LEGION_EXPERT] + 1;
					local strPathMain={
						TTH_PATH.Artifact["Legion"]["Success"]
						;iTierMin=6
						,iTierMax=7
						,iBonusNumber=1
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;

		-- 军团宝物 ARTIFACT_Economic_X
			TTH_VARI.bonusEconomic4Town = {};
			-- 每日城镇军团宝物经济结算
				function TTH_ARTI.bonusTown8Economic(iPlayer, strTown)
					TTH_MAIN.debug("TTH_ARTI.bonusTown8Economic", iPlayer, nil, strTown);

					if TTH_VARI.bonusEconomic4Town[strTown] ~= nil
						and TTH_VARI.bonusEconomic4Town[strTown][ARTIFACT_ENDLESS_BAG_OF_GOLD] == TTH_ENUM.Yes then
						local iTownHall = GetTownBuildingLevel(strTown, TOWN_BUILDING_TOWN_HALL);
						local iGrail = GetTownBuildingLevel(strTown, TOWN_BUILDING_GRAIL);
						local iGold = 0;
						if iTownHall == 1 then
							iGold = 500;
						elseif iTownHall == 2 then
							iGold = 1000;
						elseif iTownHall == 3 then
							iGold = 2000;
						elseif iTownHall == 4 then
							iGold = 4000;
						end
						if iGrail > 0 then
							iGold = iGold + 5000;
						end;
						TTH_GLOBAL.putSettleResource(iPlayer, GOLD, iGold * 0.5);
					end;
					if TTH_VARI.bonusEconomic4Town[strTown] ~= nil
						and TTH_VARI.bonusEconomic4Town[strTown][ARTIFACT_HORN_OF_PLENTY] == TTH_ENUM.Yes then
						TTH_GLOBAL.putSettleResource(iPlayer, WOOD, 8);
						TTH_GLOBAL.putSettleResource(iPlayer, ORE, 8);
						TTH_GLOBAL.putSettleResource(iPlayer, MERCURY, 4);
						TTH_GLOBAL.putSettleResource(iPlayer, CRYSTAL, 4);
						TTH_GLOBAL.putSettleResource(iPlayer, SULFUR, 4);
						TTH_GLOBAL.putSettleResource(iPlayer, GEM, 4);
					end;
				end;

			-- ARTIFACT_ENDLESS_BAG_OF_GOLD 029 军团金像
				function TTH_ARTI.active029(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Text"]);

					local strTown = TTH_VARI.townSkillManage;
					TTH_ARTI.checkPreActive0294HasBonus(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.checkPreActive0294HasBonus(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_ENDLESS_BAG_OF_GOLD]["Text"];
					if TTH_VARI.bonusEconomic4Town[strTown] ~= nil
						and TTH_VARI.bonusEconomic4Town[strTown][ARTIFACT_ENDLESS_BAG_OF_GOLD] == TTH_ENUM.Yes then
						local strPathMain={
							TTH_PATH.Artifact["Economic"]["HasBonus"]
							;strArtifactName=strArtifactName
						};
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_ARTI.confirmActive029(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.confirmActive029(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_ENDLESS_BAG_OF_GOLD]["Text"];
					local strPathMain={
						TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Confirm"]
						;strArtifactName=strArtifactName
					};
					local strCallbackOk = "TTH_ARTI.implActive029("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive029(iPlayer, strHero, strTown)
					if TTH_VARI.bonusEconomic4Town[strTown] == nil then
						TTH_VARI.bonusEconomic4Town[strTown] = {};
					end;
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_ENDLESS_BAG_OF_GOLD]["Text"];
					RemoveArtefact(strHero, ARTIFACT_ENDLESS_BAG_OF_GOLD);
					TTH_VARI.bonusEconomic4Town[strTown][ARTIFACT_ENDLESS_BAG_OF_GOLD] = TTH_ENUM.Yes;
					local strPathMain={
						TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Success"]
						;strArtifactName=strArtifactName
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;

			-- ARTIFACT_HORN_OF_PLENTY 092 丰收之角 木石日产量永久+8, 稀矿日产量永久+4
				function TTH_ARTI.active092(iPlayer, strHero)
					TTH_COMMON.nextNavi(TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Text"]);

					local strTown = TTH_VARI.townSkillManage;
					TTH_ARTI.checkPreActive0924HasBonus(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.checkPreActive0924HasBonus(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_HORN_OF_PLENTY]["Text"];
					if TTH_VARI.bonusEconomic4Town[strTown] ~= nil
						and TTH_VARI.bonusEconomic4Town[strTown][ARTIFACT_HORN_OF_PLENTY] == TTH_ENUM.Yes then
						local strPathMain={
							TTH_PATH.Artifact["Economic"]["HasBonus"]
							;strArtifactName=strArtifactName
						};
						TTH_GLOBAL.sign(strHero, strPathMain);
						return nil;
					end;

					TTH_ARTI.confirmActive092(iPlayer, strHero, strTown);
				end;
				function TTH_ARTI.confirmActive092(iPlayer, strHero, strTown)
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_HORN_OF_PLENTY]["Text"];
					local strPathMain={
						TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Confirm"]
						;strArtifactName=strArtifactName
					};
					local strCallbackOk = "TTH_ARTI.implActive092("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
					local strCallbackCancel = "TTH_COMMON.cancelOption()";
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
				end;
				function TTH_ARTI.implActive092(iPlayer, strHero, strTown)
					if TTH_VARI.bonusEconomic4Town[strTown] == nil then
						TTH_VARI.bonusEconomic4Town[strTown] = {};
					end;
					local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_HORN_OF_PLENTY]["Text"];
					RemoveArtefact(strHero, ARTIFACT_HORN_OF_PLENTY);
					TTH_VARI.bonusEconomic4Town[strTown][ARTIFACT_HORN_OF_PLENTY] = TTH_ENUM.Yes;
					local strPathMain={
						TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Success"]
						;strArtifactName=strArtifactName
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
				end;

		-- ARTIFACT_MASK_OF_DOPPELGANGER 089 皇家遗物
			function TTH_ARTI.active089(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Text"]);

				TTH_ARTI.confirmActive089(iPlayer, strHero);
			end;
			function TTH_ARTI.confirmActive089(iPlayer, strHero)
				local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Text"];
				local iExp = 500 * 1000;
				local strPathMain={
				TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["ConfirmActive"]
				  ;strArtifactName=strArtifactName
				  ,iExp=iExp
				};
				local strCallbackOk = "TTH_ARTI.implActive089("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
  		end;
			function TTH_ARTI.implActive089(iPlayer, strHero)
				local iExp = 500 * 1000;
      	RemoveArtefact(strHero, ARTIFACT_MASK_OF_DOPPELGANGER);
				TTH_GLOBAL.giveExp(strHero, iExp);
  		end;

		-- ARTIFACT_GEM_OF_PHANTOM 102 幻影宝石
			function TTH_ARTI.active102(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Text"]);

				TTH_ARTI.checkPreActive1024Slot(iPlayer, strHero);
			end;
			function TTH_ARTI.checkPreActive1024Slot(iPlayer, strHero)
				local bIsSingleSlot = TTH_ENUM.No;
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				if arrCreature4Hero[1]["Count"] == 0 then
					bIsSingleSlot = TTH_ENUM.Yes;
				end;
				if bIsSingleSlot == TTH_ENUM.Yes then
					local strText = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["SingleSlot"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_ARTI.radioActive102(iPlayer, strHero);
			end;
			function TTH_ARTI.radioActive102(iPlayer, strHero)
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
    		local arrOption = {};
				local i = 1;
				for iSlot = 0, 6 do
					arrOption[i] = {
						["Id"] = iSlot
						, ["Text"] = TTH_TABLE_NCF_CREATURES[arrCreature4Hero[iSlot]["Id"]]["NAME"]
						, ["Callback"] = "TTH_ARTI.confirmActive102"
					};
					i = i + 1;
				end;
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
  		end;
			function TTH_ARTI.confirmActive102(iPlayer, strHero, iSlot)
				if TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM] == nil then
					TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM] = {};
				end;
				if TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer] == nil then
					TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer] = {
						["CreatureId"] = 0
						, ["CreatureNum"] = 0
					};
				end;

				local iPreRecordCreatureId = TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureId"];
				local strPreRecordCreatureName = TTH_TABLE_NCF_CREATURES[iPreRecordCreatureId]["NAME"];
				if iPreRecordCreatureId == 0 then
					strPreRecordCreatureName = TTH_PATH.Basic["None"];
				end;
				local iPreRecordCreatureNum = TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureNum"];

				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				local iSlotCreatureId = arrCreature4Hero[iSlot]["Id"];
				local strSlotCreatureName = TTH_TABLE_NCF_CREATURES[iSlotCreatureId]["NAME"];
				local iSlotCreatureNum = arrCreature4Hero[iSlot]["Count"];

				local strPostRecordCreatureName = strSlotCreatureName;
				local iPostRecordCreatureNum = 0;

				if iPreRecordCreatureId == iSlotCreatureId then
					iPostRecordCreatureNum = iPreRecordCreatureNum + iSlotCreatureNum;
				else
					iPostRecordCreatureNum = iSlotCreatureNum;
				end;

				local strPathMain={
					TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["ConfirmActive"]
				  ;strPreRecordCreatureName=strPreRecordCreatureName
				  ,iPreRecordCreatureNum=iPreRecordCreatureNum
				  ,strSlotCreatureName=strSlotCreatureName
				  ,iSlotCreatureNum=iSlotCreatureNum
				  ,strPostRecordCreatureName=strPostRecordCreatureName
				  ,iPostRecordCreatureNum=iPostRecordCreatureNum
				};
				local strCallbackOk = "TTH_ARTI.implActive102("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iSlot..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
  		end;
			function TTH_ARTI.implActive102(iPlayer, strHero, iSlot)
				local iPreRecordCreatureId = TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureId"];
				local iPreRecordCreatureNum = TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureNum"];

				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				local iSlotCreatureId = arrCreature4Hero[iSlot]["Id"];
				local strSlotCreatureName = TTH_TABLE_NCF_CREATURES[iSlotCreatureId]["NAME"];
				local iSlotCreatureNum = arrCreature4Hero[iSlot]["Count"];

				local iPostRecordCreatureId = iSlotCreatureId;
				local strPostRecordCreatureName = strSlotCreatureName;
				local iPostRecordCreatureNum = 0;

				if iPreRecordCreatureId == iSlotCreatureId then
					iPostRecordCreatureNum = iPreRecordCreatureNum + iSlotCreatureNum;
				else
					iPostRecordCreatureNum = iSlotCreatureNum;
				end;
				RemoveHeroCreatures(strHero, iSlotCreatureId, iSlotCreatureNum);
				TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer] = {
					["CreatureId"] = iPostRecordCreatureId
					, ["CreatureNum"] = iPostRecordCreatureNum
				};
				local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT..strHero..'_'..ARTIFACT_GEM_OF_PHANTOM;
				TTH_COMMON.consoleSetGameVar(strKey, TTH_ARTI.calcValue102(strHero));
				local strPathMain={
					TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["SuccessActive"]
				  ;strPostRecordCreatureName=strPostRecordCreatureName
				  ,iPostRecordCreatureNum=iPostRecordCreatureNum
				};
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, nil, strPathMain);
  		end;
			function TTH_ARTI.calcValue102(iPlayer, strHero)
				local iCurrentValue = 0;
				if TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM] ~= nil
					and TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer] ~= nil
					and TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureId"] > 0
					and TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureNum"] > 0 then
					local iPostRecordCreatureId = TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureId"];
					local iPostRecordCreatureNum = TTH_VARI.artifact[ARTIFACT_GEM_OF_PHANTOM][iPlayer]["CreatureNum"];
					iCurrentValue = iPostRecordCreatureId + iPostRecordCreatureNum * 1000;
				end;
				return iCurrentValue;
			end;

		-- ARTIFACT_REINCARNATION 112 轮回之戒
			function TTH_ARTI.active112(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Text"]);

				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
    		local arrOption = {};
				local i = 1;
				for iIndex = 0, 6 do
					if TTH_TABLE_NCF_CREATURES[arrCreature4Hero[iIndex]["Id"]]["Pair"] ~= nil then
						arrOption[i] = {
							["Id"] = arrCreature4Hero[iIndex]["Id"]
							, ["Text"] = TTH_TABLE_NCF_CREATURES[arrCreature4Hero[iIndex]["Id"]]["NAME"]
							, ["Callback"] = "TTH_ARTI.implActive112"
						};
						i = i + 1;
					end;
				end;

				if length(arrOption) == 0 then
    			local strText = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["NoCreature4Cast"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
			end;
			function TTH_ARTI.implActive112(iPlayer, strHero, strCreatureId)
				local iCreatureId = strCreatureId + 0;
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
    		local iCreatureNum = 0;
				for iIndex = 0, 6 do
					if arrCreature4Hero[iIndex]["Id"] == iCreatureId then
						iCreatureNum = arrCreature4Hero[iIndex]["Count"];
						break;
					end;
				end;
				TTH_GLOBAL.replaceCreature4Hero(strHero, iCreatureId, iCreatureNum, TTH_TABLE_NCF_CREATURES[iCreatureId]["Pair"], iCreatureNum);
  			local strPathMain ={
  				TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Success"]
    			;strPreCreatureName=TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
    			,strPostCreatureName=TTH_TABLE_NCF_CREATURES[TTH_TABLE_NCF_CREATURES[iCreatureId]["Pair"]]["NAME"]
    			,iCreatureNum=iCreatureNum
  			};
  			TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
  		end;

		-- ARTIFACT_INHERITANCE 115 幸运护符
			function TTH_ARTI.combatResult115(strHero)
				TTH_MAIN.debug("TTH_ARTI.combatResult115", nil, strHero);

				if TTH_VARI.arrBuilding["BUILDING_FORTUITOUS_SANCTUARY"] ~= nil
					and length(TTH_VARI.arrBuilding["BUILDING_FORTUITOUS_SANCTUARY"]) > 0
					and HasArtefact(strHero, ARTIFACT_INHERITANCE, 1) ~= nil then
					MakeHeroInteractWithObject(strHero, TTH_VARI.arrBuilding["BUILDING_FORTUITOUS_SANCTUARY"][0]);
				end;
			end;

		-- ARTIFACT_DRACONIC 123 龙神胸甲
			function TTH_ARTI.dealDaily123(iPlayer, strHero)
				TTH_MAIN.debug("TTH_ARTI.dealDaily123", iPlayer, strHero);

				if HasArtefact(strHero, ARTIFACT_DRACONIC, 1) ~= nil then
					local iGrowth = 1;
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					local bExist = TTH_ENUM.No;
					for i = 0, 6 do
						if bExist == TTH_ENUM.Yes then
							break;
						end;
						for j = 1, 3 do
							if arrCreature4Hero[i]["Id"] == TTH_TABLE.Creature8RaceAndLevel[iHeroRace][7][j] then
								TTH_GLOBAL.addCreature4Hero8Sign(strHero, arrCreature4Hero[i]["Id"], iGrowth, TTH_ENUM.AddCreature);
								bExist = TTH_ENUM.Yes;
							end;
						end;
					end;
					if bExist == TTH_ENUM.No then
						TTH_GLOBAL.addCreature4Hero8Sign(strHero, TTH_TABLE.Creature8RaceAndLevel[iHeroRace][7][2], iGrowth, TTH_ENUM.AddCreature);
					end;
				end;
			end;

		-- ARTIFACT_CODEX 126 大法师之典
			function TTH_ARTI.dealDaily126(iPlayer, strHero)
				TTH_MAIN.debug("TTH_ARTI.dealDaily126", iPlayer, strHero);

				if HasArtefact(strHero, ARTIFACT_CODEX, 1) ~= nil then
					local iGrowth = 1;
					TTH_GLOBAL.addCreature4Hero8Sign(strHero, CREATURE_PHOENIX, iGrowth, TTH_ENUM.AddCreature);
				end;
			end;

		-- ARTIFACT_BOOK_OF_MALASSA 147 玛拉萨之书
			TTH_VARI.recordBookOfMalassa = {};
			function TTH_ARTI.init147(iPlayer, strHero)
				if TTH_VARI.recordBookOfMalassa[strHero] == nil then
					TTH_VARI.recordBookOfMalassa[strHero] = 0;
				end;
			end;
			function TTH_ARTI.active147(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Text"]);

				TTH_ARTI.init147(iPlayer, strHero);
				TTH_ARTI.radio147(iPlayer, strHero);
			end;
			function TTH_ARTI.radio147(iPlayer, strHero)
    		local arrOption = {};
				local i = 1;
				arrOption[i] = {
					["Id"] = 0
					, ["Text"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Unknow"]
					, ["Callback"] = "TTH_ARTI.implActive147"
				};
				i = i + 1;
				for iIndex, iSpellId in TTH_TABLE.ElementMagic do
					if KnowHeroSpell(strHero, iSpellId) ~= nil and iSpellId ~= SPELL_ARMAGEDDON then
						arrOption[i] = {
							["Id"] = iSpellId
							, ["Text"] = TTH_TABLE_SPELL[iSpellId]["NAME"]
							, ["Callback"] = "TTH_ARTI.implActive147"
						};
						i = i + 1;
					end;
				end;

    		local strTextTips = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["RadioTips"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strTextTips);
			end;
			function TTH_ARTI.implActive147(iPlayer, strHero, iSpellId)
				local strKey = TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT..strHero..'_'..ARTIFACT_BOOK_OF_MALASSA;
				TTH_VARI.recordBookOfMalassa[strHero] = iSpellId;
				TTH_COMMON.consoleSetGameVar(strKey, iSpellId);
				if iSpellId == 0 then
	  			local strText = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Cancel"];
	  			TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strText);
				else
	  			local strPathMain = {
	  				TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Success"]
	    			;strSpellName=TTH_TABLE_SPELL[iSpellId]["NAME"]
	  			};
	  			TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strPathMain);
				end;
  		end;
			function TTH_ARTI.calcValue147(iPlayer, strHero)
				local iValue = 0;
				if TTH_VARI.recordBookOfMalassa[strHero] ~= nil then
					iValue = TTH_VARI.recordBookOfMalassa[strHero];
				end;
				return iValue;
  		end;

		-- ARTIFACT_CLOAK_OF_MALASSA 164 玛拉萨的斗篷
			TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA] = {};
			function TTH_ARTI.deal164(iPlayer, strHero)
				TTH_MAIN.debug("TTH_ARTI.deal164", iPlayer, strHero);

				if TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero] == nil then
					TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero] = 0;
				end;
				if HasArtefact(strHero, ARTIFACT_CLOAK_OF_MALASSA, 1) ~= nil then
					local iCountMagic = TTH_GLOBAL.countHeroKnowElementSpell(strHero);
					if iCountMagic > TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero] then
						local iStatBonusNumber = iCountMagic - TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero];
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iStatBonusNumber);
						TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero] = iCountMagic;
					end;
				else
					if TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero] > 0 then
						local iStatBonusNumber = -1 * TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero];
						TTH_GLOBAL.signChangeHeroStat(strHero, STAT_SPELL_POWER, iStatBonusNumber);
						TTH_VARI.artifact[ARTIFACT_CLOAK_OF_MALASSA][strHero] = 0;
					end;
				end;
			end;

		-- ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT 168 天启头盔
			function TTH_ARTI.dealDaily168(iPlayer, strHero)
				TTH_MAIN.debug("TTH_ARTI.dealDaily168", iPlayer, strHero);

				if HasArtefact(strHero, ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT, 1) ~= nil then
					local iGrowth = 1;
					local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
					local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
					local bExist = TTH_ENUM.No;
					for i = 0, 6 do
						if bExist == TTH_ENUM.Yes then
							break;
						end;
						for j = 1, 3 do
							if arrCreature4Hero[i]["Id"] == TTH_TABLE.Creature8RaceAndLevel[iHeroRace][6][j] then
								TTH_GLOBAL.addCreature4Hero8Sign(strHero, arrCreature4Hero[i]["Id"], iGrowth, TTH_ENUM.AddCreature);
								bExist = TTH_ENUM.Yes;
							end;
						end;
					end;
					if bExist == TTH_ENUM.No then
						TTH_GLOBAL.addCreature4Hero8Sign(strHero, TTH_TABLE.Creature8RaceAndLevel[iHeroRace][6][2], iGrowth, TTH_ENUM.AddCreature);
					end;
				end;
			end;

		-- ARTIFACT_QUILL_OF_MAYOR 182 执政官羽饰
			TTH_FINAL.QUILL_OF_MAYOR_NUMBER = 1000;
			function TTH_ARTI.active182(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Text"]);

				TTH_ARTI.confirmActive182(iPlayer, strHero)
			end;
			function TTH_ARTI.confirmActive182(iPlayer, strHero)
				local strArtifactName = TTH_TABLE.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Text"];

				local strPathMain={
					TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Confirm"]
					;strArtifactName=strArtifactName
					,iRecordPoint=TTH_FINAL.QUILL_OF_MAYOR_NUMBER
				};
				local strCallbackOk = "TTH_ARTI.implActive182("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_ARTI.implActive182(iPlayer, strHero, strTown)
				RemoveArtefact(strHero, ARTIFACT_QUILL_OF_MAYOR);
				TTH_MANAGE.addRecordPoint(iPlayer, strHero, TTH_FINAL.QUILL_OF_MAYOR_NUMBER);
				local strPathMain = {
					TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Success"]
					;iRecordPoint=TTH_FINAL.QUILL_OF_MAYOR_NUMBER
				};
				TTH_GLOBAL.sign(strHero, strPathMain);
			end;

	-- 技能
		TTH_PERK = {};

		-- HERO_SKILL_RECRUITMENT 028 募兵术
			TTH_VARI.recordRecruitment = {};
			function TTH_PERK.init028(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init028", iPlayer, strHero);

				TTH_VARI.recordRecruitment[strHero] = {
					["OperTimes"] = 1
					, ["MaxOperTimes"] = 1
				};
			end;
			function TTH_PERK.init0284Town(iPlayer, strHero, strTown)
				if TTH_VARI.recordRecruitment[strTown] == nil then
					TTH_VARI.recordRecruitment[strTown] = {
						["HasRecruit"] = TTH_ENUM.Default
					};
				end;
			end;
			function TTH_PERK.active028(iPlayer, strHero, strTown)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Text"]);

				local strTown = TTH_VARI.townSkillManage;
				TTH_PERK.checkPreActive0284HasRecruit(iPlayer, strHero, strTown)
			end;
			function TTH_PERK.checkPreActive0284HasRecruit(iPlayer, strHero, strTown)
				TTH_PERK.init0284Town(iPlayer, strHero, strTown);

				if TTH_VARI.recordRecruitment[strTown]["HasRecruit"] == TTH_VARI.absoluteWeek then
					local strText = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["HasRecruit"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_PERK.checkPreActive0284NoDwelling(iPlayer, strHero, strTown);
			end;
			function TTH_PERK.checkPreActive0284NoDwelling(iPlayer, strHero, strTown)
				local bHasDwelling = TTH_ENUM.No;
				for iTier = 1, 7 do
					if GetTownBuildingLevel(strTown, iTier + TOWN_BUILDING_DWELLING_1 - 1) >= 1 then
						bHasDwelling = TTH_ENUM.Yes;
						break;
					end;
				end;

				if bHasDwelling == TTH_ENUM.No then
					local strText = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["NoDwelling"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_PERK.checkPreActive0284NotEnoughTimes(iPlayer, strHero, strTown);
			end;
			function TTH_PERK.checkPreActive0284NotEnoughTimes(iPlayer, strHero, strTown)
				if TTH_VARI.recordRecruitment[strHero] == nil then
					TTH_PERK.init028(iPlayer, strHero);
				end;
				local strText = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["NotEnoughTimes"];
    		if TTH_VARI.recordRecruitment[strHero]["OperTimes"] <= 0 then
    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
    				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
    				end;
    			else
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
	    		end;
    		end;

				TTH_PERK.confirmActive028(iPlayer, strHero, strTown);
			end;
			function TTH_PERK.confirmActive028(iPlayer, strHero, strTown)
				local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
				local arrCreatureGrowth8Tier = {};
				local iCoef = 1;
				if HasArtefact(strHero, ARTIFACT_CROWN_OF_LEADER, 1) ~= nil then
					iCoef = 1.5;
				end;
				for iTier = 1, 7 do
					if GetTownBuildingLevel(strTown, iTier + TOWN_BUILDING_DWELLING_1 - 1) >= 1 then
						arrCreatureGrowth8Tier[iTier] = TTH_COMMON.floor(TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[iTownRace][iTier][1]]["GROWTH"] / 2 * iCoef);
					else
						arrCreatureGrowth8Tier[iTier] = 0;
					end;
				end;
				local strPathMain={
					TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Confirm"]
					;iCreatureNumberTier1=arrCreatureGrowth8Tier[1]
					,iCreatureNumberTier2=arrCreatureGrowth8Tier[2]
					,iCreatureNumberTier3=arrCreatureGrowth8Tier[3]
					,iCreatureNumberTier4=arrCreatureGrowth8Tier[4]
					,iCreatureNumberTier5=arrCreatureGrowth8Tier[5]
					,iCreatureNumberTier6=arrCreatureGrowth8Tier[6]
					,iCreatureNumberTier7=arrCreatureGrowth8Tier[7]
				};
				local strCallbackOk = "TTH_PERK.implActive028("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive028(iPlayer, strHero, strTown)
    		if TTH_VARI.recordRecruitment[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordRecruitment[strHero]["OperTimes"] = TTH_VARI.recordRecruitment[strHero]["OperTimes"] - 1;
    		else
    			TTH_MANAGE.useOperTimes(strHero);
    		end;
    		TTH_VARI.recordRecruitment[strTown]["HasRecruit"] = TTH_VARI.absoluteWeek;
				local iTownRace = TTH_GLOBAL.getRace8Town(strTown);
    		local arrCreatureGrowth8Tier = {};
				for iTier = 1, 7 do
					if GetTownBuildingLevel(strTown, iTier + TOWN_BUILDING_DWELLING_1 - 1) >= 1 then
						arrCreatureGrowth8Tier[iTier] = TTH_COMMON.floor(TTH_TABLE_NCF_CREATURES[TTH_TABLE.Creature8RaceAndLevel[iTownRace][iTier][1]]["GROWTH"] / 2);
					else
						arrCreatureGrowth8Tier[iTier] = 0;
					end;
				end;
				TTH_GLOBAL.updateTownDwellingCreature(strTown, arrCreatureGrowth8Tier);
				TTH_GLOBAL.signHero4TownRecruit(strHero)
			end;
			function TTH_PERK.resetWeekly028(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly028", iPlayer, strHero);

				if TTH_VARI.recordRecruitment[strHero] == nil then
					TTH_PERK.init028(iPlayer, strHero);
				end;
    		TTH_VARI.recordRecruitment[strHero]["OperTimes"] = TTH_VARI.recordRecruitment[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_ESTATES 029 理财术
			TTH_FINAL.ESTATES_COEF = 0.08;
			TTH_FINAL.ESTATES_MAX = 50000;
			TTH_VARI.recordEstates = {};
			TTH_TABLE.EstatesOption = {
				[1] = {
					["Id"] = 0.2
					, ["Text"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef20"]
					, ["Callback"] = "TTH_PERK.confirmActive029"
				}
				, [2] = {
					["Id"] = 0.5
					, ["Text"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef50"]
					, ["Callback"] = "TTH_PERK.confirmActive029"
				}
				, [3] = {
					["Id"] = 0.8
					, ["Text"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef80"]
					, ["Callback"] = "TTH_PERK.confirmActive029"
				}
				, [4] = {
					["Id"] = 1
					, ["Text"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef100"]
					, ["Callback"] = "TTH_PERK.confirmActive029"
				}
			};
			function TTH_PERK.init029(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init029", iPlayer, strHero);

				TTH_VARI.recordEstates[strHero] = {
					["EstatesGold"] = 0
					, ["EstatesDay"] = 0
					, ["OperTimes"] = 1
					, ["MaxOperTimes"] = 1
				};
			end;
			function TTH_PERK.active029(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_ESTATES]["Text"]);

				TTH_PERK.checkPreActive0294NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive0294NotEnoughTimes(iPlayer, strHero)
				if TTH_VARI.recordEstates[strHero] == nil then
					TTH_PERK.init029(iPlayer, strHero);
				end;
    		if TTH_VARI.recordEstates[strHero]["OperTimes"] <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_ESTATES]["NotEnoughTimes"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
    		end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_ESTATES]["OptionTips"];
				TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.EstatesOption, strPathOption);
			end;
			function TTH_PERK.confirmActive029(iPlayer, strHero, iCoef)
				local iPercent = TTH_COMMON.round(iCoef * 100);
				local iGold = GetPlayerResource(iPlayer, GOLD);
				local iEstatesGold = TTH_COMMON.round(iGold * iCoef);
				local iDuration = 7 + 1 - TTH_VARI.dayOfWeek;
				local iExpectGold = TTH_PERK.calcExpectEstatesGold(strHero, iEstatesGold, iDuration);

				local strPathMain={
					TTH_PATH.Perk[HERO_SKILL_ESTATES]["Confirm"]
					;iPercent=iPercent
					,iGold=iGold
					,iEstatesGold=iEstatesGold
					,iDuration=iDuration
					,iExpectGold=iExpectGold
				};
				local strCallbackOk = "TTH_PERK.implActive029("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iCoef..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive029(iPlayer, strHero, iCoef)
    		if TTH_VARI.recordEstates[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordEstates[strHero]["OperTimes"] = TTH_VARI.recordEstates[strHero]["OperTimes"] - 1;
    		end;

    		local iGold = GetPlayerResource(iPlayer, GOLD);
    		local iEstatesGold = TTH_COMMON.round(iGold * iCoef);
    		TTH_GLOBAL.reduceResource(iPlayer, GOLD, iEstatesGold);
    		if TTH_VARI.recordEstates[strHero]["EstatesGold"] == 0 then
	    		TTH_VARI.recordEstates[strHero]["EstatesGold"] = iEstatesGold;
	    		TTH_VARI.recordEstates[strHero]["EstatesDay"] = TTH_VARI.day;
    		else
    			TTH_VARI.recordEstates[strHero]["EstatesGold"] = TTH_VARI.recordEstates[strHero]["EstatesGold"] + iEstatesGold;
    		end;
    		local strPathMain={
    			TTH_PATH.Perk[HERO_SKILL_ESTATES]["Success"]
    			;iEstatesGold=iEstatesGold
    		};
    		TTH_GLOBAL.sign(strHero, strPathMain);
			end;
			function TTH_PERK.dealWeekly029(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.dealWeekly029", iPlayer, strHero);

				if TTH_VARI.recordEstates ~= nil
					and length(TTH_VARI.recordEstates) > 0 then
					local iCurrentDay = TTH_VARI.day;
					for strEstateHero, objEstates in TTH_VARI.recordEstates do
						if strEstateHero == strHero
							and objEstates["EstatesGold"] > 0 then
							local iDuration = iCurrentDay - objEstates["EstatesDay"];
							local iExpectGold = TTH_PERK.calcExpectEstatesGold(strHero, objEstates["EstatesGold"], iDuration);
							objEstates["EstatesGold"] = 0;
							objEstates["EstatesDay"] = 0;
							TTH_GLOBAL.putSettleResource(iPlayer, GOLD, iExpectGold);
							local strPathMain={
								TTH_PATH.Perk[HERO_SKILL_ESTATES]["Repay"]
								;iExpectGold=iExpectGold
							};
			    		TTH_GLOBAL.sign(strHero, strPathMain);
						end;
					end;
				end;
			end;
			function TTH_PERK.resetWeekly029(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly029", iPlayer, strHero);

				if TTH_VARI.recordEstates[strHero] == nil then
					TTH_PERK.init029(iPlayer, strHero);
				end;
    		TTH_VARI.recordEstates[strHero]["OperTimes"] = TTH_VARI.recordEstates[strHero]["MaxOperTimes"];
			end;
			function TTH_PERK.calcExpectEstatesGold(strHero, iEstatesGold, iDuration)
				local iCoef = 1;
				if HasArtefact(strHero, ARTIFACT_CROWN_OF_LEADER, 1) ~= nil then
					iCoef = 1.5;
				end;
				local iExpectEstatesGold = TTH_COMMON.round(iEstatesGold * (1 + TTH_FINAL.ESTATES_COEF * iCoef * iDuration));
				local strHeroJenova = "Jenova";
				if strHero == strHeroJenova then
					iExpectEstatesGold = TTH_COMMON.round(iEstatesGold * (1 + TTH_FINAL.ESTATES_COEF * iCoef * 1.5 * iDuration));
				end;
				if strHero == strHeroJenova then
					if iExpectEstatesGold > iEstatesGold + TTH_FINAL.ESTATES_MAX * iCoef * 1.5 then
						iExpectEstatesGold = iEstatesGold + TTH_FINAL.ESTATES_MAX * iCoef * 1.5
					end;
				else
					if iExpectEstatesGold > iEstatesGold + TTH_FINAL.ESTATES_MAX * iCoef then
						iExpectEstatesGold = iEstatesGold + TTH_FINAL.ESTATES_MAX * iCoef
					end;
				end;
				return iExpectEstatesGold;
			end;

		-- HERO_SKILL_DIPLOMACY 030 外交术
			TTH_VARI.recordDiplomacy = {};
			function TTH_PERK.init030(iPlayer, strHero)
				if TTH_VARI.recordDiplomacy[strHero] == nil then
					local strHeroMarkal = "Markal";
					local iTimes = 1;
					if strHero == strHeroMarkal then
						iTimes = 2;
					end;
					TTH_VARI.recordDiplomacy[strHero] = {
						["OperTimes"] = iTimes
						, ["MaxOperTimes"] = iTimes
					};
				end;
			end;
			function TTH_PERK.active030(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Text"]);

				TTH_PERK.init030(iPlayer, strHero);
				TTH_PERK.checkPreActive0304NotEnoughTimes(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreActive0304NotEnoughTimes(iPlayer, strHero)
				local strText = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["NotEnoughTimes"];
    		if TTH_VARI.recordDiplomacy[strHero]["OperTimes"] <= 0 then
    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
    				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
    				end;
    			else
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
	    		end;
    		end;

				TTH_PERK.checkPreActive0304SuitableCreature(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreActive0304SuitableCreature(iPlayer, strHero)
				local arrOptionCreature = {};
				local arrCreature = GetObjectNamesByType("CREATURE");
				local i = 1;
				for iIndexCreature, strCreatureStack in arrCreature do
					if TTH_GLOBAL.getDistance(strHero, strCreatureStack) <= 5 then
						local iPosX, iPosY, iPosZ = GetObjectPosition(strCreatureStack);
						arrOptionCreature[i] = {
							["Id"] = strCreatureStack
							, ["Text"] = {
									TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["OptionTemplate"]
									;iPosX=iPosX
									,iPosY=iPosY
								}
							, ["Callback"] = "TTH_PERK.confirmActive030"
						};
						i = i + 1;
					end;
				end;
				if length(arrOptionCreature) <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["NoSuitableCreature"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["RadioTips"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionCreature, strPathOption);
			end;
			function TTH_PERK.confirmActive030(iPlayer, strHero, strCreatureStack)
				local arrTemplateCreature = {"", "", "", "", "", "", ""};
				local strTemplateCreature = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["TemplateCreature"];
				local arrCreatureSlot = TTH_GLOBAL.getObjectCreatureInfo(strCreatureStack);
				local iCoef = 1;
				if HasArtefact(strHero, ARTIFACT_CROWN_OF_LEADER, 1) ~= nil then
					iCoef = 1.5;
				end;
				local iCount = TTH_COMMON.round(1 * iCoef);
				local strHeroMarkal = "Markal";
				if strHero == strHeroMarkal then
					iCount = TTH_COMMON.round(2 * iCoef);
				end;
				for iSlot = 0, 6 do
					if arrCreatureSlot[iSlot]["Id"] > 0 then
						local iSlotCount = iCount;
						if arrCreatureSlot[iSlot]["Count"] < iSlotCount then
							iSlotCount = arrCreatureSlot[iSlot]["Count"];
						end;
						arrTemplateCreature[iSlot] = {
							strTemplateCreature
							;strCreatureName=TTH_TABLE_NCF_CREATURES[arrCreatureSlot[iSlot]["Id"]]["NAME"]
							,iCreatureCount=iSlotCount
						};
					end;
				end;

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Confirm"]
					;strTemplateCreature0=arrTemplateCreature[0]
					,strTemplateCreature1=arrTemplateCreature[1]
					,strTemplateCreature2=arrTemplateCreature[2]
					,strTemplateCreature3=arrTemplateCreature[3]
					,strTemplateCreature4=arrTemplateCreature[4]
					,strTemplateCreature5=arrTemplateCreature[5]
					,strTemplateCreature6=arrTemplateCreature[6]
				};
				local strCallbackOk = "TTH_PERK.implActive030("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strCreatureStack)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive030(iPlayer, strHero, strCreatureStack)
    		if TTH_VARI.recordDiplomacy[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordDiplomacy[strHero]["OperTimes"] = TTH_VARI.recordDiplomacy[strHero]["OperTimes"] - 1;
    		else
    			TTH_MANAGE.useOperTimes(strHero);
    		end;
    		local arrCreatureSlot = TTH_GLOBAL.getObjectCreatureInfo(strCreatureStack);
				local iCoef = 1;
				if HasArtefact(strHero, ARTIFACT_CROWN_OF_LEADER, 1) ~= nil then
					iCoef = 1.5;
				end;
				local iCount = TTH_COMMON.round(1 * iCoef);
    		local strHeroMarkal = "Markal";
    		local strHeroBerein = "Berein";
				if strHero == strHeroMarkal then
					iCount = TTH_COMMON.round(2 * iCoef);
				end;
    		for iSlot = 0, 6 do
    			if arrCreatureSlot[iSlot]["Id"] > 0 then
    				local iSlotCount = iCount;
    				if arrCreatureSlot[iSlot]["Count"] < iSlotCount then
    					iSlotCount = arrCreatureSlot[iSlot]["Count"];
    				end;
    				local iCreatureId = arrCreatureSlot[iSlot]["Id"];
						RemoveObjectCreatures(strCreatureStack, iCreatureId, iSlotCount);
						if strHero == strHeroBerein then
							local iLenNecCreatures = length(List_Nec_AllCreatures);
							for iIndexNecCreatures = 1, iLenNecCreatures do
								if contains(List_Nec_AllCreatures[iIndexNecCreatures][1], iCreatureId) ~= nil then
									iCreatureId = List_Nec_AllCreatures[iIndexNecCreatures][2];
								end;
							end;
						end;
    				TTH_GLOBAL.addCreature4Hero8Sign(strHero, iCreatureId, iSlotCount, TTH_ENUM.AddCreature);
    			end;
    		end;
    		SetMonsterCourageAndMood(strCreatureStack, iPlayer, MONSTER_COURAGE_CAN_FLEE_JOIN, MONSTER_MOOD_AGGRESSIVE);
    		sleep(0.1);
    		MakeHeroInteractWithObject(strHero, strCreatureStack);
			end;
			function TTH_PERK.resetWeekly030(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly030", iPlayer, strHero);

				TTH_PERK.init030(iPlayer, strHero);
    		TTH_VARI.recordDiplomacy[strHero]["OperTimes"] = TTH_VARI.recordDiplomacy[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_FORTUNATE_ADVENTURER 033 资源富饶
			TTH_VARI.recordFortunateAdventurer = {};
			function TTH_PERK.init033(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init033", iPlayer, strHero);

				TTH_VARI.recordFortunateAdventurer[strHero] = {
					["OperTimes"] = 1
					, ["MaxOperTimes"] = 1
				};
			end;
			function TTH_PERK.active033(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Text"]);

				TTH_PERK.checkPreActive0334NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive0334NotEnoughTimes(iPlayer, strHero)
				if TTH_VARI.recordFortunateAdventurer[strHero] == nil then
					TTH_PERK.init033(iPlayer, strHero);
				end;
				local strText = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["NotEnoughTimes"];
    		if TTH_VARI.recordFortunateAdventurer[strHero]["OperTimes"] <= 0 then
    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
    				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
    				end;
    			else
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
	    		end;
    		end;

				TTH_PERK.confirmActive033(iPlayer, strHero);
			end;
			function TTH_PERK.confirmActive033(iPlayer, strHero)
    		local iHeroLevel = GetHeroLevel(strHero);
    		local iChestLevel = TTH_COMMON.floor(sqrt(iHeroLevel));
    		local iGold = 500 + iChestLevel * 500;
    		local iExp = iChestLevel * 500;

				local strPathMain={
					TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Confirm"]
					;iChestLevel=iChestLevel
					,iGold=iGold
					,iExp=iExp
				};
				local strCallbackOk = "TTH_PERK.implActive033("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive033(iPlayer, strHero, strTown)
    		if TTH_VARI.recordFortunateAdventurer[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordFortunateAdventurer[strHero]["OperTimes"] = TTH_VARI.recordFortunateAdventurer[strHero]["OperTimes"] - 1;
    		else
    			TTH_MANAGE.useOperTimes(strHero);
    		end;
    		ChangeHeroStat(strHero, STAT_MOVE_POINTS, -1 * TTH_FINAL.NUM_MAX);
    		local iHeroLevel = GetHeroLevel(strHero);
    		local iChestLevel = TTH_COMMON.floor(sqrt(iHeroLevel));
    		local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
    		CreateTreasure("", TTH_ENUM.TreasureChest, iChestLevel, iPosX, iPosY, iPosZ);
				local strText = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Success"];
    		TTH_GLOBAL.sign(strHero, strText);
			end;
			function TTH_PERK.resetWeekly033(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly033", iPlayer, strHero);

				if TTH_VARI.recordFortunateAdventurer[strHero] == nil then
					TTH_PERK.init033(iPlayer, strHero);
				end;
    		TTH_VARI.recordFortunateAdventurer[strHero]["OperTimes"] = TTH_VARI.recordFortunateAdventurer[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_TOUGHNESS 039 活力无限
			TTH_VARI.recordToughness = {};
			function TTH_PERK.init039(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init039", iPlayer, strHero);

				TTH_VARI.recordToughness[strHero] = {
					["OperTimes"] = 1
					, ["MaxOperTimes"] = 1
				};
			end;
			function TTH_PERK.active039(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Text"]);

				TTH_PERK.checkPreActive0394NoBuildingOnAdvMap(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive0394NoBuildingOnAdvMap(iPlayer, strHero)
				if TTH_VARI.recordToughness[strHero] == nil then
					TTH_PERK.init039(iPlayer, strHero);
				end;
    		if length(TTH_VARI.arrBuilding["BUILDING_NOMADS_SHAMAN"]) <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["NoBuildingOnAdvMap"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
    		end;

				TTH_PERK.checkPreActive0394NotEnoughTimes(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreActive0394NotEnoughTimes(iPlayer, strHero)
				if TTH_VARI.recordToughness[strHero] == nil then
					TTH_PERK.init039(iPlayer, strHero);
				end;
    		if TTH_VARI.recordToughness[strHero]["OperTimes"] <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["NotEnoughTimes"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
    		end;

				TTH_PERK.implActive039(iPlayer, strHero);
			end;
			function TTH_PERK.implActive039(iPlayer, strHero)
    		if TTH_VARI.recordToughness[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordToughness[strHero]["OperTimes"] = TTH_VARI.recordToughness[strHero]["OperTimes"] - 1;
    		end;
    		MakeHeroInteractWithObject(strHero, TTH_VARI.arrBuilding["BUILDING_NOMADS_SHAMAN"][0]);
			end;
			function TTH_PERK.resetDaily039(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetDaily039", iPlayer, strHero);

				if TTH_VARI.recordToughness[strHero] == nil then
					TTH_PERK.init039(iPlayer, strHero);
				end;
    		TTH_VARI.recordToughness[strHero]["OperTimes"] = TTH_VARI.recordToughness[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_RAISE_ARCHERS 061 宝物学者
			TTH_VARI.recordRaiseArchers = {};
			TTH_FINAL.RAISE_ARCHERS_COST = 0;
			function TTH_PERK.init061(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init061", iPlayer, strHero);

				if TTH_VARI.recordRaiseArchers[strHero] == nil then
					TTH_VARI.recordRaiseArchers[strHero] = {
						["OperTimes"] = 1
						, ["MaxOperTimes"] = 1
						, ["Level"] = 0
						, ["ArtifactId"] = 0
					};
				end;
			end;
			function TTH_PERK.reset061(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.reset061", iPlayer, strHero);

				if TTH_VARI.recordRaiseArchers[strHero] ~= nil then
					TTH_VARI.recordRaiseArchers[strHero]["Level"] = 0;
					TTH_VARI.recordRaiseArchers[strHero]["ArtifactId"] = 0;
				end;
			end;
			function TTH_PERK.active061(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Text"]);

				TTH_PERK.init061(iPlayer, strHero);
				TTH_PERK.checkPreActive0614NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive0614NotEnoughTimes(iPlayer, strHero)
				local strText = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["NotEnoughTimes"];
				if TTH_VARI.recordRaiseArchers[strHero]["OperTimes"] <= 0 then
					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
						if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
		  				return nil;
						end;
					else
		  			TTH_GLOBAL.sign(strHero, strText);
						return nil;
		  		end;
				end;

				TTH_PERK.radioActive0614Level(iPlayer, strHero)
			end;
			function TTH_PERK.radioActive0614Level(iPlayer, strHero)
				local arrOption = {};
				for i = 1, 6 do
					arrOption[i] = {
						["Id"] = i
						, ["Text"] = {
								TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["OptionTemplate4Level"]
								;iLevel=i
							}
						, ["Callback"] = "TTH_PERK.checkPreActive0614Gold"
					};
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["RadioTips4Level"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strPathOption);
			end;
			function TTH_PERK.checkPreActive0614Gold(iPlayer, strHero, iLevel)
				TTH_VARI.recordRaiseArchers[strHero]["Level"] = iLevel;
				local iGold = iLevel * 1000 + TTH_FINAL.RAISE_ARCHERS_COST;
				if GetPlayerResource(iPlayer, GOLD) < iGold then
					local strPathMain = {
						TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["NotEnoughGold"]
				    ;iGold=iGold
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
					return nil;
				end;

				TTH_PERK.radioActive0614Artifact(iPlayer, strHero);
			end;
			function TTH_PERK.radioActive0614Artifact(iPlayer, strHero)
				local iLevel = TTH_VARI.recordRaiseArchers[strHero]["Level"];
					print("iLevel: "..iLevel)
				local arrOption = {};
				local arrArtifact = TTH_TABLE_Artifacts[iLevel];
					print("arrArtifact: ")
					print(arrArtifact)
				local i = 1;
				for iIndex, iArtifactId in arrArtifact do
					if HasArtefact(strHero, iArtifactId, 0) ~= nil then
						arrOption[i] = {
							["Id"] = iArtifactId
							, ["Text"] = TTH_TABLE.Artifact[iArtifactId]["Text"]
							, ["Callback"] = "TTH_PERK.comfirmActive061"
						};
						i = i + 1;
					end;
				end;

				if length(arrOption) <= 0 then
					local strPathMain = {
						TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["NoArtifact"]
						;iLevel=iLevel
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
					return nil;
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["RadioTips4Artifact"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strPathOption);
			end;
			function TTH_PERK.comfirmActive061(iPlayer, strHero, iArtifactId)
				TTH_VARI.recordRaiseArchers[strHero]["ArtifactId"] = iArtifactId;
				local iLevel = TTH_VARI.recordRaiseArchers[strHero]["Level"];
				local iGold = iLevel * 1000 + TTH_FINAL.RAISE_ARCHERS_COST;

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Confirm"]
					;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
					,iLevel=iLevel
					,iGold=iGold
				};
				local strCallbackOk = "TTH_PERK.implActive061("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive061(iPlayer, strHero)
				if TTH_VARI.recordRaiseArchers[strHero]["OperTimes"] > 0 then
					TTH_VARI.recordRaiseArchers[strHero]["OperTimes"] = TTH_VARI.recordRaiseArchers[strHero]["OperTimes"] - 1;
				else
					TTH_MANAGE.useOperTimes(strHero);
				end;

				local iLevel = TTH_VARI.recordRaiseArchers[strHero]["Level"];
				local iArtifactId = TTH_VARI.recordRaiseArchers[strHero]["ArtifactId"];
				local iGold = iLevel * 1000 + TTH_FINAL.RAISE_ARCHERS_COST;
				TTH_GLOBAL.reduceResource(iPlayer, GOLD, iGold);
				GiveArtefact(strHero, iArtifactId);
				TTH_PERK.reset061(iPlayer, strHero);

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Success"]
					;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
					,iLevel=iLevel
					,iGold=iGold
				};
				TTH_GLOBAL.sign(strHero, strPathMain);
			end;
			function TTH_PERK.resetWeekly061(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly061", iPlayer, strHero);

				TTH_PERK.init061(iPlayer, strHero);
				TTH_VARI.recordRaiseArchers[strHero]["OperTimes"] = TTH_VARI.recordRaiseArchers[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_MELT_ARTIFACT 068 熔毁宝物
			TTH_VARI.recordMeltArtifact = {};
			function TTH_PERK.init068(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init068", iPlayer, strHero);

				if TTH_VARI.recordMeltArtifact[strHero] == nil then
					TTH_VARI.recordMeltArtifact[strHero] = {
						["OperTimes"] = 1
						, ["MaxOperTimes"] = 1
						, ["Level"] = 0
						, ["ArtifactId"] = 0
					};
				end;
			end;
			function TTH_PERK.reset068(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.reset068", iPlayer, strHero);

				if TTH_VARI.recordMeltArtifact[strHero] ~= nil then
					TTH_VARI.recordMeltArtifact[strHero]["Level"] = 0;
					TTH_VARI.recordMeltArtifact[strHero]["ArtifactId"] = 0;
				end;
			end;
			function TTH_PERK.active068(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Text"]);

				TTH_PERK.init068(iPlayer, strHero);
				TTH_PERK.checkPreActive0684NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive0684NotEnoughTimes(iPlayer, strHero)
				local strText = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["NotEnoughTimes"];
				if TTH_VARI.recordMeltArtifact[strHero]["OperTimes"] <= 0 then
					if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
						if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
		  				return nil;
						end;
					else
		  			TTH_GLOBAL.sign(strHero, strText);
						return nil;
		  		end;
				end;

				TTH_PERK.radioActive0684Level(iPlayer, strHero)
			end;
			function TTH_PERK.radioActive0684Level(iPlayer, strHero)
				local arrOption = {};
				for i = 1, 7 do
					arrOption[i] = {
						["Id"] = i
						, ["Text"] = {
								TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["OptionTemplate4Level"]
								;iLevel=i
							}
						, ["Callback"] = "TTH_PERK.radioActive0684Artifact"
					};
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["RadioTips4Level"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strPathOption);
			end;
			function TTH_PERK.radioActive0684Artifact(iPlayer, strHero, iLevel)
				TTH_VARI.recordMeltArtifact[strHero]["Level"] = iLevel;
				local arrOption = {};
				local arrArtifact = TTH_TABLE_Artifacts[iLevel];
				local i = 1;
				for iIndex, iArtifactId in arrArtifact do
					if HasArtefact(strHero, iArtifactId, 0) ~= nil then
						arrOption[i] = {
							["Id"] = iArtifactId
							, ["Text"] = TTH_TABLE.Artifact[iArtifactId]["Text"]
							, ["Callback"] = "TTH_PERK.comfirmActive068"
						};
						i = i + 1;
					end;
				end;

				if length(arrOption) <= 0 then
					local strPathMain = {
						TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["NoArtifact"]
						;iLevel=iLevel
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
					return nil;
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["RadioTips4Artifact"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strPathOption);
			end;
			function TTH_PERK.comfirmActive068(iPlayer, strHero, iArtifactId)
				TTH_VARI.recordMeltArtifact[strHero]["ArtifactId"] = iArtifactId;
				local iLevel = TTH_VARI.recordMeltArtifact[strHero]["Level"];

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Confirm"]
					;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
					,iLevel=iLevel
				};
				local strCallbackOk = "TTH_PERK.implActive068("..iPlayer..","..TTH_COMMON.psp(strHero)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive068(iPlayer, strHero)
				if TTH_VARI.recordMeltArtifact[strHero]["OperTimes"] > 0 then
					TTH_VARI.recordMeltArtifact[strHero]["OperTimes"] = TTH_VARI.recordMeltArtifact[strHero]["OperTimes"] - 1;
				else
					TTH_MANAGE.useOperTimes(strHero);
				end;

				local iLevel = TTH_VARI.recordMeltArtifact[strHero]["Level"];
				local iArtifactId = TTH_VARI.recordMeltArtifact[strHero]["ArtifactId"];
				RemoveArtefact(strHero, iArtifactId);
				TTH_MANAGE.buffExtraTerritoryRadius(iPlayer, iLevel);
				TTH_PERK.reset068(iPlayer, strHero);

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Success"]
					;strArtifactName=TTH_TABLE.Artifact[iArtifactId]["Text"]
					,iLevel=iLevel
				};
				TTH_GLOBAL.sign(strHero, strPathMain);
			end;
			function TTH_PERK.resetWeekly068(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly068", iPlayer, strHero);

				TTH_PERK.init068(iPlayer, strHero);
				TTH_VARI.recordMeltArtifact[strHero]["OperTimes"] = TTH_VARI.recordMeltArtifact[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_PARIAH 083 堕落骑士
			TTH_VARI.recordGuardianAngel = {};
			TTH_VARI.recordPariah = {};
			function TTH_PERK.init083(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init083", iPlayer, strHero);

				if TTH_VARI.recordGuardianAngel[strHero] == nil then
					TTH_VARI.recordGuardianAngel[strHero] = {
						["OperTimes"] = 1
						, ["MaxOperTimes"] = 1
					};
				end;
				if TTH_VARI.recordPariah[strHero] == nil then
					TTH_VARI.recordPariah[strHero] = {
						["Status"] = TTH_ENUM.No
					};
				end;
			end;
			function TTH_PERK.active083(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_PARIAH]["Text"]);

				TTH_PERK.init083(iPlayer, strHero);
				TTH_PERK.checkPreActive0834NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive0834NotEnoughTimes(iPlayer, strHero)
				if TTH_VARI.recordGuardianAngel[strHero] == nil then
					TTH_PERK.init083(iPlayer, strHero);
				end;
				local strText = TTH_PATH.Perk[HERO_SKILL_PARIAH]["NotEnoughTimes"];
    		if TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] <= 0 then
    			TTH_GLOBAL.sign(strHero, strText);
  				return nil;
    		end;

				TTH_PERK.confirmActive083(iPlayer, strHero);
			end;
			function TTH_PERK.confirmActive083(iPlayer, strHero)
    		local iHeroLevel = GetHeroLevel(strHero);
    		local iCreatureCount = 1 + TTH_COMMON.floor(iHeroLevel / 10);
    		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
    		local iCreatureId = CREATURE_DRAGON_KNIGHT_LESS;
  			local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];

				local strPathMain={
					TTH_PATH.Perk[HERO_SKILL_PARIAH]["Confirm"]
					;strCreatureName=strCreatureName
					,iCreatureCount=iCreatureCount
				};
				local strCallbackOk = "TTH_PERK.implActive083("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iCreatureId..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive083(iPlayer, strHero, iCreatureId)
    		if TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] = TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] - 1;
    		end;
    		TTH_PERK.enableActive083(iPlayer, strHero, iCreatureId);
				local strText = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Success"];
    		TTH_GLOBAL.sign(strHero, strText);
			end;
			function TTH_PERK.combatResult083(iPlayer, strHero, iCombatIndex)
				TTH_MAIN.debug("TTH_PERK.combatResult083", iPlayer, strHero, iCombatIndex);

				TTH_PERK.init083(iPlayer, strHero);
				TTH_PERK.disableActive083(iPlayer, strHero);
			end;
			function TTH_PERK.resetWeekly083(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly083", iPlayer, strHero);

				TTH_PERK.init083(iPlayer, strHero);
    		TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] = TTH_VARI.recordGuardianAngel[strHero]["MaxOperTimes"];
			end;
			function TTH_PERK.resetDaily083(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetDaily083", iPlayer, strHero);

				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					TTH_PERK.init083(iPlayer, strHero);
    			local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
	    		local iCreatureId = CREATURE_DRAGON_KNIGHT_LESS;
					TTH_PERK.enableActive083(iPlayer, strHero, iCreatureId);
				end;
			end;
			function TTH_PERK.enableActive083(iPlayer, strHero, iCreatureId)
				TTH_VARI.recordPariah[strHero]["Status"] = TTH_ENUM.Yes;
				local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..HERO_SKILL_PARIAH;
				TTH_COMMON.consoleSetGameVar(strKey, iCreatureId);
			end;
			function TTH_PERK.disableActive083(iPlayer, strHero)
				if TTH_VARI.recordPariah[strHero]["Status"] == TTH_ENUM.Yes then
					TTH_VARI.recordPariah[strHero]["Status"] = TTH_ENUM.No;
					local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..HERO_SKILL_PARIAH;
					TTH_COMMON.consoleSetGameVar(strKey, 0);
				end;
			end;

		-- HERO_SKILL_TWILIGHT 109 微光黎明
			TTH_VARI.recordTwilight = {};
			function TTH_PERK.init109(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init109", iPlayer, strHero);

				if TTH_VARI.recordGuardianAngel[strHero] == nil then
					TTH_VARI.recordGuardianAngel[strHero] = {
						["OperTimes"] = 1
						, ["MaxOperTimes"] = 1
					};
				end;
				if TTH_VARI.recordTwilight[strHero] == nil then
					TTH_VARI.recordTwilight[strHero] = {
						["Status"] = TTH_ENUM.No
					};
				end;
			end;
			function TTH_PERK.active109(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Text"]);

				TTH_PERK.init109(iPlayer, strHero);
				TTH_PERK.checkPreActive1094NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive1094NotEnoughTimes(iPlayer, strHero)
				if TTH_VARI.recordGuardianAngel[strHero] == nil then
					TTH_PERK.init109(iPlayer, strHero);
				end;
				local strText = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["NotEnoughTimes"];
    		if TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] <= 0 then
    			TTH_GLOBAL.sign(strHero, strText);
  				return nil;
    		end;

				TTH_PERK.confirmActive109(iPlayer, strHero);
			end;
			function TTH_PERK.confirmActive109(iPlayer, strHero)
    		local iHeroLevel = GetHeroLevel(strHero);
    		local iCreatureCount = 1 + TTH_COMMON.floor(iHeroLevel / 10);
    		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
    		local iCreatureId = CREATURE_CHERUBIN_LESS;
  			local strCreatureName = TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"];

				local strPathMain={
					TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Confirm"]
					;strCreatureName=strCreatureName
					,iCreatureCount=iCreatureCount
				};
				local strCallbackOk = "TTH_PERK.implActive109("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iCreatureId..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive109(iPlayer, strHero, iCreatureId)
    		if TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] = TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] - 1;
    		end;
    		TTH_PERK.enableActive109(iPlayer, strHero, iCreatureId);
				local strText = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Success"];
    		TTH_GLOBAL.sign(strHero, strText);
			end;
			function TTH_PERK.combatResult109(iPlayer, strHero, iCombatIndex)
				TTH_MAIN.debug("TTH_PERK.combatResult109", iPlayer, strHero, iCombatIndex);

				TTH_PERK.init109(iPlayer, strHero);
				TTH_PERK.disableActive109(iPlayer, strHero);
			end;
			function TTH_PERK.resetWeekly109(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly109", iPlayer, strHero);

				TTH_PERK.init109(iPlayer, strHero);
    		TTH_VARI.recordGuardianAngel[strHero]["OperTimes"] = TTH_VARI.recordGuardianAngel[strHero]["MaxOperTimes"];
			end;
			function TTH_PERK.resetDaily109(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetDaily109", iPlayer, strHero);

				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					TTH_PERK.init109(iPlayer, strHero);
    			local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
	    		local iCreatureId = CREATURE_CHERUBIN_LESS;
					TTH_PERK.enableActive109(iPlayer, strHero, iCreatureId);
				end;
			end;
			function TTH_PERK.enableActive109(iPlayer, strHero, iCreatureId)
				TTH_VARI.recordTwilight[strHero]["Status"] = TTH_ENUM.Yes;
				local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..HERO_SKILL_TWILIGHT;
				TTH_COMMON.consoleSetGameVar(strKey, iCreatureId);
			end;
			function TTH_PERK.disableActive109(iPlayer, strHero)
				if TTH_VARI.recordTwilight[strHero]["Status"] == TTH_ENUM.Yes then
					TTH_VARI.recordTwilight[strHero]["Status"] = TTH_ENUM.No;
					local strKey = TTH_FINAL.GAMEVAR_COMBAT_SKILL..strHero..'_'..HERO_SKILL_TWILIGHT;
					TTH_COMMON.consoleSetGameVar(strKey, 0);
				end;
			end;

		-- HERO_SKILL_GRAIL_VISION 080 杉提瑞之触
			TTH_VARI.recordShantiri = {};
			TTH_FINAL.SHANTIRI_EXP = 100;
			TTH_FINAL.SHANTIRI_RECOVERY = 0.25;
			function TTH_PERK.init080(iPlayer, strHero)
				if TTH_VARI.recordShantiri[strHero] == nil then
					TTH_VARI.recordShantiri[strHero] = {
						["CombatIndexTouch"] = -1
						, ["CombatIndexLast"] = -1
						, ["HasTouchCount"] = 0
						, ["HasTouchBuilding"] = {}
					};
				end;
			end;
			function TTH_PERK.active080(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Text"]);

				TTH_PERK.init080(iPlayer, strHero);
				TTH_PERK.checkPreActive0804SuitableShantiri(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreActive0804SuitableShantiri(iPlayer, strHero)
				local arrOptionShantiri = {};
				local i = 1;
				for iIndex, strShantiri in TTH_VARI.arrBuilding["BUILDING_SHANTIRI"] do
					if TTH_GLOBAL.getDistance(strHero, strShantiri) <= 5 then
						local iPosX, iPosY, iPosZ = GetObjectPosition(strShantiri);
						arrOptionShantiri[i] = {
							["Id"] = strShantiri
							, ["Text"] = {
									TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["OptionTemplate"]
									;iPosX=iPosX
									,iPosY=iPosY
								}
							, ["Callback"] = "TTH_PERK.implActive080"
						};
						i = i + 1;
					end;
				end;
				if length(arrOptionShantiri) <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["NoSuitableShantiri"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["RadioTips"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionShantiri, strPathOption);
			end;
			function TTH_PERK.implActive080(iPlayer, strHero, strShantiri)
				if contains(TTH_VARI.recordShantiri[strHero]["HasTouchBuilding"], strShantiri) == nil then
					TTH_VARI.recordShantiri[strHero]["HasTouchBuilding"] = TTH_COMMON.push(TTH_VARI.recordShantiri[strHero]["HasTouchBuilding"], strShantiri);
					TTH_VARI.recordShantiri[strHero]["HasTouchCount"] = TTH_VARI.recordShantiri[strHero]["HasTouchCount"] + 1;
					local strPathMain = {
						TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Touch"]
						;iTouchCount=TTH_VARI.recordShantiri[strHero]["HasTouchCount"]
					};
					TTH_GLOBAL.sign(strHero, strPathMain);
					sleep(1);
				end;
				if TTH_VARI.recordShantiri[strHero]["CombatIndexTouch"] == TTH_VARI.recordShantiri[strHero]["CombatIndexLast"] then
					local strText = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["NotEnoughCombat"];
					TTH_GLOBAL.sign(strHero, strText);
				else
					TTH_VARI.recordShantiri[strHero]["CombatIndexTouch"] = TTH_VARI.recordShantiri[strHero]["CombatIndexLast"];
					local iHeroLevel = GetHeroLevel(strHero);
					local iExp = iHeroLevel * TTH_VARI.recordShantiri[strHero]["HasTouchCount"] * TTH_FINAL.SHANTIRI_EXP;
					if TTH_GLOBAL.isBonus8PirateExp(strHero) == TTH_ENUM.Enable then
						iExp = TTH_COMMON.round(iExp * 1.5);
					end;
					local iMovePoint = TTH_COMMON.round(TTH_GLOBAL.getMaxMove8Hero(strHero) * TTH_FINAL.SHANTIRI_RECOVERY);
					if TTH_GLOBAL.isBonus8MonkMove(strHero) == TTH_ENUM.Enable then
						iMovePoint = TTH_COMMON.round(iMovePoint * 1.5);
					end;
					local iManaPoint = TTH_COMMON.round(TTH_GLOBAL.getMaxMana8Hero(strHero) * TTH_FINAL.SHANTIRI_RECOVERY);
					if TTH_GLOBAL.isBonus8MonkMana(strHero) == TTH_ENUM.Enable then
						iManaPoint = TTH_COMMON.round(iManaPoint * 1.5);
					end;
					print("iExp: ");
					print(iExp);
					print("iMovePoint: ");
					print(iMovePoint);
					print("iManaPoint: ");
					print(iManaPoint);
					TTH_GLOBAL.giveExp(strHero, iExp);
					ChangeHeroStat(strHero, STAT_MOVE_POINTS, iMovePoint);
					ChangeHeroStat(strHero, STAT_MANA_POINTS, iManaPoint);

	    		local strText = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Recovery"];
	    		TTH_GLOBAL.sign(strHero, strText);
				end;
			end;
			function TTH_PERK.combatResult080(iPlayer, strHero, iCombatIndex)
				TTH_MAIN.debug("TTH_PERK.combatResult080", iPlayer, strHero, iCombatIndex);

				TTH_PERK.init080(iPlayer, strHero);
				TTH_VARI.recordShantiri[strHero]["CombatIndexLast"] = iCombatIndex;
			end;

		-- HERO_SKILL_DEATH_TREAD 099 死亡行军
			TTH_VARI.recordDeathTread = {
				["DefenceTown"] = {}
				, ["Range"] = 18
			};
			function TTH_PERK.active099(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Text"]);

				TTH_PERK.checkPreactive0994NearByFoeTown(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreactive0994NearByFoeTown(iPlayer, strHero)
				local strNearByFoeTown = nil;
				for i, strTown in TTH_VARI.arrTown do
					if TTH_GLOBAL.getDistance(strHero, strTown) <= TTH_VARI.recordDeathTread["Range"] then
						if GetObjectOwner(strTown) ~= iPlayer then
							strNearByFoeTown = strTown;
							break;
						end;
					end;
				end;
				if strNearByFoeTown == nil then
    			local strText = TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["NoFoeTownNearBy"];
					TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.MessageBox, strText);
					return nil;
				end;
				TTH_PERK.confirmActive099(iPlayer, strHero, strNearByFoeTown);
			end;
			function TTH_PERK.confirmActive099(iPlayer, strHero, strTown)
				local iPosX, iPosY, iPosZ = GetObjectPosition(strTown);
				MoveCamera(iPosX, iPosY, iPosZ, 50, TTH_FINAL.PI/2, 1, 1, 1, 1);
				sleep(2);

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Confirm"]
					;iPosX=iPosX
					,iPosY=iPosY
					,iPosZ=TTH_PATH.Basic["PosZ"][iPosZ]
				};
				local strCallbackOk = "TTH_PERK.dealActive099("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strTown)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.dealActive099(iPlayer, strHero, strTown)
				TTH_VARI.recordDeathTread["DefenceTown"] = {};
				TTH_VARI.recordDeathTread["DefenceTown"]["Hero"] = strHero;
				TTH_VARI.recordDeathTread["DefenceTown"]["Town"] = strTown;
				TTH_VARI.recordDeathTread["DefenceTown"]["CombatIndex"] = GetLastSavedCombatIndex();
				MakeHeroInteractWithObject(strHero, strTown);
			end;
			function TTH_PERK.combatResult099(iPlayer, strHero, iCombatIndex)
				TTH_MAIN.debug("TTH_PERK.combatResult099", iPlayer, strHero, iCombatIndex);

				if TTH_VARI.recordDeathTread["DefenceTown"] ~= nil
					and TTH_VARI.recordDeathTread["DefenceTown"]["CombatIndex"] ~= nil
					and TTH_VARI.recordDeathTread["DefenceTown"]["CombatIndex"] + 1 == iCombatIndex
					and TTH_VARI.recordDeathTread["DefenceTown"]["Hero"] == strHero
					and GetObjectOwner(TTH_VARI.recordDeathTread["DefenceTown"]["Town"]) == iPlayer then
					TTH_GLOBAL.teleHero2Point(iPlayer, strHero, TTH_VARI.recordDeathTread["DefenceTown"]["Town"]);
					TTH_VARI.recordDeathTread["DefenceTown"]["CombatIndex"] = nil;
				end;
			end;

		-- HERO_SKILL_HAUNT_MINE 110 幽魂矿井
			TTH_VARI.recordHauntMine = {};
			TTH_FINAL.HAUNTMINE_NUMBER = 5;
			function TTH_PERK.init110(iPlayer, strHero)
				if TTH_VARI.recordHauntMine[strHero] == nil then
					local iTimes = 1;
					TTH_VARI.recordHauntMine[strHero] = {
						["OperTimes"] = iTimes
						, ["MaxOperTimes"] = iTimes
					};
				end;
			end;
			function TTH_PERK.active110(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Text"]);

				TTH_PERK.init110(iPlayer, strHero);
				TTH_PERK.checkPreActive1104NotEnoughTimes(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreActive1104NotEnoughTimes(iPlayer, strHero)
				local strText = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["NotEnoughTimes"];
    		if TTH_VARI.recordHauntMine[strHero]["OperTimes"] <= 0 then
    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
    				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
    				end;
    			else
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
	    		end;
    		end;

				TTH_PERK.checkPreActive1104SuitableMine(iPlayer, strHero);
			end;
			function TTH_PERK.checkPreActive1104SuitableMine(iPlayer, strHero)
				local arrOptionMine = {};
				local i = 1;
				for strMineName, objMine in TTH_VARI.arrMineBuilding do
					if GetObjectOwner(strMineName) ~= iPlayer then
						if TTH_GLOBAL.getDistance(strHero, strMineName) <= 5 then
							local iPosX, iPosY, iPosZ = GetObjectPosition(strMineName);
							arrOptionMine[i] = {
								["Id"] = strMineName
								, ["Text"] = {
										TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["OptionTemplate"]
										;iPosX=iPosX
										,iPosY=iPosY
									}
								, ["Callback"] = "TTH_PERK.checkPreActive1104SuitableCreature"
							};
							i = i + 1;
						end;
					end;
				end;
				if length(arrOptionMine) <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["NoSuitableMine"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				local strPathOption = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["RadioTips"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOptionMine, strPathOption);
			end;
			function TTH_PERK.checkPreActive1104SuitableCreature(iPlayer, strHero, strMineName)
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				local iCreatureCount = 0;
				local iCreatureTotalCount = 0;
				for iSlot = 0, 6 do
					local iCreatureId = arrCreature4Hero[iSlot]["Id"];
					if iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][1]
						or iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][2]
						or iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][3] then
						iCreatureCount = iCreatureCount + arrCreature4Hero[iSlot]["Count"];
					end;
					iCreatureTotalCount = iCreatureTotalCount + arrCreature4Hero[iSlot]["Count"];
				end;
				if iCreatureCount < TTH_FINAL.HAUNTMINE_NUMBER or iCreatureTotalCount < TTH_FINAL.HAUNTMINE_NUMBER + 1 then
					local strText = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["NoSuitableCreature"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_PERK.confirmActive110(iPlayer, strHero, strMineName)
			end;
			function TTH_PERK.confirmActive110(iPlayer, strHero, strMineName)
				local arrTemplateCreature = {"", "", ""};
				local strTemplateCreature = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["TemplateCreature"];
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				local iCreatureCount = TTH_FINAL.HAUNTMINE_NUMBER;
				local i = 0;
				for iSlot = 0, 6 do
    			local iCreatureId = arrCreature4Hero[iSlot]["Id"];
					if iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][1]
						or iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][2]
						or iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][3] then
						local iSlotCount = arrCreature4Hero[iSlot]["Count"];
						if iSlotCount >= iCreatureCount then
							iSlotCount = iCreatureCount;
						end;
						iCreatureCount = iCreatureCount - iSlotCount;
						if iSlotCount > 0 then
							arrTemplateCreature[i] = {
								strTemplateCreature
								;strCreatureName=TTH_TABLE_NCF_CREATURES[iCreatureId]["NAME"]
								,iCreatureCount=iSlotCount
							};
							i = i + 1;
						end;
					end;
				end;

				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Confirm"]
					;strTemplateCreature0=arrTemplateCreature[0]
					,strTemplateCreature1=arrTemplateCreature[1]
					,strTemplateCreature2=arrTemplateCreature[2]
				};
				local strCallbackOk = "TTH_PERK.implActive110("..iPlayer..","..TTH_COMMON.psp(strHero)..","..TTH_COMMON.psp(strMineName)..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive110(iPlayer, strHero, strMineName)
    		if TTH_VARI.recordHauntMine[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordHauntMine[strHero]["OperTimes"] = TTH_VARI.recordHauntMine[strHero]["OperTimes"] - 1;
    		else
    			TTH_MANAGE.useOperTimes(strHero);
    		end;
    		local arrTemplateCreature = {"", "", ""};
    		local strTemplateCreature = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["TemplateCreature"];
    		local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
    		local iCreatureCount = TTH_FINAL.HAUNTMINE_NUMBER;
    		for iSlot = 0, 6 do
    			local iCreatureId = arrCreature4Hero[iSlot]["Id"];
    			if iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][1]
    				or iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][2]
    				or iCreatureId == TTH_TABLE.Creature8RaceAndLevel[TOWN_NECROMANCY][3][3] then
    				local iSlotCount = arrCreature4Hero[iSlot]["Count"];
    				if iSlotCount >= iCreatureCount then
    					iSlotCount = iCreatureCount;
    				end;
    				iCreatureCount = iCreatureCount - iSlotCount;
    				TTH_GLOBAL.reduceCreature4Hero8Sign(strHero, iCreatureId, iSlotCount, TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["TemplateReduceCreature"]);
    			end;
    		end;
    		MakeHeroInteractWithObject(strHero, strMineName);
    		local strText = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Success"];
    		TTH_GLOBAL.sign(strHero, strText);
			end;
			function TTH_PERK.resetWeekly110(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly110", iPlayer, strHero);

				TTH_PERK.init110(iPlayer, strHero);
    		TTH_VARI.recordHauntMine[strHero]["OperTimes"] = TTH_VARI.recordHauntMine[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_DISGUISE_AND_RECKON 112 励精图治
			function TTH_PERK.dealDaily099(iPlayer, strHero)
				local iCoef = 1;
				if HasHeroSkill(strHero, HERO_SKILL_DISGUISE_AND_RECKON) then
					iCoef = 2;
				end;
				return iCoef;
			end;

		-- HERO_SKILL_MARCH_OF_THE_MACHINES 125 魔像行进
			TTH_VARI.recordMarchOfTheMachinesHero = {};
			TTH_VARI.recordMarchOfTheMachinesPlayer = {};
			TTH_FINAL.MARCH_OF_THE_MACHINES_SCALE = 6;
			TTH_FINAL.MARCH_OF_THE_MACHINES_ATTENUATION = 0.8;
			TTH_FINAL.MARCH_OF_THE_MACHINES_MIN = 0.4;
			TTH_TABLE.CreatureOption125 = {
				[1] = {
					["Id"] = 1
					, ["CreatureId"] = CREATURE_STONE_GARGOYLE
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_STONE_GARGOYLE]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 2
				}
				, [2] = {
					["Id"] = 2
					, ["CreatureId"] = CREATURE_IRON_GOLEM
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_IRON_GOLEM]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 3
				}
				, [3] = {
					["Id"] = 3
					, ["CreatureId"] = CREATURE_GIANT
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_GIANT]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 12
				}
				, [4] = {
					["Id"] = 4
					, ["CreatureId"] = CREATURE_FIRE_MECHANICAL
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_FIRE_MECHANICAL]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 4
				}
				, [5] = {
					["Id"] = 5
					, ["CreatureId"] = CREATURE_WATER_MECHANICAL
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_WATER_MECHANICAL]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 4
				}
				, [6] = {
					["Id"] = 6
					, ["CreatureId"] = CREATURE_EARTH_MECHANICAL
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_EARTH_MECHANICAL]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 4
				}
				, [7] = {
					["Id"] = 7
					, ["CreatureId"] = CREATURE_AIR_MECHANICAL
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_AIR_MECHANICAL]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 4
				}
				, [8] = {
					["Id"] = 8
					, ["CreatureId"] = CREATURE_PHOENIX_MECHANICAL
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_PHOENIX_MECHANICAL]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive125"
					, ["Scale"] = 12
				}
			};
			function TTH_PERK.init125(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init125", iPlayer, strHero);

				if TTH_VARI.recordMarchOfTheMachinesHero[strHero] == nil then
					TTH_VARI.recordMarchOfTheMachinesHero[strHero] = {
						["OperTimes"] = 1
						, ["MaxOperTimes"] = 1
					};
				end;
				if TTH_VARI.recordMarchOfTheMachinesPlayer[iPlayer] == nil then
					TTH_VARI.recordMarchOfTheMachinesPlayer[iPlayer] = 0;
				end;
			end;
			function TTH_PERK.active125(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Text"]);

				TTH_PERK.init125(iPlayer, strHero);
				TTH_PERK.checkPreActive1254NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive1254NotEnoughTimes(iPlayer, strHero)
				if TTH_VARI.recordMarchOfTheMachinesHero[strHero]["OperTimes"] <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["NotEnoughTimes"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				TTH_PERK.radioActive1254Creature(iPlayer, strHero)
			end;
			function TTH_PERK.radioActive1254Creature(iPlayer, strHero)
				local arrOption = {};
				local i = 1;
				local iLevel = 4;
				if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_MAGIS) >= 2 then
				  iLevel = 7;
				end;
				for iIndex, objOption in TTH_TABLE.CreatureOption125 do
					local iCreatureId = objOption["CreatureId"];
					local iOptionCreatureLevel = TTH_TABLE_NCF_CREATURES[iCreatureId]["TIER"];
					if iOptionCreatureLevel <= iLevel then
						arrOption[i] = objOption;
						i = i + 1;
					end;
				end
				local strText = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["TipsCreature"];
				TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strText);
			end;
			function TTH_PERK.comfirmActive125(iPlayer, strHero, iIndexId)
				local iPostCreatureId = TTH_TABLE.CreatureOption125[iIndexId]["CreatureId"];
				local strCreatureNameGremlin = TTH_TABLE_NCF_CREATURES[CREATURE_GREMLIN]["NAME"];
				local iCreatureNumberGremlin = 0;
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				for iIndex = 0, 6 do
					if arrCreature4Hero[iIndex]["Count"] > 0 then
						if arrCreature4Hero[iIndex]["Id"] == CREATURE_GREMLIN
							or arrCreature4Hero[iIndex]["Id"] == CREATURE_MASTER_GREMLIN
							or arrCreature4Hero[iIndex]["Id"] == CREATURE_GREMLIN_SABOTEUR then
							iCreatureNumberGremlin = iCreatureNumberGremlin + arrCreature4Hero[iIndex]["Count"];
						end;
					end;
				end;
				local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iPostCreatureId]["NAME"];
				local iAttenuation = TTH_PERK.calcAttenuation1254Player(iPlayer, strHero);
				local iPostCreatureNumber = TTH_COMMON.round(iCreatureNumberGremlin / TTH_FINAL.MARCH_OF_THE_MACHINES_SCALE / TTH_TABLE.CreatureOption125[iIndexId]["Scale"] * (1 + 0.2 * TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_MAGIS)) * iAttenuation);
				if iPostCreatureNumber < 1 then
					iPostCreatureNumber = 1;
				end;

				local iLevel = 4;
				if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_MAGIS) >= 2 then
				  iLevel = 7;
				end;
				local arrArtifactNameExist = {};
				local arrArtifactNameNotExist = {};
				for i = 0, 3 do
					local iComponentId = TTH_TABLE.ArtifactSetBonus[TTH_ENUM.SET_MAGIS]["Component"][i];
					if HasArtefact(strHero, iComponentId, 1) ~= nil then
					  arrArtifactNameExist[i + 1] = TTH_TABLE.Artifact[iComponentId]["Text"];
					  arrArtifactNameNotExist[i + 1] = "";
					else
					  arrArtifactNameExist[i + 1] = "";
					  arrArtifactNameNotExist[i + 1] = TTH_TABLE.Artifact[iComponentId]["Text"];
					end;
				end;
				local strPathMain = {
					TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Confirm"]
					;strCreatureNameGremlin=strCreatureNameGremlin
					,iCreatureNumberGremlin=iCreatureNumberGremlin
					,strPostCreatureName=strPostCreatureName
					,iPostCreatureNumber=iPostCreatureNumber
					,iLevel=iLevel
					,strArtifactNameExist1=arrArtifactNameExist[1]
					,strArtifactNameNotExist1=arrArtifactNameNotExist[1]
					,strArtifactNameExist2=arrArtifactNameExist[2]
					,strArtifactNameNotExist2=arrArtifactNameNotExist[2]
					,strArtifactNameExist3=arrArtifactNameExist[3]
					,strArtifactNameNotExist3=arrArtifactNameNotExist[3]
					,strArtifactNameExist4=arrArtifactNameExist[4]
					,strArtifactNameNotExist4=arrArtifactNameNotExist[4]
				};
				local strCallbackOk = "TTH_PERK.implActive125("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iPostCreatureId..","..iPostCreatureNumber..")";
				local strCallbackCancel = "TTH_COMMON.cancelOption()";
				TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
			end;
			function TTH_PERK.implActive125(iPlayer, strHero, iPostCreatureId, iPostCreatureNumber)
				if TTH_VARI.recordMarchOfTheMachinesHero[strHero]["OperTimes"] > 0 then
					TTH_VARI.recordMarchOfTheMachinesHero[strHero]["OperTimes"] = TTH_VARI.recordMarchOfTheMachinesHero[strHero]["OperTimes"] - 1;
				end;
				TTH_VARI.recordMarchOfTheMachinesPlayer[iPlayer] = TTH_VARI.recordMarchOfTheMachinesPlayer[iPlayer] + 1;
				TTH_GLOBAL.addCreature4Hero8Sign(strHero, iPostCreatureId, iPostCreatureNumber, TTH_ENUM.AddCreature);
			end;
			function TTH_PERK.resetWeekly125(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly125", iPlayer, strHero);

				if TTH_VARI.recordMarchOfTheMachinesHero[strHero] == nil then
					TTH_PERK.init125(iPlayer, strHero);
				end;
				local strHeroCyrus = "Cyrus";
				if strHero == strHeroCyrus then
		  		TTH_VARI.recordMarchOfTheMachinesHero[strHero]["OperTimes"] = TTH_VARI.recordMarchOfTheMachinesHero[strHero]["MaxOperTimes"];
				end;
			end;
			function TTH_PERK.calcAttenuation1254Player(iPlayer, strHero)
				local iAttenuation = 1;
				if TTH_VARI.recordMarchOfTheMachinesPlayer[iPlayer] > 0 then
					for i = 1, TTH_VARI.recordMarchOfTheMachinesPlayer[iPlayer] do
						iAttenuation = iAttenuation * TTH_FINAL.MARCH_OF_THE_MACHINES_ATTENUATION;
					end;
				end;
				if iAttenuation < TTH_FINAL.MARCH_OF_THE_MACHINES_MIN then
					iAttenuation = TTH_FINAL.MARCH_OF_THE_MACHINES_MIN;
				end;
				return iAttenuation;
			end;

		-- HERO_SKILL_SNATCH 168 攫取
			TTH_VARI.recordSnatch = {};
			function TTH_PERK.init168(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init168", iPlayer, strHero);

				TTH_VARI.recordSnatch[strHero] = {
					["OperTimes"] = 1
					, ["MaxOperTimes"] = 1
				};
			end;
			function TTH_PERK.active168(iPlayer, strHero, strTown)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_SNATCH]["Text"]);

				TTH_PERK.checkPreActive1684NotEnoughTimes(iPlayer, strHero, strTown)
			end;
			function TTH_PERK.checkPreActive1684NotEnoughTimes(iPlayer, strHero, strTown)
				if TTH_VARI.recordSnatch[strHero] == nil then
					TTH_PERK.init168(iPlayer, strHero);
				end;
				local strText = TTH_PATH.Perk[HERO_SKILL_SNATCH]["NotEnoughTimes"];
    		if TTH_VARI.recordSnatch[strHero]["OperTimes"] <= 0 then
    			if TTH_MANAGE.isMayor(strHero) == TTH_ENUM.Yes then
    				if TTH_MANAGE.getRemainOperTimes(strHero) <= 0 then
		    			TTH_GLOBAL.sign(strHero, strText);
	    				return nil;
    				end;
    			else
	    			TTH_GLOBAL.sign(strHero, strText);
    				return nil;
	    		end;
    		end;

				TTH_PERK.implActive168(iPlayer, strHero);
			end;
			function TTH_PERK.implActive168(iPlayer, strHero)
    		if TTH_VARI.recordSnatch[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordSnatch[strHero]["OperTimes"] = TTH_VARI.recordSnatch[strHero]["OperTimes"] - 1;
    		else
    			TTH_MANAGE.useOperTimes(strHero);
    		end;
    		local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
    		CreateTreasure("", TTH_ENUM.TreasureCamp, 1, iPosX, iPosY, iPosZ);

				local strText = TTH_PATH.Perk[HERO_SKILL_SNATCH]["Success"];
				TTH_GLOBAL.sign(strHero, strText);
			end;
			function TTH_PERK.resetWeekly168(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly168", iPlayer, strHero);

				if TTH_VARI.recordSnatch[strHero] == nil then
					TTH_PERK.init168(iPlayer, strHero);
				end;
    		TTH_VARI.recordSnatch[strHero]["OperTimes"] = TTH_VARI.recordSnatch[strHero]["MaxOperTimes"];
			end;

		-- HERO_SKILL_DEFEND_US_ALL 181 全体保卫
			TTH_VARI.recordDefendUsAllHero = {};
			TTH_VARI.recordDefendUsAllPlayer = {};
			TTH_FINAL.DEFEND_US_ALL_SCALE = 10;
			TTH_FINAL.DEFEND_US_ALL_ATTENUATION = 0.8;
			TTH_FINAL.DEFEND_US_ALL_MIN = 0.4;
			TTH_TABLE.CreatureOption181 = {
				[1] = {
					["Id"] = 1
					, ["CreatureId"] = CREATURE_GOBLIN
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_GOBLIN]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 1.5
				}
				, [2] = {
					["Id"] = 2
					, ["CreatureId"] = CREATURE_CENTAUR
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_CENTAUR]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 2
				}
				, [3] = {
					["Id"] = 3
					, ["CreatureId"] = CREATURE_ORC_WARRIOR
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_ORC_WARRIOR]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 3
				}
				, [4] = {
					["Id"] = 4
					, ["CreatureId"] = CREATURE_SHAMAN
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_SHAMAN]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 4
				}
				, [5] = {
					["Id"] = 5
					, ["CreatureId"] = CREATURE_ORCCHIEF_BUTCHER
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_ORCCHIEF_BUTCHER]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 6
				}
				, [6] = {
					["Id"] = 6
					, ["CreatureId"] = CREATURE_WYVERN
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_WYVERN]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 8
				}
				, [7] = {
					["Id"] = 7
					, ["CreatureId"] = CREATURE_CYCLOP
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_CYCLOP]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 12
				}
				, [8] = {
					["Id"] = 8
					, ["CreatureId"] = CREATURE_WOLF
					, ["Text"] = TTH_TABLE_NCF_CREATURES[CREATURE_WOLF]["NAME"]
					, ["Callback"] = "TTH_PERK.comfirmActive181"
					, ["Scale"] = 4
				}
			};
			function TTH_PERK.init181(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init181", iPlayer, strHero);

				if TTH_VARI.recordDefendUsAllHero[strHero] == nil then
					TTH_VARI.recordDefendUsAllHero[strHero] = {
						["OperTimes"] = 1
						, ["MaxOperTimes"] = 1
					};
				end;
				if TTH_VARI.recordDefendUsAllPlayer[iPlayer] == nil then
					TTH_VARI.recordDefendUsAllPlayer[iPlayer] = 0;
				end;
			end;
			function TTH_PERK.active181(iPlayer, strHero)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Text"]);

				TTH_PERK.init181(iPlayer, strHero);
				TTH_PERK.checkPreActive1814NotEnoughTimes(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive1814NotEnoughTimes(iPlayer, strHero)
    		if TTH_VARI.recordDefendUsAllHero[strHero]["OperTimes"] <= 0 then
					local strText = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["NotEnoughTimes"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
    		end;

    		TTH_PERK.radioActive1814Creature(iPlayer, strHero)
			end;
			function TTH_PERK.radioActive1814Creature(iPlayer, strHero)
    		local arrOption = {};
    		local i = 1;
				local iLevel = 4;
				if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_OGRES) == 1 then
				  iLevel = 6;
				elseif TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_OGRES) >= 2 then
				  iLevel = 7;
				end;
    		for iIndex, objOption in TTH_TABLE.CreatureOption181 do
    			local iCreatureId = objOption["CreatureId"];
    			local iOptionCreatureLevel = TTH_TABLE_NCF_CREATURES[iCreatureId]["TIER"];
    			if iOptionCreatureLevel <= iLevel then
    				arrOption[i] = objOption;
    				i = i + 1;
    			end;
    		end
    		local strText = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["TipsCreature"];
    		TTH_COMMON.optionRadio(iPlayer, strHero, arrOption, strText);
			end;
    	function TTH_PERK.comfirmActive181(iPlayer, strHero, iIndexId)
    		local iPostCreatureId = TTH_TABLE.CreatureOption181[iIndexId]["CreatureId"];
    		local strCreatureNameGoblin = TTH_TABLE_NCF_CREATURES[CREATURE_GOBLIN]["NAME"];
    		local iCreatureNumberGoblin = 0;
				local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
				for iIndex = 0, 6 do
					if arrCreature4Hero[iIndex]["Count"] > 0 then
						if arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN
							or arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN_TRAPPER
							or arrCreature4Hero[iIndex]["Id"] == CREATURE_GOBLIN_DEFILER then
							iCreatureNumberGoblin = iCreatureNumberGoblin + arrCreature4Hero[iIndex]["Count"];
						end;
					end;
				end;
    		local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iPostCreatureId]["NAME"];
    		local iAttenuation = TTH_PERK.calcAttenuation1814Player(iPlayer, strHero);
				local iPostCreatureNumber = TTH_COMMON.round(iCreatureNumberGoblin / TTH_FINAL.DEFEND_US_ALL_SCALE / TTH_TABLE.CreatureOption181[iIndexId]["Scale"] * (1 + 0.4 * TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_OGRES)) * iAttenuation);
				if iPostCreatureNumber < 1 then
					iPostCreatureNumber = 1;
				end;

    		local iLevel = 4;
    		if TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_OGRES) == 1 then
    		  iLevel = 6;
    		elseif TTH_GLOBAL.getSetComponentCount(strHero, TTH_ENUM.SET_OGRES) >= 2 then
    		  iLevel = 7;
    		end;
				local arrArtifactNameExist = {};
				local arrArtifactNameNotExist = {};
				for i = 0, 1 do
					local iComponentId = TTH_TABLE.ArtifactSetBonus[TTH_ENUM.SET_OGRES]["Component"][i];
					if HasArtefact(strHero, iComponentId, 1) ~= nil then
					  arrArtifactNameExist[i + 1] = TTH_TABLE.Artifact[iComponentId]["Text"];
					  arrArtifactNameNotExist[i + 1] = "";
					else
					  arrArtifactNameExist[i + 1] = "";
					  arrArtifactNameNotExist[i + 1] = TTH_TABLE.Artifact[iComponentId]["Text"];
					end;
				end;
				local strPathMain = {
  				TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Confirm"]
    			;strCreatureNameGoblin=strCreatureNameGoblin
    			,iCreatureNumberGoblin=iCreatureNumberGoblin
    			,strPostCreatureName=strPostCreatureName
    			,iPostCreatureNumber=iPostCreatureNumber
    			,iLevel=iLevel
    			,strArtifactNameExist1=arrArtifactNameExist[1]
    			,strArtifactNameNotExist1=arrArtifactNameNotExist[1]
    			,strArtifactNameExist2=arrArtifactNameExist[2]
    			,strArtifactNameNotExist2=arrArtifactNameNotExist[2]
    		};
  			local strCallbackOk = "TTH_PERK.implActive181("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iPostCreatureId..","..iPostCreatureNumber..")";
  			local strCallbackCancel = "TTH_COMMON.cancelOption()";
  			TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strPathMain, strCallbackOk, strCallbackCancel);
    	end;
			function TTH_PERK.implActive181(iPlayer, strHero, iPostCreatureId, iPostCreatureNumber)
    		if TTH_VARI.recordDefendUsAllHero[strHero]["OperTimes"] > 0 then
    			TTH_VARI.recordDefendUsAllHero[strHero]["OperTimes"] = TTH_VARI.recordDefendUsAllHero[strHero]["OperTimes"] - 1;
    		end;
    		TTH_VARI.recordDefendUsAllPlayer[iPlayer] = TTH_VARI.recordDefendUsAllPlayer[iPlayer] + 1;
    		TTH_GLOBAL.addCreature4Hero8Sign(strHero, iPostCreatureId, iPostCreatureNumber, TTH_ENUM.AddCreature);
			end;
			function TTH_PERK.resetWeekly181(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.resetWeekly181", iPlayer, strHero);

				if TTH_VARI.recordDefendUsAllHero[strHero] == nil then
					TTH_PERK.init181(iPlayer, strHero);
				end;
				local strHeroKunyak = "Kunyak";
				if strHero == strHeroKunyak then
	    		TTH_VARI.recordDefendUsAllHero[strHero]["OperTimes"] = TTH_VARI.recordDefendUsAllHero[strHero]["MaxOperTimes"];
				end;
			end;
			function TTH_PERK.calcAttenuation1814Player(iPlayer, strHero)
				local iAttenuation = 1;
				print("TTH_VARI.recordDefendUsAllPlayer: ");
				print(TTH_VARI.recordDefendUsAllPlayer[iPlayer]);
				if TTH_VARI.recordDefendUsAllPlayer[iPlayer] > 0 then
					for i = 1, TTH_VARI.recordDefendUsAllPlayer[iPlayer] do
						iAttenuation = iAttenuation * TTH_FINAL.DEFEND_US_ALL_ATTENUATION;
					end;
				end;
				print("iAttenuation: ");
				print(iAttenuation);
				if iAttenuation < TTH_FINAL.DEFEND_US_ALL_MIN then
					iAttenuation = TTH_FINAL.DEFEND_US_ALL_MIN;
				end;
				print("iAttenuation: ");
				print(iAttenuation);
				return iAttenuation;
			end;

		-- HERO_SKILL_GOBLIN_SUPPORT 182 地精支援
			TTH_VARI.recordHero182 = {};
			TTH_VARI.recordPlayer182 = {};
    	TTH_VARI.threadActive182 = {};
    	TTH_FINAL.GOBLIN_SUPPORT_COST = 5000;
			TTH_TABLE.DirectionOption182 = {
				[1] = {
					["Id"] = TTH_ENUM.DirectionNorth
					, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionNorth]
					, ["Callback"] = "TTH_PERK.checkPreActive1824Gold"
					, ["Rotate"] = TTH_ENUM.RotateNorth
				}
				, [2] = {
					["Id"] = TTH_ENUM.DirectionEast
					, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionEast]
					, ["Callback"] = "TTH_PERK.checkPreActive1824Gold"
					, ["Rotate"] = TTH_ENUM.RotateEast
				}
				, [3] = {
					["Id"] = TTH_ENUM.DirectionSouth
					, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionSouth]
					, ["Callback"] = "TTH_PERK.checkPreActive1824Gold"
					, ["Rotate"] = TTH_ENUM.RotateSouth
				}
				, [4] = {
					["Id"] = TTH_ENUM.DirectionWest
					, ["Text"] = TTH_PATH.Direction[TTH_ENUM.DirectionWest]
					, ["Callback"] = "TTH_PERK.checkPreActive1824Gold"
					, ["Rotate"] = TTH_ENUM.RotateWest
				}
			};
			function TTH_PERK.init182(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.init182", iPlayer, strHero);

				if TTH_VARI.recordHero182[strHero] == nil then
					local iMaxBuilding = 1;
					local strHeroHero9 = "Hero9";
					if strHero == strHeroHero9 then
						iMaxBuilding = 2;
					end;
					TTH_VARI.recordHero182[strHero] = {
						["HasBuilding"] = 0
						, ["MaxBuilding"] = iMaxBuilding
					};
				end;
				if TTH_VARI.recordPlayer182[iPlayer] == nil then
					TTH_VARI.recordPlayer182[iPlayer] = {
						["Support"] = {}
						, ["Index"] = 0
					};
				end;
			end;
			function TTH_PERK.active182(iPlayer, strHero, strTown)
				TTH_COMMON.nextNavi(TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Text"]);

				TTH_PERK.init182(iPlayer, strHero);
				TTH_PERK.checkPreActive1824HasBuilding(iPlayer, strHero)
			end;
			function TTH_PERK.checkPreActive1824HasBuilding(iPlayer, strHero)
				if TTH_VARI.recordHero182[strHero]["HasBuilding"] >= TTH_VARI.recordHero182[strHero]["MaxBuilding"] then
					local strText = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["HasBuilding"];
					TTH_GLOBAL.sign(strHero, strText);
					return nil;
				end;

				local strText = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["TipsDirection"];
				TTH_COMMON.optionRadio(iPlayer, strHero, TTH_TABLE.DirectionOption182, strText);
			end;
			function TTH_PERK.checkPreActive1824Gold(iPlayer, strHero, iDirectionId)
				local iGold = length(TTH_VARI.recordPlayer182[iPlayer]["Support"]) * TTH_FINAL.GOBLIN_SUPPORT_COST;
    		if GetPlayerResource(iPlayer, GOLD) < iGold then
    			local strPathMain = {
						TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["NotEnoughGold"]
				    ;iGold=iGold
    			};
    			TTH_GLOBAL.sign(strHero, strPathMain);
  				return nil;
    		end;

    		TTH_PERK.threadActive182(iPlayer, strHero, iDirectionId);
			end;
    	function TTH_PERK.checkPreActive1824NegetivePlace()
				local strHero = TTH_VARI.threadActive182["Hero"];
				local strText = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["NegetivePlace"];
  			TTH_GLOBAL.sign(strHero, strText);
				return nil;
    	end;
    	function TTH_PERK.threadActive182(iPlayer, strHero, iDirectionId)
    		TTH_VARI.threadActive182 = {
    			["Player"] = iPlayer
    			, ["Hero"] = strHero
    			, ["DirectionId"] = iDirectionId
    		};
    		startThread(TTH_PERK.implActive182);
    	end;
    	function TTH_PERK.implActive182()
    		errorHook(TTH_PERK.checkPreActive1824NegetivePlace);

    		local iPlayer = TTH_VARI.threadActive182["Player"];
    		local strHero = TTH_VARI.threadActive182["Hero"];
    		local iDirectionId = TTH_VARI.threadActive182["DirectionId"];

    		local iIndexBuilding = TTH_VARI.recordHero182[strHero]["HasBuilding"];
    		local iHeroRace = TTH_GLOBAL.getRace8Hero(strHero);
    		local iPosX, iPosY, iPosZ = GetObjectPosition(strHero);
    		if iDirectionId == TTH_ENUM.DirectionNorth then
    			iPosY = iPosY + 3;
    		elseif iDirectionId == TTH_ENUM.DirectionEast then
    			iPosX = iPosX + 3;
    		elseif iDirectionId == TTH_ENUM.DirectionSouth then
    			iPosY = iPosY - 4;
    		elseif iDirectionId == TTH_ENUM.DirectionWest then
    			iPosX = iPosX - 4;
    		end;
    		local strBuildingName = strHero.."-"..iIndexBuilding;
    		CreateDwelling(strBuildingName, iHeroRace, 1, iPlayer, iPosX, iPosY, iPosZ, TTH_TABLE.DirectionOption182[iDirectionId]["Rotate"]);
    		sleep(1);
				local iGold = length(TTH_VARI.recordPlayer182[iPlayer]["Support"]) * TTH_FINAL.GOBLIN_SUPPORT_COST;
    		TTH_GLOBAL.reduceResource(iPlayer, GOLD, iGold);
    		TTH_VARI.recordHero182[strHero]["HasBuilding"] = TTH_VARI.recordHero182[strHero]["HasBuilding"] + 1;
    		TTH_VARI.recordPlayer182[iPlayer]["Support"] = TTH_COMMON.push(TTH_VARI.recordPlayer182[iPlayer]["Support"], strBuildingName);
				local strText = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Success"];
  			TTH_GLOBAL.sign(strHero, strText);
    	end;
			function TTH_PERK.dealDaily182(iPlayer, strHero)
				TTH_MAIN.debug("TTH_PERK.dealDaily182", iPlayer, strHero);

				TTH_PERK.init182(iPlayer, strHero);
				local arrSupport = TTH_VARI.recordPlayer182[iPlayer]["Support"];
				for i, strSupport in arrSupport do
					if GetObjectOwner(strSupport) ~= iPlayer then
						TTH_VARI.recordPlayer182[iPlayer]["Support"] = TTH_COMMON.remove8Value(TTH_VARI.recordPlayer182[iPlayer]["Support"], strSupport);
					end;
				end
			end;
    	function TTH_PERK.checkExpedition8182(iPlayer, strHero)
    		TTH_MAIN.debug("TTH_PERK.checkExpedition8182", iPlayer, strHero);

    		local bIsExpedition = TTH_ENUM.Yes;
    		if TTH_GLOBAL.getRace8Hero(strHero) == TOWN_STRONGHOLD
    			and TTH_VARI.recordPlayer182[iPlayer] ~= nil then
      		local arrDwelling = TTH_VARI.recordPlayer182[iPlayer]["Support"];
      		for i, strDwellingName in arrDwelling do
      			if TTH_GLOBAL.getDistance(strHero, strDwellingName) <= TTH_MANAGE.getTerritoryRadius(iPlayer) then
      				bIsExpedition = TTH_ENUM.No;
      				break;
      			end;
      		end;
    		end;
    		return bIsExpedition;
    	end;
    	function TTH_PERK.getDistance4Hero2NearestMayorTown8182(iPlayer, strHero)
    		TTH_MAIN.debug("TTH_PERK.getDistance4Hero2NearestMayorTown8182", iPlayer, strHero);

    		local arrDistance = {};
    		if TTH_VARI.recordPlayer182[iPlayer] ~= nil
    			and TTH_GLOBAL.getRace8Hero(strHero) == TOWN_STRONGHOLD then
    			local arrDwelling = TTH_VARI.recordPlayer182[iPlayer]["Support"];
    			for i, strDwellingName in arrDwelling do
    				TTH_COMMON.push(arrDistance, TTH_GLOBAL.getDistance(strHero, strDwellingName));
    			end
    		end;
    		return arrDistance;
    	end;

	-- test
		TTH_TEST = {};
		function TTH_TEST.test2(iPlayer)
			local strHero = GetPlayerHeroes(iPlayer)[0];
			GiveHeroSkill(strHero, HERO_SKILL_ARTIFICIER);
			GiveHeroSkill(strHero, HERO_SKILL_ARTIFICIER);
			GiveHeroSkill(strHero, HERO_SKILL_ARTIFICIER);
			sleep(1);
			GiveHeroSkill(strHero, HERO_SKILL_MELT_ARTIFACT);
			sleep(1);
			GiveHeroSkill(strHero, HERO_SKILL_RAISE_ARCHERS);
			sleep(1);
			GiveHeroSkill(strHero, HERO_SKILL_MARCH_OF_THE_MACHINES);
			GiveArtifact(strHero, ARTIFACT_ROBE_OF_MAGI);
			GiveArtifact(strHero, ARTIFACT_STAFF_OF_MAGI);
			GiveArtifact(strHero, ARTIFACT_CROWN_OF_MAGI);
			GiveArtifact(strHero, ARTIFACT_RING_OF_MAGI);
			TTH.see();
			ExecConsoleCommand("enable_cheats");
		end;
		function TTH_TEST.test(iLevel)
			local strTown = GetObjectNamesByType('TOWN')[0];
			local iRace = TTH_GLOBAL.getRace8Town(strTown);
			local iTempRace = iRace + 1;
			if iTempRace > TOWN_STRONGHOLD then
				iTempRace = TOWN_HEAVEN;
			end;
			TransformTown(strTown, iTempRace);
			sleep(1);
			TransformTown(strTown, iRace);
			sleep(1);
			TTH_MANAGE.constructTown(strTown, iLevel);

			-- GiveExp(strHero, 100000)
			-- sleep(1)
			-- ChangeHeroStat(strHero, STAT_KNOWLEDGE, 99);
			-- sleep(1)
			-- ChangeHeroStat(strHero, STAT_MANA_POINTS, TTH_FINAL.NUM_MAX);
			-- AddHeroCreatures(strHero, CREATURE_ORCCHIEF_BUTCHER, 111)
			-- AddHeroCreatures(strHero, CREATURE_ORCCHIEF_EXECUTIONER, 111)
			-- AddHeroCreatures(strHero, CREATURE_ORCCHIEF_CHIEFTAIN, 111)
			-- GiveArtefact(strHero, ARTIFACT_OGRE_CLUB);
		 --  CreateArtifact("", ARTIFACT_QUILL_OF_MAYOR, 77, 191, 0);
			-- ExecConsoleCommand("enable_cheats")
			-- ExecConsoleCommand("add_all_spells")
			-- for iIndex, strShantiri in TTH_VARI.arrBuilding["BUILDING_SHANTIRI"] do
			-- 	local iX, iY, iZ = GetObjectPosition(strShantiri);
			-- 	OpenCircleFog(iX, iY, iZ, 5, iPlayer);
			-- end;
			-- StartCombat(strHero, nil, 1
			-- 	, 0, 1
			-- 	, nil
			-- 	, nil
			-- 	, TTH_PATH.Visit["Shantiri"]["CombatLink"]
			-- 	, 1);
			-- for i = WOOD, GOLD do
			-- 	local x = 9999;
			-- 	TTH_GLOBAL.increaseResource(iPlayer, i, x);
			-- 	x = 0;
			-- end;
			-- TTH_VARI.arrMayor[strHero]["RecordPoint"] = TTH_VARI.arrMayor[strHero]["RecordPoint"] + 10000;
			-- MakeHeroInteractWithObject(strHero, TTH_VARI.arrBuilding["BUILDING_BLACK_MARKET"][0]);
		end;

-- 主程
	TTH_MAIN = {};
	TTH_VARI.mainSwitch = TTH_ENUM.Yes;

	-- 初始化
		function TTH_MAIN.init()
			TTH_GLOBAL.initGameDifficulty(); -- 初始化游戏难度
			TTH_GLOBAL.setExpCoef8GameDifficulty(); -- 初始化英雄经验系数
			TTH_GLOBAL.initAdvTown(); -- 初始化城镇列表
			TTH_GLOBAL.initAdvBuilding(); -- 初始化地图建筑
			TTH_GLOBAL.checkAiCount(); -- 校验AI数量

			for iPlayer = PLAYER_1, PLAYER_8 do
				TTH_GLOBAL.initAi(iPlayer); -- 配置文件: AI玩家初始作弊
				-- TTH_GLOBAL.chooseStartGold(iPlayer); -- 玩家初始选择金币奖励时赠送2500金币
				TTH_GLOBAL.chooseStartSkill(iPlayer); -- 玩家初始选择技能奖励时随机提升一项已习得技能的等级
				TTH_GLOBAL.chooseStartCreature(iPlayer); -- 配置文件: 人类玩家初始选择生物奖励时定制生物
				TTH_GLOBAL.chooseStartArtifact(iPlayer); -- 配置文件: 人类玩家初始选择宝物奖励时定制宝物
				TTH_GLOBAL.setStartResource(iPlayer); -- 配置文件: 人类玩家是否0资源开局
				TTH_GLOBAL.triggerInitPlayerAddHero(iPlayer); -- 触发器: 玩家招募英雄
				TTH_GLOBAL.triggerInitPlayerRemoveHero(iPlayer); --触发器: 玩家失去英雄
				TTH_GLOBAL.initWeeklyEventCount(iPlayer); -- 初始化玩家周事件执行次数
				TTH_GLOBAL.initDailyEventCount(iPlayer); -- 初始化玩家日事件执行次数
				TTH_GLOBAL.initSettleResource(iPlayer); -- 初始化每日玩家资源
				TTH_MANAGE.initConstructData4RecordPoint(iPlayer); -- 构造政绩加成的数据结构
				TTH_ARTI.init1034Player(iPlayer); -- 初始化玩家的主城

				local arrHero = GetPlayerHeroes(iPlayer);
				for iIndexHero, strHero in arrHero do
					TTH_GLOBAL.bindHeroCustomAbility4Hero(strHero); -- 触发器: 王国管理
					TTH_GLOBAL.bindHeroCustomAbility3Hero(strHero); -- 触发器: 定点回城
					TTH_GLOBAL.triggerInitHeroLevelUp(strHero); -- 触发器: 英雄升级
					TTH_GLOBAL.initHero4Specialty(strHero); -- 初始生物特奖励生物
					TTH_MANAGE.initMayor(strHero); -- 初始内政官信息
					TTH_GLOBAL.setGameVar4HeroLevel(strHero); -- 将英雄等级记录到游戏全局参数
					TTH_GLOBAL.giveHero4Attribute(strHero); -- 属性特属性奖励
					TTH_GLOBAL.dealSkillBonus8Hero(strHero); -- 英雄初始技能效果实装

					for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncInit] do
						if iKey == strHero then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], strHero);
						end;
					end;
				end;
			end;

			TTH_MAIN.recordCalendar();
			SetTrigger(NEW_DAY_TRIGGER, "TTH_MAIN.recordCalendar"); -- 新的一天 → 记录日期
			startThread(TTH_MAIN.heartBeat); -- 后台轮询
			startThread(TTH_MAIN.controller); -- 主程入口

			SetTrigger(COMBAT_RESULTS_TRIGGER, "TTH_TRIGGER.combatResults"); -- 战斗结束触发器
		end;

	-- 日历
		-- 记录日历
			function TTH_MAIN.recordCalendar()
				TTH_MAIN.geneDebugInfo(GetDate(DAY));
				TTH_MAIN.printDebugInfo(TTH_MAIN.listDebug[GetDate(DAY)]);

				TTH_VARI.day = GetDate(DAY);
				TTH_VARI.week = GetDate(WEEK);
				TTH_VARI.month = GetDate(MONTH);
				TTH_VARI.absoluteWeek = (TTH_VARI.month - 1) * 4 + TTH_VARI.week;
				TTH_VARI.dayOfWeek = GetDate(DAY_OF_WEEK);
			end;

		-- 打印日历
			function TTH_MAIN.printCalendar()
				print("Month "..TTH_VARI.month);
				print("Week "..TTH_VARI.week);
				print("AbsoluteWeek "..TTH_VARI.absoluteWeek);
				print("Day "..TTH_VARI.day);
				print("Day of Week "..TTH_VARI.dayOfWeek);
			end;

	-- 设置轮询开关
		function TTH_MAIN.setMainSwitchOn()
			TTH_VARI.mainSwitch = TTH_ENUM.Yes;
		end;
		function TTH_MAIN.setMainSwitchOff()
			TTH_VARI.mainSwitch = TTH_ENUM.No;
		end;

	-- Debug
		TTH_MAIN.recordDebug = {};
		TTH_MAIN.listDebug = {};

		-- 记录debug信息
			-- TTH_MAIN.debug(strFunctionName, iPlayer, strHero, arrParam...);
			function TTH_MAIN.debug(...)
				TTH_MAIN.recordDebug = {};
				local iParamCount = arg["n"];
				TTH_MAIN.recordDebug["RecordName"] = arg[1];
				TTH_MAIN.recordDebug["Player"] = arg[2];
				TTH_MAIN.recordDebug["Hero"] = arg[3];
				if iParamCount > 3 then
					for i = 4, iParamCount do
							TTH_MAIN.recordDebug[i - 3] = arg[i];
					end;
				end;
			end;

		-- 打印debug信息
			function TTH_MAIN.printDebugInfo(arrRecord)
				if arrRecord ~= nil and length(arrRecord) > 0 then
					print("TTH_MAIN crash info: ");
					print("----------------------------------------");
					for iIndexRecord, objItemRecord in arrRecord do
						print("index: "..iIndexRecord);
						for k, v in objItemRecord do
							print("--key: "..k);
							print("--value: ");
							print(v);
						end;
					end;
					print("----------------------------------------");
				end;
			end;

		-- 初始化debug信息
			function TTH_MAIN.geneDebugInfo(iDay)
				TTH_MAIN.listDebug[iDay] = {};
			end;

	-- 后台轮询
		function TTH_MAIN.errorHookHeartBeat()
			TTH_MAIN.listDebug[TTH_VARI.day] = TTH_COMMON.push(TTH_MAIN.listDebug[TTH_VARI.day], TTH_MAIN.recordDebug);
			startThread(TTH_MAIN.heartBeat);
			print("TTH_MAIN.heartBeat has crashed, reloading...");
		end;
		function TTH_MAIN.heartBeat()
			errorHook(TTH_MAIN.errorHookHeartBeat);

			while TTH_VARI.mainSwitch == TTH_ENUM.Yes do
				sleep(TTH_FINAL.INTERVAL);

				for iPlayer = PLAYER_1, PLAYER_8 do
					if GetPlayerState(iPlayer) == 1 then
						if IsPlayerCurrent(iPlayer) then
							local arrHero = GetPlayerHeroes(iPlayer);
							if arrHero ~= nil then
								for iIndex, strHero in arrHero do
									TTH_GLOBAL.setGameVar4HeroArtifact(iPlayer, strHero); -- 保存全局参数，英雄携带宝物
									TTH_GLOBAL.setGameVar4HeroArtifactSet(iPlayer, strHero); -- 保存全局参数，英雄携带宝物套装
									TTH_GLOBAL.upgradeArtifactSetBonus8Hero(iPlayer, strHero); -- 宝物套装属性更新
									TTH_GLOBAL.upgradeArtifactGiveMagic8Hero(iPlayer, strHero); -- 宝物赠送魔法
									TTH_GLOBAL.upgradeArtifactSetGiveMagic8Hero(iPlayer, strHero); -- 宝物套装赠送魔法
									TTH_SUPPORT.dealIldar(iPlayer, strHero); -- 寒卿娜瑞莎
								end;

								-- 若玩家是人类
									if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
										for iIndex, strHero in arrHero do
											TTH_ARTI.deal164(iPlayer, strHero); -- 玛拉萨的斗篷

											if strHero == "Sandro" then
												TTH_TALENT.dealSandro(iPlayer, strHero);
											end;

											TTH_GLOBAL.makeHeroNecro(iPlayer, strHero); -- 士气<-5 转化为亡灵巫师
										end;
									end;
							end;
						end;
					end;
				end;
			end;
		end;

	-- 主程入口
		function TTH_MAIN.errorHookController()
			TTH_MAIN.listDebug[TTH_VARI.day] = TTH_COMMON.push(TTH_MAIN.listDebug[TTH_VARI.day], TTH_MAIN.recordDebug);
			startThread(TTH_MAIN.controller);
			print("TTH_MAIN.controller has crashed, reloading...");
		end;
		function TTH_MAIN.controller()
			errorHook(TTH_MAIN.errorHookController);

			while TTH_VARI.mainSwitch == TTH_ENUM.Yes do
				sleep(TTH_FINAL.INTERVAL);

				for iPlayer = PLAYER_1, PLAYER_8 do
					if GetPlayerState(iPlayer) == 1 then
						if IsPlayerCurrent(iPlayer) then
							-- 执行每周事件
								if TTH_VARI.dayOfWeek == 1 then
									if TTH_VARI.counterDealWeeklyEvent[iPlayer] < TTH_VARI.absoluteWeek then
										TTH_VARI.counterDealWeeklyEvent[iPlayer] = TTH_VARI.absoluteWeek;
										TTH_MAIN.dealWeekly(iPlayer);
									end;
									if TTH_VARI.counterResetWeeklyEvent[iPlayer] < TTH_VARI.absoluteWeek then
										TTH_VARI.counterResetWeeklyEvent[iPlayer] = TTH_VARI.absoluteWeek;
										TTH_MAIN.resetWeekly(iPlayer);
									end;
								end;
							-- 执行每日事件
								if TTH_VARI.counterDealDailyEvent[iPlayer] < TTH_VARI.day then
									TTH_VARI.counterDealDailyEvent[iPlayer] = TTH_VARI.day;
									TTH_MAIN.dealDaily(iPlayer);
								end;
								if TTH_VARI.counterResetDailyEvent[iPlayer] < TTH_VARI.day then
									TTH_VARI.counterResetDailyEvent[iPlayer] = TTH_VARI.day;
									TTH_MAIN.resetDaily(iPlayer);
								end;
							-- 结算玩家资源
								if TTH_VARI.counterDealSettleResource[iPlayer] < TTH_VARI.day then
									TTH_VARI.counterDealSettleResource[iPlayer] = TTH_VARI.day;
									TTH_GLOBAL.dealSettleResource(iPlayer); -- 结算
								end;
						end;
					end;
				end;
			end;
		end;

	-- 每周轮询 每周开始前执行
		function TTH_MAIN.dealWeekly(iPlayer)
			TTH_MAIN.debug("TTH_MAIN.dealWeekly", iPlayer, nil);

			-- 若玩家是人类
				if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
					-- 遍历玩家城镇
						for i, strTown in TTH_VARI.arrTown do
							if iPlayer == GetObjectOwner(strTown) then
								TTH_MANAGE.bonusTownDwellingCreature8Mayor(strTown); -- 内政官每周城镇产量增加
								TTH_ARTI.bonusTownDwellingCreature8Legion(strTown); -- 每周城镇生物周产结算
							end;
						end;
				end;

			-- 若玩家是AI
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					TTH_AI.cheatAiWeekly(iPlayer); -- AI每周作弊 加金币 和 产量
				end;

			-- 遍历玩家城镇
				for i, strTown in TTH_VARI.arrTown do
					if iPlayer == GetObjectOwner(strTown) then
					end;
				end;

			-- 遍历玩家英雄
				local arrHero = GetPlayerHeroes(iPlayer);
				for i, strHero in arrHero do
					-- 兵种特每周赠送生物 第一周不送
						if TTH_VARI.absoluteWeek ~= 1 then
							TTH_GLOBAL.giveHero4Specialty8Weekly(iPlayer, strHero);
						end;

					for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncDealWeekly] do
						if iKey == strHero then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
						end;
					end;
					for iKey, objItem in TTH_TABLE.FuncArtifact[TTH_ENUM.FuncDealWeekly] do
						if HasArtefact(strHero, iKey, objItem["NeedWear"]) then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
						end;
					end;
					for iKey, objItem in TTH_TABLE.FuncPerk[TTH_ENUM.FuncDealWeekly] do
						if HasHeroSkill(strHero, iKey) then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
						end;
					end;
				end;

			TTH_GLOBAL.dealWeeklyBonusMine(iPlayer); -- 每周资源矿结算
			TTH_MAIN.dealWeekly4Economic(iPlayer); -- 每周经济结算

			print("Player-"..iPlayer.." dealWeekly-"..TTH_VARI.counterDealWeeklyEvent[iPlayer].." event finished");
		end;

		-- 每周经济结算
			function TTH_MAIN.dealWeekly4Economic(iPlayer)
				TTH_MAIN.debug("TTH_MAIN.dealWeekly4Economic", iPlayer, nil);

				-- 神秘花园
					for i, strBuildingName in TTH_VARI.arrBuilding["BUILDING_MYSTICAL_GARDEN"] do
						if TTH_VARI.economicBuildingOwner["BUILDING_MYSTICAL_GARDEN"][strBuildingName] == iPlayer then
							local iRan = random(2); -- 0,1
							if iRan == 0 then
								TTH_GLOBAL.putSettleResource(iPlayer, GOLD, 500);
							else
								TTH_GLOBAL.putSettleResource(iPlayer, GEM, 5);
							end;
						end;
					end;

				-- 矮人地穴
					for i, strBuildingName in TTH_VARI.arrBuilding["BUILDING_WINDMILL"] do
						if TTH_VARI.economicBuildingOwner["BUILDING_WINDMILL"][strBuildingName] == iPlayer then
							local iRan = 0;
							iRan = 1 + random(4); -- 1,2,3,4
							TTH_GLOBAL.putSettleResource(iPlayer, MERCURY, iRan);
							iRan = 1 + random(4); -- 1,2,3,4
							TTH_GLOBAL.putSettleResource(iPlayer, CRYSTAL, iRan);
							iRan = 1 + random(4); -- 1,2,3,4
							TTH_GLOBAL.putSettleResource(iPlayer, SULFUR, iRan);
							iRan = 1 + random(4); -- 1,2,3,4
							TTH_GLOBAL.putSettleResource(iPlayer, GEM, iRan);
						end;
					end;

				-- 风车
					for i, strBuildingName in TTH_VARI.arrBuilding["BUILDING_WATER_WHEEL"] do
						if TTH_VARI.economicBuildingOwner["BUILDING_WATER_WHEEL"][strBuildingName] == iPlayer then
							TTH_GLOBAL.putSettleResource(iPlayer, GOLD, 1000);
						end;
					end;

				-- 战争机械工厂
					for i, strBuildingName in TTH_VARI.arrBuilding["BUILDING_WARMACHINE_FACTORY"] do
						if TTH_VARI.economicBuildingOwner["BUILDING_WARMACHINE_FACTORY"][strBuildingName] == iPlayer then
							local iRan = 0;
							iRan = 2 + random(5); -- 2,3,4,5,6
							TTH_GLOBAL.putSettleResource(iPlayer, WOOD, iRan);
							iRan = 2 + random(5); -- 2,3,4,5,6
							TTH_GLOBAL.putSettleResource(iPlayer, ORE, iRan);
						end;
					end;
			end;

	-- 每周重置
		function TTH_MAIN.resetWeekly(iPlayer)
			TTH_MAIN.debug("TTH_MAIN.resetWeekly", iPlayer, nil);

			local arrHero = GetPlayerHeroes(iPlayer);
			for i, strHero in arrHero do
				for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncResetWeekly] do
					if iKey == strHero then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
					end;
				end;
				for iKey, objItem in TTH_TABLE.FuncArtifact[TTH_ENUM.FuncResetWeekly] do
					if HasArtefact(strHero, iKey, objItem["NeedWear"]) then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
					end;
				end;
				for iKey, objItem in TTH_TABLE.FuncPerk[TTH_ENUM.FuncResetWeekly] do
					if HasHeroSkill(strHero, iKey) then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
					end;
				end;

				TTH_MANAGE.resetOperTimes(strHero); -- 重置内政操作次数
			end;

			print("Player-"..iPlayer.." resetWeekly-"..TTH_VARI.counterResetWeeklyEvent[iPlayer].." event finished");
		end;

	-- 每日轮询 每日开始前执行
		function TTH_MAIN.dealDaily(iPlayer)
			TTH_MAIN.debug("TTH_MAIN.dealDaily", iPlayer, nil);

			-- 若玩家是人类
				if TTH_GLOBAL.isAi(iPlayer) ~= TTH_ENUM.Yes then
					TTH.hero2(iPlayer); -- 取消所有招募指定英雄的设置

					-- 遍历玩家城镇
						for i, strTown in TTH_VARI.arrTown do
							if iPlayer == GetObjectOwner(strTown) then
								TTH_ARTI.bonusTown8Economic(iPlayer, strTown); -- 每日城镇军团宝物经济结算
							end;
						end;

					-- 遍历玩家英雄
						local arrHero = GetPlayerHeroes(iPlayer);
						for i, strHero in arrHero do
							TTH_MANAGE.refreshDailyMayor(iPlayer, strHero); -- 每日刷新内政信息
							TTH_MANAGE.giveDailyExp4Mayor(iPlayer, strHero); -- 每日内政官经验
							TTH_MANAGE.giveDailyRecordPoint(iPlayer, strHero); -- 每日内政官政绩
						end;

					TTH_GLOBAL.refreshBankRestDay(iPlayer); -- :TODO 更新银行时间剩余时间
					TTH_VISIT.refreshWitchHut(iPlayer); -- 更新女巫小屋刷新时间
				end;

			-- 遍历玩家城镇
				for i, strTown in TTH_VARI.arrTown do
					if iPlayer == GetObjectOwner(strTown) then
						TTH_GLOBAL.checkArtifactMerchant(iPlayer, strTown); -- 地牢和学院的宝物商店
					end;
				end;

			-- 遍历玩家英雄
				local arrHero = GetPlayerHeroes(iPlayer);
				for i, strHero in arrHero do
					TTH_GLOBAL.recoveryManaNearByStrongholdTown(iPlayer, strHero); -- 据点城也可回复魔法值

					for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncDealDaily] do
						if iKey == strHero then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
						end;
					end;
					for iKey, objItem in TTH_TABLE.FuncArtifact[TTH_ENUM.FuncDealDaily] do
						if HasArtefact(strHero, iKey, objItem["NeedWear"]) then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
						end;
					end;
					for iKey, objItem in TTH_TABLE.FuncPerk[TTH_ENUM.FuncDealDaily] do
						if HasHeroSkill(strHero, iKey) then
							TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
						end;
					end;
				end;

			-- 若玩家是AI
				if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
					TTH_AI.convertDwelling4Ai(iPlayer);
					TTH_AI.convertTown4Ai(iPlayer);
					TTH_AI.giveExp8Day4Ai(iPlayer);
					TTH_AI.helpStrongholdBuilding(iPlayer);
				end;

			print("Player-"..iPlayer.." dealDaily-"..TTH_VARI.counterDealDailyEvent[iPlayer].." event finished");
		end;

	-- 每日重置
		function TTH_MAIN.resetDaily(iPlayer)
			TTH_MAIN.debug("TTH_MAIN.resetDaily", iPlayer, nil);

			local arrHero = GetPlayerHeroes(iPlayer);
			for i, strHero in arrHero do
				for iKey, objItem in TTH_TABLE.FuncTalent[TTH_ENUM.FuncResetDaily] do
					if iKey == strHero then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
					end;
				end;
				for iKey, objItem in TTH_TABLE.FuncArtifact[TTH_ENUM.FuncResetDaily] do
					if HasArtefact(strHero, iKey, objItem["NeedWear"]) then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
					end;
				end;
				for iKey, objItem in TTH_TABLE.FuncPerk[TTH_ENUM.FuncResetDaily] do
					if HasHeroSkill(strHero, iKey) then
						TTH_COMMON.parse(objItem[TTH_ENUM.FuncAlways], iPlayer, strHero);
					end;
				end;

				TTH_GLOBAL.setGameVar4HeroLevel(strHero);
				TTH_GLOBAL.giveHero4Attribute(strHero);
				TTH_GLOBAL.dealSkillBonus8Hero(strHero);
				TTH_MANAGE.updateMaxOperTimes(strHero);
			end;

			print("Player-"..iPlayer.." resetDaily-"..TTH_VARI.counterResetDailyEvent[iPlayer].." event finished");
		end;

	startThread(TTH_GLOBAL.detectPlayer1);
	startThread(TTH_GLOBAL.detectPlayer2);
	startThread(TTH_GLOBAL.detectPlayer3);
	startThread(TTH_GLOBAL.detectPlayer4);
	startThread(TTH_GLOBAL.detectPlayer5);
	startThread(TTH_GLOBAL.detectPlayer6);
	startThread(TTH_GLOBAL.detectPlayer7);
	startThread(TTH_GLOBAL.detectPlayer8);
	startThread(TTH_GLOBAL.detectPlayerFaction);
	startThread(TTH_GLOBAL.detectPlayerFactionBak);

	doFile("/scripts/H55-AdvMap.lua");


	SetTrigger(CUSTOM_ABILITY_TRIGGER, "TTH_MANAGE.customAbility"); -- 英雄自定义技能 → 王国管理
	startThread(TTH_GLOBAL.startUpSinglePlayer);

-- 模块加载
	doFile("/scripts/mod/TTH_MOD_CombatResults4LoseCreature.lua");
	doFile("/scripts/mod/TTH_MOD_CombatResults4ReviveCreature.lua");
	doFile("/scripts/support/hanqing-core.lua");
