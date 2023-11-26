doFile("/scripts/TTH_CombatTable.lua");
print("TTH_CombatCore loading...");

-- 枚举
  TCS_ENUM = {};

  -- 是否
    TCS_ENUM.Switch = {};
    TCS_ENUM.Switch.No = 0;
    TCS_ENUM.Switch.Yes = 1;

  -- 攻守方
    TCS_ENUM.Side = {};
    TCS_ENUM.Side.Attacker = 0;
    TCS_ENUM.Side.Defender = 1;

  -- 行动槽
    TCS_ENUM.Atb = {};
    TCS_ENUM.Atb.immediate = 1.25;
    TCS_ENUM.Atb.max = 0.99;
    TCS_ENUM.Atb.mid = 0.50;
    TCS_ENUM.Atb.min = 0.10;
    TCS_ENUM.Atb.clear = 0;

  -- 快照变化类型
    TCS_ENUM.Snapshot = {};
    TCS_ENUM.Snapshot.Mana = 0;
    TCS_ENUM.Snapshot.Status = 1;
    TCS_ENUM.Snapshot.Number = 2;
    TCS_ENUM.Snapshot.Position = 3;
    TCS_ENUM.Snapshot.RageLevel = 4;
    TCS_ENUM.Snapshot.Hero = {};
    TCS_ENUM.Snapshot.Hero.Mana = {};
    TCS_ENUM.Snapshot.Hero.Mana.Unchanged = 0;
    TCS_ENUM.Snapshot.Hero.Mana.Increase = 1;
    TCS_ENUM.Snapshot.Hero.Mana.Decrease = 2;
    TCS_ENUM.Snapshot.Creature = {};
    TCS_ENUM.Snapshot.Creature.Mana = {};
    TCS_ENUM.Snapshot.Creature.Mana.Unchanged = 0;
    TCS_ENUM.Snapshot.Creature.Mana.Increase = 1;
    TCS_ENUM.Snapshot.Creature.Mana.Decrease = 2;
    TCS_ENUM.Snapshot.Creature.Status = {};
    TCS_ENUM.Snapshot.Creature.Status.Unchanged = 0;
    TCS_ENUM.Snapshot.Creature.Status.Revive = 3;
    TCS_ENUM.Snapshot.Creature.Status.Death = 4;
    TCS_ENUM.Snapshot.Creature.Status.Summon = 5;
    TCS_ENUM.Snapshot.Creature.Status.Gating = 6;
    TCS_ENUM.Snapshot.Creature.Status.Consume = 7;
    TCS_ENUM.Snapshot.Creature.Number = {};
    TCS_ENUM.Snapshot.Creature.Number.Unchanged = 0;
    TCS_ENUM.Snapshot.Creature.Number.Increase = 1;
    TCS_ENUM.Snapshot.Creature.Number.Decrease = 2;
    TCS_ENUM.Snapshot.Creature.Position = {};
    TCS_ENUM.Snapshot.Creature.Position.Unchanged = 0;
    TCS_ENUM.Snapshot.Creature.Position.Move = 1;
    TCS_ENUM.Snapshot.Creature.RageLevel = {};
    TCS_ENUM.Snapshot.Creature.RageLevel.Unchanged = 0;
    TCS_ENUM.Snapshot.Creature.RageLevel.Increase = 1;
    TCS_ENUM.Snapshot.Creature.RageLevel.Decrease = 2;
    TCS_ENUM.Snapshot.WarMachine = {};
    TCS_ENUM.Snapshot.WarMachine.Status = {};
    TCS_ENUM.Snapshot.WarMachine.Status.Unchanged = 0;
    TCS_ENUM.Snapshot.WarMachine.Status.Revive = 3;
    TCS_ENUM.Snapshot.WarMachine.Status.Death = 4;
    TCS_ENUM.Snapshot.Building = {};
    TCS_ENUM.Snapshot.Building.Status = {};
    TCS_ENUM.Snapshot.Building.Status.Unchanged = 0;
    TCS_ENUM.Snapshot.Building.Status.Death = 4;
    TCS_ENUM.Snapshot.SpellSpawn = {};
    TCS_ENUM.Snapshot.SpellSpawn.Status = {};
    TCS_ENUM.Snapshot.SpellSpawn.Status.Unchanged = 0;
    TCS_ENUM.Snapshot.SpellSpawn.Status.Death = 4;
    TCS_ENUM.Snapshot.SpellSpawn.Status.Summon = 5;

-- 变量
  TCS_VARI = {};
  TCS_VARI.debug = TCS_ENUM.Switch.Yes;
  TCS_VARI.isAutoFinish = 1;

  -- 快照
    TCS_VARI.Snapshot = {};
    TCS_VARI.Snapshot.init = nil; -- 初始
    TCS_VARI.Snapshot.before = nil; -- 上上个单位行动时
    TCS_VARI.Snapshot.last = nil; -- 上个单位行动时

  -- 单位列表
    TCS_VARI.Unit = {};
    TCS_VARI.Unit.setAtb = {}; -- 需要设置ATB
    TCS_VARI.Unit.trigger = {}; -- 进入结算
    TCS_VARI.Unit.continuous = {}; -- 单位连动

    TCS_VARI.Info = {};
    TCS_VARI.Info.HeroLevel = {}; -- 英雄等级
    TCS_VARI.Info.HeroAttribute = {}; -- 英雄属性
    TCS_VARI.Info.HeroTalent = {}; -- 英雄特长
    TCS_VARI.Info.HeroUpgradeMastery = {}; -- 英雄高级特长提升
    TCS_VARI.Info.HeroUpgradeShantiri = {}; -- 英雄终级特长提升
    TCS_VARI.Info.HeroSkill = {}; -- 英雄技能
    TCS_VARI.Info.HeroArtifact = {}; -- 英雄宝物
    TCS_VARI.Info.HeroArtifactSet = {}; -- 英雄组合宝物
    TCS_VARI.Info.TownBattle = 0; -- 是否攻城战
    TCS_VARI.Info.TthMap10W = 0; -- 是否10周对决

-- 初始化
  TCS_INIT = {};

  -- 初始化快照
    TCS_INIT.Snapshot = function()
      TCS_VARI.Snapshot.init = TTHCS_GLOBAL.geneSnapshot(TCS_ENUM.Switch.Yes);
    end;
  -- 初始化英雄等级
    TCS_INIT.HeroLevel = function()
      for strHero, itemHeroInfo in TTH_TABLE.Hero do
        local strHeroLevel = GetGameVar(TTH_GAMEVAR.HeroLevel..strHero);
        if strHeroLevel == "" then
          TCS_VARI.Info.HeroLevel[strHero] = 1;
        else
          TCS_VARI.Info.HeroLevel[strHero] = strHeroLevel + 0;
        end;
      end;
      local strAttackerHero = GetHero(TCS_ENUM.Side.Attacker);
      local strDefenderHero = GetHero(TCS_ENUM.Side.Defender);
      if strDefenderHero ~= nil then
        local strAttackerHeroName = GetHeroName(strAttackerHero);
        local strDefenderHeroName = GetHeroName(strDefenderHero);
        if TCS_VARI.Info.HeroLevel[strDefenderHeroName] == 0 then
          TCS_VARI.Info.HeroLevel[strDefenderHeroName] = TCS_VARI.Info.HeroLevel[strAttackerHeroName] + 3;
          if TCS_VARI.Info.HeroLevel[strDefenderHeroName] > 40 then
            TCS_VARI.Info.HeroLevel[strDefenderHeroName] = 40;
          end;
        end;
      end;
    end;
  -- 初始化英雄属性
    TCS_INIT.HeroAttribute = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          for iIndex, iAttributeId in TCS_TABLE.Effect.Attribute do
            local strKey = TTH_GAMEVAR.Attribute..strHero.."_"..iAttributeId;
            local strValue = GetGameVar(strKey);
            if strValue ~= "" then
              if TCS_VARI.Info.HeroAttribute[strHero] == nil then
                TCS_VARI.Info.HeroAttribute[strHero] = {};
              end;
              TCS_VARI.Info.HeroAttribute[strHero][iAttributeId] = strValue + 0;
            end;
          end;
        end;
      end;
    end;
  -- 初始化英雄特长
    TCS_INIT.HeroTalent = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local strKey = TTH_GAMEVAR.Talent..strHero;
          local strValue = GetGameVar(strKey);
          if strValue == "" then
            TCS_VARI.Info.HeroTalent[strHero] = 0;
          else
            TCS_VARI.Info.HeroTalent[strHero] = strValue + 0;
          end;
        end;
      end;
    end;
  -- 初始化英雄特长提升-熟练
    TCS_INIT.HeroUpgradeMastery = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local strKey = TTH_GAMEVAR.Mastery..strHero;
          local strValue = GetGameVar(strKey);
          if strValue == "" then
            TCS_VARI.Info.HeroUpgradeMastery[strHero] = 0;
          else
            TCS_VARI.Info.HeroUpgradeMastery[strHero] = strValue + 0;
          end;
        end;
      end;
    end;
  -- 初始化英雄特长提升-精通
    TCS_INIT.HeroUpgradeShantiri = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local strKey = TTH_GAMEVAR.Shantiri..strHero;
          local strValue = GetGameVar(strKey);
          if strValue == "" then
            TCS_VARI.Info.HeroUpgradeShantiri[strHero] = 0;
          else
            TCS_VARI.Info.HeroUpgradeShantiri[strHero] = strValue + 0;
          end;
        end;
      end;
    end;
  -- 初始化英雄技能
    TCS_INIT.HeroSkill = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          for iIndex, iSkillId in TCS_TABLE.Effect.Skill do
            local strKey = TTH_GAMEVAR.Skill..strHero.."_"..iSkillId;
            local strValue = GetGameVar(strKey);
            if TCS_VARI.Info.HeroSkill[strHero] == nil then
              TCS_VARI.Info.HeroSkill[strHero] = {};
            end;
            if strValue == "" then
              TCS_VARI.Info.HeroSkill[strHero][iSkillId] = 0;
            else
              TCS_VARI.Info.HeroSkill[strHero][iSkillId] = strValue + 0;
            end;
          end;
        end;
      end;
    end;
  -- 初始化英雄宝物
    TCS_INIT.HeroArtifact = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          for iIndex, iArtifactId in TCS_TABLE.Effect.Artifact do
            local strKey = TTH_GAMEVAR.Artifact..strHero.."_"..iArtifactId;
            local strValue = GetGameVar(strKey);
            if TCS_VARI.Info.HeroArtifact[strHero] == nil then
              TCS_VARI.Info.HeroArtifact[strHero] = {};
            end;
            if strValue == "" then
              TCS_VARI.Info.HeroArtifact[strHero][iArtifactId] = 0;
            else
              TCS_VARI.Info.HeroArtifact[strHero][iArtifactId] = strValue + 0;
            end;
          end;
        end;
      end;
    end;
  -- 初始化英雄组合宝物
    TCS_INIT.HeroArtifactSet = function()
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          for iIndex, iArtifactSetId in TCS_TABLE.Effect.ArtifactSet do
            local strKey = TTH_GAMEVAR.ArtifactSet..strHero.."_"..iArtifactSetId;
            local strValue = GetGameVar(strKey);
            if TCS_VARI.Info.HeroArtifactSet[strHero] == nil then
              TCS_VARI.Info.HeroArtifactSet[strHero] = {};
            end;
            if strValue == "" then
              TCS_VARI.Info.HeroArtifactSet[strHero][iArtifactSetId] = 0;
            else
              TCS_VARI.Info.HeroArtifactSet[strHero][iArtifactSetId] = strValue + 0;
            end;
          end;
        end;
      end;
    end;
  -- 初始化是否攻城战
    TCS_INIT.TownBattle = function()
      local arrBuilding = GetBuildings(TCS_ENUM.Side.Defender);
      if arrBuilding ~= nil and length(arrBuilding) > 0 then
        TCS_VARI.Info.TownBattle = 1;
      end;
    end;
  -- 初始化是否10周对决
    TCS_INIT.TthMap10W = function()
      local strKey = "TTH_MAP10W";
      local strValue = GetGameVar(strKey);
      if strValue == "1" then
        TCS_VARI.Info.TthMap10W = 1;
      end;
    end;

-- 函数
  TCS_FUNC = {};

  -- 英雄特长
    TCS_FUNC.Talent = {};

    -- Haven
      -- Orrin 002 杜戈尔
        TCS_FUNC.Talent.Orrin = {};
        TCS_FUNC.Talent.Orrin.strHero = "Orrin";
        TCS_FUNC.Talent.Orrin.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Orrin.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                local listCreatureCaster = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_ARCHER) then
                    push(listCreatureCaster, itemCreature);
                  end;
                end;
                listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
                if length(listCreatureCaster) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Orrin.trigger");
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    listCreatureCaster = { [0] = listCreatureCaster[0] };
                  end;
                  for i, itemCreatureCaster in listCreatureCaster do
                    for j, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                      local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                      TTHCS_THREAD.cast.area.impl(itemCreatureCaster["UnitName"], SPELL_ABILITY_SCATTER_SHOT, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                      if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                        TCS_BATTLE.atb.record(itemCreatureCaster["UnitName"], TCS_ENUM.Atb.max);
                      end;
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureCaster["UnitName"], 5);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Mardigo 003 拉兹罗
        TCS_FUNC.Talent.Mardigo = {};
        TCS_FUNC.Talent.Mardigo.strHero = "Mardigo";
        TCS_FUNC.Talent.Mardigo.getArea = function()
          TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mardigo.getArea")
          local strHero = TCS_FUNC.Talent.Mardigo.strHero;
          local iArea = 2;
          if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
            iArea = iArea + 2;
            if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
              iArea = iArea + 2;
            end;
          end;
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FAST_AND_FURIOUS] == 1 then
            iArea = iArea + 1;
          end;
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ABSOLUTE_CHARGE] == 1 then
            iArea = iArea + 1;
          end;
          if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BOOTS_OF_SWIFTNESS] == 1 then
            iArea = iArea + 1;
          end;
          return iArea;
        end;
        TCS_FUNC.Talent.Mardigo.checkDistance = function(objCreatureMain, objUnitTarget)
          TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mardigo.checkDistance")
          local bCheck = nil;
          local iArea = TCS_FUNC.Talent.Mardigo.getArea();
          if TTHCS_GLOBAL.getDistance4Creature(objCreatureMain["UnitName"], objUnitTarget["UnitName"]) <= iArea * iArea then
            bCheck = not nil;
          end;
          return bCheck;
        end;
        TCS_FUNC.Talent.Mardigo.checkSelf = function(iSide, objCreatureMain, listCreatureNumberDecrease)
          TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mardigo.checkSelf")
          local bCheck = not nil;
          if 1 == 1
            and length(listCreatureNumberDecrease[iSide]) == 1
            and listCreatureNumberDecrease[iSide][0] == objCreatureMain["UnitName"]
          then
            bCheck = nil;
          end;
          return bCheck;
        end;
        TCS_FUNC.Talent.Mardigo.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local objCreatureMain = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_FOOTMAN);
          local objUnitLast = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == TCS_FUNC.Talent.Mardigo.strHero
            and (
              1 ~= 1
              or length(listCreatureNumberDecrease[iSide]) > 0
              or length(listCreatureStatusDeath[iSide]) > 0
            )
            and objUnitLast["Side"] == iOppositeSide
            and objUnitLast["UnitNumber"] ~= nil
            and objUnitLast["UnitNumber"] > 0
            and objCreatureMain ~= nil
            and TCS_FUNC.Talent.Mardigo.checkDistance(objCreatureMain, objUnitLast)
            and TCS_FUNC.Talent.Mardigo.checkSelf(iSide, objCreatureMain, listCreatureNumberDecrease)
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mardigo.trigger");
            TTHCS_THREAD.attack8Tool(iSide, CREATURE_HEAVEN_MARDIGO_TOOL, 1, objUnitLast["PosX"], objUnitLast["PosY"], objUnitLast["UnitName"], 1);
            sleep(100);
            TTHCS_THREAD.attack8CheckPosition(iSide, objCreatureMain["UnitName"], objUnitLast["UnitName"]);
            ShowFlyingSign(TTHCS_PATH["Talent"][TCS_FUNC.Talent.Mardigo.strHero]["Effect"], objCreatureMain["UnitName"], 5);
            if IsHuman(itemUnit["Side"]) then
              TCS_BATTLE.atb.record(objCreatureMain["UnitName"], TCS_ENUM.Atb.max);
            else
              TCS_BATTLE.atb.record(objCreatureMain["UnitName"], TCS_ENUM.Atb.immediate);
            end;
          end;
        end;

      -- Ving 004 艾莲娜
        TCS_FUNC.Talent.Ving = {};
        TCS_FUNC.Talent.Ving.strHero = "Ving";
        TCS_FUNC.Talent.Ving.sidCreature = nil;
        TCS_FUNC.Talent.Ving.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Ving.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ving.start");
              local listCreatureCaster = {};
              local arrCreature = GetCreatures(iSide);
              for i, sidCreature in arrCreature do
                local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_GRIFFIN) then
                  push(listCreatureCaster, itemCreature);
                end;
              end;
              local listCreatureCasterSort8Number = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
              if length(listCreatureCasterSort8Number) > 0 then
                TCS_FUNC.Talent.Ving.sidCreature = listCreatureCasterSort8Number[0]["UnitName"];
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Ving.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Ving.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and (
                  itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
                  or (
                    TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                    and (
                      itemUnitLast["UnitCategory"] == TTH_ENUM.CombatHero
                      or itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine
                    )
                  )
                )
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0
                and TTHCS_GLOBAL.checkCombatCreature(TCS_FUNC.Talent.Ving.sidCreature) then
                local bMatch = TCS_ENUM.Switch.No;
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  if sidCreature == TCS_FUNC.Talent.Ving.sidCreature then
                    bMatch = TCS_ENUM.Switch.Yes;
                  end;
                end;
                if bMatch == TCS_ENUM.Switch.No then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ving.trigger");
                  local arrCreatureTarget = listCreatureNumberDecrease[iOppositeSide];
                  local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                  local sidCreatureTarget = arrCreatureTarget[iRandomIndex];
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  TTHCS_THREAD.cast.area.impl(TCS_FUNC.Talent.Ving.sidCreature, SPELL_ABILITY_BATTLE_DIVE_FINISH, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    TCS_BATTLE.atb.record(TCS_FUNC.Talent.Ving.sidCreature, TCS_ENUM.Atb.max);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureTarget["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Sarge 005 克劳斯
        TCS_FUNC.Talent.Sarge = {};
        TCS_FUNC.Talent.Sarge.strHero = "Sarge";
        TCS_FUNC.Talent.Sarge.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Sarge.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sarge.trigger");
              local listCreatureCaster = {};
              local arrCreature = GetCreatures(iSide);
              for i, sidCreature in arrCreature do
                local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_FOOTMAN) then
                  push(listCreatureCaster, itemCreature);
                end;
              end;
              local listCreatureCasterSort8Number = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
              if length(listCreatureCasterSort8Number) > 0 then
                local itemCreatureCaster = listCreatureCasterSort8Number[0];
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iScale = 0.04 + 0.002 * iHeroLevel;
                local iUnitNumber = TTHCS_COMMON.ceil(itemCreatureCaster["UnitNumber"] * iScale);
                local iUnitType = 0;
                if itemCreatureCaster["UnitType"] == CREATURE_FOOTMAN then
                  iUnitType = CREATURE_CAVALIER;
                elseif itemCreatureCaster["UnitType"] == CREATURE_SWORDSMAN then
                  iUnitType = CREATURE_PALADIN;
                elseif itemCreatureCaster["UnitType"] == CREATURE_VINDICATOR then
                  iUnitType = CREATURE_CHAMPION;
                end;
                local sidCreatureTarget = TTHCS_THREAD.summonCreature(iSide, iUnitType, iUnitNumber, itemCreatureCaster["PosX"], itemCreatureCaster["PosY"]);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  setATB(sidCreatureTarget, 1.25);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
              end;
            end;
          end;
        end;

      -- Christian 007 维托利奥
        TCS_FUNC.Talent.Christian = {};
        TCS_FUNC.Talent.Christian.strHero = "Christian";
        TCS_FUNC.Talent.Christian.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Christian.strHero;
          if 1 == 1
            and sidHero ~= nil
            and GetHeroName(sidHero) == strHero
            and itemUnitLast["Side"] == iSide
            and itemUnitLast["UnitType"] == TTH_ENUM.WarmachineBallista
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
            and (
              1 ~= 1
              or length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            )
          then
            local sidCreatureBeEffected = "";
            if length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
              sidCreatureBeEffected = listCreatureNumberDecrease[iOppositeSide][0];
            end;
            if length(listCreatureStatusDeath[iOppositeSide]) > 0 then
              sidCreatureBeEffected = listCreatureStatusDeath[iOppositeSide][0];
            end;
            local itemCreatureBeEffected = TTHCS_GLOBAL.geneUnitInfo(sidCreatureBeEffected);
            local arrCreatureTarget = GetCreatures(iSide);
            local listSortDistance = {};
            for i, sidCreatureTarget in arrCreatureTarget do
              local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
              itemCreatureTarget["Distance"] = TTHCS_GLOBAL.getDistance4Creature(itemCreatureBeEffected["UnitName"], sidCreatureTarget);
              push(listSortDistance, itemCreatureTarget);
            end;
            if length(listSortDistance) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Christian.trigger");
              listSortDistance = TTHCS_COMMON.asc8key(listSortDistance, "Distance");
              local itemCreatureNearest = listSortDistance[0];
              TCS_BATTLE.atb.record(itemCreatureNearest["UnitName"], TCS_ENUM.Atb.immediate);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureNearest["UnitName"], 5);
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                local itemCreatureFarest = listSortDistance[length(listSortDistance) - 1];
                TCS_BATTLE.atb.record(itemCreatureFarest["UnitName"], TCS_ENUM.Atb.immediate);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureFarest["UnitName"], 5);
              end;
            end;
          end;
        end;

      -- RedHeavenHero05 009 伯权德
        TCS_FUNC.Talent.RedHeavenHero05 = {};
        TCS_FUNC.Talent.RedHeavenHero05.strHero = "RedHeavenHero05";
        TCS_FUNC.Talent.RedHeavenHero05.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.RedHeavenHero05.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and (
                  itemHeroMana[iSide] == 0
                  or TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                )
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.RedHeavenHero05.trigger");
                local iSpellId = SPELL_DISRUPTING_RAY;
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  iSpellId = SPELL_MASS_DISRUPTING_RAY;
                end;
                for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                  if iSpellId == SPELL_DISRUPTING_RAY then
                    TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_HEAVEN_TOOL, 1, iSpellId, sidCreatureTarget, TCS_ENUM.Switch.No);
                  else
                    local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                    TTHCS_THREAD.castAreaSpell8Tool(iSide, CREATURE_HEAVEN_TOOL, 1, iSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No);
                  end;
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Nicolai 011 尼克莱
        TCS_FUNC.Talent.Nicolai = {};
        TCS_FUNC.Talent.Nicolai.strHero = "Nicolai";
        TCS_FUNC.Talent.Nicolai.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureManaUnchanged)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Nicolai.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iOppositeSide then
                if length(listCreatureNumberDecrease[iSide]) > 0
                  and (
                    itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine
                    or contains(listCreatureManaUnchanged[iOppositeSide], itemUnitLast["UnitName"]) ~= nil
                  ) then
                  local arrCreatureTarget = {};
                  for i, sidCreatureDecrease in listCreatureNumberDecrease[iSide] do
                    local bIsShoot = TCS_ENUM.Switch.No;
                    if itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine and itemUnitLast["UnitType"] == TTH_ENUM.WarmachineBallista then
                      bIsShoot = TCS_ENUM.Switch.Yes;
                    else
                      local enumUnitLastRange = TTH_TABLE.Creature[itemUnitLast["UnitType"]]["Range"];
                      if enumUnitLastRange == 1 then
                        local enumEffect = TTHCS_GLOBAL.isNearBy4Creature(itemUnitLast["UnitName"], sidCreatureDecrease);
                        if enumEffect == TCS_ENUM.Switch.No then
                          bIsShoot = TCS_ENUM.Switch.Yes;
                        end;
                      end;
                    end;
                    if bIsShoot == TCS_ENUM.Switch.Yes then
                      push(arrCreatureTarget, sidCreatureDecrease);
                    end;
                  end;
                  if length(arrCreatureTarget) > 0 then
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      TTHCS_GLOBAL.print("TCS_FUNC.Talent.Nicolai.trigger");
                      for i, sidCreatureTarget in arrCreatureTarget do
                        local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                        local iAtb = 0.1 + 0.01 * iHeroLevel;
                        TTHCS_THREAD.defend(sidCreatureTarget);
                        TCS_BATTLE.atb.record(sidCreatureTarget, iAtb);
                        if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                          local iChance = TTHCS_COMMON.ceil(5 + 0.5 * iHeroLevel);
                          -- TCS_FUNC.Continuous.increase(sidCreatureTarget, iChance, itemUnitLast["UnitName"]);
                          -- TCS_FUNC.Continuous.increase(sidHero, iChance, itemUnitLast["UnitName"]);
                        end;
                        ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- GodricMP 012 哥德里克
        TCS_FUNC.Talent.GodricMP = {};
        TCS_FUNC.Talent.GodricMP.strHero = "GodricMP";
        TCS_FUNC.Talent.GodricMP.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.GodricMP.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.GodricMP.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                if TCS_FUNC.Talent.GodricMP.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.GodricMP.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.GodricMP.first");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_PRAYER, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;

      -- Maeve 016 玫芙
        TCS_FUNC.Talent.Maeve = {};
        TCS_FUNC.Talent.Maeve.strHero = "Maeve";
        TCS_FUNC.Talent.Maeve.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Maeve.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Maeve.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Maeve.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Maeve.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Maeve.first");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_MASS_HASTE, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Maeve.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Maeve.strHero then
              if itemUnitLast ~= nil
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Maeve.trigger");
                TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_MASS_HASTE, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- RedHeavenHero03 019 维拉利亚
        TCS_FUNC.Talent.RedHeavenHero03 = {};
        TCS_FUNC.Talent.RedHeavenHero03.strHero = "RedHeavenHero03";
        TCS_FUNC.Talent.RedHeavenHero03.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.RedHeavenHero03.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.RedHeavenHero03.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.RedHeavenHero03.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.RedHeavenHero03.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.RedHeavenHero03.first");
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  if arrCreatureTarget ~= nil and length(arrCreatureTarget) > 0 then
                    local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                    local strCreatureTarget = arrCreatureTarget[iRandomIndex];
                    local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
                    TTHCS_THREAD.cast.area.impl(sidHero, SPELL_MASS_DISRUPTING_RAY, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.RedHeavenHero03.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.RedHeavenHero03.strHero then
              if itemUnitLast ~= nil
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.RedHeavenHero03.trigger");
                if length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                  for i, sidCreatureTarget in listCreatureStatusDeath[iOppositeSide] do
                    local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                    TTHCS_THREAD.cast.area.impl(sidHero, SPELL_MASS_DISRUPTING_RAY, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                  end;
                end;
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- Orlando 020 奥兰多
        TCS_FUNC.Talent.Orlando = {};
        TCS_FUNC.Talent.Orlando.strHero = "Orlando";
        TCS_FUNC.Talent.Orlando.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Orlando.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Orlando.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Orlando.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Orlando.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Orlando.first");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_MASS_CURSE, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Orlando.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Orlando.strHero then
              if itemUnitLast ~= nil
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Orlando.trigger");
                TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_MASS_CURSE, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- OrtanCassius 155 奥尔坦-卡西乌斯
        TCS_FUNC.Talent.OrtanCassius = {};
        TCS_FUNC.Talent.OrtanCassius.strHero = "OrtanCassius";
        TCS_FUNC.Talent.OrtanCassius.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.OrtanCassius.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iOppositeSide
                and length(listCreatureNumberDecrease[iSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local listCreatureCaster = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if itemCreature["UnitType"] == CREATURE_JUSTICAR then
                    push(listCreatureCaster, itemCreature);
                  end;
                end;
                listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
                if length(listCreatureCaster) > 0 then
                  local arrCreatureTarget = {};
                  local itemCreatureCaster = listCreatureCaster[0];
                  local iContinuousNumber = itemCreatureCaster["UnitNumber"];
                  if iContinuousNumber > 30 then
                    iContinuousNumber = 30;
                  end;
                  for i, sidCreatureDecrease in listCreatureNumberDecrease[iSide] do
                    if sidCreatureDecrease ~= itemCreatureCaster["UnitName"]
                      and TTHCS_GLOBAL.isNearBy4Creature(sidCreatureDecrease, itemCreatureCaster["UnitName"]) == TCS_ENUM.Switch.No then
                      push(arrCreatureTarget, sidCreatureDecrease);
                    end;
                  end;
                  if length(arrCreatureTarget) > 0 then
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.OrtanCassius.trigger");
                    for i, sidCreatureTarget in arrCreatureTarget do
                      TTHCS_THREAD.cast.aimed.impl(itemCreatureCaster["UnitName"], SPELL_ABILITY_SUMMON_OTHER, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                      TTHCS_THREAD.cast.aimed.impl(itemCreatureCaster["UnitName"], SPELL_ABILITY_LAY_HANDS, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                        -- TCS_FUNC.Continuous.increase(itemUnitLast["UnitName"], iContinuousNumber, itemUnitLast["UnitName"]);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Sanguinius 156 圣吉列斯
        TCS_FUNC.Talent.Sanguinius = {};
        TCS_FUNC.Talent.Sanguinius.strHero = "Sanguinius";
        TCS_FUNC.Talent.Sanguinius.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Sanguinius.strHero;
          if 1 == 1
            and sidHero ~= nil
            and GetHeroName(sidHero) == strHero
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
            and itemUnit ~= nil
            and itemUnit["UnitName"] == sidHero
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sanguinius.move");
            local objCreatureMainLegate = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_LEGATE);
            local arrCreatureTarget = GetCreatures(iSide);
            if objCreatureMainLegate then
              TTHCS_THREAD.cast.aimed.impl(itemUnit["UnitName"], SPELL_BLESS, objCreatureMainLegate["UnitName"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
            end;
            TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
          end;
        end;

    -- Sylvan
      -- Nadaur 024 塔兰纳
        TCS_FUNC.Talent.Nadaur = {};
        TCS_FUNC.Talent.Nadaur.strHero = "Nadaur";
        TCS_FUNC.Talent.Nadaur.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Nadaur.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
            and length(listCreatureStatusDeath[iSide]) > 0
            and itemUnitLast ~= nil
            and itemUnitLast["Side"] == iOppositeSide
          then
            local objCreatureMainBladeJuggler = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_BLADE_JUGGLER);
            if objCreatureMainBladeJuggler ~= nil then
              TTHCS_GLOBAL.moveImmediate(objCreatureMainBladeJuggler["UnitName"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], objCreatureMainBladeJuggler["UnitName"], 5);
            end;
            local objCreatureMainWoodElf = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_WOOD_ELF);
            if objCreatureMainWoodElf ~= nil then
              TTHCS_GLOBAL.moveImmediate(objCreatureMainWoodElf["UnitName"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], objCreatureMainWoodElf["UnitName"], 5);
            end;
            local objCreatureMainDruid = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_DRUID);
            if objCreatureMainDruid ~= nil then
              TTHCS_GLOBAL.moveImmediate(objCreatureMainDruid["UnitName"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], objCreatureMainDruid["UnitName"], 5);
            end;
          end;
        end;

      -- Gelu 027 格鲁
        TCS_FUNC.Talent.Gelu = {};
        TCS_FUNC.Talent.Gelu.strHero = "Gelu";
        TCS_FUNC.Talent.Gelu.flag = {};
        TCS_FUNC.Talent.Gelu.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gelu.strHero then
              if itemUnit["UnitType"] == CREATURE_SNOW_APE
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                if TCS_FUNC.Talent.Gelu.flag[itemUnit["UnitName"]] == nil then
                  TCS_FUNC.Talent.Gelu.flag[itemUnit["UnitName"]] = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gelu.first");
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                  local strCreatureTarget = arrCreatureTarget[iRandomIndex];
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
                  TTHCS_THREAD.shoot(itemUnit["UnitName"], itemCreatureTarget["UnitName"]);
                  TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Gelu.encourage = {};
        TCS_FUNC.Talent.Gelu.encourage.flag = TCS_ENUM.Switch.Yes;
        TCS_FUNC.Talent.Gelu.encourage.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gelu.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                local listCreatureTarget = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if itemCreature["UnitType"] == CREATURE_SNOW_APE then
                    push(listCreatureTarget, itemCreature);
                  end;
                end;
                listCreatureTarget = TTHCS_COMMON.desc8key(listCreatureTarget, "UnitNumber");
                if length(listCreatureTarget) > 0 then
                  if TCS_FUNC.Talent.Gelu.encourage.flag == TCS_ENUM.Switch.Yes then
                    TCS_FUNC.Talent.Gelu.encourage.flag = TCS_ENUM.Switch.No;
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gelu.encourage.move");
                    local itemCreatureTarget = listCreatureTarget[0];
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_ENCOURAGE, itemCreatureTarget["UnitName"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Gelu.encourage.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gelu.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gelu.encourage.charge");
                TCS_FUNC.Talent.Gelu.encourage.flag = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;

      -- Arniel 028 伊沃
        TCS_FUNC.Talent.Arniel = {};
        TCS_FUNC.Talent.Arniel.strHero = "Arniel";
        TCS_FUNC.Talent.Arniel.arrSignCreature = {};
        TCS_FUNC.Talent.Arniel.sign = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Arniel.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                if length(TCS_FUNC.Talent.Arniel.arrSignCreature) == 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Arniel.sign");
                  for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                    push(TCS_FUNC.Talent.Arniel.arrSignCreature, sidCreatureDecrease);
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      TCS_BATTLE.atb.record(sidCreatureDecrease, TCS_ENUM.Atb.min);
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Arniel.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Arniel.strHero then
              if itemUnitLast ~= nil
                and itemUnitLast["Side"] == iSide
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0
                and length(TCS_FUNC.Talent.Arniel.arrSignCreature) > 0 then
                local bCheck = TCS_ENUM.Switch.No;
                for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                  for j, sidCreatureSign in TCS_FUNC.Talent.Arniel.arrSignCreature do
                    if sidCreatureDecrease == sidCreatureSign then
                      bCheck = TCS_ENUM.Switch.Yes;
                    end;
                  end;
                end;
                if bCheck == TCS_ENUM.Switch.Yes then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Arniel.sign");
                  local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                  local iContinuousNumber = TTHCS_COMMON.ceil(iHeroLevel / 3);
                  -- TCS_FUNC.Continuous.increase(itemUnitLast["UnitName"], iContinuousNumber);
                end;
              end;
            end;
          end;
        end;

      -- Itil 031 于尔辛
        TCS_FUNC.Talent.Itil = {};
        TCS_FUNC.Talent.Itil.strHero = "Itil";
        TCS_FUNC.Talent.Itil.trigger = function(iSide, itemUnit, listCreatureStatusRevive, listCreatureNumberIncrease)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Itil.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              local arrCreatureUnicorn = {};
              for i, strCreatureRevive in listCreatureStatusRevive[iSide] do
                local itemCreatureRevive = TTHCS_GLOBAL.geneUnitInfo(strCreatureRevive);
                if itemCreatureRevive["UnitType"] == CREATURE_WING_UNICORN then
                  if contains(arrCreatureUnicorn, itemCreatureRevive["UnitName"]) == nil then
                    push(arrCreatureUnicorn, itemCreatureRevive["UnitName"]);
                  end;
                end;
              end;
              for i, strCreatureIncrease in listCreatureNumberIncrease[iSide] do
                local itemCreatureIncrease = TTHCS_GLOBAL.geneUnitInfo(strCreatureIncrease);
                if itemCreatureIncrease["UnitType"] == CREATURE_WING_UNICORN then
                  if contains(arrCreatureUnicorn, itemCreatureIncrease["UnitName"]) == nil then
                    push(arrCreatureUnicorn, itemCreatureIncrease["UnitName"]);
                  end;
                end;
              end;
              if length(arrCreatureUnicorn) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Itil.trigger");
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                for i, strCreatureUnicorn in arrCreatureUnicorn do
                  local itemCreatureUnicorn = TTHCS_GLOBAL.geneUnitInfo(strCreatureUnicorn);
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    TTHCS_THREAD.castAreaSpell8Tool(iSide, CREATURE_PRESERVE_TOOL, iHeroLevel, SPELL_MASS_DISPEL, itemCreatureUnicorn["PosX"] - 1, itemCreatureUnicorn["PosY"] - 1, TCS_ENUM.Switch.No);
                  else
                    TTHCS_THREAD.cast.area.impl(sidHero, SPELL_MASS_DISPEL, itemCreatureUnicorn["PosX"] - 1, itemCreatureUnicorn["PosY"] - 1, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                  end;
                  ShowFlyingSign(TTH_TABLE.Spell[SPELL_MASS_DISPEL]["Text"], itemCreatureUnicorn["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Gem 035 珍尼
        TCS_FUNC.Talent.Gem = {};
        TCS_FUNC.Talent.Gem.strHero = "Gem";
        TCS_FUNC.Talent.Gem.arrCreatureIncrease = {};
        TCS_FUNC.Talent.Gem.arrCreatureDecrease = {};
        TCS_FUNC.Talent.Gem.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gem.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if length(TCS_FUNC.Talent.Gem.arrCreatureIncrease) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gem.move.increase");
                  for i, sidCreatureIncrease in TCS_FUNC.Talent.Gem.arrCreatureIncrease do
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_REGENERATION, sidCreatureIncrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                  TCS_FUNC.Talent.Gem.arrCreatureIncrease = {};
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
                if length(TCS_FUNC.Talent.Gem.arrCreatureDecrease) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gem.move.decrease");
                  for i, sidCreatureDecrease in TCS_FUNC.Talent.Gem.arrCreatureDecrease do
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_PLAGUE, sidCreatureDecrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                  TCS_FUNC.Talent.Gem.arrCreatureDecrease = {};
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Gem.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberIncrease, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gem.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitType"] == TTH_ENUM.WarmachineFirstAidTent then
                if length(listCreatureNumberIncrease[iSide]) > 0 then
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    for i, sidCreatureIncrease in listCreatureNumberIncrease[iSide] do
                      push(TCS_FUNC.Talent.Gem.arrCreatureIncrease, sidCreatureIncrease);
                    end;
                  else
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gem.trigger.increase");
                    for i, sidCreatureIncrease in listCreatureNumberIncrease[iSide] do
                      TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_REGENERATION, sidCreatureIncrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
                if length(listCreatureNumberDecrease[iOppositeSide]) > 0
                  and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                      push(TCS_FUNC.Talent.Gem.arrCreatureDecrease, sidCreatureDecrease);
                    end;
                  else
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gem.trigger.decrease");
                    for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                      TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_PLAGUE, sidCreatureDecrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Ildar 037 娜瑞莎
        TCS_FUNC.Talent.Ildar = {};
        TCS_FUNC.Talent.Ildar.strHero = "Ildar";
        TCS_FUNC.Talent.Ildar.sidCreature = "";
        TCS_FUNC.Talent.Ildar.mapCreatureId = {
          [0] = {949, 947, 945, 943, 941, 939, 937, 937, 937}
          , [1] = {948, 946, 944, 942, 940, 938, 936, 936, 936}
        };
        TCS_FUNC.Talent.Ildar.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Ildar.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ildar.start");
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureIndex = TTHCS_COMMON.ceil(iHeroLevel / 5);
              local enumCreatureType = TCS_VARI.Info.HeroTalent[strHero];
              local iCreatureId = TCS_FUNC.Talent.Ildar.mapCreatureId[enumCreatureType][iCreatureIndex];
              local iCreatureNumber = TTHCS_COMMON.ceil(iHeroLevel / 3);
              local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
              local sidCreatureTarget = TTHCS_THREAD.summonCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
              TCS_FUNC.Talent.Ildar.sidCreature = sidCreatureTarget;
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                TCS_BATTLE.atb.record(sidCreatureTarget, TCS_ENUM.Atb.immediate);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
            end;
          end;
        end;
        TCS_FUNC.Talent.Ildar.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Ildar.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
              and contains(GetCreatures(iSide), TCS_FUNC.Talent.Ildar.sidCreature) == nil then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ildar.move");
              TCS_FUNC.Talent.Ildar.start(iSide);
            end;
          end;
        end;

      -- Vaniel 038 蒂耶鲁
        TCS_FUNC.Talent.Vaniel = {};
        TCS_FUNC.Talent.Vaniel.strHero = "Vaniel";
        TCS_FUNC.Talent.Vaniel.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vaniel.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              local listCreatureCaster = {};
              local arrCreature = GetCreatures(iSide);
              for i, sidCreature in arrCreature do
                local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                if 1 ~= 1
                  or itemCreature["UnitType"] == CREATURE_DRUID
                  or itemCreature["UnitType"] == CREATURE_DRUID_ELDER
                  or itemCreature["UnitType"] == CREATURE_HIGH_DRUID
                  then
                  push(listCreatureCaster, itemCreature);
                end;
              end;
              listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
              if length(listCreatureCaster) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vaniel.start");
                local itemCreatureCaster = listCreatureCaster[0];
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                  if itemCreatureCaster["UnitType"] == CREATURE_DRUID_ELDER then
                    TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_HIGH_DRUID, itemCreatureCaster["UnitNumber"], SPELL_ABILITY_POWER_FEED, TCS_ENUM.Switch.No);
                  elseif  itemCreatureCaster["UnitType"] == CREATURE_HIGH_DRUID then
                    TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_DRUID_ELDER, itemCreatureCaster["UnitNumber"], SPELL_ABILITY_MANA_FEED, TCS_ENUM.Switch.No);
                    if itemCreatureCaster["UnitNumber"] >= 10 then
                      setATB(sidHero, TCS_ENUM.Atb.immediate);
                    end;
                  end;
                else
                  TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_HIGH_DRUID, itemCreatureCaster["UnitNumber"], SPELL_ABILITY_POWER_FEED, TCS_ENUM.Switch.No);
                  TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_DRUID_ELDER, itemCreatureCaster["UnitNumber"], SPELL_ABILITY_MANA_FEED, TCS_ENUM.Switch.No);
                  if itemCreatureCaster["UnitNumber"] >= 10 then
                    setATB(sidHero, TCS_ENUM.Atb.immediate);
                  end;
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Vaniel.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vaniel.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] ~= sidHero then
                if itemHeroMana[iSide] ~= 0 then
                  local itemHeroBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatHero][iSide];
                  local itemHeroLast = TCS_VARI.Snapshot.last[TTH_ENUM.CombatHero][iSide];
                  local iDiffMana = itemHeroLast["CurrentMana"] - itemHeroBefore["CurrentMana"];
                  if iDiffMana >= 10 or iDiffMana < -5 then
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vaniel.trigger");
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Vinrael 039 艾丽莎
        TCS_FUNC.Talent.Vinrael = {};
        TCS_FUNC.Talent.Vinrael.strHero = "Vinrael";
        TCS_FUNC.Talent.Vinrael.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vinrael.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
                and (
                  length(listCreatureNumberDecrease[iOppositeSide]) == 0
                  and length(listCreatureStatusDeath[iOppositeSide]) == 0
                )
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vinrael.trigger");
                local itemHero = TTHCS_GLOBAL.geneUnitInfo(sidHero);

                -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
                  TCS_FUNC.Skill.DeadLuck.move(iSide, itemHero);

                -- HERO_SKILL_ECHO_OF_SYLANNA 315 西莱纳的回响
                  TCS_FUNC.Skill.EchoOfSylanna.move(iSide, itemHero);

                -- HERO_SKILL_REPAIR_MACHINES 317 战地修理
                  TCS_FUNC.Skill.RepairMachines.move(iSide, itemHero);

                -- ARTIFACT_PENDANT_OF_BLIND 101 闪耀权冠
                  TCS_FUNC.Artifact.PendantOfBlind.first(iSide, itemHero);

                -- ARTIFACT_CODEX 126 大法师之典
                  TCS_FUNC.Artifact.Codex.first(iSide, itemHero);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Vinrael.deal = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vinrael.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                local itemHeroLastTemp = TTHCS_GLOBAL.geneUnitInfo(sidHero);
                local itemHeroManaTemp = {};
                itemHeroManaTemp[iSide] = TCS_ENUM.Snapshot.Hero.Mana.Decrease;
                if length(listCreatureNumberDecrease[iOppositeSide]) > 0
                  or length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vinrael.deal");

                  -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
                    TCS_FUNC.Skill.DeadLuck.charge(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp);

                  -- HERO_SKILL_ECHO_OF_SYLANNA 315 西莱纳的回响
                    TCS_FUNC.Skill.EchoOfSylanna.charge(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp);

                  -- HERO_SKILL_PAYBACK 147 黑暗再生
                    TCS_FUNC.Skill.Payback.trigger(iSide, itemUnit, itemHeroManaTemp);

                  -- ARTIFACT_MOONBLADE 058 月光利刃
                    TCS_FUNC.Artifact.Moonblade.trigger(iSide, itemUnit, itemHeroManaTemp);

                  -- ARTIFACT_EIGHTFOLD 125 亚莎之八重杖
                    TCS_FUNC.Artifact.Eightfold.trigger(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp);

                  -- ARTIFACTSET_ELEMENT_WATER 018 流水之蕴 ElementWater
                    TCS_FUNC.ArtifactSet.ElementWater.trigger(iSide, itemUnit, itemHeroManaTemp);
                end;

                if length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vinrael.deal");

                  -- HERO_SKILL_SEAL_OF_PROTECTION 131 众志成城
                    TCS_FUNC.Skill.SealOfProtection.trigger(iSide, itemUnit, itemHeroLastTemp, listCreatureNumberDecrease);

                  -- ARTIFACT_BOOK_OF_MALASSA 147 玛拉萨之书
                    TCS_FUNC.Artifact.BookOfMalassa.trigger(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp, listCreatureNumberDecrease);

                  -- ARTIFACTSET_ELEMENT_AIR 015 雷电迅捷 ElementAir
                    TCS_FUNC.ArtifactSet.ElementAir.trigger(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp, listCreatureNumberDecrease);

                  -- ARTIFACTSET_ELEMENT_EARTH 016 大地之力 ElementEarth
                    TCS_FUNC.ArtifactSet.ElementEarth.trigger(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp, listCreatureNumberDecrease);

                  -- ARTIFACTSET_ELEMENT_FIRE 017 附骨之焰 ElementFire
                    TCS_FUNC.ArtifactSet.ElementFire.trigger(iSide, itemUnit, itemHeroLastTemp, itemHeroManaTemp, listCreatureNumberDecrease);
                end;
              end;
            end;
          end;
        end;

    -- Academy
      -- Isher 043 拉扎克
        TCS_FUNC.Talent.Isher = {};
        TCS_FUNC.Talent.Isher.strHero = "Isher";
        TCS_FUNC.Talent.Isher.trigger = function(iSide, itemUnit, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Isher.strHero then
              local arrCreatureTarget = {};
              for i, sidCreatureNumberDecrease in listCreatureNumberDecrease[iSide] do
                local itemCreatureNumberDecrease = TTHCS_GLOBAL.geneUnitInfo(sidCreatureNumberDecrease);
                if TTHCS_GLOBAL.checkCreatureType(itemCreatureNumberDecrease, CREATURE_IRON_GOLEM) then
                  push(arrCreatureTarget, sidCreatureNumberDecrease);
                end;
              end;
              if length(arrCreatureTarget) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Isher.trigger");
                for i, sidCreatureTarget in arrCreatureTarget do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  local iCreatureNumberCaster = TTHCS_COMMON.ceil(itemCreatureTarget["UnitNumber"] / 8);
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_ACADEMY_TOOL, iCreatureNumberCaster, SPELL_ABILITY_REPAIR, sidCreatureTarget, TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                end;
              end;
            end;
          end;
        end;

      -- Davius 044 戴维斯
        TCS_FUNC.Talent.Davius = {};
        TCS_FUNC.Talent.Davius.strHero = "Davius";
        TCS_FUNC.Talent.Davius.flag = {};
        TCS_FUNC.Talent.Davius.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Davius.strHero then
              if itemUnit["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnit, CREATURE_RAKSHASA) then
                if TCS_FUNC.Talent.Davius.flag[itemUnit["UnitName"]] == nil then
                  TCS_FUNC.Talent.Davius.flag[itemUnit["UnitName"]] = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Davius.first");
                  TTHCS_THREAD.castGlobalSpell5Mana(itemUnit["UnitName"], SPELL_ABILITY_DASH, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Davius.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Davius.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_RAKSHASA)
                and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Davius.trigger");
                TTHCS_THREAD.castGlobalSpell5Mana(itemUnitLast["UnitName"], SPELL_ABILITY_DASH, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(itemUnitLast["UnitName"], TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- Razzak 047 纳克西斯
        TCS_FUNC.Talent.Razzak = {};
        TCS_FUNC.Talent.Razzak.strHero = "Razzak";
        TCS_FUNC.Talent.Razzak.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureManaUnchanged)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Razzak.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_MAGI)
                and length(listCreatureNumberDecrease[iOppositeSide]) > 1
                and contains(listCreatureManaUnchanged[iSide], itemUnitLast["UnitName"]) ~= nil
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local iSpellId = TCS_VARI.Info.HeroTalent[strHero];
                if iSpellId ~= 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Razzak.trigger");
                  for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                    if contains(TTHCS_TABLE.ImbueBallistaSpellAimed, iSpellId) ~= nil then
                      local bCost = TCS_ENUM.Switch.Yes;
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                        bCost = TCS_ENUM.Switch.No;
                      end;
                      TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, sidCreatureTarget, bCost, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                    elseif contains(TTHCS_TABLE.ImbueBallistaSpellArea, iSpellId) ~= nil then
                      local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                      local bCost = TCS_ENUM.Switch.Yes;
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                        bCost = TCS_ENUM.Switch.No;
                      end;
                      TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], bCost, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                    end;
                  end;
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Tan 052 加利布
        TCS_FUNC.Talent.Tan = {};
        TCS_FUNC.Talent.Tan.strHero = "Tan";
        TCS_FUNC.Talent.Tan.flag = TCS_ENUM.Switch.Yes;
        TCS_FUNC.Talent.Tan.arrCreature = {};
        TCS_FUNC.Talent.Tan.check = function()
          local arrCreatureRet = {};
          if length(TCS_FUNC.Talent.Tan.arrCreature) > 0 then
            for i, sidCreature in TCS_FUNC.Talent.Tan.arrCreature do
              if IsCombatUnit(sidCreature) ~= nil then
                push(arrCreatureRet, sidCreature);
              end;
            end;
          end;
          TCS_FUNC.Talent.Tan.arrCreature = arrCreatureRet;
        end;
        TCS_FUNC.Talent.Tan.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Tan.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                TCS_FUNC.Talent.Tan.check();
                local iMaxCount = 1;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iMaxCount = iMaxCount + 1;
                end;
                if length(TCS_FUNC.Talent.Tan.arrCreature) < iMaxCount then
                  if TCS_FUNC.Talent.Tan.flag == TCS_ENUM.Switch.Yes then
                    TCS_FUNC.Talent.Tan.flag = TCS_ENUM.Switch.No;
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Tan.move");
                    local arrCreatureCaster = GetCreatures(iSide);
                    local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureCaster));
                    local strCreatureCaster = arrCreatureCaster[iRandomIndex];
                    local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(strCreatureCaster);
                    local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                    local iCreatureNumber = TTHCS_COMMON.ceil(itemCreatureCaster["UnitNumber"] * 0.01 * iHeroLevel);
                    local sidCreatureTarget = TTHCS_THREAD.summonCreature(iSide, itemCreatureCaster["UnitType"], iCreatureNumber, itemCreatureCaster["PosX"], itemCreatureCaster["PosY"]);
                    if sidCreatureTarget ~= nil then
                      push(TCS_FUNC.Talent.Tan.arrCreature, sidCreatureTarget);
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Tan.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Tan.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Tan.charge");
                TCS_FUNC.Talent.Tan.flag = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;

      -- Emilia 053 艾米莉亚
        TCS_FUNC.Talent.Emilia = {};
        TCS_FUNC.Talent.Emilia.strHero = "Emilia";
        TCS_FUNC.Talent.Emilia.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listSpellSpawnStatusSummon)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Emilia.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                local arrCrystal = {};
                for i, strSpellSpawn in listSpellSpawnStatusSummon[iSide] do
                  if string.match(strSpellSpawn, "SPELL_ARCANE_CRYSTAL") ~= nil then
                    push(arrCrystal, strSpellSpawn);
                  end;
                end;
                if length(arrCrystal) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Emilia.trigger");
                  for i, sidCrystal in arrCrystal do
                    local itemCrystal = TTHCS_GLOBAL.geneUnitInfo(sidCrystal);
                    TTHCS_THREAD.cast.area.impl(sidHero, SPELL_LAND_MINE, itemCrystal["PosX"], itemCrystal["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes);

                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      local arrCreatureTargetRadius2 = TTHCS_GLOBAL.listUnitInArea(itemCrystal, 3, iOppositeSide, TCS_ENUM.Switch.No);
                      local arrCreatureTargetRadius1 = TTHCS_GLOBAL.listUnitInArea(itemCrystal, 1, iOppositeSide, TCS_ENUM.Switch.No);
                      for i, sidCreature in arrCreatureTargetRadius2 do
                        local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                        if contains(arrCreatureTargetRadius1, sidCreature) == nil
                          and TTH_TABLE.Creature[itemCreature["UnitType"]]["CombatSize"] == 1 then
                          local iPosX = itemCreature["PosX"];
                          if itemCreature["PosX"] ~= itemCrystal["PosX"] then
                            iPosX = (itemCreature["PosX"] + itemCrystal["PosX"]) / 2;
                          end;
                          local iPosY = itemCreature["PosY"];
                          if itemCreature["PosY"] ~= itemCrystal["PosY"] then
                            iPosY = (itemCreature["PosY"] + itemCrystal["PosY"]) / 2;
                          end;
                          TTHCS_THREAD.move(sidCreature, iPosX, iPosY);
                          ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectMove"], sidCrystal, 5);
                        end;
                      end;
                    end;

                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      local arrUnitTarget = TTHCS_GLOBAL.listUnitInArea(itemCrystal, 3, iOppositeSide, TCS_ENUM.Switch.Yes);
                      if length(arrUnitTarget) > 0 then
                        for j, sidUnitTarget in arrUnitTarget do
                          TCS_BATTLE.atb.record(sidUnitTarget, TCS_ENUM.Atb.min);
                        end;
                        ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectAtb"], sidCrystal, 5);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Nur 054 纳西尔
        TCS_FUNC.Talent.Nur = {};
        TCS_FUNC.Talent.Nur.strHero = "Nur";
        TCS_FUNC.Talent.Nur.flag = TCS_ENUM.Switch.Yes;
        TCS_FUNC.Talent.Nur.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Nur.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Nur.flag == TCS_ENUM.Switch.Yes then
                  TCS_FUNC.Talent.Nur.flag = TCS_ENUM.Switch.No;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Nur.move");
                  local iSpellId = SPELL_FIREBALL;
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    iSpellId = SPELL_EMPOWERED_FIREBALL;
                  end;
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  if length(arrCreatureTarget) > 0 then
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 0 then
                      local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                      local strCreatureTarget = arrCreatureTarget[iRandomIndex];
                      local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
                      TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    else
                      local arrPositionArea3, objMaxPositionArea3 = TTHCS_GLOBAL.getDenseArea(arrCreatureTarget, 3);
                      TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, objMaxPositionArea3["PosX"], objMaxPositionArea3["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                  end;
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Nur.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Nur.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Nur.charge");
                TCS_FUNC.Talent.Nur.flag = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;

      -- Astral 055 努尔
        TCS_FUNC.Talent.Astral = {};
        TCS_FUNC.Talent.Astral.strHero = "Astral";
        TCS_FUNC.Talent.Astral.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Astral.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Astral.trigger");
                local iManaPoint = TCS_VARI.Info.HeroTalent[strHero];
                TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Zehir 056 泽希尔
        TCS_FUNC.Talent.Zehir = {};
        TCS_FUNC.Talent.Zehir.strHero = "Zehir";
        TCS_FUNC.Talent.Zehir.enumElementCreatureId = { 85, 86, 87, 88, 91 };
        TCS_FUNC.Talent.Zehir.buff = function(iSide, sidCreature)
          local sidHero = GetHero(iSide);
          local strHero = GetHeroName(sidHero);
          if strHero == TCS_FUNC.Talent.Zehir.strHero
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
            local iAtb = TCS_ENUM.Atb.min + 0.5;
            if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
              iAtb = TCS_ENUM.Atb.immediate;
            end;
            TCS_BATTLE.atb.record(sidCreature, iAtb);
            ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreature, 5);
          end;
        end;
        TCS_FUNC.Talent.Zehir.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Zehir.strHero then
              if itemUnitLast ~= nil
                and length(listCreatureStatusSummon) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Zehir.trigger");
                local iAtb = TCS_ENUM.Atb.mid;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iAtb = TCS_ENUM.Atb.immediate;
                end;
                for i, sidSummon in listCreatureStatusSummon[iSide] do
                  local itemSummon = TTHCS_GLOBAL.geneUnitInfo(sidSummon);
                  if contains(TCS_FUNC.Talent.Zehir.enumElementCreatureId, itemSummon["UnitType"]) ~= nil then
                    TCS_FUNC.Talent.Zehir.buff(iSide, sidSummon);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Faiz 057 法伊兹
        TCS_FUNC.Talent.Faiz = {};
        TCS_FUNC.Talent.Faiz.strHero = "Faiz";
        TCS_FUNC.Talent.Faiz.arrSignCreature = {};
        TCS_FUNC.Talent.Faiz.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Faiz.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if length(TCS_FUNC.Talent.Faiz.arrSignCreature) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Faiz.move");
                  local iSpellId = SPELL_DISRUPTING_RAY;
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                    and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_MASTER_OF_SICKNESS] == 1 then
                    iSpellId = SPELL_MASS_DISRUPTING_RAY;
                  end;
                  local iTimes = 1;
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    iTimes = iTimes + 1;
                  end;
                  for i = 1, iTimes do
                    local iRandomIndex = TTHCS_COMMON.getRandom(length(TCS_FUNC.Talent.Faiz.arrSignCreature));
                    local sidCreatureTarget = TCS_FUNC.Talent.Faiz.arrSignCreature[iRandomIndex];
                    local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                    if iSpellId == SPELL_DISRUPTING_RAY then
                      TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    else
                      TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                  end;
                  TCS_FUNC.Talent.Faiz.arrSignCreature = {};
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Faiz.trigger = function(iSide, itemUnit, listCreaturePositionMove)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Faiz.strHero then
              if listCreaturePositionMove[iOppositeSide] ~= nil and length(listCreaturePositionMove[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Faiz.trigger");
                for i, sidCreatureTarget in listCreaturePositionMove[iOppositeSide] do
                  if contains(TCS_FUNC.Talent.Faiz.arrSignCreature, sidCreatureTarget) == nil then
                    push(TCS_FUNC.Talent.Faiz.arrSignCreature, sidCreatureTarget);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Solmyr 058 索姆拉
        TCS_FUNC.Talent.Solmyr = {};
        TCS_FUNC.Talent.Solmyr.strHero = "Solmyr";
        TCS_FUNC.Talent.Solmyr.mapPosition = {
          [1] = {
            [0] = {
              [0] = {
                ["PosX"] = 12
                , ["PosY"] = 1
              }
              , [1] = {
                ["PosX"] = 12
                , ["PosY"] = 4
              }
              , [2] = {
                ["PosX"] = 12
                , ["PosY"] = 7
              }
              , [3] = {
                ["PosX"] = 12
                , ["PosY"] = 10
              }
            }
            , [1] = {
              [0] = {
                ["PosX"] = 3
                , ["PosY"] = 1
              }
              , [1] = {
                ["PosX"] = 3
                , ["PosY"] = 4
              }
              , [2] = {
                ["PosX"] = 3
                , ["PosY"] = 7
              }
              , [3] = {
                ["PosX"] = 3
                , ["PosY"] = 10
              }
            }
          }
          , [2] = {
            [0] = {
              [0] = {
                ["PosX"] = 14
                , ["PosY"] = 2
              }
              , [1] = {
                ["PosX"] = 14
                , ["PosY"] = 5
              }
              , [2] = {
                ["PosX"] = 14
                , ["PosY"] = 8
              }
              , [3] = {
                ["PosX"] = 14
                , ["PosY"] = 11
              }
              , [4] = {
                ["PosX"] = 14
                , ["PosY"] = 14
              }
            }
            , [1] = {
              [0] = {
                ["PosX"] = 3
                , ["PosY"] = 2
              }
              , [1] = {
                ["PosX"] = 3
                , ["PosY"] = 5
              }
              , [2] = {
                ["PosX"] = 3
                , ["PosY"] = 8
              }
              , [3] = {
                ["PosX"] = 3
                , ["PosY"] = 11
              }
              , [4] = {
                ["PosX"] = 3
                , ["PosY"] = 14
              }
            }
          }
        };
        TCS_FUNC.Talent.Solmyr.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Solmyr.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Solmyr.start");
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              local iBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
              local listPosition = TCS_FUNC.Talent.Solmyr.mapPosition[iBattleFieldSize][iSide];
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              for i, itemPosition in listPosition do
                TTHCS_THREAD.castAreaSpell8Tool(iSide, CREATURE_ACADEMY_TOOL, iHeroLevel, SPELL_ABILITY_CALL_STORM, itemPosition["PosX"], itemPosition["PosY"], TCS_ENUM.Switch.No);
              end;
            end;
          end;
        end;

    -- Dungeon
      -- Urunir 059 宇尔沃娜
        TCS_FUNC.Talent.Urunir = {};
        TCS_FUNC.Talent.Urunir.strHero = "Urunir";
        TCS_FUNC.Talent.Urunir.flag = {};
        TCS_FUNC.Talent.Urunir.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Urunir.strHero then
              if itemUnit["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnit, CREATURE_WITCH) then
                if TCS_FUNC.Talent.Urunir.flag[itemUnit["UnitName"]] == nil then
                  TCS_FUNC.Talent.Urunir.flag[itemUnit["UnitName"]] = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Urunir.move");
                  TTHCS_THREAD.castGlobalSpell4Mana(itemUnit["UnitName"], SPELL_ABILITY_INVISIBILITY, TCS_ENUM.Switch.No);
                  TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Urunir.charge = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Urunir.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_WITCH)
                and itemUnitLast["MaxMana"] > 0 then
                if (
                    TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                    and length(listCreatureStatusDeath[iOppositeSide]) > 0
                  )
                  or (
                    TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                    and length(listCreatureNumberDecrease[iOppositeSide]) > 0
                  ) then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Urunir.charge");
                  TCS_FUNC.Talent.Urunir.flag[itemUnitLast["UnitName"]] = nil;
                end;
              end;
            end;
          end;
        end;

      -- Menel 060 基特拉
        TCS_FUNC.Talent.Menel = {};
        TCS_FUNC.Talent.Menel.strHero = "Menel";
        TCS_FUNC.Talent.Menel.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Menel.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_MINOTAUR)
                and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                local arrCreature = GetCreatures(iSide);
                local listCreature = {};
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  push(listCreature, itemCreature);
                end;
                local itemCreatureFront = nil;
                if iSide == TCS_ENUM.Side.Attacker then
                  itemCreatureFront = TTHCS_COMMON.max8key(listCreature, "PosX");
                else
                  itemCreatureFront = TTHCS_COMMON.min8key(listCreature, "PosX");
                end;
                if itemCreatureFront ~= nil and itemCreatureFront["UnitName"] == itemUnitLast["UnitName"] then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Menel.trigger");
                  for i, sidCreature in arrCreature do
                    if sidCreature ~= itemUnitLast["UnitName"] then
                      TCS_BATTLE.atb.record(sidCreature, TCS_ENUM.Atb.max);
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Ferigl 061 索戈尔
        TCS_FUNC.Talent.Ferigl = {};
        TCS_FUNC.Talent.Ferigl.strHero = "Ferigl";
        TCS_FUNC.Talent.Ferigl.check = function(objCreatureMain, objUnitLast, arrCreatureTarget)
          local bCheck = nil;
          if 1 == 1
            and arrCreatureTarget ~= nil
            and length(arrCreatureTarget) > 0
          then
            for i, sidCreatureTarget in arrCreatureTarget do
              local enumEffectMain = TTHCS_GLOBAL.isNearBy4Creature(objCreatureMain["UnitName"], sidCreatureTarget);
              local enumEffectLast = TTHCS_GLOBAL.isNearBy4Creature(objUnitLast["UnitName"], sidCreatureTarget);
              if 1 == 1
                and enumEffectMain == TCS_ENUM.Switch.Yes
                and enumEffectLast == TCS_ENUM.Switch.Yes
              then
                bCheck = not nil;
                break;
              end;
            end;
          end;
          return bCheck;
        end;
        TCS_FUNC.Talent.Ferigl.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            local objCreatureMain = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_RIDER);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Ferigl.strHero
              and itemUnitLast ~= nil
              and itemUnitLast["Side"] == iSide
              and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
              and objCreatureMain ~= nil
              and itemUnitLast["UnitName"] ~= objCreatureMain["UnitName"]
              and (
                1 ~= 1
                or TCS_FUNC.Talent.Ferigl.check(objCreatureMain, itemUnitLast, listCreatureNumberDecrease[iOppositeSide])
                or TCS_FUNC.Talent.Ferigl.check(objCreatureMain, itemUnitLast, listCreatureStatusDeath[iOppositeSide])
              )
            then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ferigl.trigger");
              TTHCS_THREAD.cast.aimed.tool(iSide, CREATURE_DUNGEON_TOOL_FERIGL1, objCreatureMain["UnitNumber"], SPELL_REGENERATION, objCreatureMain["UnitName"], TCS_ENUM.Switch.No);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectBasic"], objCreatureMain["UnitName"], 5);
            end;
          end;
        end;
        TCS_FUNC.Talent.Ferigl.cast = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            local objCreatureMain = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_RIDER);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Ferigl.strHero
              and itemUnitLast ~= nil
              and itemUnitLast["UnitName"] == sidHero
              and itemHeroMana[iSide] < 0
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
              and objCreatureMain ~= nil
            then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ferigl.cast");
              local arrCreatureTarget = {};
              local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(objCreatureMain, 1, iOppositeSide, TCS_ENUM.Switch.No);
              for i, sidCreatureNearBy in arrCreatureNearBy do
                if contains(arrCreatureTarget, sidCreatureNearBy) == nil then
                  push(arrCreatureTarget, sidCreatureNearBy);
                end;
              end;
              local iToolCreatureId = CREATURE_DUNGEON_TOOL_FERIGL1;
              local strText = TTHCS_PATH["Talent"][strHero]["EffectAdvanced"];
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iToolCreatureId = CREATURE_DUNGEON_TOOL_FERIGL2;
                strText = TTHCS_PATH["Talent"][strHero]["EffectExpert"];
              end;
              for i, sidCreatureTarget in arrCreatureTarget do
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                TTHCS_THREAD.attack8Tool(iSide, iToolCreatureId, objCreatureMain["UnitNumber"], itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], sidCreatureTarget, 1);
              end;
              if length(arrCreatureTarget) > 0 then
                ShowFlyingSign(strText, objCreatureMain["UnitName"], 5);
              end;
            end;
          end;
        end;

      -- Ohtarig 064 维尚
        TCS_FUNC.Talent.Ohtarig = {};
        TCS_FUNC.Talent.Ohtarig.strHero = "Ohtarig";
        TCS_FUNC.Talent.Ohtarig.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Ohtarig.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and length(listCreatureNumberDecrease[iOppositeSide]) == 1
                and contains(listCreatureNumberDecrease[iSide], itemUnitLast["UnitName"]) == nil then
                local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][0];
                if TTHCS_GLOBAL.isBehindCreature(iSide, itemUnitLast["UnitName"], sidCreatureTarget) == TCS_ENUM.Switch.Yes then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ohtarig.trigger");
                  TTHCS_THREAD.attack(itemUnitLast["UnitName"], sidCreatureTarget);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Eruina 065 埃莉娜
        TCS_FUNC.Talent.Eruina = {};
        TCS_FUNC.Talent.Eruina.strHero = "Eruina";
        TCS_FUNC.Talent.Eruina.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Eruina.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreatureNumberDecrease[iOppositeSide]) == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Eruina.trigger");
                local arrSpellId = {};
                push(arrSpellId, SPELL_MAGIC_ARROW);
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  push(arrSpellId, SPELL_ICE_BOLT);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  push(arrSpellId, SPELL_LIGHTNING_BOLT);
                end;
                local sidCreatureDecrease = listCreatureNumberDecrease[iOppositeSide][0];
                for i, iSpellId in arrSpellId do
                  TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, sidCreatureDecrease, 1, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
              end;
            end;
          end;
        end;

      -- Kelodin 067 莎蒂娅
        TCS_FUNC.Talent.Kelodin = {};
        TCS_FUNC.Talent.Kelodin.strHero = "Kelodin";
        TCS_FUNC.Talent.Kelodin.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureManaUnchanged)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kelodin.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iOppositeSide then
                if length(listCreatureNumberDecrease[iSide]) > 0
                  and (
                    itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine
                    or contains(listCreatureManaUnchanged[iOppositeSide], itemUnitLast["UnitName"]) ~= nil
                  ) then
                  local arrCreatureTarget = {};
                  for i, sidCreatureDecrease in listCreatureNumberDecrease[iSide] do
                    local bIsShoot = TCS_ENUM.Switch.No;
                    if itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine and itemUnitLast["UnitType"] == TTH_ENUM.WarmachineBallista then
                      bIsShoot = TCS_ENUM.Switch.Yes;
                    else
                      local enumUnitLastRange = TTH_TABLE.Creature[itemUnitLast["UnitType"]]["Range"];
                      if enumUnitLastRange == 1 then
                        local enumEffect = TTHCS_GLOBAL.isNearBy4Creature(itemUnitLast["UnitName"], sidCreatureDecrease);
                        if enumEffect == TCS_ENUM.Switch.No then
                          bIsShoot = TCS_ENUM.Switch.Yes;
                        end;
                      end;
                    end;
                    if bIsShoot == TCS_ENUM.Switch.Yes then
                      push(arrCreatureTarget, sidCreatureDecrease);
                    end;
                  end;
                  if length(arrCreatureTarget) > 0 then
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature then
                      TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kelodin.revenge");
                      local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                      local iCreatureNumber = iHeroLevel * 10;
                      TTHCS_THREAD.debuff.trigger(iSide, CREATURE_DUNGEON_TOOL, iCreatureNumber, itemUnitLast["UnitName"]);
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                    end;
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kelodin.nearBy");
                      local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                      local iContinuousNumber = TTHCS_COMMON.ceil(iHeroLevel / 3);
                      for i, sidCreatureTarget in arrCreatureTarget do
                        local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                        local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureTarget, 1, iSide, TCS_ENUM.Switch.No);
                        for j, sidCreatureNearBy in arrCreatureNearBy do
                          if sidCreatureNearBy ~= sidCreatureTarget then
                            -- TCS_FUNC.Continuous.increase(sidCreatureNearBy, iContinuousNumber, itemUnitLast["UnitName"]);
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Shadwyn 068 伊拉娅
        TCS_FUNC.Talent.Shadwyn = {};
        TCS_FUNC.Talent.Shadwyn.strHero = "Shadwyn";
        TCS_FUNC.Talent.Shadwyn.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Shadwyn.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Shadwyn.trigger");
              local listCreatureTarget = {};
              local arrCreature = GetCreatures(iOppositeSide);
              for i, sidCreature in arrCreature do
                local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                push(listCreatureTarget, itemCreature);
              end;
              local listCreatureTargetSort8Number = TTHCS_COMMON.asc8key(listCreatureTarget, "UnitNumber");
              if length(listCreatureTargetSort8Number) > 0 then
                local itemCreatureCaster = listCreatureTargetSort8Number[0];
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iUnitNumber = TTHCS_COMMON.min(iHeroLevel, itemCreatureCaster["UnitNumber"]);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iUnitNumber = TTHCS_COMMON.max(iHeroLevel, itemCreatureCaster["UnitNumber"]);
                end;
                local sidCreatureTarget = TTHCS_THREAD.summonCreature(iSide, itemCreatureCaster["UnitType"], iUnitNumber, itemCreatureCaster["PosX"], itemCreatureCaster["PosY"]);
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  setATB(sidCreatureTarget, TCS_ENUM.Atb.immediate);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
              end;
            end;
          end;
        end;

      -- Thralsai 069 斯拉塞
        TCS_FUNC.Talent.Thralsai = {};
        TCS_FUNC.Talent.Thralsai.strHero = "Thralsai";
        TCS_FUNC.Talent.Thralsai.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreaturePositionMove)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Thralsai.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreaturePositionMove[iSide]) == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Thralsai.trigger");
                local sidCreatureMove = listCreaturePositionMove[iSide][0];
                local itemCreatureMove = TTHCS_GLOBAL.geneUnitInfo(sidCreatureMove);
                local itemCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iSide][itemCreatureMove["UnitName"]];
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iUnitNumber = TTHCS_COMMON.ceil(itemCreatureBefore["UnitNumber"] * iHeroLevel * 0.01);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iUnitNumber = TTHCS_COMMON.ceil(iUnitNumber * (1 + 0.1 * TTHCS_GLOBAL.distance(itemCreatureMove, itemCreatureBefore)));
                end;
                TTHCS_THREAD.displace(sidCreatureMove, itemCreatureBefore["PosX"], itemCreatureBefore["PosY"]);
                local sidCreatureTarget = TTHCS_THREAD.summonCreature(iSide, itemCreatureMove["UnitType"], iUnitNumber, itemCreatureMove["PosX"], itemCreatureMove["PosY"]);
                if sidCreatureTarget ~= nil then
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    TCS_BATTLE.atb.record(sidCreatureTarget, TCS_ENUM.Atb.max);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                end;
              end;
            end;
          end;
        end;

      -- Agbeth 070 阿格贝斯
        TCS_FUNC.Talent.Agbeth = {};
        TCS_FUNC.Talent.Agbeth.strHero = "Agbeth";
        TCS_FUNC.Talent.Agbeth.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Agbeth.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local arrCreatureTarget = {};
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                  if length(listCreatureNumberDecrease[iOppositeSide]) == 1 then
                    push(arrCreatureTarget, listCreatureNumberDecrease[iOppositeSide][0]);
                  end;
                else
                  arrCreatureTarget = listCreatureNumberDecrease[iOppositeSide];
                end;
                if length(arrCreatureTarget) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Agbeth.trigger");
                  for i, sidCreatureTarget in arrCreatureTarget do
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_LIGHTNING_BOLT, sidCreatureTarget, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Almegir 071 伊蓓丝
        TCS_FUNC.Talent.Almegir = {};
        TCS_FUNC.Talent.Almegir.strHero = "Almegir";
        TCS_FUNC.Talent.Almegir.trigger = function(iSide, itemUnit, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Almegir.strHero
              and itemHeroMana[iSide] < 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Almegir.trigger");
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iManaPoint = 1 + TTHCS_COMMON.floor(iHeroLevel / 6);
              TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
            end;
          end;
        end;

      -- Kastore 073 卡斯托雷
        TCS_FUNC.Talent.Kastore = {};
        TCS_FUNC.Talent.Kastore.strHero = "Kastore";
        TCS_FUNC.Talent.Kastore.check = function(strHero, iSkillId)
          local bCheck = nil;
          if strHero == TCS_FUNC.Talent.Kastore.strHero
            and (
              iSkillId == TCS_VARI.Info.HeroTalent[strHero]
              or iSkillId == TCS_VARI.Info.HeroUpgradeMastery[strHero]
              or iSkillId == TCS_VARI.Info.HeroUpgradeShantiri[strHero]
            ) then
            bCheck = not nil;
          end;
          return bCheck;
        end;
        TCS_FUNC.Talent.Kastore.genePosition = function()
          local itemPosition = {};
          local iBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
          if iBattleFieldSize == TTHCS_ENUM.BattleEffectFieldSmall then
            itemPosition["PosX"] = TTHCS_COMMON.getRandom(6) + 5;
            itemPosition["PosY"] = TTHCS_COMMON.getRandom(10) + 1;
          else
            itemPosition["PosX"] = TTHCS_COMMON.getRandom(6) + 7;
            itemPosition["PosY"] = TTHCS_COMMON.getRandom(14) + 1;
          end;
          return itemPosition;
        end;
        TCS_FUNC.Talent.Kastore.buff = function(iSide, sidCreature)
          local sidHero = GetHero(iSide);
          local strHero = GetHeroName(sidHero);
          local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
          local iCreatureNumber = iHeroLevel;
          if TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_ENCOURAGE) then
            TCS_BATTLE.atb.record(sidCreature, TCS_ENUM.Atb.min + 0.33);
            ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectEncourage"], sidCreature, 5);
          end;
          if TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_MASTER_OF_ANIMATION) then
            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_DUNGEON_TOOL_KASTORE, iCreatureNumber, SPELL_REGENERATION, sidCreature, TCS_ENUM.Switch.No);
            ShowFlyingSign(TTH_TABLE.Spell[SPELL_REGENERATION]["Text"], sidCreature, 5);
          end;
          if TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_RUNIC_ARMOR) then
            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_DUNGEON_TOOL_KASTORE, iCreatureNumber, SPELL_CELESTIAL_SHIELD, sidCreature, TCS_ENUM.Switch.No);
            ShowFlyingSign(TTH_TABLE.Spell[SPELL_CELESTIAL_SHIELD]["Text"], sidCreature, 5);
          end;
        end;
        TCS_FUNC.Talent.Kastore.Encourage = {};
        TCS_FUNC.Talent.Kastore.Encourage.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_ENCOURAGE) then
              if itemUnitLast ~= nil
                and length(listCreatureStatusSummon[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.Encourage.trigger");
                for i, sidCreature in listCreatureStatusSummon[iSide] do
                  TCS_BATTLE.atb.record(sidCreature, TCS_ENUM.Atb.min + 0.33);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectEncourage"], sidCreature, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.masterOfQuakes = {};
        TCS_FUNC.Talent.Kastore.masterOfQuakes.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Kastore.masterOfQuakes.first = function(iSide, itemUnit)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_MASTER_OF_QUAKES) then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Kastore.masterOfQuakes.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Kastore.masterOfQuakes.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.masterOfQuakes.first");
                  local itemPosition = TCS_FUNC.Talent.Kastore.genePosition();
                  TTHCS_THREAD.cast.area.impl(sidHero, SPELL_LAND_MINE, itemPosition["PosX"], itemPosition["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.fireAffinity = {};
        TCS_FUNC.Talent.Kastore.fireAffinity.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Kastore.fireAffinity.first = function(iSide, itemUnit)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_FIRE_AFFINITY) then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Kastore.fireAffinity.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Kastore.fireAffinity.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.fireAffinity.first");
                  local sidCreature = TTHCS_THREAD.castGlobalSpell4Mana4Creature(iSide, sidHero, SPELL_SUMMON_ELEMENTALS, TCS_ENUM.Switch.Yes);

                  local itemUnitLastTemp = itemUnit;
                  local itemHeroManaTemp = {};
                  itemHeroManaTemp[iSide] = TCS_ENUM.Snapshot.Hero.Mana.Decrease;
                  local listCreatureStatusSummonTemp = {};
                  listCreatureStatusSummonTemp[iSide] = {};
                  push(listCreatureStatusSummonTemp[iSide], sidCreature);
                  local listCreatureStatusDeathTemp = {};
                  listCreatureStatusDeathTemp[iSide] = {};

                  -- HERO_SKILL_FIRE_AFFINITY 097 元素勇士
                    TCS_FUNC.Skill.FireAffinity.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureStatusSummonTemp, listCreatureStatusDeathTemp);

                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.masterOfAnimation = {};
        TCS_FUNC.Talent.Kastore.masterOfAnimation.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_MASTER_OF_ANIMATION) then
              if itemUnitLast ~= nil
                and length(listCreatureStatusSummon[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.masterOfAnimation.trigger");
                for i, sidCreature in listCreatureStatusSummon[iSide] do
                  local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                  local iCreatureNumber = iHeroLevel;
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_DUNGEON_TOOL_KASTORE, iCreatureNumber, SPELL_REGENERATION, sidCreature, TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTH_TABLE.Spell[SPELL_REGENERATION]["Text"], sidCreature, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.runicArmor = {};
        TCS_FUNC.Talent.Kastore.runicArmor.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_RUNIC_ARMOR) then
              if itemUnitLast ~= nil
                and length(listCreatureStatusSummon[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.runicArmor.trigger");
                for i, sidCreature in listCreatureStatusSummon[iSide] do
                  local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                  local iCreatureNumber = iHeroLevel;
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_DUNGEON_TOOL_KASTORE, iCreatureNumber, SPELL_CELESTIAL_SHIELD, sidCreature, TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTH_TABLE.Spell[SPELL_CELESTIAL_SHIELD]["Text"], sidCreature, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.masterOfIce = {};
        TCS_FUNC.Talent.Kastore.masterOfIce.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_MASTER_OF_ICE) then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.masterOfIce.start");
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureNumber = iHeroLevel;
              local itemPosition = TCS_FUNC.Talent.Kastore.genePosition();
              local sidCreature = TTHCS_THREAD.summonCreature(iSide, CREATURE_WATER_ELEMENTAL, iCreatureNumber, itemPosition["PosX"], itemPosition["PosY"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectMasterOfIce"], sidCreature, 5);
              TCS_FUNC.Summon.trigger(iSide, sidCreature);
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.masterOfFire = {};
        TCS_FUNC.Talent.Kastore.masterOfFire.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_MASTER_OF_FIRE) then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.masterOfFire.start");
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureNumber = iHeroLevel;
              local itemPosition = TCS_FUNC.Talent.Kastore.genePosition();
              local sidCreature = TTHCS_THREAD.summonCreature(iSide, CREATURE_FIRE_ELEMENTAL, iCreatureNumber, itemPosition["PosX"], itemPosition["PosY"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectMasterOfFire"], sidCreature, 5);
              TCS_FUNC.Summon.trigger(iSide, sidCreature);
            end;
          end;
        end;
        TCS_FUNC.Talent.Kastore.masterOfLightnings = {};
        TCS_FUNC.Talent.Kastore.masterOfLightnings.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Kastore.strHero
              and TCS_FUNC.Talent.Kastore.check(strHero, HERO_SKILL_MASTER_OF_LIGHTNINGS) then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kastore.masterOfLightnings.start");
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureNumber = iHeroLevel;
              local itemPosition = TCS_FUNC.Talent.Kastore.genePosition();
              local sidCreature = TTHCS_THREAD.summonCreature(iSide, CREATURE_AIR_ELEMENTAL, iCreatureNumber, itemPosition["PosX"], itemPosition["PosY"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectMasterOfLightnings"], sidCreature, 5);
              TCS_FUNC.Summon.trigger(iSide, sidCreature);
            end;
          end;
        end;

      -- Sephinroth 076 萨费罗斯
        TCS_FUNC.Talent.Sephinroth = {};
        TCS_FUNC.Talent.Sephinroth.strHero = "Sephinroth";
        TCS_FUNC.Talent.Sephinroth.kill = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Sephinroth.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreatureStatusDeath[iOppositeSide]) == 1
                and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRE_AFFINITY] == CREATURE_EARTH_ELEMENTAL then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sephinroth.trigger");
                local sidCreatureTarget = listCreatureStatusDeath[iOppositeSide][0];
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iCreatureNumber = 1 + TTHCS_COMMON.floor(iHeroLevel / 15);
                TTHCS_THREAD.summonCreature(iSide, CREATURE_EARTH_ELEMENTAL, iCreatureNumber, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"]);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Sephinroth.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Sephinroth.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreatureNumberDecrease[iOppositeSide]) == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sephinroth.trigger");
                local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][0];
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                TTHCS_THREAD.cast.spellSpawn.arcaneCrystal(sidHero, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
              end;
            end;
          end;
        end;

    -- Necropolis
      -- LordHaart 077 罗德·哈特
        TCS_FUNC.Talent.LordHaart = {};
        TCS_FUNC.Talent.LordHaart.strHero = "LordHaart";
        TCS_FUNC.Talent.LordHaart.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.LordHaart.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
            then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.LordHaart.start");
              local arrCreatureTarget = GetCreatures(iOppositeSide);
              for i, sidCreatureTarget in arrCreatureTarget do
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                TTHCS_THREAD.attack8Tool(iSide, CREATURE_NECROMANCY_TOOL_LORDHAART, 1, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], sidCreatureTarget, 1);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;

      -- Gles 079 卡斯帕
        TCS_FUNC.Talent.Gles = {};
        TCS_FUNC.Talent.Gles.strHero = "Gles";
        TCS_FUNC.Talent.Gles.arrCreatureIncrease = {};
        TCS_FUNC.Talent.Gles.arrCreatureDecrease = {};
        TCS_FUNC.Talent.Gles.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gles.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if length(TCS_FUNC.Talent.Gles.arrCreatureIncrease) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gles.move.increase");
                  for i, sidCreatureIncrease in TCS_FUNC.Talent.Gles.arrCreatureIncrease do
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_CELESTIAL_SHIELD, sidCreatureIncrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                  TCS_FUNC.Talent.Gles.arrCreatureIncrease = {};
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
                if length(TCS_FUNC.Talent.Gles.arrCreatureDecrease) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gles.move.decrease");
                  for i, sidCreatureDecrease in TCS_FUNC.Talent.Gles.arrCreatureDecrease do
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_SORROW, sidCreatureDecrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                  TCS_FUNC.Talent.Gles.arrCreatureDecrease = {};
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Gles.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberIncrease, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gles.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitType"] == TTH_ENUM.WarmachineFirstAidTent then
                if length(listCreatureNumberIncrease[iSide]) > 0 then
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    for i, sidCreatureIncrease in listCreatureNumberIncrease[iSide] do
                      push(TCS_FUNC.Talent.Gles.arrCreatureIncrease, sidCreatureIncrease);
                    end;
                  else
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gles.trigger.increase");
                    for i, sidCreatureIncrease in listCreatureNumberIncrease[iSide] do
                      TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_CELESTIAL_SHIELD, sidCreatureIncrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
                if length(listCreatureNumberDecrease[iOppositeSide]) > 0
                  and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                      push(TCS_FUNC.Talent.Gles.arrCreatureDecrease, sidCreatureDecrease);
                    end;
                  else
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gles.trigger.decrease");
                    for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                      TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_SORROW, sidCreatureDecrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Straker 081 奥森
        TCS_FUNC.Talent.Straker = {};
        TCS_FUNC.Talent.Straker.strHero = "Straker";
        TCS_FUNC.Talent.Straker.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Straker.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Straker.trigger");
                local arrCreatureTarget = GetCreatures(iOppositeSide);
                local iTimes = 1;
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  iTimes = iTimes + 1;
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iTimes = iTimes + 1;
                end;
                for i, sidCreatureTarget in arrCreatureTarget do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  TTHCS_THREAD.attack8Tool(iSide, CREATURE_NECROMANCY_TOOL, 1, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], sidCreatureTarget, iTimes);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Tamika 082 卢克雷蒂娅
        TCS_FUNC.Talent.Tamika = {};
        TCS_FUNC.Talent.Tamika.strHero = "Tamika";
        TCS_FUNC.Talent.Tamika.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Tamika.strHero;
          if 1 == 1
            and sidHero ~= nil
            and GetHeroName(sidHero) == strHero
            and itemUnitLast ~= nil
            and itemUnitLast["Side"] == iSide
            and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and length(listCreatureNumberDecrease[iOppositeSide]) == 1
            and contains(listCreatureNumberDecrease[iSide], itemUnitLast["UnitName"]) == nil
          then
            local sidCreatureDecrease = listCreatureNumberDecrease[iOppositeSide][0];
            if TTHCS_GLOBAL.isNearBy4Creature(itemUnitLast["UnitName"], sidCreatureDecrease) == TCS_ENUM.Switch.Yes then
              local itemCreatureDecrease = TTHCS_GLOBAL.geneUnitInfo(sidCreatureDecrease);
              local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureDecrease, 1, iSide, TCS_ENUM.Switch.No);
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_VAMPIRE) then
                local arrCreatureCaster = {};
                for i, sidCreatureNearBy in arrCreatureNearBy do
                  local itemCreatureNearBy = TTHCS_GLOBAL.geneUnitInfo(sidCreatureNearBy);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreatureNearBy, CREATURE_VAMPIRE) == nil then
                    push(arrCreatureCaster, sidCreatureNearBy);
                  end;
                end;
                if length(arrCreatureCaster) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Tamika.trigger.vampire");
                  for i, sidCreatureCaster in arrCreatureCaster do
                    TTHCS_THREAD.attack(sidCreatureCaster, sidCreatureDecrease);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
              if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_VAMPIRE) == nil then
                local arrCreatureCaster = {};
                for i, sidCreatureNearBy in arrCreatureNearBy do
                  local itemCreatureNearBy = TTHCS_GLOBAL.geneUnitInfo(sidCreatureNearBy);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreatureNearBy, CREATURE_VAMPIRE) then
                    push(arrCreatureCaster, sidCreatureNearBy);
                  end;
                end;
                if length(arrCreatureCaster) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Tamika.trigger.notVampire");
                  for i, sidCreatureCaster in arrCreatureCaster do
                    TTHCS_THREAD.attack(sidCreatureCaster, sidCreatureDecrease);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Xerxon 083 塞尔克松
        TCS_FUNC.Talent.Xerxon = {};
        TCS_FUNC.Talent.Xerxon.strHero = "Xerxon";
        TCS_FUNC.Talent.Xerxon.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreaturePositionMove)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Xerxon.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreaturePositionMove[iSide]) == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Xerxon.trigger");
                local sidCreatureMove = listCreaturePositionMove[iSide][0];
                local itemCreatureMove = TTHCS_GLOBAL.geneUnitInfo(sidCreatureMove);
                local itemCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iSide][itemCreatureMove["UnitName"]];
                local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureBefore, 1, iSide, TCS_ENUM.Switch.No);
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                for i, sidCreatureNearBy in arrCreatureNearBy do
                  if sidCreatureNearBy ~= sidCreatureMove then
                    local itemCreatureNearBy = TTHCS_GLOBAL.geneUnitInfo(sidCreatureNearBy);
                    local iNewPosX = itemCreatureMove["PosX"] - itemCreatureBefore["PosX"] + itemCreatureNearBy["PosX"];
                    local iNewPosY = itemCreatureMove["PosY"] - itemCreatureBefore["PosY"] + itemCreatureNearBy["PosY"];
                    local bSuccess = TTHCS_THREAD.displace(sidCreatureNearBy, iNewPosX, iNewPosY);
                    if bSuccess then
                      if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                        -- TCS_FUNC.Continuous.increase(sidCreatureNearBy, iHeroLevel, itemUnitLast["UnitName"]);
                      end;
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                        TCS_BATTLE.atb.record(sidCreatureNearBy, TCS_ENUM.Atb.max);
                      end;
                    end;
                  end;
                end;
                if length(arrCreatureNearBy) > 0 then
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Aislinn 085 艾斯瑞
        TCS_FUNC.Talent.Aislinn = {};
        TCS_FUNC.Talent.Aislinn.strHero = "Aislinn";
        TCS_FUNC.Talent.Aislinn.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureStatusRevive, listCreatureNumberIncrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Aislinn.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and (
                  length(listCreatureStatusRevive[iSide]) > 0
                  or length(listCreatureNumberIncrease[iSide]) > 0
                ) then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Aislinn.trigger");
                for i, strCreatureCurrent in listCreatureStatusRevive[iSide] do
                  local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(strCreatureCurrent);
                  local iUnitNumber = itemCreatureCurrent["UnitNumber"];
                  TCS_BATTLE.atb.record(strCreatureCurrent, TCS_ENUM.Atb.max);
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                      TTHCS_THREAD.summonCreature(iSide, itemCreatureCurrent["UnitType"], iUnitNumber, itemCreatureCurrent["PosX"], itemCreatureCurrent["PosY"]);
                    else
                      iUnitNumber = 1;
                      TTHCS_THREAD.addCreature(iSide, itemCreatureCurrent["UnitType"], iUnitNumber, itemCreatureCurrent["PosX"], itemCreatureCurrent["PosY"]);
                    end;
                  end;
                end;
                for i, strCreatureCurrent in listCreatureNumberIncrease[iSide] do
                  local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(strCreatureCurrent);
                  local itemCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iSide][strCreatureCurrent];
                  local iUnitNumber = itemCreatureCurrent["UnitNumber"] - itemCreatureBefore["UnitNumber"];
                  TCS_BATTLE.atb.record(strCreatureCurrent, TCS_ENUM.Atb.max);
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                      TTHCS_THREAD.summonCreature(iSide, itemCreatureCurrent["UnitType"], iUnitNumber, itemCreatureCurrent["PosX"], itemCreatureCurrent["PosY"]);
                    else
                      iUnitNumber = 1;
                      TTHCS_THREAD.addCreature(iSide, itemCreatureCurrent["UnitType"], iUnitNumber, itemCreatureCurrent["PosX"], itemCreatureCurrent["PosY"]);
                    end;
                  end;
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Giovanni 087 乔瓦尼
        TCS_FUNC.Talent.Giovanni = {};
        TCS_FUNC.Talent.Giovanni.strHero = "Giovanni";
        TCS_FUNC.Talent.Giovanni.flag = TCS_ENUM.Switch.Yes;
        TCS_FUNC.Talent.Giovanni.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Giovanni.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                local arrCreatureTarget = {};
                local arrCreature = GetCreatures(iSide);
                for i, strCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(strCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_VAMPIRE) then
                    local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreature, 1, iSide, TCS_ENUM.Switch.No);
                    for j, strCreatureNearBy in arrCreatureNearBy do
                      if contains(arrCreatureTarget, strCreatureNearBy) == nil and strCreatureNearBy ~= strCreature then
                        push(arrCreatureTarget, strCreatureNearBy);
                      end;
                    end;
                  end;
                end;
                if length(arrCreatureTarget) > 0 then
                  if TCS_FUNC.Talent.Giovanni.flag == TCS_ENUM.Switch.Yes then
                    TCS_FUNC.Talent.Giovanni.flag = TCS_ENUM.Switch.No;
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Giovanni.move");
                    for i, sidCreatureTarget in arrCreatureTarget do
                      if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 0 then
                        TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_NECROMANCY_TOOL, 1, SPELL_VAMPIRISM, sidCreatureTarget, TCS_ENUM.Switch.No);
                      else
                        TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_VAMPIRISM, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                        if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                          TCS_BATTLE.atb.record(sidCreatureTarget, TCS_ENUM.Atb.max);
                        end;
                      end;
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                    end;
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Giovanni.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Giovanni.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Giovanni.charge");
                TCS_FUNC.Talent.Giovanni.flag = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;

      -- OrnellaNecro 088 欧尼拉
        TCS_FUNC.Talent.OrnellaNecro = {};
        TCS_FUNC.Talent.OrnellaNecro.strHero = "OrnellaNecro";
        TCS_FUNC.Talent.OrnellaNecro.flag = TCS_ENUM.Switch.Yes;
        TCS_FUNC.Talent.OrnellaNecro.arrNormalSpellId = { [0] = 210, [1] = 212, [2] = 215, [3] = 213 };
        TCS_FUNC.Talent.OrnellaNecro.arrSpecialSpellId = { [0] = 210, [1] = 212, [2] = 215, [3] = 213, [4] = 19 };
        TCS_FUNC.Talent.OrnellaNecro.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local sidHeroOpposite = GetHero(iOppositeSide);
          if sidHero ~= nil and sidHeroOpposite ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.OrnellaNecro.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.OrnellaNecro.flag == TCS_ENUM.Switch.Yes then
                  TCS_FUNC.Talent.OrnellaNecro.flag = TCS_ENUM.Switch.No;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.OrnellaNecro.move");
                  local arrSpellId = TCS_FUNC.Talent.OrnellaNecro.arrNormalSpellId;
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    arrSpellId = TCS_FUNC.Talent.OrnellaNecro.arrSpecialSpellId;
                  end;
                  local iRandomIndex = TTHCS_COMMON.getRandom(length(arrSpellId));
                  local iSpellId = arrSpellId[iRandomIndex];
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 0 then
                    TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_NECROMANCY_TOOL, 1, iSpellId, TCS_ENUM.Switch.No);
                  else
                    if iSpellId == SPELL_BLIND then
                      local arrCreatureTarget = GetCreatures(iOppositeSide);
                      for i, sidCreatureTarget in arrCreatureTarget do
                        TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No)
                      end;
                    else
                      TTHCS_THREAD.castGlobalSpell4Mana(sidHero, iSpellId, TCS_ENUM.Switch.No);
                    end;
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  end;
                  local arrSpellIdOpposite = TCS_FUNC.Talent.OrnellaNecro.arrNormalSpellId;
                  local iRandomIndexOpposite = TTHCS_COMMON.getRandom(length(arrSpellIdOpposite));
                  local iSpellIdOpposite = arrSpellIdOpposite[iRandomIndexOpposite];
                  TTHCS_THREAD.castGlobalSpell8Tool(iOppositeSide, CREATURE_NECROMANCY_TOOL, 1, iSpellIdOpposite, TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.OrnellaNecro.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.OrnellaNecro.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.OrnellaNecro.charge");
                TCS_FUNC.Talent.OrnellaNecro.flag = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;

      -- Nimbus 090 尼姆巴斯
        TCS_FUNC.Talent.Nimbus = {};
        TCS_FUNC.Talent.Nimbus.strHero = "Nimbus";
        TCS_FUNC.Talent.Nimbus.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureManaDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Nimbus.strHero then
              if itemHeroMana[iOppositeSide] < 0
                or length(listCreatureManaDecrease[iSide]) > 0
                or length(listCreatureManaDecrease[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Nimbus.trigger");
                local iStep = 8;
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  iStep = 4;
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iStep = 2;
                end;
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iRecoveryMana = TTHCS_COMMON.ceil(iHeroLevel / iStep);
                TTHCS_GLOBAL.recoveryHeroMana(sidHero, iRecoveryMana);
                -- TCS_FUNC.Continuous.increase(sidHero, iRecoveryMana, itemUnitLast["UnitName"]);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Mortarion 162 莫塔里安
        TCS_FUNC.Talent.Mortarion = {};
        TCS_FUNC.Talent.Mortarion.strHero = "Mortarion";
        TCS_FUNC.Talent.Mortarion.sidDeathShroud = "";
        TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff = {};
        TCS_FUNC.Talent.Mortarion.arrCreatureSpread = {};
        TCS_FUNC.Talent.Mortarion.bFlag = 0;
        TCS_FUNC.Talent.Mortarion.getLevel = function()
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          local iLevel = 0;
          local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
          local iLevel = TTHCS_COMMON.floor(iHeroLevel / 7);
          if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
            iLevel = iLevel + 1;
          end;
          if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
            iLevel = iLevel + 1;
          end;
          return iLevel;
        end;
        TCS_FUNC.Talent.Mortarion.getCreatureId = function()
          local iCreatureId = CREATURE_DEATHSHROUD_MORTARION_0;
          local iLevel = TCS_FUNC.Talent.Mortarion.getLevel();
          iCreatureId = iCreatureId + iLevel;
          return iCreatureId;
        end;
        -- 英雄特长-开场召唤
        TCS_FUNC.Talent.Mortarion.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.start");
            local objHero = TTHCS_GLOBAL.geneUnitInfo(sidHero);
            local iCreatureId = TCS_FUNC.Talent.Mortarion.getCreatureId();
            TCS_FUNC.Talent.Mortarion.sidDeathShroud = TTHCS_THREAD.summonCreature(iSide, iCreatureId, 7, objHero["PosX"], objHero["PosY"]);
            ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectSummon"], sidHero, 5);
          end;
        end;
        -- 英雄特长熟练-阵亡召唤
        TCS_FUNC.Talent.Mortarion.reSummon = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and itemUnit["UnitName"] == sidHero
            and TCS_FUNC.Talent.Mortarion.sidDeathShroud ~= ""
            and IsCombatUnit(TCS_FUNC.Talent.Mortarion.sidDeathShroud) == nil
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.reSummon");
            local objHero = TTHCS_GLOBAL.geneUnitInfo(sidHero);
            local iCreatureId = TCS_FUNC.Talent.Mortarion.getCreatureId();
            TCS_FUNC.Talent.Mortarion.sidDeathShroud = TTHCS_THREAD.summonCreature(iSide, iCreatureId, 7, objHero["PosX"], objHero["PosY"]);
            ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectSummon"], sidHero, 5);
          end;
        end;
        -- 英雄特长精通-瘟疫附带破甲
        TCS_FUNC.Talent.Mortarion.heroDebuff = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and itemUnit["UnitName"] == sidHero
            and TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff  ~= nil
            and length(TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff ) > 0
            and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.heroDebuff");
            for i, sidCreaturePlague in TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff  do
              local itemCreaturePlague = TTHCS_GLOBAL.geneUnitInfo(sidCreaturePlague);
              if 1 == 1
                and IsCombatUnit(sidCreaturePlague) ~= nil
                and itemCreaturePlague["UnitNumber"] > 0
              then
                if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_MASTER_OF_SICKNESS] == 1 then
                  TTHCS_THREAD.cast.area.impl(sidHero, SPELL_MASS_DISRUPTING_RAY, itemCreaturePlague["PosX"], itemCreaturePlague["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                else
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_DISRUPTING_RAY, sidCreaturePlague, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
              end;
            end;
            TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff  = {};
            TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
          end;
        end;
        -- 生物特长-1-瘟疫
        TCS_FUNC.Talent.Mortarion.plague = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and TCS_FUNC.Talent.Mortarion.sidDeathShroud ~= ""
            and IsCombatUnit(TCS_FUNC.Talent.Mortarion.sidDeathShroud) ~= nil
            and itemUnitLast["UnitName"] == TCS_FUNC.Talent.Mortarion.sidDeathShroud
            and TCS_FUNC.Talent.Mortarion.getLevel() >= 1
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.plague");
            local objCreature = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iLevel = TCS_FUNC.Talent.Mortarion.getLevel();
            local iCreatureNumber = 7 * iHeroLevel * iLevel;
            local arrCreatureTarget = TTHCS_GLOBAL.listUnitInArea(objCreature, 1, iOppositeSide, TCS_ENUM.Switch.No);
            for i, sidCreatureTarget in arrCreatureTarget do
              TTHCS_THREAD.debuff.trigger(iSide, CREATURE_NECROMANCY_TOOL_DEATHSHROUD_POISONOUS, iCreatureNumber, sidCreatureTarget);
            end;
            if length(arrCreatureTarget) > 0 then
              for i, sidCreatureTarget in arrCreatureTarget do
                if contains(TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff, sidCreatureTarget) == nil then
                  push(TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff, sidCreatureTarget);
                end;
                if contains(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, sidCreatureTarget) == nil then
                  push(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, sidCreatureTarget);
                end;
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectPlague"], sidHero, 5);
            end;
          end;
        end;
        -- 生物特长-0-原体护卫 生物特长-5-威慑
        TCS_FUNC.Talent.Mortarion.guard = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and TCS_FUNC.Talent.Mortarion.sidDeathShroud ~= ""
            and IsCombatUnit(TCS_FUNC.Talent.Mortarion.sidDeathShroud) ~= nil
            and TTHCS_GLOBAL.getDistance4Creature(sidHero, TCS_FUNC.Talent.Mortarion.sidDeathShroud) > 49
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.guard");
            local objHero = TTHCS_GLOBAL.geneUnitInfo(sidHero);
            local iCreatureId = TCS_FUNC.Talent.Mortarion.getCreatureId();
            local sidCreatureSlot = TTHCS_THREAD.summonCreature(iSide, CREATURE_NECROMANCY_TOOL_DEATHSHROUD_SLOT, 1, objHero["PosX"], objHero["PosY"]);
            local objCreatureSlot = TTHCS_GLOBAL.geneUnitInfo(sidCreatureSlot);
            TTHCS_THREAD.removeCreature(sidCreatureSlot);
            TTHCS_THREAD.displace(TCS_FUNC.Talent.Mortarion.sidDeathShroud, objCreatureSlot["PosX"], objCreatureSlot["PosY"]);
            if TCS_FUNC.Talent.Mortarion.getLevel() >= 5 then
              sleep(50);
              local objCreatureDeathShroud = TTHCS_GLOBAL.geneUnitInfo(TCS_FUNC.Talent.Mortarion.sidDeathShroud);
              local arrCreatureDeter = TTHCS_GLOBAL.listUnitInArea(objCreatureDeathShroud, 1, iOppositeSide, TCS_ENUM.Switch.No);
              for i, sidCreatureDeter in arrCreatureDeter do
                TCS_BATTLE.atb.record(sidCreatureDeter, TCS_ENUM.Atb.clear);
                ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectDeter"], sidCreatureDeter, 5);
              end;
            end;
            TCS_FUNC.Talent.Mortarion.bFlag = 1;
            ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectGuard"], sidHero, 5);
          end;
        end;
        -- 生物特长-0-原体护卫后下回合防御
        TCS_FUNC.Talent.Mortarion.defend = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and itemUnit["UnitName"] == TCS_FUNC.Talent.Mortarion.sidDeathShroud
            and TCS_FUNC.Talent.Mortarion.bFlag == 1
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.defend");
            TCS_FUNC.Talent.Mortarion.bFlag = 0;
            TTHCS_THREAD.defend(TCS_FUNC.Talent.Mortarion.sidDeathShroud);
            ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectGuard"], TCS_FUNC.Talent.Mortarion.sidDeathShroud, 5);
          end;
        end;
        -- 生物特长-3-凋零
        TCS_FUNC.Talent.Mortarion.wither = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and itemUnit["UnitName"] == TCS_FUNC.Talent.Mortarion.sidDeathShroud
            and TCS_FUNC.Talent.Mortarion.getLevel() >= 3
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.wither");
            local arrCreatureTarget = TTHCS_GLOBAL.listUnitInArea(itemUnit, 1, iOppositeSide, TCS_ENUM.Switch.No);
            for i, sidCreatureTarget in arrCreatureTarget do
              TTHCS_THREAD.cast.aimed.impl(itemUnit["UnitName"], SPELL_ABILITY_HARM_TOUCH, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
            end;
            if TCS_FUNC.Talent.Mortarion.bFlag == 0 then
              TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
            end;
            if length(arrCreatureTarget) > 0 then
              ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectWither"], TCS_FUNC.Talent.Mortarion.sidDeathShroud, 5);
            end;
          end;
        end;
        -- 生物特长-7-扩散
        TCS_FUNC.Talent.Mortarion.spread = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Mortarion.strHero;
          if 1 == 1
            and GetHero(iSide) ~= nil
            and GetHeroName(GetHero(iSide)) == strHero
            and contains(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, itemUnitLast["UnitName"])
            and TCS_FUNC.Talent.Mortarion.getLevel() >= 7
          then
            TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mortarion.spread");
            local objCreature = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iLevel = TCS_FUNC.Talent.Mortarion.getLevel();
            local iCreatureNumber = 7 * iHeroLevel * iLevel;
            local arrCreatureTarget = TTHCS_GLOBAL.listUnitInArea(objCreature, 1, iOppositeSide, TCS_ENUM.Switch.No);
            for i, sidCreatureTarget in arrCreatureTarget do
              if sidCreatureTarget ~= itemUnitLast["UnitName"] then
                TTHCS_THREAD.debuff.trigger(iSide, CREATURE_NECROMANCY_TOOL_DEATHSHROUD_POISONOUS, iCreatureNumber, sidCreatureTarget);
              end;
            end;
            if length(arrCreatureTarget) > 0 then
              for i, sidCreatureTarget in arrCreatureTarget do
                if contains(TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff, sidCreatureTarget) == nil then
                  push(TCS_FUNC.Talent.Mortarion.arrCreatureHeroDebuff, sidCreatureTarget);
                end;
                if contains(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, sidCreatureTarget) == nil then
                  push(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, sidCreatureTarget);
                end;
              end;
              local iIndex = index(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, itemUnitLast["UnitName"]);
              TCS_FUNC.Talent.Mortarion.arrCreatureSpread = pop(TCS_FUNC.Talent.Mortarion.arrCreatureSpread, iIndex);
              ShowFlyingSign(TTHCS_PATH["Talent"]["Mortarion"]["EffectSpread"], sidHero, 5);
            end;
          end;
        end;

      -- Muscip 091 纳蒂尔
        TCS_FUNC.Talent.Muscip = {};
        TCS_FUNC.Talent.Muscip.strHero = "Muscip";
        TCS_FUNC.Talent.Muscip.flag = {};
        TCS_FUNC.Talent.Muscip.after = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Muscip.strHero then
              if itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_MANES) then
                if TCS_FUNC.Talent.Muscip.flag[itemUnitLast["UnitName"]] == nil then
                  TCS_FUNC.Talent.Muscip.flag[itemUnitLast["UnitName"]] = TCS_ENUM.Switch.Yes;
                end;
                if TCS_FUNC.Talent.Muscip.flag[itemUnitLast["UnitName"]] == TCS_ENUM.Switch.Yes then
                  TCS_FUNC.Talent.Muscip.flag[itemUnitLast["UnitName"]] = TCS_ENUM.Switch.No;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Muscip.after");
                  local iManaSteal = 0;
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  for i, sidCreatureTarget in arrCreatureTarget do
                    if TTHCS_GLOBAL.checkCombatCreature(sidCreatureTarget) then
                      local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                      if itemCreatureTarget["CurrentMana"] >= 2 then
                        TTHCS_GLOBAL.setHeroMana(sidCreatureTarget, itemCreatureTarget["CurrentMana"] - 2);
                        iManaSteal = iManaSteal + 2;
                      elseif itemCreatureTarget["CurrentMana"] > 0 then
                        TTHCS_GLOBAL.setHeroMana(sidCreatureTarget, 0);
                        iManaSteal = iManaSteal + itemCreatureTarget["CurrentMana"];
                      end;
                    end;
                  end;
                  local sidHeroTarget = GetHero(iOppositeSide);
                  if sidHeroTarget ~= nil then
                    local itemHeroTarget = TTHCS_GLOBAL.geneUnitInfo(sidHeroTarget);
                    if itemHeroTarget["CurrentMana"] >= 2 then
                      TTHCS_GLOBAL.setHeroMana(sidHeroTarget, itemHeroTarget["CurrentMana"] - 2);
                      iManaSteal = iManaSteal + 2;
                    elseif itemHeroTarget["CurrentMana"] > 0 then
                      TTHCS_GLOBAL.setHeroMana(sidHeroTarget, 0);
                      iManaSteal = iManaSteal + itemHeroTarget["iMana"];
                    end;
                  end;
                  if iManaSteal > 0 then
                    TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaSteal);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Muscip.charge = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Muscip.strHero then
              if itemUnitLast ~= nil
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_MANES)
                and (
                  length(listCreatureNumberDecrease[iOppositeSide]) > 0
                  or length(listCreatureStatusDeath[iOppositeSide]) > 0
                ) then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Muscip.charge");
                TCS_FUNC.Talent.Muscip.flag[itemUnitLast["UnitName"]] = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Muscip.trigger = function(iSide, itemUnit, listCreatureStatusSummon)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Muscip.strHero then
              if length(listCreatureStatusSummon[iSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Muscip.trigger");
                local bCheck = TCS_ENUM.Switch.No;
                for i, sidCreature in listCreatureStatusSummon[iSide] do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_MANES) then
                    bCheck = TCS_ENUM.Switch.Yes;
                    TCS_BATTLE.atb.record(sidCreature, TCS_ENUM.Atb.max);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreature, 5);
                  end;
                end;
                if bCheck == TCS_ENUM.Switch.Yes and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Arantir 092 阿兰蒂尔
        TCS_FUNC.Talent.Arantir = {};
        TCS_FUNC.Talent.Arantir.strHero = "Arantir";
        TCS_FUNC.Talent.Arantir.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Arantir.sidCreature = "";
        TCS_FUNC.Talent.Arantir.move = function(iSide, itemUnit)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Arantir.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Arantir.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Arantir.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Arantir.move");
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_ABILITY_AVATAR_OF_DEATH, TCS_ENUM.Switch.Yes);
                    TCS_FUNC.Talent.Arantir.sidCreature = GetCreatures(iSide)[length(GetCreatures(iSide)) - 1];
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  end;
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                  and TTHCS_GLOBAL.checkCombatCreature(TCS_FUNC.Talent.Arantir.sidCreature) == nil then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Arantir.move");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_ABILITY_AVATAR_OF_DEATH, TCS_ENUM.Switch.Yes);
                  TCS_FUNC.Talent.Arantir.sidCreature = GetCreatures(iSide)[length(GetCreatures(iSide)) - 1];
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;

      -- Nemor 093 迪尔德丽
        TCS_FUNC.Talent.Nemor = {};
        TCS_FUNC.Talent.Nemor.strHero = "Nemor";
        TCS_FUNC.Talent.Nemor.after = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Nemor.strHero then
              if itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_WIGHT) then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Nemor.after");
                TTHCS_THREAD.castGlobalSpell5Mana(itemUnitLast["UnitName"], SPELL_ABILITY_DEATH_WAIL, TCS_ENUM.Switch.Yes);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Nemor.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Nemor.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
                and length(listCreatureNumberDecrease[iOppositeSide]) > 1
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Nemor.trigger");
                for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_SORROW, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Sandro 095 山德鲁
        TCS_FUNC.Talent.Sandro = {};
        TCS_FUNC.Talent.Sandro.strHero = "Sandro";
        TCS_FUNC.Talent.Sandro.flag = {};
        TCS_FUNC.Talent.Sandro.check = function(strHero, iSpellId)
          local bCheck = nil;
          if strHero == TCS_FUNC.Talent.Sandro.strHero
            and (
              iSpellId == TCS_VARI.Info.HeroTalent[strHero]
              or iSpellId == TCS_VARI.Info.HeroUpgradeMastery[strHero]
              or iSpellId == TCS_VARI.Info.HeroUpgradeShantiri[strHero]
            ) then
            bCheck = not nil;
          end;
          return bCheck;
        end;
        TCS_FUNC.Talent.Sandro.trigger = {};
        TCS_FUNC.Talent.Sandro.trigger.Resurrect = function(iSide, itemUnit, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if itemHeroMana[iSide] < 0
              and TCS_FUNC.Talent.Sandro.check(strHero, SPELL_RESURRECT) then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.Resurrect");
              local iManaPoint = 2;
              TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
            end;
          end;
        end;
        TCS_FUNC.Talent.Sandro.trigger.HolyWord = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if TCS_FUNC.Talent.Sandro.check(strHero, SPELL_HOLY_WORD) then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.HolyWord");
              local itemHero = TTHCS_GLOBAL.geneUnitInfo(sidHero);
              local iCurrentMana = itemHero["CurrentMana"];
              local iRecoveryMana = TTHCS_COMMON.ceil(iCurrentMana * 0.2);
              TTHCS_GLOBAL.setHeroMana(sidHero, iCurrentMana + iRecoveryMana);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;
        TCS_FUNC.Talent.Sandro.flag.hypnotize = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Sandro.trigger.Hypnotize = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Sandro.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
                and TCS_FUNC.Talent.Sandro.check(strHero, SPELL_HYPNOTIZE) then
                if TCS_FUNC.Talent.Sandro.flag.hypnotize == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Sandro.flag.hypnotize = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.Hypnotize");
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                  local strCreatureTarget = arrCreatureTarget[iRandomIndex];
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_HYPNOTIZE, strCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Sandro.trigger.Vampirism = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
              and TCS_FUNC.Talent.Sandro.check(strHero, SPELL_VAMPIRISM)
              and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.Vampirism");
              TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_VAMPIRISM, itemUnitLast["UnitName"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;
        TCS_FUNC.Talent.Sandro.flag.conjurePhoenix = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Sandro.trigger.ConjurePhoenix = function(iSide, itemUnit)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Sandro.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
                and TCS_FUNC.Talent.Sandro.check(strHero, SPELL_CONJURE_PHOENIX) then
                if TCS_FUNC.Talent.Sandro.flag.conjurePhoenix == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Sandro.flag.conjurePhoenix = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.ConjurePhoenix");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_CONJURE_PHOENIX, TCS_ENUM.Switch.No);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Sandro.trigger.Armageddon = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
              and itemHeroMana[iSide] < 0
              and TCS_FUNC.Talent.Sandro.check(strHero, SPELL_ARMAGEDDON)
              and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.Armageddon");
              -- TCS_FUNC.Continuous.increase(sidHero, 8, itemUnitLast["UnitName"]);
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;
        TCS_FUNC.Talent.Sandro.trigger.DeepFreeze = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
              and itemHeroMana[iSide] < 0
              and TCS_FUNC.Talent.Sandro.check(strHero, SPELL_DEEP_FREEZE)
              and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Sandro.trigger.DeepFreeze");
              local iRandomIndex = TTHCS_COMMON.getRandom(length(listCreatureNumberDecrease[iOppositeSide]));
              local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][iRandomIndex];
              local iSpellId = SPELL_DEEP_FREEZE;
              local iFinalSpellId = iSpellId;
              local bCheckEmpowered = TCS_FUNC.Append.checkEmpowered(sidHero);
              if bCheckEmpowered == TCS_ENUM.Switch.Yes then
                iFinalSpellId = TTH_TABLE.Spell[iSpellId]["Empowered"];
              end;
              local bCheckMana = TCS_FUNC.Append.checkMana(sidHero);
              if bCheckMana == TCS_ENUM.Switch.Yes then
                TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
              else
                TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;

      -- Thant 096 山特
        TCS_FUNC.Talent.Thant = {};
        TCS_FUNC.Talent.Thant.strHero = "Thant";
        TCS_FUNC.Talent.Thant.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureManaDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Thant.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitType"] == CREATURE_MUMMY
                and length(listCreatureManaDecrease[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Thant.trigger");
                local iRecoveryMana = 2;
                for i, sidCreature in listCreatureManaDecrease[iSide] do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if itemCreature["UnitType"] == CREATURE_MUMMY then
                    TTHCS_GLOBAL.recoveryHeroMana(sidHero, iRecoveryMana);
                  end;
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Vidomina 097 维德尼娜
        TCS_FUNC.Talent.Vidomina = {};
        TCS_FUNC.Talent.Vidomina.strHero = "Vidomina";
        TCS_FUNC.Talent.Vidomina.trigger = function(iSide, itemUnit, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vidomina.strHero then
              if length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vidomina.trigger");
                for i, sidCreatureTarget in listCreatureStatusDeath[iOppositeSide] do
                  local iCurrentMana = GetUnitManaPoints(sidHero);
                  if iCurrentMana > 0 then
                    local itemCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iOppositeSide][sidCreatureTarget];
                    local itemCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iOppositeSide][sidCreatureTarget];
                    local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                    local iCreatureNumber = TTHCS_COMMON.ceil(itemCreatureInit["UnitNumber"] * iHeroLevel * 0.01);
                    if iCurrentMana < iCreatureNumber then
                      iCreatureNumber = iCurrentMana;
                    end;
                    TTHCS_GLOBAL.setHeroMana(sidHero, iCurrentMana - iCreatureNumber);
                    local sidCreatureRevive = "";
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                      sidCreatureRevive = TTHCS_THREAD.summonCreature(iSide, itemCreatureBefore["UnitType"], iCreatureNumber, itemCreatureBefore["PosX"], itemCreatureBefore["PosY"]);
                    else
                      iCreatureNumber = 1;
                      sidCreatureRevive = TTHCS_THREAD.addCreature(iSide, itemCreatureBefore["UnitType"], iCreatureNumber, itemCreatureBefore["PosX"], itemCreatureBefore["PosY"]);
                    end
                    if sidCreatureRevive ~= nil then
                      if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                        TCS_BATTLE.atb.record(sidCreatureRevive, TCS_ENUM.Atb.max);
                      end;
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureRevive, 5);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

    -- Inferno
      -- Calh 099 艾丹
        TCS_FUNC.Talent.Calh = {};
        TCS_FUNC.Talent.Calh.strHero = "Calh";
        TCS_FUNC.Talent.Calh.trigger = function(iSide, itemUnit, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Calh.strHero then
              if length(listCreatureStatusDeath[iSide]) > 0
                or length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iCreatureNumber = TTHCS_COMMON.ceil(iHeroLevel / 5);
                local listCreatureDeath = {};
                for i, sidCreatureDeath in listCreatureStatusDeath[iSide] do
                  local itemCreatureDeath = TTHCS_GLOBAL.geneUnitInfo(sidCreatureDeath);
                  if TTH_TABLE.Creature[itemCreatureDeath["UnitType"]]["Race"] == TOWN_INFERNO then
                    push(listCreatureDeath, itemCreatureDeath);
                  end;
                end
                for i, sidCreatureDeath in listCreatureStatusDeath[iOppositeSide] do
                  local itemCreatureDeath = TTHCS_GLOBAL.geneUnitInfo(sidCreatureDeath);
                  if TTH_TABLE.Creature[itemCreatureDeath["UnitType"]]["Race"] == TOWN_INFERNO then
                    push(listCreatureDeath, itemCreatureDeath);
                  end;
                end
                if length(listCreatureDeath) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Calh.trigger");
                  for i, itemCreatureDeath in listCreatureDeath do
                    local iLenBefore = length(GetCreatures(iSide));
                    local iLenAfter = iLenBefore;
                    TTHCS_THREAD.castAimedSpell8Tool4Body(iSide, CREATURE_INFERNO_TOOL, iCreatureNumber, SPELL_ABILITY_SUMMON_BALOR, itemCreatureDeath["UnitName"], TCS_ENUM.Switch.No);
                    local iTimes = 1;
                    repeat
                      sleep(10);
                      iTimes = iTimes + 1;
                      iLenAfter = length(GetCreatures(iSide));
                    until iLenAfter > iLenBefore or iTimes > 10;
                    if iTimes <= 10 then
                      local sidCreatureSummon = GetCreatures(iSide)[iLenAfter - 1];
                      if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                        local itemCreatureSummon = TTHCS_GLOBAL.geneUnitInfo(sidCreatureSummon);
                        local arrCreatureTarget = TTHCS_GLOBAL.listUnitInArea(itemCreatureSummon, 1, iOppositeSide, TCS_ENUM.Switch.Yes);
                        for j, sidCreatureTarget in arrCreatureTarget do
                          TTHCS_THREAD.attack(sidCreatureSummon, sidCreatureTarget);
                        end;
                      end;
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                        TCS_BATTLE.atb.record(sidCreatureSummon, TCS_ENUM.Atb.max);
                      end;
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Calid 100 格劳尔
        TCS_FUNC.Talent.Calid = {};
        TCS_FUNC.Talent.Calid.strHero = "Calid";
        TCS_FUNC.Talent.Calid.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, iTriggerCount)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Calid.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                local listCreatureCaster = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_HELL_HOUND) then
                    push(listCreatureCaster, itemCreature);
                  end;
                end;
                listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
                if length(listCreatureCaster) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Calid.trigger");
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    listCreatureCaster = { [0] = listCreatureCaster[0] };
                  end;
                  for i, itemCreatureCaster in listCreatureCaster do
                    local iSuccessCount = 0;
                    for j, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                      if iSuccessCount < iTriggerCount then
                        local bCheck = TTHCS_THREAD.attack8CheckPosition(iSide, itemCreatureCaster["UnitName"], sidCreatureTarget);
                        if bCheck then
                          iSuccessCount = iSuccessCount + 1;
                        end;
                      end;
                    end;
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      TCS_BATTLE.atb.record(itemCreatureCaster["UnitName"], TCS_ENUM.Atb.max);
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Deleb 101 迪里布
        TCS_FUNC.Talent.Deleb = {};
        TCS_FUNC.Talent.Deleb.strHero = "Deleb";
        TCS_FUNC.Talent.Deleb.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Deleb.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local arrWarMachine = GetWarMachines(iSide);
                if length(arrWarMachine) > 0 then
                  for i, sidWarMachine in arrWarMachine do
                    local itemWarMachine = TTHCS_GLOBAL.geneUnitInfo(sidWarMachine);
                    if itemWarMachine["UnitType"] == TTH_ENUM.WarmachineBallista then
                      TTHCS_GLOBAL.print("TCS_FUNC.Talent.Deleb.trigger");
                      for j, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                        TTHCS_THREAD.shoot(sidWarMachine, sidCreatureTarget);
                        if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                          TCS_BATTLE.atb.record(sidWarMachine, TCS_ENUM.Atb.max);
                        end;
                      end;
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Orlando2 104 奥兰多
        TCS_FUNC.Talent.Orlando2 = {};
        TCS_FUNC.Talent.Orlando2.strHero = "Orlando2";
        TCS_FUNC.Talent.Orlando2.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Orlando2.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Orlando2.trigger");
                local iCreatureId = CREATURE_INFERNO_TOOL_Orlando2_AbilityUpgradeMastery;
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  iCreatureId = CREATURE_INFERNO_TOOL_Orlando2_AbilityUpgradeShantiri;
                end;
                for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                  TTHCS_THREAD.debuff.trigger(iSide, iCreatureId, 1, sidCreatureTarget);
                  TCS_BATTLE.atb.record(sidCreatureTarget, TCS_ENUM.Atb.min);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Efion 105 阿莱斯特
        TCS_FUNC.Talent.Efion = {};
        TCS_FUNC.Talent.Efion.strHero = "Efion";
        TCS_FUNC.Talent.Efion.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, iTriggerCount, bDemonicRetaliation)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Efion.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Efion.trigger");
                for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                  if bDemonicRetaliation then
                    TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_INFERNO_TOOL_Efion_Expert, 45, SPELL_FORGETFULNESS, sidCreatureTarget, TCS_ENUM.Switch.No);
                  else
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_FORGETFULNESS, sidCreatureTarget, 0, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                end;
                local listCreatureCaster = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_DEMON) then
                    push(listCreatureCaster, itemCreature);
                  end;
                end;
                listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
                if length(listCreatureCaster) > 0 then
                  local iSuccessCount = 0;
                  local itemCreatureCaster = listCreatureCaster[0];
                  local bBuff = nil;
                  for j, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                    local bCheck = TTHCS_THREAD.cast.aimed.leap.check(iSide, itemCreatureCaster["UnitName"], sidCreatureTarget);
                    if bCheck then
                      if bBuff == nil then
                        bBuff = not nil;
                        if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                          if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_INFERNO_TOOL_Efion_Basic, 45, SPELL_BLESS, itemCreatureCaster["UnitName"], TCS_ENUM.Switch.No);
                            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_INFERNO_TOOL_Efion_Basic, 45, SPELL_BLOODLUST, itemCreatureCaster["UnitName"], TCS_ENUM.Switch.No);
                          else
                            -- 33P的生物施放 专家魔法 45 1周产
                            TTHCS_THREAD.castAimedSpell8Tool(iOppositeSide, CREATURE_INFERNO_TOOL_Efion_Expert, 45, SPELL_BERSERK, itemCreatureCaster["UnitName"], TCS_ENUM.Switch.No);
                            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_INFERNO_TOOL_Efion_Expert, 45, SPELL_BLESS, itemCreatureCaster["UnitName"], TCS_ENUM.Switch.No);
                            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_INFERNO_TOOL_Efion_Expert, 45, SPELL_BLOODLUST, itemCreatureCaster["UnitName"], TCS_ENUM.Switch.No);
                          end;
                        end;
                      end;
                      if iSuccessCount < iTriggerCount then
                        local bCheck = TTHCS_THREAD.cast.aimed.leap.impl(iSide, itemCreatureCaster["UnitName"], sidCreatureTarget);
                        if bCheck then
                          iSuccessCount = iSuccessCount + 1;
                        end;
                      else
                        break;
                      end;
                    end;
                  end;
                  if iSuccessCount > 0 then
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      TCS_BATTLE.atb.record(itemCreatureCaster["UnitName"], TCS_ENUM.Atb.max);
                    end;
                    if bDemonicRetaliation ~= nil then
                      TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                    end;
                  else
                    if TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] == TCS_ENUM.Switch.No then
                      TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] = TCS_ENUM.Switch.Yes
                    end;
                  end;
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Grok 106 格洛克
        TCS_FUNC.Talent.Grok = {};
        TCS_FUNC.Talent.Grok.strHero = "Grok";
        TCS_FUNC.Talent.Grok.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreaturePositionMove)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Grok.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreaturePositionMove[iSide]) == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Grok.trigger");
                local sidCreatureMove = listCreaturePositionMove[iSide][0];
                local itemCreatureMove = TTHCS_GLOBAL.geneUnitInfo(sidCreatureMove);
                if TTH_TABLE.Creature[itemCreatureMove["UnitType"]]["Race"] == TOWN_INFERNO then
                  local itemCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iSide][itemCreatureMove["UnitName"]];
                  TTHCS_THREAD.castAreaSpell8Tool4Body(iSide, itemCreatureMove["UnitType"], itemCreatureMove["UnitNumber"], SPELL_ABILITY_GATING, itemCreatureBefore["PosX"], itemCreatureBefore["PosY"], TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Grok.gating = function(iSide, itemUnit, listCreatureStatusGating)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Grok.strHero then
              if length(listCreatureStatusGating[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Grok.gating");
                for i, sidCreatureSummon in listCreatureStatusGating[iSide] do
                  local itemCreatureSummon = TTHCS_GLOBAL.geneUnitInfo(sidCreatureSummon);
                  if TTH_TABLE.Creature[itemCreatureSummon["UnitType"]]["Race"] == TOWN_INFERNO then
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                        TCS_BATTLE.atb.record(sidCreatureSummon, TCS_ENUM.Atb.mid);
                      else
                        TCS_BATTLE.atb.record(sidCreatureSummon, TCS_ENUM.Atb.max);
                      end;
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureSummon, 5);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Malustar 107 马鲁斯塔
        TCS_FUNC.Talent.Malustar = {};
        TCS_FUNC.Talent.Malustar.strHero = "Malustar";
        TCS_FUNC.Talent.Malustar.gating = function(iSide, itemUnit, listCreatureStatusGating)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Malustar.strHero then
              if length(listCreatureStatusGating) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Malustar.gating");
                for i, sidSummon in listCreatureStatusGating[iSide] do
                  local itemSummon = TTHCS_GLOBAL.geneUnitInfo(sidSummon);
                  if contains(TCS_FUNC.Skill.FireAffinity.enumElementCreatureId, itemSummon["UnitType"]) == nil then
                    local iAppointedSummonId = CREATURE_FIRE_ELEMENTAL;
                    if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRE_AFFINITY] > 0 then
                      iAppointedSummonId = TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRE_AFFINITY];
                    end;
                    local iCreatureNumber = 1;
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                      iCreatureNumber = iHeroLevel;
                    end;
                    TTHCS_THREAD.summonCreature(iSide, iAppointedSummonId, iCreatureNumber, itemSummon["PosX"], itemSummon["PosY"]);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidSummon, 5);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Oddrema 109 耶泽蓓丝
        TCS_FUNC.Talent.Oddrema = {};
        TCS_FUNC.Talent.Oddrema.strHero = "Oddrema";
        TCS_FUNC.Talent.Oddrema.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Oddrema.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                local listCreatureCaster = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_SUCCUBUS) then
                    push(listCreatureCaster, itemCreature);
                  end;
                end;
                listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
                if length(listCreatureCaster) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Oddrema.trigger");
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                    listCreatureCaster = { [0] = listCreatureCaster[0] };
                  end;
                  for i, itemCreatureCaster in listCreatureCaster do
                    for j, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                      TTHCS_THREAD.shoot(itemCreatureCaster["UnitName"], sidCreatureTarget);
                      if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                        TCS_BATTLE.atb.record(itemCreatureCaster["UnitName"], TCS_ENUM.Atb.max);
                      end;
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Ash 113 艾许
        TCS_FUNC.Talent.Ash = {};
        TCS_FUNC.Talent.Ash.strHero = "Ash";
        TCS_FUNC.Talent.Ash.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Ash.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iOppositeSide
                and length(listCreatureStatusDeath[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Ash.trigger");
                local itemUnitLastCurrent = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                  TTHCS_THREAD.cast.area.impl(sidHero, SPELL_FIREBALL, itemUnitLastCurrent["PosX"], itemUnitLastCurrent["PosY"], TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                else
                  TTHCS_THREAD.cast.area.impl(sidHero, SPELL_FIREBALL, itemUnitLastCurrent["PosX"], itemUnitLastCurrent["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                end;
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  TCS_BATTLE.atb.record(itemUnitLastCurrent["UnitName"], TCS_ENUM.Atb.min);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Biara 114 拜娅拉
        TCS_FUNC.Talent.Biara = {};
        TCS_FUNC.Talent.Biara.strHero = "Biara";
        TCS_FUNC.Talent.Biara.arrSidSignCreature = {};
        TCS_FUNC.Talent.Biara.sign = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Biara.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Biara.sign");
                TCS_FUNC.Talent.Biara.arrSidSignCreature = {};
                for i, sidCreature in listCreatureNumberDecrease[iOppositeSide] do
                  push(TCS_FUNC.Talent.Biara.arrSidSignCreature, sidCreature);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectSign"], sidCreature, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Biara.checkExist = function()
          if length(TCS_FUNC.Talent.Biara.arrSidSignCreature) > 0 then
            local arrSidSignCreature4Exist = {};
            for i, sidCreature in TCS_FUNC.Talent.Biara.arrSidSignCreature do
              if TTHCS_GLOBAL.checkCombatCreature(sidCreature) then
                push(arrSidSignCreature4Exist, sidCreature);
              end;
            end;
            TCS_FUNC.Talent.Biara.arrSidSignCreature = arrSidSignCreature4Exist;
          end;
        end;
        TCS_FUNC.Talent.Biara.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Biara.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                TCS_FUNC.Talent.Biara.checkExist();
                if length(TCS_FUNC.Talent.Biara.arrSidSignCreature) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Biara.trigger");
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 0 then
                    local iRandomCreatureIndex = TTHCS_COMMON.getRandom(length(TCS_FUNC.Talent.Biara.arrSidSignCreature));
                    local sidRandomCreature = TCS_FUNC.Talent.Biara.arrSidSignCreature[iRandomCreatureIndex];
                    local bSuccess = TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_LIGHTNING_BOLT, sidRandomCreature, 0, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                    if bSuccess == TCS_ENUM.Switch.Yes then
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectTrigger"], sidRandomCreature, 5);
                    end;
                  else
                    for i, sidCreature in TCS_FUNC.Talent.Biara.arrSidSignCreature do
                      local bSuccess = TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_LIGHTNING_BOLT, sidCreature, 1, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
                      if bSuccess == TCS_ENUM.Switch.Yes then
                        ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["EffectTrigger"], sidCreature, 5);
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

    -- Fortress
      -- Bersy 117 艾巴
        TCS_FUNC.Talent.Bersy = {};
        TCS_FUNC.Talent.Bersy.strHero = "Bersy";
        TCS_FUNC.Talent.Bersy.trigger = function(iSide, itemUnit, itemUnitLast, listCreaturePositionMove)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Bersy.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and length(listCreaturePositionMove[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Bersy.trigger");
                for i, sidCreatureTarget in listCreaturePositionMove[iOppositeSide] do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL, 1, SPELL_FORGETFULNESS, sidCreatureTarget, TCS_ENUM.Switch.No);
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureTarget, 1, iSide, TCS_ENUM.Switch.No);
                    for j, sidCreatureNearBy in arrCreatureNearBy do
                      TTHCS_THREAD.attack(sidCreatureNearBy, sidCreatureTarget);
                      if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                        TCS_BATTLE.atb.record(sidCreatureNearBy, TCS_ENUM.Atb.max);
                      end;
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                end;
              end;
            end;
          end;
        end;

      -- Maximus 118 马克西姆斯
        TCS_FUNC.Talent.Maximus = {};
        TCS_FUNC.Talent.Maximus.strHero = "Maximus";
        TCS_FUNC.Talent.Maximus.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Maximus.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine
                and itemUnitLast["UnitType"] == TTH_ENUM.WarmachineBallista
                and (
                  length(listCreatureNumberDecrease[iOppositeSide]) > 0
                  or length(listCreatureStatusDeath[iOppositeSide]) > 0
                )
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Maximus.trigger");
                local arrCreatureDecrease = {};
                for i, sidCreature in listCreatureNumberDecrease[iOppositeSide] do
                  if contains(arrCreatureDecrease, sidCreature) == nil then
                    push(arrCreatureDecrease, sidCreature);
                  end;
                end;
                for i, sidCreature in listCreatureStatusDeath[iOppositeSide] do
                  if contains(arrCreatureDecrease, sidCreature) == nil then
                    push(arrCreatureDecrease, sidCreature);
                  end;
                end;
                TCS_FUNC.Talent.Maximus.deal(iSide, itemUnitLast, arrCreatureDecrease);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Maximus.deal = function(iSide, itemUnitLast, arrCreatureDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = GetHeroName(sidHero);
          local arrCreatureEffect = {};
          local listCreatureEffect = {};
          local arrCreatureTarget = GetCreatures(iOppositeSide);
          for i, sidCreatureDecrease in arrCreatureDecrease do
            local itemCreatureDecrease = TTHCS_GLOBAL.geneUnitInfo(sidCreatureDecrease);
            local listPosition = {};
            local iSideX = 0;
            if iSide == TCS_ENUM.Side.Attacker then
              iSideX = 1;
            else
              iSideX = -1;
            end;
            for iDiffY = 1, 4 do
              for iDiffX = -1 * iDiffY, 1 * iDiffY do
                local iPosX = itemCreatureDecrease["PosX"] + iDiffY * iSideX;
                local iPosY = itemCreatureDecrease["PosY"] + iDiffX;
                for j, sidCreatureTarget in arrCreatureTarget do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  if contains(arrCreatureEffect, sidCreatureTarget) == nil
                    and TTHCS_COMMON.isEffectUnit(sidCreatureTarget, iPosX, iPosY) == TCS_ENUM.Switch.Yes then
                    push(arrCreatureEffect, sidCreatureTarget);
                    push(listCreatureEffect, itemCreatureTarget);
                  end;
                end;
              end;
            end;
          end;
          if length(listCreatureEffect) > 0 then
            if iSide == TCS_ENUM.Side.Attacker then
              listCreatureEffect = TTHCS_COMMON.asc8key(listCreatureEffect, "PosX");
            else
              listCreatureEffect = TTHCS_COMMON.desc8key(listCreatureEffect, "PosX");
            end;
            local itemCreatureEffect = listCreatureEffect[0];
            TTHCS_THREAD.shoot(itemUnitLast["UnitName"], itemCreatureEffect["UnitName"]);
            ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureEffect["UnitName"], 5);
            if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
              TCS_FUNC.Talent.Maximus.deal(iSide, itemUnitLast, { [0] = itemCreatureEffect["UnitName"] });
            end;
          end;
        end;

      -- Skeggy 119 卡里
        TCS_FUNC.Talent.Skeggy = {};
        TCS_FUNC.Talent.Skeggy.strHero = "Skeggy";
        TCS_FUNC.Talent.Skeggy.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local strHero = TCS_FUNC.Talent.Skeggy.strHero;
          if 1 == 1
            and GetHero(iSide)
            and GetHeroName(GetHero(iSide)) == strHero
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
            and (
              1 ~= 1
              or (
                1 == 1
                and itemUnitLast["UnitName"] == GetHero(iSide)
                and itemHeroMana[iSide] == 0
              )
              or itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine
            )
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0
          then
            local objCreatureMain = TTHCS_GLOBAL.getCreatureMain(iSide, CREATURE_AXE_FIGHTER);
            if objCreatureMain ~= nil then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Skeggy.trigger");
              for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                TTHCS_THREAD.shoot(objCreatureMain["UnitName"], sidCreatureTarget);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TCS_BATTLE.atb.record(objCreatureMain["UnitName"], TCS_ENUM.Atb.max);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], objCreatureMain["UnitName"], 5);
              end;
            end;
          end;
        end;

      -- Tazar 120 泰泽
        TCS_FUNC.Talent.Tazar = {};
        TCS_FUNC.Talent.Tazar.strHero = "Tazar";
        TCS_FUNC.Talent.Tazar.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Tazar.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Tazar.start");
              local arrCreature = GetCreatures(iSide);
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureType = CREATURE_FORTRESS_TOOL_Tazar_AbilityUpgradeMastery;
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iCreatureType = CREATURE_FORTRESS_TOOL_Tazar_AbilityUpgradeShantiri;
              end;
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              for i, sidCreature in arrCreature do
                TTHCS_THREAD.castAimedSpell8Tool(iSide, iCreatureType, iHeroLevel, SPELL_CELESTIAL_SHIELD, sidCreature, TCS_ENUM.Switch.No);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;

      -- Vilma 121 威尔玛
        TCS_FUNC.Talent.Vilma = {};
        TCS_FUNC.Talent.Vilma.strHero = "Vilma";
        TCS_FUNC.Talent.Vilma.trigger = function(iSide, itemUnit, itemUnitLast, listCreaturePositionUnchanged)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vilma.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and contains(listCreaturePositionUnchanged[iSide], itemUnitLast["UnitName"]) ~= nil
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vilma.trigger");
                local iContinuousNumber = 8;
                -- TCS_FUNC.Continuous.increase(itemUnitLast["UnitName"], iContinuousNumber, itemUnitLast["UnitName"]);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  -- TCS_FUNC.Continuous.increase(sidHero, iContinuousNumber, itemUnitLast["UnitName"]);
                end;
              end;
            end;
          end;
        end;

      -- Bart 122 巴特
        TCS_FUNC.Talent.Bart = {};
        TCS_FUNC.Talent.Bart.strHero = "Bart";
        TCS_FUNC.Talent.Bart.arrSignCreature = {};
        TCS_FUNC.Talent.Bart.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Bart.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
                and length(TCS_FUNC.Talent.Bart.arrSignCreature) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Bart.move");
                for i, sidCreatureTarget in TCS_FUNC.Talent.Bart.arrSignCreature do
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_ABILITY_REFRESH_RUNE, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                TCS_FUNC.Talent.Bart.arrSignCreature = {};
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Bart.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Bart.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitName"] ~= sidHero
                and itemHeroMana[iSide] > 0
                and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_TAP_RUNES] == 1 then
                  local itemHeroBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatHero][iSide];
                  local itemHeroLast = TCS_VARI.Snapshot.last[TTH_ENUM.CombatHero][iSide];
                  local iDiffMana = itemHeroLast["CurrentMana"] - itemHeroBefore["CurrentMana"];
                  local iKnowledge = TCS_VARI.Info.HeroAttribute[strHero][STAT_KNOWLEDGE];
                  local iRecoveryMana = TTHCS_COMMON.floor(iKnowledge / 2);
                  if iDiffMana == iRecoveryMana then
                    local iMaxLen = 1;
                    if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                      iMaxLen = 2;
                    end;
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      iMaxLen = 4;
                    end;
                    if length(TCS_FUNC.Talent.Bart.arrSignCreature) < iMaxLen then
                      TTHCS_GLOBAL.print("TCS_FUNC.Talent.Bart.charge");
                      push(TCS_FUNC.Talent.Bart.arrSignCreature, itemUnitLast["UnitName"]);
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                    end;
                end;
              end;
            end;
          end;
        end;

      -- Egil 124 俄林
        TCS_FUNC.Talent.Egil = {};
        TCS_FUNC.Talent.Egil.strHero = "Egil";
        TCS_FUNC.Talent.Egil.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Egil.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_RUNE_MAGE)
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Egil.trigger");
                for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  TTHCS_THREAD.cast.area.impl(itemUnitLast["UnitName"], SPELL_FIREBALL, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                itemUnitLast = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 and itemUnitLast["CurrentMana"] > 0 then
                  for i, sidCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                    TTHCS_THREAD.shoot(itemUnitLast["UnitName"], sidCreatureTarget);
                  end;
                  TTHCS_GLOBAL.setHeroMana(itemUnitLast["UnitName"], 0);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Egil.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Egil.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and itemHeroMana[iSide] > 0 then
                  local itemHeroBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatHero][iSide];
                  local itemHeroLast = TCS_VARI.Snapshot.last[TTH_ENUM.CombatHero][iSide];
                  local iDiffMana = itemHeroLast["CurrentMana"] - itemHeroBefore["CurrentMana"];
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Egil.charge");
                  local arrCreature = GetCreatures(iSide);
                  for i, sidCreature in arrCreature do
                    local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                    if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_RUNE_MAGE) then
                      TTHCS_GLOBAL.recoveryHeroMana(sidCreature, iDiffMana);
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreature, 5);
                    end;
                  end;
              end;
            end;
          end;
        end;

      -- Hangvul2 127 尤兰德
        TCS_FUNC.Talent.Hangvul2 = {};
        TCS_FUNC.Talent.Hangvul2.strHero = "Hangvul2";
        TCS_FUNC.Talent.Hangvul2.mapPosition = {
          [1] = {
            [0] = {
              [0] = {
                ["PosX"] = 13
                , ["PosY"] = 2
              }
              , [1] = {
                ["PosX"] = 12
                , ["PosY"] = 4
              }
              , [2] = {
                ["PosX"] = 12
                , ["PosY"] = 7
              }
              , [3] = {
                ["PosX"] = 13
                , ["PosY"] = 9
              }
            }
            , [1] = {
              [0] = {
                ["PosX"] = 2
                , ["PosY"] = 2
              }
              , [1] = {
                ["PosX"] = 3
                , ["PosY"] = 4
              }
              , [2] = {
                ["PosX"] = 3
                , ["PosY"] = 7
              }
              , [3] = {
                ["PosX"] = 2
                , ["PosY"] = 9
              }
            }
          }
          , [2] = {
            [0] = {
              [0] = {
                ["PosX"] = 15
                , ["PosY"] = 2
              }
              , [1] = {
                ["PosX"] = 14
                , ["PosY"] = 4
              }
              , [2] = {
                ["PosX"] = 13
                , ["PosY"] = 6
              }
              , [3] = {
                ["PosX"] = 13
                , ["PosY"] = 9
              }
              , [4] = {
                ["PosX"] = 14
                , ["PosY"] = 11
              }
              , [5] = {
                ["PosX"] = 15
                , ["PosY"] = 13
              }
            }
            , [1] = {
              [0] = {
                ["PosX"] = 2
                , ["PosY"] = 2
              }
              , [1] = {
                ["PosX"] = 3
                , ["PosY"] = 4
              }
              , [2] = {
                ["PosX"] = 4
                , ["PosY"] = 6
              }
              , [3] = {
                ["PosX"] = 4
                , ["PosY"] = 9
              }
              , [4] = {
                ["PosX"] = 3
                , ["PosY"] = 11
              }
              , [5] = {
                ["PosX"] = 2
                , ["PosY"] = 13
              }
            }
          }
        };
        TCS_FUNC.Talent.Hangvul2.start = function(iSide)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hangvul2.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hangvul2.start");
              local iBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
              local listPosition = TCS_FUNC.Talent.Hangvul2.mapPosition[iBattleFieldSize][iSide];
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureType = CREATURE_FORTRESS_TOOL;
              if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                iCreatureType = CREATURE_FORTRESS_TOOL_Tazar_AbilityUpgradeMastery;
              end;
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iCreatureType = CREATURE_FORTRESS_TOOL_Tazar_AbilityUpgradeShantiri;
              end;
              for i, itemPosition in listPosition do
                TTHCS_THREAD.castAreaSpell8Tool(iSide, iCreatureType, iHeroLevel, SPELL_FIREWALL, itemPosition["PosX"], itemPosition["PosY"], TCS_ENUM.Switch.No);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;

      -- Vegeyr 129 斯威
        TCS_FUNC.Talent.Vegeyr = {};
        TCS_FUNC.Talent.Vegeyr.strHero = "Vegeyr";
        TCS_FUNC.Talent.Vegeyr.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vegeyr.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vegeyr.start");
              local arrCreature = GetCreatures(iOppositeSide);
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iCreatureNumber = iHeroLevel;
              for i, sidCreature in arrCreature do
                TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL_Vegeyr, iCreatureNumber, SPELL_ABILITY_STORMBOLT, sidCreature, TCS_ENUM.Switch.No);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
            end;
          end;
        end;
        TCS_FUNC.Talent.Vegeyr.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Vegeyr.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
                and length(listCreatureNumberDecrease[iOppositeSide]) + length(listCreatureStatusDeath[iOppositeSide]) > 1
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Vegeyr.trigger");
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iCreatureNumber = iHeroLevel;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iCreatureNumber = itemUnitLast["UnitNumber"];
                end;
                for i, sidCreature in listCreatureNumberDecrease[iOppositeSide] do
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL_Vegeyr, iCreatureNumber, SPELL_ABILITY_STORMBOLT, sidCreature, TCS_ENUM.Switch.No);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

    -- Stronghold
      -- Hero9 135 科尔汉
        TCS_FUNC.Talent.Hero9 = {};
        TCS_FUNC.Talent.Hero9.strHero = "Hero9";
        TCS_FUNC.Talent.Hero9.trigger = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero9.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_GOBLIN) then
                local itemUnitLastCurrent = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
                local arrCreature = TTHCS_GLOBAL.listUnitInArea(itemUnitLastCurrent, 1, iOppositeSide, TCS_ENUM.Switch.No);
                if length(arrCreature) == 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero9.trigger");
                  local iContinuousNumber = itemUnitLastCurrent["RageLevel"] * 10;
                  -- TCS_FUNC.Continuous.increase(itemUnitLast["UnitName"], iContinuousNumber, itemUnitLast["UnitName"]);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Hero7 136 哈戈什
        TCS_FUNC.Talent.Hero7 = {};
        TCS_FUNC.Talent.Hero7.strHero = "Hero7";
        TCS_FUNC.Talent.Hero7.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero7.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_CENTAUR)
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                local itemUnitLastCurrent = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
                local arrCreatureTarget = TTHCS_GLOBAL.listUnitInArea(itemUnitLastCurrent, 5, iOppositeSide, TCS_ENUM.Switch.No);
                local arrCreatureRepel = {};
                for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                  for j, sidCreatureTarget in arrCreatureTarget do
                    if sidCreatureDecrease == sidCreatureTarget then
                      local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                      if TTH_TABLE.Creature[itemCreatureTarget["UnitType"]]["CombatSize"] == 1 then
                        push(arrCreatureRepel, sidCreatureTarget);
                      end;
                    end;
                  end;
                end;
                if length(arrCreatureRepel) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero7.trigger");
                  for i, sidCreatureRepel in arrCreatureRepel do
                    TTHCS_THREAD.repel(itemUnitLast["UnitName"], sidCreatureRepel);
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      TTHCS_THREAD.shoot(itemUnitLast["UnitName"], sidCreatureRepel);
                    end;
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Hero8 137 坦尔塞克
        TCS_FUNC.Talent.Hero8 = {};
        TCS_FUNC.Talent.Hero8.strHero = "Hero8";
        TCS_FUNC.Talent.Hero8.flag = 0;
        TCS_FUNC.Talent.Hero8.trigger = function(iSide, itemUnit, itemUnitLast, listCreaturePositionMove, listCreatureManaDecrease, listCreatureNumberDecrease, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero8.strHero then
              if 1 == 1
                and itemUnitLast ~= nil
                and itemUnitLast["Side"] == iOppositeSide
                and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
                and (
                  1 ~= 1
                  or contains(listCreaturePositionMove[iOppositeSide], itemUnitLast["UnitName"]) ~= nil
                  or contains(listCreatureManaDecrease[iOppositeSide], itemUnitLast["UnitName"]) ~= nil
                  or length(listCreatureNumberDecrease[iSide]) > 0
                  or length(listCreatureStatusDeath[iSide]) > 0
                )
              then
                local itemCreatureMain = TCS_FUNC.Talent.Hero8.getCreatureMain(iSide);
                if itemCreatureMain ~= nil then
                  if TTHCS_GLOBAL.getDistance4Creature(itemCreatureMain["UnitName"], itemUnitLast["UnitName"]) >= 25 then
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero8.trigger");
                    TCS_FUNC.Talent.Hero8.taunt(itemCreatureMain["UnitName"], itemUnitLast["UnitName"], iSide);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                    repeat
                      sleep(1);
                    until TCS_FUNC.Talent.Hero8.flag == 1;
                    TCS_FUNC.Talent.Hero8.flag = 0;
                    if 1 == 1
                      and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                      and TTHCS_GLOBAL.getDistance4Creature(itemCreatureMain["UnitName"], itemUnitLast["UnitName"]) <= 25
                    then
                      TCS_BATTLE.atb.record(itemCreatureMain["UnitName"], TCS_ENUM.Atb.immediate);
                      ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Creature"], itemCreatureMain["UnitName"], 5);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Hero8.getCreatureMain = function(iSide)
          local listCreature = {};
          local itemCreatureMain = nil;
          local arrCreature = GetCreatures(iSide);
          for i, sidCreature in arrCreature do
            local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
            if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_ORC_WARRIOR) then
              push(listCreature, itemCreature);
            end;
          end;
          listCreature = TTHCS_COMMON.desc8key(listCreature, "UnitNumber");
          if length(listCreature) > 0 then
            itemCreatureMain = listCreature[0];
          end;
          return itemCreatureMain;
        end;
        TCS_FUNC.Talent.Hero8.iSide = 0;
        TCS_FUNC.Talent.Hero8.sidCreatureBeTaunted = "";
        TCS_FUNC.Talent.Hero8.arrSign = {};
        TCS_FUNC.Talent.Hero8.taunt = function(sidCreatureCaster, sidCreatureTarget, iSide)
          TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero8.taunt");
          TCS_FUNC.Talent.Hero8.iSide = iSide;
          TCS_FUNC.Talent.Hero8.sidCreatureBeTaunted = sidCreatureTarget;
          if TCS_FUNC.Talent.Hero8.arrSign[iSide] == nil then
            TCS_FUNC.Talent.Hero8.arrSign[iSide] = {};
          end;
          local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCaster);
          local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
          local iCombatSizeTarget = TTH_TABLE.Creature[itemCreatureTarget["UnitType"]]["CombatSize"];
          local iDiffX = TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, "PosX");
          local iDiffY = TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, "PosY");
          local iFinalX = itemCreatureTarget["PosX"] - iDiffX * iCombatSizeTarget;
          local iFinalY = itemCreatureTarget["PosY"] - iDiffY * iCombatSizeTarget;
          startThread(TCS_FUNC.Talent.Hero8.move, sidCreatureTarget, iFinalX, iFinalY);
          print(sidCreatureCaster.." taunt "..sidCreatureTarget.." to "..iFinalX.."-"..iFinalY);
        end;
        TCS_FUNC.Talent.Hero8.move = function(sidCreature, iPosX, iPosY)
          TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero8.move");
          errorHook(TCS_FUNC.Talent.Hero8.errorHook);
          commandMove(sidCreature, iPosX, iPosY);
          local itemCreature = {};
          repeat
            sleep(10);
            itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          until itemCreature["PosX"] == iPosX and itemCreature["PosY"] == iPosY;
          TCS_FUNC.Talent.Hero8.flag = 1;
        end;
        TCS_FUNC.Talent.Hero8.errorHook = function()
          TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero8.errorHook");
          TCS_FUNC.Talent.Hero8.flag = 1;
          local iSide = TCS_FUNC.Talent.Hero8.iSide;
          local sidCreatureTarget = TCS_FUNC.Talent.Hero8.sidCreatureBeTaunted;
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Hero8.strHero
              and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
              and contains(TCS_FUNC.Talent.Hero8.arrSign[iSide], sidCreatureTarget) == nil
            then
              push(TCS_FUNC.Talent.Hero8.arrSign[iSide], sidCreatureTarget);
            end;
          end;
        end;
        TCS_FUNC.Talent.Hero8.active = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          if TCS_FUNC.Talent.Hero8.arrSign[iSide] == nil then
            TCS_FUNC.Talent.Hero8.arrSign[iSide] = {};
          end;
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Hero8.strHero
              and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
              and length(TCS_FUNC.Talent.Hero8.arrSign[iSide]) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero8.active");
              local itemCreatureMain = TCS_FUNC.Talent.Hero8.getCreatureMain(iSide);
              for i, sidCreatureTarget in TCS_FUNC.Talent.Hero8.arrSign[iSide] do
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                local iCombatSizeTarget = TTH_TABLE.Creature[itemCreatureTarget["UnitType"]]["CombatSize"];
                if iCombatSizeTarget == 1 then
                  if itemCreatureMain ~= nil then
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_CALL_OF_BLOOD, itemCreatureMain["UnitName"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                  end;
                elseif iCombatSizeTarget == 2 then
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_FEAR_MY_ROAR, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                end;
              end;
              TCS_FUNC.Talent.Hero8.arrSign[iSide] = {};
            end;
          end;
        end;

      -- Azar 138 艾扎-埃克
        TCS_FUNC.Talent.Azar = {};
        TCS_FUNC.Talent.Azar.strHero = "Azar";
        TCS_FUNC.Talent.Azar.flag = {};
        TCS_FUNC.Talent.Azar.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Azar.strHero then
              if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local listCreatureCaster = {};
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if TTHCS_GLOBAL.checkCreatureType(itemCreature, CREATURE_GOBLIN) then
                    push(listCreatureCaster, itemCreature);
                  end;
                end;
                local listCreatureCasterSort8Number = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
                if length(listCreatureCasterSort8Number) > 0 then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Azar.start");
                  local itemCreatureCaster = listCreatureCasterSort8Number[0];
                  local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                  local iScale = 0.04 + 0.002 * iHeroLevel;
                  local iUnitNumber = TTHCS_COMMON.ceil(itemCreatureCaster["UnitNumber"] * iScale);
                  local iUnitType = CREATURE_WOLF;
                  local sidCreatureTarget = TTHCS_THREAD.summonCreature(iSide, iUnitType, iUnitNumber, itemCreatureCaster["PosX"], itemCreatureCaster["PosY"]);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidCreatureTarget, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Azar.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Azar.strHero then
              if itemUnit["Side"] == iSide
                and itemUnit["UnitType"] == CREATURE_WOLF
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                if TCS_FUNC.Talent.Azar.flag[itemUnit["UnitName"]] == nil then
                  TCS_FUNC.Talent.Azar.flag[itemUnit["UnitName"]] = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Azar.first");
                  local sidCreatureAdd = TTHCS_THREAD.addCreature(iSide, CREATURE_STRONGHOLD_TOOL, 1, itemUnit["PosX"], itemUnit["PosY"]);
                  TTHCS_THREAD.attack(itemUnit["UnitName"], sidCreatureAdd);
                  TTHCS_THREAD.removeCreature(sidCreatureAdd);
                  TCS_BATTLE.atb.record(itemUnit["UnitName"], TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;

      -- Hero4 139 哥沙克
        TCS_FUNC.Talent.Hero4 = {};
        TCS_FUNC.Talent.Hero4.strHero = "Hero4";
        TCS_FUNC.Talent.Hero4.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero4.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero4.start");
              local arrCreatureTarget = GetCreatures(iSide);
              local listCreatureTarget = {};
              for i, sidCreatureTarget in arrCreatureTarget do
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                push(listCreatureTarget, itemCreatureTarget);
              end;
              if length(listCreatureTarget) > 0 then
                if iSide == TCS_ENUM.Side.Attacker then
                  listCreatureTarget = TTHCS_COMMON.desc8key(listCreatureTarget, "PosX");
                else
                  listCreatureTarget = TTHCS_COMMON.asc8key(listCreatureTarget, "PosX");
                end;
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iCreatureNumber = iHeroLevel * 2;
                if iCreatureNumber > 60 then
                  iCreatureNumber = 60;
                end;
                local itemCreatureFront = listCreatureTarget[0];
                TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_ABILITY_ORDER_OF_THE_CHIEF, itemCreatureFront["UnitName"], TCS_ENUM.Switch.No);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureFront["UnitName"], 5);
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  local itemCreatureBehind = listCreatureTarget[length(listCreatureTarget) - 1];
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_ABILITY_ORDER_OF_THE_CHIEF, itemCreatureBehind["UnitName"], TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureBehind["UnitName"], 5);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  local iRandom = TTHCS_COMMON.getRandom(length(listCreatureTarget));
                  local itemCreatureRandom = listCreatureTarget[iRandom];
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_ABILITY_ORDER_OF_THE_CHIEF, itemCreatureRandom["UnitName"], TCS_ENUM.Switch.No);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemCreatureRandom["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Hero6 140 沙-库如汉特
        TCS_FUNC.Talent.Hero6 = {};
        TCS_FUNC.Talent.Hero6.strHero = "Hero6";
        TCS_FUNC.Talent.Hero6.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero6.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_WYVERN)
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero6.trigger");
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iCreatureNumber = iHeroLevel;
                TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_REGENERATION, itemUnitLast["UnitName"], TCS_ENUM.Switch.No);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TCS_BATTLE.atb.record(itemUnitLast["UnitName"], TCS_ENUM.Atb.max);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Crag 141 肯洛-哈格
        TCS_FUNC.Talent.Crag = {};
        TCS_FUNC.Talent.Crag.strHero = "Crag";
        TCS_FUNC.Talent.Crag.arrFlag = {};
        TCS_FUNC.Talent.Crag.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Crag.strHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Crag.start");
              local arrArtifact = {};
              if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_DRUM_OF_CHARGE] == 0 then
                push(arrArtifact, ARTIFACT_DRUM_OF_CHARGE);
              end;
              if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_HORN_OF_CHARGE] == 0 then
                push(arrArtifact, ARTIFACT_HORN_OF_CHARGE);
              end;
              if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_FLAG_OF_CHARGE] == 0 then
                push(arrArtifact, ARTIFACT_FLAG_OF_CHARGE);
              end;
              if length(arrArtifact) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Crag.start");
                local iRandomIndex = TTHCS_COMMON.getRandom(length(arrArtifact));
                local iArtifactId = arrArtifact[iRandomIndex];
                TCS_VARI.Info.HeroArtifact[strHero][iArtifactId] = 1;
                ShowFlyingSign(TTHCS_PATH["Artifact"][iArtifactId]["Effect"], sidHero, 10);
                TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_CHARGE] = TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_CHARGE] + 1;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Crag.signArtifact = function(iSide, strArtifact)
          local bCheck = nil;
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Crag.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
            then
              if TCS_FUNC.Talent.Crag.arrFlag[strArtifact] == nil then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Crag.signArtifact for "..strArtifact);
                TCS_FUNC.Talent.Crag.arrFlag[strArtifact] = 1;
                bCheck = not nil;
              end;
            end;
          end;
          return bCheck;
        end;

      -- Gottai 142 高泰
        TCS_FUNC.Talent.Gottai = {};
        TCS_FUNC.Talent.Gottai.strHero = "Gottai";
        TCS_FUNC.Talent.Gottai.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Gottai.first = function(iSide, itemUnit)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gottai.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Gottai.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Gottai.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gottai.first");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_WARCRY_RALLING_CRY, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Gottai.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Gottai.strHero then
              if itemUnitLast ~= nil
                and (
                  (TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 and length(listCreatureStatusDeath[iOppositeSide]) > 0)
                  or (TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 and length(listCreatureStatusDeath[iSide]) > 0)
                ) then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Gottai.trigger");
                TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_WARCRY_RALLING_CRY, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- Hero1 143 克拉格
        TCS_FUNC.Talent.Hero1 = {};
        TCS_FUNC.Talent.Hero1.strHero = "Hero1";
        TCS_FUNC.Talent.Hero1.sidSignCreature = "";
        TCS_FUNC.Talent.Hero1.sign = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero1.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] == 0
                and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                if TTHCS_GLOBAL.checkCombatCreature(TCS_FUNC.Talent.Hero1.sidSignCreature) == nil then
                  TCS_FUNC.Talent.Hero1.sidSignCreature = "";
                end;
                if TCS_FUNC.Talent.Hero1.sidSignCreature == "" then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero1.sign");
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(listCreatureNumberDecrease[iOppositeSide][0]);
                  TCS_FUNC.Talent.Hero1.sidSignCreature = itemCreatureTarget["UnitName"];
                  TCS_BATTLE.atb.record(itemCreatureTarget["UnitName"], TCS_ENUM.Atb.min);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Hero1.trigger = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero1.strHero then
              if itemUnitLast ~= nil
                and itemUnitLast["UnitName"] == TCS_FUNC.Talent.Hero1.sidSignCreature
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero1.trigger");
                TCS_BATTLE.atb.record(itemUnitLast["UnitName"], TCS_ENUM.Atb.min);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Hero3 145 伽如娜
        TCS_FUNC.Talent.Hero3 = {};
        TCS_FUNC.Talent.Hero3.strHero = "Hero3";
        TCS_FUNC.Talent.Hero3.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Hero3.strHero then
              if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
                and length(listCreatureStatusDeath[iOppositeSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Hero3.trigger");
                local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                local iCreatureNumber = iHeroLevel;
                TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_BLESS, itemUnitLast["UnitName"], TCS_ENUM.Switch.No);
                TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_BLOODLUST, itemUnitLast["UnitName"], TCS_ENUM.Switch.No);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_STONESKIN, itemUnitLast["UnitName"], TCS_ENUM.Switch.No);
                  TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_STRONGHOLD_TOOL, iCreatureNumber, SPELL_DEFLECT_ARROWS, itemUnitLast["UnitName"], TCS_ENUM.Switch.No);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- Kraal 146 克拉尔
        TCS_FUNC.Talent.Kraal = {};
        TCS_FUNC.Talent.Kraal.strHero = "Kraal";
        TCS_FUNC.Talent.Kraal.trigger = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Kraal.strHero;
          if 1 == 1
            and sidHero ~= nil
            and GetHeroName(sidHero) == strHero
            and itemUnitLast ~= nil
            and itemUnitLast["Side"] == iOppositeSide
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
          then
            local itemUnitLastCurrent = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
            local arrCreatureFriendly = TTHCS_GLOBAL.listUnitInArea(itemUnitLastCurrent, 1, iSide, TCS_ENUM.Switch.No);
            local arrCreatureEnemy = TTHCS_GLOBAL.listUnitInArea(itemUnitLastCurrent, 1, iOppositeSide, TCS_ENUM.Switch.No);
            if 1 == 1
              and length(arrCreatureEnemy) == 1
              and arrCreatureEnemy[0] == itemUnitLastCurrent["UnitName"]
            then
              arrCreatureEnemy = {};
            end;
            local arrWarMachine = GetWarMachines(iSide);
            local sidBallista = nil;
            if length(arrWarMachine) > 0 then
              for i, sidWarMachine in arrWarMachine do
                local itemWarMachine = TTHCS_GLOBAL.geneUnitInfo(sidWarMachine);
                if itemWarMachine["UnitType"] == TTH_ENUM.WarmachineBallista then
                  sidBallista = sidWarMachine;
                  break;
                end;
              end;
            end;
            if 1 == 1
              and sidBallista ~= nil
              and length(arrCreatureFriendly) == 0
              and length(arrCreatureEnemy) == 0
            then
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Kraal.trigger");
              TTHCS_THREAD.shoot(sidBallista, itemUnitLast["UnitName"]);
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                TTHCS_GLOBAL.moveImmediate(sidBallista);
              end;
              ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidBallista, 5);
            end;
          end;
        end;

      -- KujinMP 147 库金
        TCS_FUNC.Talent.KujinMP = {};
        TCS_FUNC.Talent.KujinMP.strHero = "KujinMP";
        TCS_FUNC.Talent.KujinMP.tempSidCreature = "";
        TCS_FUNC.Talent.KujinMP.tactics = function(iSide)
          local sidHero = GetHero(iSide);
          local iOppositeSide = 1 - iSide;
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.KujinMP.strHero then
              local iLenBefore = length(GetCreatures(iOppositeSide));
              local iLenAfter = iLenBefore;
              AddCreature(iOppositeSide, CREATURE_DEMON, 1, 7, 7);
              repeat
                sleep(1);
                iLenAfter = length(GetCreatures(iOppositeSide));
              until iLenAfter > iLenBefore;
              TCS_FUNC.Talent.KujinMP.tempSidCreature = GetCreatures(iOppositeSide)[iLenAfter - 1];
            end;
          end;
        end;
        TCS_FUNC.Talent.KujinMP.start = function(iSide)
          if TTHCS_GLOBAL.checkCombatCreature(TCS_FUNC.Talent.KujinMP.tempSidCreature) then
            TTHCS_THREAD.removeCreature(TCS_FUNC.Talent.KujinMP.tempSidCreature);
          end;
        end;

      -- Matewa 149 马特瓦
        TCS_FUNC.Talent.Matewa = {};
        TCS_FUNC.Talent.Matewa.strHero = "Matewa";
        TCS_FUNC.Talent.Matewa.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Matewa.first = function(iSide, itemUnit)
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Matewa.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Matewa.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Matewa.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Matewa.first");
                  TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_WARCRY_BATTLECRY, TCS_ENUM.Switch.Yes);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Matewa.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Matewa.strHero then
              if itemUnitLast ~= nil
                and (
                  (TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 and length(listCreatureStatusDeath[iOppositeSide]) > 0)
                  or (TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 and length(listCreatureStatusDeath[iSide]) > 0)
                ) then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Matewa.trigger");
                TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_WARCRY_BATTLECRY, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;

      -- Quroq 150 魁洛克
        TCS_FUNC.Talent.Quroq = {};
        TCS_FUNC.Talent.Quroq.strHero = "Quroq";
        TCS_FUNC.Talent.Quroq.trigger = function(iSide, itemUnit, itemUnitLast)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Quroq.strHero then
              if itemUnitLast["Side"] == iSide then
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
                  and TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_SHAMAN) then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Quroq.trigger");
                  local sidCreatureAdd = TTHCS_THREAD.summonCreature(iSide, CREATURE_STRONGHOLD_TOOL, 1, itemUnitLast["PosX"], itemUnitLast["PosY"]);
                  TTHCS_THREAD.cast.aimed.impl(itemUnitLast["UnitName"], SPELL_ABILITY_SACRIFICE_GOBLIN, sidCreatureAdd, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  TTHCS_THREAD.removeCreature(sidCreatureAdd);
                  TTHCS_GLOBAL.setHeroMana(itemUnitLast["UnitName"], itemUnitLast["CurrentMana"] + 6)
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
                if TTHCS_GLOBAL.checkCreatureType(itemUnitLast, CREATURE_CYCLOP) then
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Quroq.trigger");
                  local itemUnitCurrent = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
                  local sidCreatureSummon = TTHCS_THREAD.summonCreature(iSide, CREATURE_STRONGHOLD_TOOL, 1, itemUnitCurrent["PosX"], itemUnitCurrent["PosY"]);
                  TTHCS_THREAD.cast.aimed.impl(itemUnitLast["UnitName"], SPELL_ABILITY_SWALLOW_GOBLIN, sidCreatureSummon, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  TTHCS_THREAD.removeCreature(sidCreatureSummon);
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    local arrUnitNearBy = TTHCS_GLOBAL.listUnitInArea(itemUnitLast, 1, iOppositeSide, TCS_ENUM.Switch.No);
                    if length(arrUnitNearBy) == 0 then
                      local arrCreatureNotNearBy = {};
                      local arrCreatureTarget = GetCreatures(iOppositeSide);
                      for i, sidCreatureTarget in arrCreatureTarget do
                        if TTHCS_GLOBAL.isNearBy4Creature(itemUnitLast["UnitName"], sidCreatureTarget) == TCS_ENUM.Switch.No then
                          push(arrCreatureNotNearBy, sidCreatureTarget);
                        end;
                      end;
                      if length(arrCreatureNotNearBy) > 0 then
                        local iRandomCreatureIndex = TTHCS_COMMON.getRandom(length(arrCreatureNotNearBy));
                        local sidCreatureNotNearBy = arrCreatureNotNearBy[iRandomCreatureIndex];
                        local sidCreatureSummon = TTHCS_THREAD.summonCreature(iSide, CREATURE_STRONGHOLD_TOOL, 1, itemUnitLast["PosX"], itemUnitLast["PosY"]);
                        TTHCS_THREAD.shoot(itemUnitLast["UnitName"], sidCreatureNotNearBy);
                        TTHCS_THREAD.removeCreature(sidCreatureSummon);
                      end;
                    end;
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], itemUnitLast["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;

      -- Shiva 151 希娃
        TCS_FUNC.Talent.Shiva = {};
        TCS_FUNC.Talent.Shiva.strHero = "Shiva";
        TCS_FUNC.Talent.Shiva.start = function(iSide)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Shiva.strHero then
              local arrCreatureTarget = GetCreatures(iSide);
              TTHCS_GLOBAL.print("TCS_FUNC.Talent.Shiva.start");
              for i, sidCreatureTarget in arrCreatureTarget do
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                if itemCreatureTarget["RageLevel"] ~= nil and itemCreatureTarget["RageLevel"] > 0 then
                  local iContinuousNumber = itemCreatureTarget["RageLevel"] * 10;
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    iContinuousNumber = iContinuousNumber * 2;
                  end;
                  -- TCS_FUNC.Continuous.increase(sidCreatureTarget, iContinuousNumber);
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    -- TCS_FUNC.Continuous.increase(sidHero, iContinuousNumber);
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Shiva.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureRageLevelIncrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Shiva.strHero then
              if itemUnitLast ~= nil
                and length(listCreatureRageLevelIncrease[iSide]) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Shiva.trigger");
                for i, sidCreatureTarget in listCreatureRageLevelIncrease[iSide] do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  local iContinuousNumber = itemCreatureTarget["RageLevel"] * 10;
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                    iContinuousNumber = iContinuousNumber * 2;
                  end;
                  -- TCS_FUNC.Continuous.increase(sidCreatureTarget, iContinuousNumber, itemUnitLast["UnitName"]);
                  if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                    -- TCS_FUNC.Continuous.increase(sidHero, iContinuousNumber, itemUnitLast["UnitName"]);
                  end;
                end;
              end;
            end;
          end;
        end;

      -- Zouleika 152 祖莱卡
        TCS_FUNC.Talent.Zouleika = {};
        TCS_FUNC.Talent.Zouleika.strHero = "Zouleika";
        TCS_FUNC.Talent.Zouleika.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureRageLevelDecrease)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Zouleika.strHero then
              if itemUnitLast ~= nil
                and length(listCreatureRageLevelDecrease[iSide]) > 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Zouleika.trigger");
                for i, sidCreatureTarget in listCreatureRageLevelDecrease[iSide] do
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_CALL_OF_BLOOD, sidCreatureTarget, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_WORD_OF_THE_CHIEF, sidCreatureTarget, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;

      -- Erika 153 艾莉卡
        TCS_FUNC.Talent.Erika = {};
        TCS_FUNC.Talent.Erika.strHero = "Erika";
        TCS_FUNC.Talent.Erika.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          local sidHeroOpposite = GetHero(iOppositeSide);
          if sidHero ~= nil and sidHeroOpposite ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Erika.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHeroOpposite
                and itemHeroMana[iOppositeSide] < 0
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Erika.trigger");
                local itemUnitLastCurrent = TTHCS_GLOBAL.geneUnitInfo(sidHeroOpposite);
                local iManaPoint = itemUnitLastCurrent["CurrentMana"] * 2 - itemUnitLast["CurrentMana"];
                if iManaPoint < 0 then
                  iManaPoint = 0;
                end;
                TTHCS_GLOBAL.setHeroMana(sidHeroOpposite, iManaPoint);
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TCS_BATTLE.atb.record(sidHeroOpposite, TCS_ENUM.Atb.clear);
                end;
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
        end;

      -- Mokka 154 摩卡
        TCS_FUNC.Talent.Mokka = {};
        TCS_FUNC.Talent.Mokka.strHero = "Mokka";
        TCS_FUNC.Talent.Mokka.flag = TCS_ENUM.Switch.No;
        TCS_FUNC.Talent.Mokka.flagCharge = TCS_ENUM.Switch.Yes;
        TCS_FUNC.Talent.Mokka.first = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Mokka.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero then
                if TCS_FUNC.Talent.Mokka.flag == TCS_ENUM.Switch.No then
                  TCS_FUNC.Talent.Mokka.flag = TCS_ENUM.Switch.Yes;
                  TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mokka.first");
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  local iRandomId = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                  local sidCreatureTarget = arrCreatureTarget[iRandomId];
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_FEAR_MY_ROAR, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Mokka.move = function(iSide, itemUnit)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Mokka.strHero then
              if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local arrCreatureMatch = {};
                local arrCreatureTarget = GetCreatures(iOppositeSide);
                for i, sidCreatureTarget in arrCreatureTarget do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureTarget, 1, iSide, TCS_ENUM.Switch.No);
                  if length(arrCreatureNearBy) > 1
                    or (
                      length(arrCreatureNearBy) == 1
                      and TTHCS_GLOBAL.geneUnitInfo(arrCreatureNearBy[0])["UnitNumber"] > itemCreatureTarget["UnitNumber"]
                    ) then
                    push(arrCreatureMatch, sidCreatureTarget);
                  end;
                end;
                if length(arrCreatureMatch) > 0 then
                  if TCS_FUNC.Talent.Mokka.flagCharge == TCS_ENUM.Switch.Yes then
                    TCS_FUNC.Talent.Mokka.flagCharge = TCS_ENUM.Switch.No;
                    TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mokka.move");
                    local iRandomId = TTHCS_COMMON.getRandom(length(arrCreatureMatch));
                    local sidCreatureMatch = arrCreatureMatch[iRandomId];
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_FEAR_MY_ROAR, sidCreatureMatch, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_SHOUT_OF_MANY, sidCreatureMatch, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                    end;
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                    ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
                  end;
                end;
              end;
            end;
          end;
        end;
        TCS_FUNC.Talent.Mokka.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
          local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if strHero == TCS_FUNC.Talent.Mokka.strHero then
              if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
                and itemHeroMana[iSide] < 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Talent.Mokka.charge");
                TCS_FUNC.Talent.Mokka.flagCharge = TCS_ENUM.Switch.Yes;
              end;
            end;
          end;
        end;

  -- 英雄技能
    TCS_FUNC.Skill = {};

    -- HERO_SKILL_REPAIR_MACHINES 317 战地修理
      TCS_FUNC.Skill.RepairMachines = {};
      TCS_FUNC.Skill.RepairMachines.move = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnit["UnitName"] == sidHero and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_REPAIR_MACHINES] == 1 then
            local listInitWarMachine = TCS_VARI.Snapshot.init[TTH_ENUM.CombatWarMachine][iSide];
            local arrWarMachineCurrent = GetWarMachines(iSide);
            local listWarMachineRepair = {};
            for i, itemInitWarMachine in listInitWarMachine do
              if contains(arrWarMachineCurrent, itemInitWarMachine["UnitName"]) == nil then
                push(listWarMachineRepair, itemInitWarMachine);
              end;
            end;
            if length(listWarMachineRepair) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.RepairMachines.move");
              for i, itemWarMachineRepair in listWarMachineRepair do
                TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_ACADEMY_TOOL, 1, SPELL_ABILITY_REPAIR, itemWarMachineRepair["UnitName"], TCS_ENUM.Switch.No);
                ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_REPAIR_MACHINES]["Effect"], itemWarMachineRepair["UnitName"], 5);
              end;
            end;
          end;
        end;
      end;

    -- HERO_SKILL_MAGIC_BALANCE 314 魔力平衡
      TCS_FUNC.Skill.MagicBalance = {};
      TCS_FUNC.Skill.MagicBalance.flag = {};
      TCS_FUNC.Skill.MagicBalance.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_MAGIC_BALANCE] == 1
              or (
                strHero == "Sheltem"
                and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
              )
            )
            and itemHeroMana[iSide] < 0
            and (
              length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            ) then
            if TCS_FUNC.Skill.MagicBalance.flag[strHero] == nil then
              TCS_FUNC.Skill.MagicBalance.flag[strHero] = TCS_ENUM.Switch.No;
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.MagicBalance.trigger");
              TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_ACADEMY_TOOL, 100000, SPELL_ABILITY_POWER_FEED, TCS_ENUM.Switch.No);
              local iSpellPower = TCS_VARI.Info.HeroAttribute[strHero][STAT_SPELL_POWER];
              local iManaPoint = TTHCS_COMMON.floor(iSpellPower * 7.5);
              TTHCS_GLOBAL.setHeroMana(sidHero, iManaPoint);
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_MAGIC_BALANCE]["Effect"], sidHero, 5);
            end;
          end;
        end;
      end;

    -- HERO_SKILL_DEMONIC_RETALIATION 092 领主之怒
      TCS_FUNC.Skill.DemonicRetaliation = {};
      TCS_FUNC.Skill.DemonicRetaliation.flag = {};
      TCS_FUNC.Skill.DemonicRetaliation.iMana = 3;
      TCS_FUNC.Skill.DemonicRetaliation.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] ~= sidHero
            and itemHeroMana[iSide] < 0
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_DEMONIC_RETALIATION] == 1 then
            if TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] == nil then
              TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] = TCS_ENUM.Switch.Yes;
            end;
            if TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] == TCS_ENUM.Switch.Yes then
              TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] = TCS_ENUM.Switch.No;
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.DemonicRetaliation.trigger");
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_DEMONIC_RETALIATION]["Effect"], sidHero, 5);
              local itemUnitLastTemp = TTHCS_GLOBAL.geneUnitInfo(sidHero);
              local itemHeroManaTemp = {};
              itemHeroManaTemp[iSide] = 0;

              local itemHeroBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatHero][iSide];
              local itemHeroLast = TCS_VARI.Snapshot.last[TTH_ENUM.CombatHero][iSide];
              local iDiffMana = itemHeroBefore["CurrentMana"] - itemHeroLast["CurrentMana"];
              local iTriggerCount = TTHCS_COMMON.ceil(iDiffMana / TCS_FUNC.Skill.DemonicRetaliation.iMana);
              print("iTriggerCount: "..iTriggerCount);

              local listCreatureNumberDecreaseTemp = {};
              listCreatureNumberDecreaseTemp[iOppositeSide] = {};
              for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                if i == iTriggerCount then
                  break;
                end;
                push(listCreatureNumberDecreaseTemp[iOppositeSide], sidCreatureDecrease);
              end;

              -- Calid 100 格劳尔
                TCS_FUNC.Talent.Calid.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecrease, iTriggerCount);

              -- Deleb 101 迪里布
                TCS_FUNC.Talent.Deleb.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecreaseTemp);

              -- Orlando2 104 奥兰多
                TCS_FUNC.Talent.Orlando2.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecreaseTemp);

              -- Efion 105 阿莱斯特
                TCS_FUNC.Talent.Efion.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecreaseTemp, iTriggerCount, not nil);

              -- Oddrema 109 耶泽蓓丝
                TCS_FUNC.Talent.Oddrema.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecreaseTemp);

              -- HERO_SKILL_WEAKENING_STRIKE 095 虚弱打击
              -- HERO_SKILL_BARBARIAN_WEAKENING_STRIKE 209 虚弱打击
                TCS_FUNC.Skill.WeakeningStrike.trigger(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecreaseTemp);

              -- ARTIFACTSET_HUNTERS 007 射手梦幻
                TCS_FUNC.ArtifactSet.Hunters.first(iSide, itemUnit, itemUnitLastTemp, itemHeroManaTemp, listCreatureNumberDecreaseTemp);

            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.DemonicRetaliation.charge = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_DEMONIC_RETALIATION] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.DemonicRetaliation.charge");
            TCS_FUNC.Skill.DemonicRetaliation.flag[strHero] = TCS_ENUM.Switch.Yes;
          end;
        end;
      end;

    -- HERO_SKILL_CASTER_CERTIFICATE 081 神秘精髓
      TCS_FUNC.Skill.CasterCertificate = {};
      TCS_FUNC.Skill.CasterCertificate.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_CASTER_CERTIFICATE] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.CasterCertificate.start");
            local itemHero = TTHCS_GLOBAL.geneUnitInfo(sidHero);
            local iCurrentMana = itemHero["CurrentMana"];
            local iRecoveryMana = TTHCS_COMMON.ceil(iCurrentMana * 0.2);
            TTHCS_GLOBAL.setHeroMana(sidHero, iCurrentMana + iRecoveryMana);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_CASTER_CERTIFICATE]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- HERO_SKILL_PARIAH 083 堕落骑士
      TCS_FUNC.Skill.Pariah = {};
      TCS_FUNC.Skill.Pariah.arrCreature = {[0] = {}, [1] = {}};
      TCS_FUNC.Skill.Pariah.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local iCreatureId = TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_PARIAH];
          if iCreatureId > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.Pariah.start");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iCreatureNumber = TTHCS_COMMON.ceil(iHeroLevel / 10);
            if (
                TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_CURSE_SHOULDER] == 1
                or TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BOOTS_OF_THE_WALKING_DEAD] == 1
              )
              and TCS_VARI.Info.TthMap10W ~= 1 then
              iCreatureId = CREATURE_DRAGON_KNIGHT;
              iCreatureNumber = 1;
            end;
            local iPosX, iPosY = TTHCS_GLOBAL.getGodPosition(iSide);
            local sidCreatureSummon = TTHCS_THREAD.summonCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
            TCS_FUNC.Summon.trigger(iSide, sidCreatureSummon);
            push(TCS_FUNC.Skill.Pariah.arrCreature[iSide], sidCreatureSummon);
            TCS_BATTLE.atb.record(sidCreatureSummon, TCS_ENUM.Atb.clear);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_PARIAH]["Effect"], sidCreatureSummon, 5);
            local sidOppositeHero = GetHero(iOppositeSide);
            if sidOppositeHero ~= nil then
              local strOppositeHero = GetHeroName(sidOppositeHero);
              if TCS_VARI.Info.HeroSkill[strOppositeHero][HERO_SKILL_ELEMENTAL_BALANCE] == 1 then
                local iOppositePosX, iOppositePosY = TTHCS_GLOBAL.getGodPosition(iOppositeSide);
                local sidCreatureBalance = TTHCS_THREAD.summonCreature(iOppositeSide, iCreatureId, iCreatureNumber, iOppositePosX, iOppositePosY);
                TCS_FUNC.Summon.trigger(iOppositeSide, sidCreatureBalance);
                push(TCS_FUNC.Skill.Pariah.arrCreature[iOppositeSide], sidCreatureBalance);
                TCS_BATTLE.atb.record(sidCreatureBalance, TCS_ENUM.Atb.clear);
                ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_BALANCE]["Effect"], sidCreatureBalance, 5);
              end;
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.Pariah.first = function(iSide)
        if length(TCS_FUNC.Skill.Pariah.arrCreature[iSide]) > 0 then
          for i, sidCreature in TCS_FUNC.Skill.Pariah.arrCreature[iSide] do
            TCS_BATTLE.atb.record(sidCreature, TCS_ENUM.Atb.mid);
          end
        end;
      end;

    -- HERO_SKILL_EXPLODING_CORPSES 093 风暴突袭
      TCS_FUNC.Skill.ExplodingCorpses = {};
      TCS_FUNC.Skill.ExplodingCorpses.flag = {};
      TCS_FUNC.Skill.ExplodingCorpses.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
            and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and (
              length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            )
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_EXPLODING_CORPSES] == 1
              or (strHero == "Biara" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1)
              or strHero == "Raelag_10WAI"
            ) then
            if TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] == nil then
              TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] = 2;
            end;
            if TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] >= 2 then
              TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] = 0;
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.ExplodingCorpses.trigger");
              local sidCreatureTarget = "";
              if length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
                sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][0];
              elseif length(listCreatureStatusDeath[iOppositeSide]) > 0 then
                sidCreatureTarget = listCreatureStatusDeath[iOppositeSide][0];
              end;
              local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
              local arrUnitTarget = TTHCS_GLOBAL.listUnitInArea(itemCreatureTarget, 1, iOppositeSide, TCS_ENUM.Switch.Yes);
              for i, sidUnitTarget in arrUnitTarget do
                TTHCS_THREAD.castAimedSpell5Mana(sidHero, SPELL_LIGHTNING_BOLT, sidUnitTarget, TCS_ENUM.Switch.No);
              end;
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_EXPLODING_CORPSES]["Effect"], itemUnitLast["UnitName"], 5);
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.ExplodingCorpses.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_EXPLODING_CORPSES] == 1
              or (strHero == "Biara" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1)
              or strHero == "Raelag_10WAI"
            )
            and itemHeroMana[iSide] < 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.ExplodingCorpses.charge");
            if TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] == nil then
              TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] = 2;
            end;
            TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] = TCS_FUNC.Skill.ExplodingCorpses.flag[strHero] + 1;
          end;
        end;
      end;

    -- HERO_SKILL_ELEMENTAL_OVERKILL 149 混乱风暴
      TCS_FUNC.Skill.ElementalOverkill = {};
      TCS_FUNC.Skill.ElementalOverkill.arrDarkSpellId = {
        [0] = 11
        , [1] = 12
        , [2] = 13
        , [3] = 14
        , [4] = 15
        , [5] = 17
        , [6] = 18
        , [7] = 19
        , [8] = 277
      };
      TCS_FUNC.Skill.ElementalOverkill.getRandomDarkSpellId = function()
        local iRandomDarkSpellIndex = TTHCS_COMMON.getRandom(length(TCS_FUNC.Skill.ElementalOverkill.arrDarkSpellId));
        local iRandomDarkSpellId = TCS_FUNC.Skill.ElementalOverkill.arrDarkSpellId[iRandomDarkSpellIndex];
        return iRandomDarkSpellId;
      end;
      TCS_FUNC.Skill.ElementalOverkill.death = function(iSide, itemUnit, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ELEMENTAL_OVERKILL] == 1
            and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.ElementalOverkill.death");
            local listSnapshotBefore = TTHCS_GLOBAL.geneSnapshot(TCS_ENUM.Switch.No); -- 记录触发前战场快照
            for i, sidCreatureDeath in listCreatureStatusDeath[iOppositeSide] do
              local itemCreatureDeath = TTHCS_GLOBAL.geneUnitInfo(sidCreatureDeath);
              TTHCS_THREAD.castAimedSpell5Mana4Body(sidHero, SPELL_CONSUME_CORPSE, sidCreatureDeath, TCS_ENUM.Switch.No);
              local iSpellId = SPELL_METEOR_SHOWER;
              if strHero == "Sheltem" then
                iSpellId = SPELL_EMPOWERED_METEOR_SHOWER;
              elseif strHero == "Ash" then
                iSpellId = SPELL_FIREBALL;
              elseif strHero == "Calid2" then
                iSpellId = SPELL_UBER_METEOR_SHOWER;
              end;
              TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, itemCreatureDeath["PosX"], itemCreatureDeath["PosY"], TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
            end;
            sleep(1000)
            local listSnapshotCurrent = TTHCS_GLOBAL.geneSnapshot(TCS_ENUM.Switch.No); -- 记录触发后战场快照
            local listSnapshotDiff = TTHCS_GLOBAL.diffSnapshot(TCS_VARI.Snapshot.init, listSnapshotBefore, listSnapshotCurrent);
            local listCreatureNumberDecrease = {};
            listCreatureNumberDecrease[iOppositeSide] = {};
            for sidCreature, itemCreatureDiff in listSnapshotDiff[TTH_ENUM.CombatCreature][iOppositeSide] do
              if itemCreatureDiff[TCS_ENUM.Snapshot.Number] == TCS_ENUM.Snapshot.Creature.Number.Decrease then
                push(listCreatureNumberDecrease[iOppositeSide], sidCreature);
              end;
            end;
            if length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
              for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
                local iRandomDarkSpellId = TCS_FUNC.Skill.ElementalOverkill.getRandomDarkSpellId();
                TTHCS_THREAD.cast.aimed.impl(sidHero, iRandomDarkSpellId, sidCreatureDecrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                if strHero == "Zydar" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iRandomDarkSpellId = TCS_FUNC.Skill.ElementalOverkill.getRandomDarkSpellId();
                  TTHCS_THREAD.cast.aimed.impl(sidHero, iRandomDarkSpellId, sidCreatureDecrease, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
              end;
            end;
            TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_OVERKILL]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- HERO_SKILL_CONSUME_CORPSE 058 食尸者
      TCS_FUNC.Skill.ConsumeCorpse = {};
      TCS_FUNC.Skill.ConsumeCorpse.consume = function(iSide, itemUnit, listCreatureStatusConsume)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
          local iCreatureNumber = iHeroLevel;
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_CONSUME_CORPSE] == 1 then
            if length(listCreatureStatusConsume[iSide]) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.ConsumeCorpse.consume");
              local iCreatureId = CREATURE_INFERNO_TOOL_ConsumeCorpse;
              if strHero == "Zydar" then
                iCreatureId = CREATURE_INFERNO_TOOL_ConsumeCorpse_Zydar;
              end;
              for i, sidCreatureConsume in listCreatureStatusConsume[iSide] do
                local itemCreatureConsume = TTHCS_GLOBAL.geneUnitInfo(sidCreatureConsume);
                local listCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iSide];
                for i, itemCreatureBefore in listCreatureBefore do
                  if itemCreatureBefore["UnitName"] == sidCreatureConsume then
                    local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureBefore, 1, iSide, TCS_ENUM.Switch.No);
                    for i, sidCreatureNearBy in arrCreatureNearBy do
                      TTHCS_THREAD.cast.aimed.tool(iSide, iCreatureId, iCreatureNumber, SPELL_REGENERATION, sidCreatureNearBy, TCS_ENUM.Switch.No);
                    end;
                  end;
                end;
              end;
            end;
            -- Zydar 泽达
              if length(listCreatureStatusConsume[iOppositeSide]) > 0
                and strHero == "Zydar" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Skill.ConsumeCorpse.consume.Zydar");
                local iCreatureId = CREATURE_INFERNO_TOOL_ConsumeCorpse_Zydar;
                for i, sidCreatureConsume in listCreatureStatusConsume[iOppositeSide] do
                  local itemCreatureConsume = TTHCS_GLOBAL.geneUnitInfo(sidCreatureConsume);
                  local listCreatureBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatCreature][iOppositeSide];
                  for i, itemCreatureBefore in listCreatureBefore do
                    if itemCreatureBefore["UnitName"] == sidCreatureConsume then
                      local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureBefore, 1, iSide, TCS_ENUM.Switch.No);
                      for i, sidCreatureNearBy in arrCreatureNearBy do
                        TTHCS_THREAD.cast.aimed.tool(iSide, iCreatureId, iCreatureNumber, SPELL_REGENERATION, sidCreatureNearBy, TCS_ENUM.Switch.No);
                      end;
                    end;
                  end;
                end;
              end;
          end;
        end;
      end;

    -- HERO_SKILL_WEAKENING_STRIKE 095 虚弱打击
    -- HERO_SKILL_BARBARIAN_WEAKENING_STRIKE 209 虚弱打击
      TCS_FUNC.Skill.WeakeningStrike = {};
      TCS_FUNC.Skill.WeakeningStrike.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and itemHeroMana[iSide] == 0
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_WEAKENING_STRIKE] == 1
              or TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_BARBARIAN_WEAKENING_STRIKE] == 1
            ) then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.WeakeningStrike.trigger");
            local iManaPoint = 2;
            TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
          end;
        end;
      end;

    -- HERO_SKILL_FIRE_AFFINITY 097 元素勇士
      TCS_FUNC.Skill.FireAffinity = {};
      TCS_FUNC.Skill.FireAffinity.sidCreature = { [0] = "", [1] = ""};
      TCS_FUNC.Skill.FireAffinity.enumElementCreatureId = { 85, 86, 87, 88 };
      TCS_FUNC.Skill.FireAffinity.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureStatusSummon, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local iAppointedSummonId = TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRE_AFFINITY];
          if iAppointedSummonId > 0
            and length(listCreatureStatusSummon[iSide]) > 0
            and length(listCreatureStatusDeath[iSide]) == 0
            and itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and itemHeroMana[iSide] < 0 then
            -- 过滤生物类型
              local arrSummonCreature4Type = {};
              for i, sidSummon in listCreatureStatusSummon[iSide] do
                local itemSummon = TTHCS_GLOBAL.geneUnitInfo(sidSummon);
                if contains(TCS_FUNC.Skill.FireAffinity.enumElementCreatureId, itemSummon["UnitType"]) ~= nil then
                  push(arrSummonCreature4Type, sidSummon);
                end;
              end;
            -- 过滤镜像元素生物
              local arrSummonCreature4Phantom = {};
              for i, sidSummon in arrSummonCreature4Type do
                local itemSummon = TTHCS_GLOBAL.geneUnitInfo(sidSummon);
                local bMatch = TCS_ENUM.Switch.No;
                for j, itemCreatureLast in TCS_VARI.Snapshot.last[TTH_ENUM.CombatCreature][iSide] do
                  if sidSummon ~= itemCreatureLast["UnitName"] then
                    if (itemSummon["PosX"] - itemCreatureLast["PosX"] <= 1 or itemSummon["PosX"] - itemCreatureLast["PosX"] >= -1)
                      and (itemSummon["PosY"] - itemCreatureLast["PosY"] <= 1 or itemSummon["PosY"] - itemCreatureLast["PosY"] >= -1)
                      and itemSummon["UnitType"] == itemCreatureLast["UnitType"]
                      and itemSummon["UnitNumber"] == itemCreatureLast["UnitNumber"] then
                      bMatch = TCS_ENUM.Switch.Yes;
                    end;
                  end;
                end;
                if bMatch == TCS_ENUM.Switch.No then
                  push(arrSummonCreature4Phantom, sidSummon);
                end;
              end;
            -- 执行触发
              if length(arrSummonCreature4Phantom) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Skill.FireAffinity.trigger");
                -- 移除原元素召唤生物
                  if TCS_FUNC.Skill.FireAffinity.sidCreature[iSide] ~= "" then
                    TTHCS_THREAD.removeCreature(TCS_FUNC.Skill.FireAffinity.sidCreature[iSide]);
                  end;

                -- 执行指定召唤
                  for i, sidSummon in arrSummonCreature4Phantom do
                    local itemSummon = TTHCS_GLOBAL.geneUnitInfo(sidSummon);
                    local sidAppointedSummon = sidSummon;
                    if itemSummon["UnitType"] ~= iAppointedSummonId then
                      TTHCS_THREAD.removeCreature(sidSummon);
                      sidAppointedSummon = TTHCS_THREAD.summonCreature(iSide, iAppointedSummonId, itemSummon["UnitNumber"], itemSummon["PosX"], itemSummon["PosY"], TCS_ENUM.Switch.No);
                      TCS_FUNC.Skill.FireAffinity.sidCreature[iSide] = sidAppointedSummon;
                    end;
                    TCS_FUNC.Summon.trigger(iSide, sidAppointedSummon);
                  end;

              end;
          end;
        end;
      end;

    -- HERO_SKILL_DEATH_TREAD 099 攻城大师
      TCS_FUNC.Skill.DeathTread = {};
      TCS_FUNC.Skill.DeathTread.trigger = function(iSide, itemUnit, listBuildingStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_DEATH_TREAD] == 1
            and length(listBuildingStatusDeath[iOppositeSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.DeathTread.trigger");
            TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
            local arrCreatureTarget = GetCreatures(iSide);
            for i, sidCreatureTarget in arrCreatureTarget do
              TCS_BATTLE.atb.record(sidCreatureTarget, TCS_ENUM.Atb.max);
            end;
            local arrWarMachineTarget = GetWarMachines(iSide);
            for i, sidWarMachineTarget in arrWarMachineTarget do
              local itemWarMachineTarget = TTHCS_GLOBAL.geneUnitInfo(sidWarMachineTarget);
              if itemWarMachineTarget["UnitType"] ~= TTH_ENUM.WarmachineCatapult then
                TCS_BATTLE.atb.record(sidWarMachineTarget, TCS_ENUM.Atb.max);
              end;
            end;
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_DEATH_TREAD]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
      TCS_FUNC.Skill.DeadLuck = {};
      TCS_FUNC.Skill.DeadLuck.flag = {};
      TCS_FUNC.Skill.DeadLuck.flagSpecailHero = {};
      TCS_FUNC.Skill.DeadLuck.arrSpellId = { [0] = 11, [1] = 13, [2] = 15, [3] = 14, [4] = 277, [5] = 18, [6] = 19 };
      TCS_FUNC.Skill.DeadLuck.move = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local arrCreatureTarget = GetCreatures(iOppositeSide);
          if itemUnit["UnitName"] == sidHero and length(arrCreatureTarget) > 1
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_DEAD_LUCK] == 1
              or TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BOOTS_OF_THE_WALKING_DEAD] == 1
            ) then
            if contains(TTHCS_TABLE.CombatStartSpecialHero, strHero) ~= nil
              and TCS_FUNC.Skill.DeadLuck.flagSpecailHero[strHero] == nil then
              TCS_FUNC.Skill.DeadLuck.flagSpecailHero[strHero] = TCS_ENUM.Switch.Yes;
              return nil;
            end;
            if TCS_FUNC.Skill.DeadLuck.flag[strHero] == nil then
              TCS_FUNC.Skill.DeadLuck.flag[strHero] = TCS_ENUM.Switch.Yes;
            end;
            if TCS_FUNC.Skill.DeadLuck.flag[strHero] == TCS_ENUM.Switch.Yes then
              TCS_FUNC.Skill.DeadLuck.flag[strHero] = TCS_ENUM.Switch.No;
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.DeadLuck.move");
              local iTimes = 1;
              if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_DEAD_LUCK] == 1
                and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BOOTS_OF_THE_WALKING_DEAD] == 1 then
                iTimes = iTimes + 1;
              end;
              if strHero == "Effig" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iTimes = iTimes + 1;
              end;
              for i = 1, iTimes do
                local arrSpellId = TCS_FUNC.Skill.DeadLuck.arrSpellId;
                local iRandomSpellIndex = TTHCS_COMMON.getRandom(length(arrSpellId));
                local iSpellId = arrSpellId[iRandomSpellIndex];
                local iRandomCreatureIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                local strCreatureTarget = arrCreatureTarget[iRandomCreatureIndex];
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
                if (iSpellId == SPELL_DISRUPTING_RAY or iSpellId == SPELL_PLAGUE)
                  and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_MASTER_OF_SICKNESS] == 1 then
                  if iSpellId == SPELL_DISRUPTING_RAY then
                    iSpellId = SPELL_MASS_DISRUPTING_RAY;
                  elseif iSpellId == SPELL_PLAGUE then
                    iSpellId = SPELL_MASS_PLAGUE;
                  end;
                  TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                else
                  TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, strCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                if strHero == "Effig" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_CURSE, strCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_DEAD_LUCK]["Effect"], strCreatureTarget, 5);
                TCS_BATTLE.atb.record(strCreatureTarget, TCS_ENUM.Atb.min);
              end;
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.DeadLuck.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_DEAD_LUCK] == 1
              or TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BOOTS_OF_THE_WALKING_DEAD] == 1
            )
            and itemHeroMana[iSide] < 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.DeadLuck.charge");
            TCS_FUNC.Skill.DeadLuck.flag[strHero] = TCS_ENUM.Switch.Yes;
          end;
        end;
      end;

    -- HERO_SKILL_TWILIGHT 109 微光黎明
      TCS_FUNC.Skill.Twilight = {};
      TCS_FUNC.Skill.Twilight.arrCreature = {[0] = {}, [1] = {}};
      TCS_FUNC.Skill.Twilight.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local iCreatureId = TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_TWILIGHT];
          if iCreatureId > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.Twilight.start");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iCreatureNumber = TTHCS_COMMON.ceil(iHeroLevel / 10);
            if (
                TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_ANGELIC_ALLIANCE] == 1
                or TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_SENTINEL] == 1
              )
              and TCS_VARI.Info.TthMap10W ~= 1 then
              iCreatureId = CREATURE_CHERUBIN;
              iCreatureNumber = 1;
            end;
            local iPosX, iPosY = TTHCS_GLOBAL.getGodPosition(iSide);
            local sidCreatureSummon = TTHCS_THREAD.summonCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
            push(TCS_FUNC.Skill.Twilight.arrCreature[iSide], sidCreatureSummon);
            TCS_BATTLE.atb.record(sidCreatureSummon, TCS_ENUM.Atb.clear);
            TCS_FUNC.Summon.trigger(iSide, sidCreatureSummon);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_TWILIGHT]["Effect"], sidCreatureSummon, 5);
            local sidOppositeHero = GetHero(iOppositeSide);
            if sidOppositeHero ~= nil then
              local strOppositeHero = GetHeroName(sidOppositeHero);
              if TCS_VARI.Info.HeroSkill[strOppositeHero][HERO_SKILL_ELEMENTAL_BALANCE] == 1 then
                local iOppositePosX, iOppositePosY = TTHCS_GLOBAL.getGodPosition(iOppositeSide);
                local sidCreatureBalance = TTHCS_THREAD.summonCreature(iOppositeSide, iCreatureId, iCreatureNumber, iOppositePosX, iOppositePosY);
                TCS_FUNC.Summon.trigger(iOppositeSide, sidCreatureBalance);
                push(TCS_FUNC.Skill.Twilight.arrCreature[iOppositeSide], sidCreatureBalance);
                TCS_BATTLE.atb.record(sidCreatureBalance, TCS_ENUM.Atb.clear);
                ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_BALANCE]["Effect"], sidCreatureBalance, 5);
              end;
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.Twilight.first = function(iSide)
        if length(TCS_FUNC.Skill.Twilight.arrCreature[iSide]) > 0 then
          for i, sidCreature in TCS_FUNC.Skill.Twilight.arrCreature[iSide] do
            TCS_BATTLE.atb.record(sidCreature, TCS_ENUM.Atb.mid);
          end
        end;
      end;

    -- HERO_SKILL_FOREST_GUARD_EMBLEM 115 战地支援
      TCS_FUNC.Skill.ForestGuardEmblem = {};
      TCS_FUNC.Skill.ForestGuardEmblem.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FOREST_GUARD_EMBLEM] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.ForestGuardEmblem.start");
            local arrRandomCreature = TTHCS_GLOBAL.getRandomCreature(iSide);
            for i, sidRandomCreature in arrRandomCreature do
              local itemRandomCreature = TTHCS_GLOBAL.geneUnitInfo(sidRandomCreature);
              local iCreatureNumber = 1;
              if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_LAST_STAND] == 1 then
                iCreatureNumber = iCreatureNumber * 2;
              end;
              if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_CROWN_OF_LEADER] == 1 then
                iCreatureNumber = iCreatureNumber * 2;
              end;
              local sidCreatureAdd = TTHCS_THREAD.addCreature(iSide, itemRandomCreature["UnitType"], iCreatureNumber, itemRandomCreature["PosX"], itemRandomCreature["PosY"]);
              TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreatureAdd] = TTHCS_GLOBAL.geneUnitInfo(sidCreatureAdd);
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_FOREST_GUARD_EMBLEM]["Effect"], sidCreatureAdd, 5);
            end;
          end;
        end;
      end;

    -- HERO_SKILL_ECHO_OF_SYLANNA 315 西莱纳的回响
      TCS_FUNC.Skill.EchoOfSylanna = {};
      TCS_FUNC.Skill.EchoOfSylanna.flag = {};
      TCS_FUNC.Skill.EchoOfSylanna.move = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnit["UnitName"] == sidHero
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ECHO_OF_SYLANNA] == 1
              or TCS_FUNC.Talent.Sandro.check(strHero, SPELL_SUMMON_HIVE)
            ) then
            if TCS_FUNC.Skill.EchoOfSylanna.flag[strHero] == nil then
              TCS_FUNC.Skill.EchoOfSylanna.flag[strHero] = TCS_ENUM.Switch.Yes;
            end;
            if TCS_FUNC.Skill.EchoOfSylanna.flag[strHero] == TCS_ENUM.Switch.Yes then
              TCS_FUNC.Skill.EchoOfSylanna.flag[strHero] = TCS_ENUM.Switch.No;
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.EchoOfSylanna.move");
              local iMaxCountHive = 3;
              local iTimes = 1;
              local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
              local iRecoveryMana = TTHCS_COMMON.ceil(iHeroLevel / 6);
              if strHero == "Sandro" then
                iMaxCountHive = 1;
              end;
              if strHero == "Diraya" then
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  iRecoveryMana = TTHCS_COMMON.ceil(iRecoveryMana * 2);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  iMaxCountHive = iMaxCountHive + 2;
                  iTimes = iTimes + 1;
                end;
              end;
              for i = 1, iTimes do
                local iCountHive = 0;
                local arrSpellSpawn = GetSpellSpawns(iSide);
                for i, strSpellSpawn in arrSpellSpawn do
                  if string.match(strSpellSpawn, "SPELL_SUMMON_HIVE") ~= nil then
                    iCountHive = iCountHive + 1;
                  end;
                end;
                if iCountHive < iMaxCountHive then
                  local arrCreatureTarget = GetCreatures(iOppositeSide);
                  local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                  local sidCreatureTarget = arrCreatureTarget[iRandomIndex];
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  local sidCreatureSign = TTHCS_THREAD.addCreature(iSide, CREATURE_PRESERVE_TOOL, 1, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"]);
                  local itemCreatureSign = TTHCS_GLOBAL.geneUnitInfo(sidCreatureSign);
                  TTHCS_THREAD.removeCreature(sidCreatureSign);
                  TTHCS_THREAD.cast.area.impl(sidHero, SPELL_SUMMON_HIVE, itemCreatureSign["PosX"], itemCreatureSign["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                else
                  TTHCS_GLOBAL.recoveryHeroMana(sidHero, iRecoveryMana);
                end;
              end;
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ECHO_OF_SYLANNA]["Effect"], sidHero, 5);
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.EchoOfSylanna.destroy = function(iSide, itemUnit, itemUnitLast, listSpellSpawnStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ECHO_OF_SYLANNA] == 1
              or TCS_FUNC.Talent.Sandro.check(strHero, SPELL_SUMMON_HIVE)
            )
            and length(listSpellSpawnStatusDeath[iSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.EchoOfSylanna.destroy");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iRecoveryMana = TTHCS_COMMON.ceil(iHeroLevel / 6);
            if strHero == "Diraya" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              iRecoveryMana = TTHCS_COMMON.ceil(iRecoveryMana * 2);
            end;
            local iCountHiveDestroy = 0;
            for i, strSpellSpawnStatusDeath in listSpellSpawnStatusDeath[iSide] do
              if string.match(strSpellSpawnStatusDeath, "SPELL_SUMMON_HIVE") ~= nil then
                iCountHiveDestroy = iCountHiveDestroy + 1;
              end;
            end;
            if iCountHiveDestroy > 0 then
              TTHCS_GLOBAL.recoveryHeroMana(sidHero, iRecoveryMana * iCountHiveDestroy);
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ECHO_OF_SYLANNA]["Effect"], sidHero, 5);
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.EchoOfSylanna.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ECHO_OF_SYLANNA] == 1
              or TCS_FUNC.Talent.Sandro.check(strHero, SPELL_SUMMON_HIVE)
            )
            and itemHeroMana[iSide] < 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.EchoOfSylanna.charge");
            TCS_FUNC.Skill.EchoOfSylanna.flag[strHero] = TCS_ENUM.Switch.Yes;
          end;
        end;
      end;

    -- HERO_SKILL_ENCHANT_MACHINES 316 附魔机械
      TCS_FUNC.Skill.EnchantMachines = {};
      TCS_FUNC.Skill.EnchantMachines.flag = {
        [1] = 1
        , [2] = 1
        , [3] = 1
        , [4] = 1
      };
      TCS_FUNC.Skill.EnchantMachines.recordBallista = {};
      TCS_FUNC.Skill.EnchantMachines.mapSpellId = {
        [1] = 40
        , [2] = 29
        , [3] = 34
        , [4] = 28
      };
      TCS_FUNC.Skill.EnchantMachines.mapCreatureId = {
        ["Havez"] = { [0] = 57, [1] = 58, [2] = 159 }
        , ["Isher"] = { [0] = 61, [1] = 62, [2] = 161 }
        , ["Davius"] = { [0] = 67, [1] = 68, [2] = 164 }
      };
      TCS_FUNC.Skill.EnchantMachines.checkMove = function(iSide, strHero)
        if strHero == "Havez"
          or strHero == "Isher"
          or strHero == "Davius" then
          local listCreatureTarget = {};
          local arrCreature = GetCreatures(iSide);
          for i, sidCreature in arrCreature do
            local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
            if itemCreature["UnitType"] == TCS_FUNC.Skill.EnchantMachines.mapCreatureId[strHero][0]
              or itemCreature["UnitType"] == TCS_FUNC.Skill.EnchantMachines.mapCreatureId[strHero][1]
              or itemCreature["UnitType"] == TCS_FUNC.Skill.EnchantMachines.mapCreatureId[strHero][2] then
              push(listCreatureTarget, itemCreature);
            end;
          end;
          listCreatureTarget = TTHCS_COMMON.desc8key(listCreatureTarget, "UnitNumber");
          if length(listCreatureTarget) > 0 then
            return listCreatureTarget[0]["UnitName"];
          end;
        end
        return nil;
      end;
      TCS_FUNC.Skill.EnchantMachines.move = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnit ~= nil and itemUnit["UnitName"] == sidHero
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ENCHANT_MACHINES] == 1 then
            local arrWarMachine = GetWarMachines(iSide);
            if length(arrWarMachine) > 0 then
              local iTimes = 1;
              if strHero == "Minasli" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iTimes = iTimes + 1;
              end;
              for i = 1, iTimes do
                for j, sidWarMachine in arrWarMachine do
                  local itemWarMachine = TTHCS_GLOBAL.geneUnitInfo(sidWarMachine);
                  if TCS_FUNC.Skill.EnchantMachines.flag[itemWarMachine["UnitType"]] == TCS_ENUM.Switch.Yes then
                    if itemWarMachine["UnitType"] ~= TTH_ENUM.WarmachineAmmoCart
                      and (
                        strHero ~= "Minasli" or TCS_VARI.Info.HeroUpgradeMastery[strHero] ~= 1
                      ) then
                      TCS_FUNC.Skill.EnchantMachines.flag[itemWarMachine["UnitType"]] = TCS_ENUM.Switch.No;
                    end;
                    local arrCreatureTarget = {};
                    local sidCreatureMain = TCS_FUNC.Skill.EnchantMachines.checkMove(iSide, strHero);
                    if itemWarMachine["UnitType"] == TTH_ENUM.WarmachineBallista then
                      if sidCreatureMain == nil or IsCombatUnit(sidCreatureMain) == nil then
                        sidCreatureMain = nil;
                      end;
                    end;
                    if sidCreatureMain ~= nil and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                      push(arrCreatureTarget, sidCreatureMain);
                    end;
                    local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemWarMachine, 1, iSide, TCS_ENUM.Switch.No);
                    if itemWarMachine["UnitType"] == TTH_ENUM.WarmachineBallista then
                      local arrCreatureNoPhantom = {};
                      for k, sidCreature in arrCreatureNearBy do
                        local bCheck = TCS_ENUM.Switch.No;
                        for sidCreatureKey, sidCreatureValue in TCS_FUNC.Skill.EnchantMachines.recordBallista do
                          if (
                            sidCreature == sidCreatureKey
                            and sidCreatureValue ~= nil
                            and IsCombatUnit(sidCreatureValue) ~= nil
                            )
                            or sidCreature == sidCreatureValue then
                              bCheck = TCS_ENUM.Switch.Yes;
                          end;
                        end;
                        if bCheck == TCS_ENUM.Switch.No then
                          push(arrCreatureNoPhantom, sidCreature);
                        end;
                      end;
                      arrCreatureNearBy = arrCreatureNoPhantom;
                    end;
                    if length(arrCreatureNearBy) > 0 then
                      local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureNearBy));
                      push(arrCreatureTarget, arrCreatureNearBy[iRandomIndex]);
                    end;
                    if length(arrCreatureTarget) > 0 then
                      TTHCS_GLOBAL.print("TCS_FUNC.Skill.EnchantMachines."..itemWarMachine["UnitType"]);
                      local iSpellId = TCS_FUNC.Skill.EnchantMachines.mapSpellId[itemWarMachine["UnitType"]];
                      for i, sidCreatureTarget in arrCreatureTarget do
                        if itemWarMachine["UnitType"] == TTH_ENUM.WarmachineBallista then
                          local sidCreaturePhantom = TTHCS_THREAD.castAimedSpell4Mana5Creature(iSide, sidHero, iSpellId, sidCreatureTarget, TCS_ENUM.Switch.No);
                          TCS_FUNC.Skill.EnchantMachines.recordBallista[sidCreatureTarget] = sidCreaturePhantom;
                        else
                          TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                        end;
                      end;
                      TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.EnchantMachines.chargeCreature = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if (
              strHero == "Havez"
              or strHero == "Isher"
              or strHero == "Davius"
            )
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
            and (
              itemUnitLast["UnitType"] == TCS_FUNC.Skill.EnchantMachines.mapCreatureId[strHero][0]
              or itemUnitLast["UnitType"] == TCS_FUNC.Skill.EnchantMachines.mapCreatureId[strHero][1]
              or itemUnitLast["UnitType"] == TCS_FUNC.Skill.EnchantMachines.mapCreatureId[strHero][2]
            ) then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.EnchantMachines.chargeCreature: "..itemUnitLast["UnitType"]);
            TCS_FUNC.Skill.EnchantMachines.flag[TTH_ENUM.WarmachineBallista] = TCS_ENUM.Switch.Yes;
            TCS_FUNC.Skill.EnchantMachines.flag[TTH_ENUM.WarmachineCatapult] = TCS_ENUM.Switch.Yes;
            TCS_FUNC.Skill.EnchantMachines.flag[TTH_ENUM.WarmachineFirstAidTent] = TCS_ENUM.Switch.Yes;
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ENCHANT_MACHINES]["EffectAll"], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;
      TCS_FUNC.Skill.EnchantMachines.chargeWarMachine = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatWarMachine
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ENCHANT_MACHINES] == 1
            and (
              strHero ~= "Minasli" or TCS_VARI.Info.HeroUpgradeMastery[strHero] ~= 1
            ) then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.EnchantMachines.chargeWarMachine: "..itemUnitLast["UnitType"]);
            TCS_FUNC.Skill.EnchantMachines.flag[itemUnitLast["UnitType"]] = TCS_ENUM.Switch.Yes;
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ENCHANT_MACHINES]["Effect"..itemUnitLast["UnitType"]], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;

    -- HERO_SKILL_SEAL_OF_PROTECTION 131 众志成城
      TCS_FUNC.Skill.SealOfProtection = {};
      TCS_FUNC.Skill.SealOfProtection.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_SEAL_OF_PROTECTION] == 1 then
            local arrBuilding = GetBuildings(iSide);
            if length(arrBuilding) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.SealOfProtection.trigger");
              for i, strCreatureTarget in listCreatureNumberDecrease[iOppositeSide] do
                for j, strBuildingCaster in arrBuilding do
                  local itemBuildingCaster = TTHCS_GLOBAL.geneUnitInfo(strBuildingCaster);
                  if itemBuildingCaster["UnitType"] == TTHCS_ENUM.TownBuildingLeftTower
                    or itemBuildingCaster["UnitType"] == TTHCS_ENUM.TownBuildingBigTower
                    or itemBuildingCaster["UnitType"] == TTHCS_ENUM.TownBuildingRightTower then
                    TTHCS_THREAD.shoot(strBuildingCaster, strCreatureTarget);
                  end;
                end;
              end;
              for i, strBuildingCaster in arrBuilding do
                local itemBuildingCaster = TTHCS_GLOBAL.geneUnitInfo(strBuildingCaster);
                if itemBuildingCaster["UnitType"] == TTHCS_ENUM.TownBuildingLeftTower
                  or itemBuildingCaster["UnitType"] == TTHCS_ENUM.TownBuildingBigTower
                  or itemBuildingCaster["UnitType"] == TTHCS_ENUM.TownBuildingRightTower then
                  ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SEAL_OF_PROTECTION]["Effect"], strBuildingCaster, 5);
                end;
              end;
            end;
          end;
        end;
      end;

    -- HERO_SKILL_GUARDIAN_ANGEL 078 光明指引
      TCS_FUNC.Skill.GuardianAngel = {};
      TCS_FUNC.Skill.GuardianAngel.flag = {};
      TCS_FUNC.Skill.GuardianAngel.arrSpellId = { [0] = 23, [1] = 24, [2] = 25, [3] = 26, [4] = 280, [5] = 28, [6] = 29 };
      TCS_FUNC.Skill.GuardianAngel.move = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local arrCreatureTarget = GetCreatures(iSide);
          if itemUnit["UnitName"] == sidHero and length(arrCreatureTarget) > 0
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_GUARDIAN_ANGEL] == 1
              or (
                strHero == "Ottar" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
              )
            ) then
            if TCS_FUNC.Skill.GuardianAngel.flag[strHero] == nil then
              TCS_FUNC.Skill.GuardianAngel.flag[strHero] = TCS_ENUM.Switch.Yes;
            end;
            if TCS_FUNC.Skill.GuardianAngel.flag[strHero] == TCS_ENUM.Switch.Yes then
              TCS_FUNC.Skill.GuardianAngel.flag[strHero] = TCS_ENUM.Switch.No;
              TTHCS_GLOBAL.print("TCS_FUNC.Skill.GuardianAngel.move");
              local iTimes = 1;
              if strHero == "Alaric" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iTimes = iTimes + 1;
              end;
              for i = 1, iTimes do
                local arrSpellId = TCS_FUNC.Skill.GuardianAngel.arrSpellId;
                local iRandomSpellIndex = TTHCS_COMMON.getRandom(length(arrSpellId));
                local iSpellId = arrSpellId[iRandomSpellIndex];
                local iRandomCreatureIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                local sidCreatureTarget = arrCreatureTarget[iRandomCreatureIndex];
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                if iSpellId == SPELL_DISPEL
                  and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_MASTER_OF_BLESSING] == 1 then
                  iSpellId = SPELL_MASS_DISPEL;
                  TTHCS_THREAD.cast.area.impl(sidHero, iSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                else
                  TTHCS_THREAD.cast.aimed.impl(sidHero, iSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                if strHero == "Alaric" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_BLESS, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                if strHero ~= "Ottar" or
                  (
                    strHero == "Ottar"
                    and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                  ) then
                  local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                  local iContinuousNumber = TTHCS_COMMON.ceil(iHeroLevel / 2);
                  -- TCS_FUNC.Continuous.increase(sidCreatureTarget, iContinuousNumber);
                end;
                ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_GUARDIAN_ANGEL]["Effect"], sidCreatureTarget, 5);
              end;
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.GuardianAngel.charge = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_GUARDIAN_ANGEL] == 1
            and itemHeroMana[iSide] < 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.GuardianAngel.charge");
            TCS_FUNC.Skill.GuardianAngel.flag[strHero] = TCS_ENUM.Switch.Yes;
          end;
        end;
      end;

    -- HERO_SKILL_ELVEN_LUCK 116 精灵的幸运
      TCS_FUNC.Skill.ElvenLuck = {};
      TCS_FUNC.Skill.ElvenLuck.move = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if 1 == 1
          and sidHero == itemUnit["UnitName"]
          and TCS_VARI.Info.HeroSkill[GetHeroName(sidHero)][HERO_SKILL_ELVEN_LUCK] == 1
          and itemUnit["Side"] == iSide
        then
          TTHCS_GLOBAL.print("TCS_FUNC.Skill.ElvenLuck.move");
          local arrRandomCreature = TTHCS_GLOBAL.getRandomCreature(iSide);
          for i, sidRandomCreature in arrRandomCreature do
            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_PRESERVE_TOOL, 1, SPELL_ABILITY_LUCK_GAMBLER, sidRandomCreature, TCS_ENUM.Switch.No);
            TTHCS_GLOBAL.moveImmediate(sidRandomCreature);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELVEN_LUCK]["Effect"], sidRandomCreature, 5);
          end;
        end;
      end;

    -- HERO_SKILL_PAYBACK 147 黑暗再生
      TCS_FUNC.Skill.Payback = {};
      TCS_FUNC.Skill.Payback.trigger = function(iSide, itemUnit, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_PAYBACK] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.Payback.trigger");
            local iManaPoint = 2;
            TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
          end;
        end;
      end;

    -- HERO_SKILL_ELITE_CASTERS 148 精炼魔力
    -- HERO_SKILL_BARBARIAN_ELITE_CASTERS 214 精炼魔力
      TCS_FUNC.Skill.EliteCasters = {};
      TCS_FUNC.Skill.EliteCasters.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
            and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and itemUnitLast["MaxMana"] > 0
            and (
              length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            )
            and (
              TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_ELITE_CASTERS] == 1
              or TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_BARBARIAN_ELITE_CASTERS] == 1
            ) then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.EliteCasters.trigger");
            local iRecoveryMana = length(listCreatureNumberDecrease[iOppositeSide]) + length(listCreatureStatusDeath[iOppositeSide]);
            TTHCS_GLOBAL.recoveryHeroMana(itemUnitLast["UnitName"], iRecoveryMana);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELITE_CASTERS]["Effect"], itemUnitLast["UnitName"], 5);
            if strHero == "Thant" then
              if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                local iRecoveryCount = 1;
                local arrCreature = GetCreatures(iSide);
                for i, sidCreature in arrCreature do
                  local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
                  if itemCreature["MaxMana"] > 0 and itemCreature["UnitName"] ~= itemUnitLast["UnitName"] then
                    iRecoveryCount = iRecoveryCount + 1;
                    TTHCS_GLOBAL.recoveryHeroMana(sidCreature, iRecoveryMana);
                    ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELITE_CASTERS]["Effect"], sidCreature, 5);
                  end;
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TTHCS_GLOBAL.recoveryHeroMana(sidHero, iRecoveryMana * iRecoveryCount);
                  ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_ELITE_CASTERS]["Effect"], sidHero, 5);
                end;
              end;
            end;
          end;
        end;
      end;

    -- HERO_SKILL_RUNIC_MACHINES 156 符文机械
      TCS_FUNC.Skill.RunicMachines = {};
      TCS_FUNC.Skill.RunicMachines.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitName"] ~= sidHero
            and itemHeroMana[iSide] > 0
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_RUNIC_MACHINES] == 1 then
            local itemHeroBefore = TCS_VARI.Snapshot.before[TTH_ENUM.CombatHero][iSide];
            local itemHeroLast = TCS_VARI.Snapshot.last[TTH_ENUM.CombatHero][iSide];
            local iDiffMana = itemHeroLast["CurrentMana"] - itemHeroBefore["CurrentMana"];
            local iKnowledge = TCS_VARI.Info.HeroAttribute[strHero][STAT_KNOWLEDGE];
            local iRecoveryMana = TTHCS_COMMON.floor(iKnowledge / 2);
            if iDiffMana == iRecoveryMana then
              local arrWarMachine = GetWarMachines(iSide);
              local arrWarMachineCaster = {};
              for i, sidWarMachine in arrWarMachine do
                if (
                    GetWarMachineType(sidWarMachine) == TTH_ENUM.WarmachineBallista
                    and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_BALLISTA] == 1
                  )
                  or (
                    GetWarMachineType(sidWarMachine) == TTH_ENUM.WarmachineFirstAidTent
                    and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRST_AID] == 1
                  )
                  or (
                    GetWarMachineType(sidWarMachine) == TTH_ENUM.WarmachineCatapult
                    and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_CATAPULT] == 1
                  ) then
                  push(arrWarMachineCaster, sidWarMachine);
                end;
              end;
              if length(arrWarMachineCaster) > 0 then
                TTHCS_GLOBAL.print("TCS_FUNC.Skill.RunicMachines.trigger");
                for i, sidWarMachine in arrWarMachineCaster do
                  -- TCS_FUNC.Continuous.increase(sidWarMachine, 8, itemUnitLast["UnitName"]);
                  ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidWarMachine, 5);
                end;
              end;
            end;
          end;
        end;
      end;

    -- HERO_SKILL_SAFETY_STEP 311 步步为营
      TCS_FUNC.Skill.SafetyStep = {};
      TCS_FUNC.Skill.SafetyStep.trigger = function(iSide, itemUnit, itemUnitLast, listCreaturePositionMove, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if 1 == 1
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_SAFETY_STEP] == 1
            and itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
            and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and contains(listCreaturePositionMove[iSide], itemUnitLast["UnitName"]) ~= nil
            and (
              (
                length(listCreatureNumberDecrease[iOppositeSide]) == 0
                and length(listCreatureStatusDeath[iOppositeSide]) == 0
              )
              or (
                strHero == "Mephala"
                and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
              )
            )
            then
            TTHCS_GLOBAL.print("TCS_FUNC.Skill.SafetyStep.trigger");
            TTHCS_THREAD.defend(itemUnitLast["UnitName"]);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SAFETY_STEP]["Effect"], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;

    -- HERO_SKILL_BEHIND_ENEMY 309 深入敌后
      TCS_FUNC.Skill.BehindEnemy = {};
      TCS_FUNC.Skill.BehindEnemy.listPosition = {};
      TCS_FUNC.Skill.BehindEnemy.strSpecialHero = "Tarkus";
      TCS_FUNC.Skill.BehindEnemy.check = function(itemPosition)
        local bCheck = not nil;
        for i, objPostion in TCS_FUNC.Skill.BehindEnemy.listPosition do
          if itemPosition["PosX"] == objPostion["PosX"] and itemPosition["PosY"] == objPostion["PosY"] then
            bCheck = nil;
            break;
          end;
        end;
        return bCheck;
      end;
      TCS_FUNC.Skill.BehindEnemy.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if 1 == 1
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_BEHIND_ENEMY] == 1
          then
            local iBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
            local iCount = 1;
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iScale = 0.2 + iHeroLevel * 0.01;
            if strHero == TCS_FUNC.Skill.BehindEnemy.strSpecialHero then
              iScale = iScale * 2;
              if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                iCount = iCount + 1;
              end;
              if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                iCount = iCount + 1;
              end;
            end;
            for i = 1, iCount do
              local itemCheckPosition = {};
              repeat
                if itemCheckPosition["UnitName"] ~= nil then
                  TTHCS_THREAD.removeCreature(itemCheckPosition["UnitName"]);
                  itemCheckPosition = {};
                end;
                if iSide == TTHCS_ENUM.SideAttacker then
                  if iBattleFieldSize == TTHCS_ENUM.BattleEffectFieldSmall then
                    itemCheckPosition["PosX"] = TTHCS_COMMON.getRandom(3) + 8;
                    itemCheckPosition["PosY"] = TTHCS_COMMON.getRandom(10) + 1;
                  else
                    itemCheckPosition["PosX"] = TTHCS_COMMON.getRandom(4) + 9;
                    itemCheckPosition["PosY"] = TTHCS_COMMON.getRandom(14) + 1;
                  end;
                else
                  if iBattleFieldSize == TTHCS_ENUM.BattleEffectFieldSmall then
                    itemCheckPosition["PosX"] = TTHCS_COMMON.getRandom(3) + 5;
                    itemCheckPosition["PosY"] = TTHCS_COMMON.getRandom(10) + 1;
                  else
                    itemCheckPosition["PosX"] = TTHCS_COMMON.getRandom(4) + 5;
                    itemCheckPosition["PosY"] = TTHCS_COMMON.getRandom(14) + 1;
                  end;
                end;
                local strCreatureLeft = TTHCS_THREAD.addCreature(iSide, CREATURE_HEAVEN_TOOL, 1, itemCheckPosition["PosX"], itemCheckPosition["PosY"]);
                local objCreatureLeft = TTHCS_GLOBAL.geneUnitInfo(strCreatureLeft);
                itemCheckPosition = objCreatureLeft;
              until TCS_FUNC.Skill.BehindEnemy.check(itemCheckPosition);
              TTHCS_THREAD.removeCreature(itemCheckPosition["UnitName"]);
              push(TCS_FUNC.Skill.BehindEnemy.listPosition, itemCheckPosition);
            end;
            for i, objPostion in TCS_FUNC.Skill.BehindEnemy.listPosition do
              TTHCS_THREAD.castAreaSpell8Tool(iSide, CREATURE_HEAVEN_TOOL, 1, SPELL_ABILITY_SET_SNARES, objPostion["PosX"], objPostion["PosY"], TCS_ENUM.Switch.No);
              print("set snares at: "..objPostion["PosX"].."-"..objPostion["PosY"]);
            end;
          end;
        end;
      end;
      TCS_FUNC.Skill.BehindEnemy.trigger = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if 1 == 1
            and TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_BEHIND_ENEMY] == 1
            and length(TCS_FUNC.Skill.BehindEnemy.listPosition) > 0
          then
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iScale = 0.2 + iHeroLevel * 0.01;
            if strHero == TCS_FUNC.Skill.BehindEnemy.strSpecialHero then
              iScale = iScale * 2;
            end;
            for i, objInit in TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide] do
              local objUnitTrigger = TTHCS_GLOBAL.geneUnitInfo(objInit["UnitName"]);
              local iCreatureNumber = TTHCS_COMMON.ceil(objUnitTrigger["UnitNumber"] * iScale);
              local iIndex = -1;
              for i, objPosition in TCS_FUNC.Skill.BehindEnemy.listPosition do
                if TTHCS_COMMON.isEffectUnit(objInit["UnitName"], objPosition["PosX"], objPosition["PosY"]) == TCS_ENUM.Switch.Yes then
                  iIndex = i;
                  break;
                end;
              end;
              if iIndex > -1 then
                TTHCS_GLOBAL.print("TCS_FUNC.Skill.BehindEnemy.trigger");
                local objPosition = {};
                TCS_FUNC.Skill.BehindEnemy.listPosition, objPosition = pop(TCS_FUNC.Skill.BehindEnemy.listPosition, iIndex);
                local strCreatureSummon = TTHCS_THREAD.summonCreature(iSide, objUnitTrigger["UnitType"], iCreatureNumber, objPosition["PosX"], objPosition["PosY"]);
                if strCreatureSummon ~= nil then
                  local objCreatureSummon = TTHCS_GLOBAL.geneUnitInfo(strCreatureSummon);
                  print(objUnitTrigger["UnitName"].." arrive tactics target and clone "..objCreatureSummon["UnitName"]);
                  ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_BEHIND_ENEMY]["Effect"], objUnitTrigger["UnitName"], 5);
                end;
              end;
            end;
          end;
        end;
      end;

  -- 宝物
    TCS_FUNC.Artifact = {};

    -- ARTIFACT_WAYFARER_BOOTS 026 储能长靴
      TCS_FUNC.Artifact.WayfarerBoots = {};
      TCS_FUNC.Artifact.WayfarerBoots.trigger = function(iSide, itemUnit, itemUnitLast, listCreaturePositionUnchanged)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_WAYFARER_BOOTS] == 1
            and contains(listCreaturePositionUnchanged[iSide], itemUnitLast["UnitName"]) ~= nil then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.WayfarerBoots.trigger");
            local iRecoveryMana = 1;
            TTHCS_GLOBAL.recoveryHeroMana(itemUnitLast["UnitName"], iRecoveryMana);
            ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_WAYFARER_BOOTS]["Effect"], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;

    -- ARTIFACT_MOONBLADE 058 月光利刃
      TCS_FUNC.Artifact.Moonblade = {};
      TCS_FUNC.Artifact.Moonblade.trigger = function(iSide, itemUnit, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_MOONBLADE] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.Moonblade.trigger");
            local iManaPoint = 2;
            TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
          end;
        end;
      end;

    -- ARTIFACT_PENDANT_OF_BLIND 101 闪耀权冠
      TCS_FUNC.Artifact.PendantOfBlind = {};
      TCS_FUNC.Artifact.PendantOfBlind.flag = {};
      TCS_FUNC.Artifact.PendantOfBlind.flagSpecailHero = {};
      TCS_FUNC.Artifact.PendantOfBlind.first = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnit["UnitName"] == sidHero
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_PENDANT_OF_BLIND] == 1
            and TTH_TABLE.Hero[strHero]["Race"] ~= TOWN_STRONGHOLD then
            if contains(TTHCS_TABLE.CombatStartSpecialHero, strHero) ~= nil
              and TCS_FUNC.Artifact.PendantOfBlind.flagSpecailHero[strHero] == nil then
              TCS_FUNC.Artifact.PendantOfBlind.flagSpecailHero[strHero] = TCS_ENUM.Switch.Yes;
              return nil;
            end;
            if TCS_FUNC.Artifact.PendantOfBlind.flag[strHero] == nil then
              TCS_FUNC.Artifact.PendantOfBlind.flag[strHero] = TCS_ENUM.Switch.Yes;
              TTHCS_GLOBAL.print("TCS_FUNC.Artifact.PendantOfBlind.first");
              local arrCreatureTarget = GetCreatures(iOppositeSide);
              if arrCreatureTarget ~= nil and length(arrCreatureTarget) > 0 then
                local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                local strCreatureTarget = arrCreatureTarget[iRandomIndex];
                TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_BLIND, strCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
              end;
            end;
          end;
        end;
      end;

    -- ARTIFACT_CODEX 126 大法师之典
      TCS_FUNC.Artifact.Codex = {};
      TCS_FUNC.Artifact.Codex.flag = {};
      TCS_FUNC.Artifact.Codex.flagSpecailHero = {};
      TCS_FUNC.Artifact.Codex.first = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnit["UnitName"] == sidHero
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_CODEX] == 1
            and TTH_TABLE.Hero[strHero]["Race"] ~= TOWN_STRONGHOLD then
            if contains(TTHCS_TABLE.CombatStartSpecialHero, strHero) ~= nil
              and TCS_FUNC.Artifact.Codex.flagSpecailHero[strHero] == nil then
              TCS_FUNC.Artifact.Codex.flagSpecailHero[strHero] = TCS_ENUM.Switch.Yes;
              return nil;
            end;
            if TCS_FUNC.Artifact.Codex.flag[strHero] == nil then
              TCS_FUNC.Artifact.Codex.flag[strHero] = TCS_ENUM.Switch.Yes;
              TTHCS_GLOBAL.print("TCS_FUNC.Artifact.Codex.first");
              local sidCreature = TTHCS_THREAD.castGlobalSpell4Mana4Creature(iSide, sidHero, SPELL_CONJURE_PHOENIX, TCS_ENUM.Switch.Yes);
              TCS_FUNC.Summon.trigger(iSide, sidCreature);
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
            end;
          end;
        end;
      end;

    -- ARTIFACT_EIGHTFOLD 125 亚莎之八重杖
      TCS_FUNC.Artifact.Eightfold = {};
      TCS_FUNC.Artifact.Eightfold.iLoseMana = 0;
      TCS_FUNC.Artifact.Eightfold.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil
            and itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_EIGHTFOLD] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.Eightfold.charge");
            TCS_FUNC.Artifact.Eightfold.iLoseMana = TCS_FUNC.Artifact.Eightfold.iLoseMana + itemHeroMana[iSide] * -1;
            if TCS_FUNC.Artifact.Eightfold.iLoseMana >= 100 then
              TTHCS_GLOBAL.print("TCS_FUNC.Artifact.Eightfold.trigger");
              TCS_FUNC.Artifact.Eightfold.iLoseMana = 0;
              local iRecoveryMana = 20;
              TTHCS_GLOBAL.recoveryHeroMana(sidHero, iRecoveryMana);
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
              ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_EIGHTFOLD]["Effect"], sidHero, 5);
            end;
          end;
        end;
      end;

    -- ARTIFACT_BOOK_OF_MALASSA 147 玛拉萨之书
      TCS_FUNC.Artifact.BookOfMalassa = {};
      TCS_FUNC.Artifact.BookOfMalassa.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local iSpellId = TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BOOK_OF_MALASSA];
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and itemHeroMana[iSide] < 0
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0
            and iSpellId > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.BookOfMalassa.trigger");
            local iFinalSpellId = iSpellId;
            local bCheckEmpowered = TCS_FUNC.Append.checkEmpowered(sidHero);
            if bCheckEmpowered == TCS_ENUM.Switch.Yes then
              iFinalSpellId = TTH_TABLE.Spell[iSpellId]["Empowered"];
            end;
            local bCheckMana = TCS_FUNC.Append.checkMana(sidHero);
            local bCost = TCS_ENUM.Switch.Yes;
            if bCheckMana == TCS_ENUM.Switch.Yes then
              bCost = TCS_ENUM.Switch.No;
            end;
            local arrCreatureTarget = {};
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iLenTarget = TTHCS_COMMON.floor(iHeroLevel / 12);
            if iLenTarget < 1 then
              iLenTarget = 1;
            end;
            for i = 0, iLenTarget - 1 do
              if listCreatureNumberDecrease[iOppositeSide][i] ~= nil then
                push(arrCreatureTarget, listCreatureNumberDecrease[iOppositeSide][i]);
              end;
            end;
            for i, sidCreatureTarget in arrCreatureTarget do
              local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
              if contains(TTHCS_TABLE.ElementMagicAimed, iSpellId) ~= nil then
                TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, bCost, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes);
              else
                TTHCS_THREAD.cast.area.impl(sidHero, iFinalSpellId, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], bCost, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes);
              end;
            end;
          end;
        end;
      end;

    -- ARTIFACT_ANGELIC_ALLIANCE 068 天使联盟
      TCS_FUNC.Artifact.AngelicAlliance = {};
      TCS_FUNC.Artifact.AngelicAlliance.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_ANGELIC_ALLIANCE] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.AngelicAlliance.start");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iCreatureNumber = 1;
            local arrSpellId = { SPELL_MASS_HASTE, SPELL_MASS_BLESS };
            local bRemove = TCS_ENUM.Switch.Yes;
            TTHCS_THREAD.castGlobalSpell4God(iSide, CREATURE_CHERUBIN, iCreatureNumber, arrSpellId, ARTIFACT_ANGELIC_ALLIANCE, bRemove);
            if strHero == "GodricMP" and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
              TCS_FUNC.Talent.GodricMP.flag = TCS_ENUM.Switch.Yes;
              TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_PRAYER, TCS_ENUM.Switch.Yes);
              setATB(sidHero, TCS_ENUM.Atb.immediate);
            end;
            if strHero == "Maeve" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              TCS_FUNC.Talent.Maeve.flag = TCS_ENUM.Switch.Yes;
              TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_MASS_HASTE, TCS_ENUM.Switch.Yes);
              setATB(sidHero, TCS_ENUM.Atb.immediate);
            end;
          end;
        end;
      end;

    -- ARTIFACT_SENTINEL 124 哨兵之盾
      TCS_FUNC.Artifact.Sentinel = {};
      TCS_FUNC.Artifact.Sentinel.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_SENTINEL] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.Sentinel.start");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iCreatureNumber = 1;
            local arrSpellId = { SPELL_MASS_BLOODLUST, SPELL_MASS_STONESKIN };
            local bRemove = TCS_ENUM.Switch.Yes;
            TTHCS_THREAD.castGlobalSpell4God(iSide, CREATURE_CHERUBIN, iCreatureNumber, arrSpellId, ARTIFACT_SENTINEL, bRemove);
          end;
        end;
      end;

    -- ARTIFACT_CURSE_SHOULDER 114 诅咒斗篷
      TCS_FUNC.Artifact.CurseShoulder = {};
      TCS_FUNC.Artifact.CurseShoulder.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_CURSE_SHOULDER] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.CurseShoulder.start");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iCreatureNumber = 1;
            local arrSpellId = { SPELL_MASS_CURSE, SPELL_MASS_WEAKNESS, SPELL_MASS_SLOW };
            local bRemove = TCS_ENUM.Switch.Yes;
            TTHCS_THREAD.castGlobalSpell4God(iSide, CREATURE_DRAGON_KNIGHT, iCreatureNumber, arrSpellId, ARTIFACT_CURSE_SHOULDER, bRemove);
            if strHero == "RedHeavenHero03" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              TCS_FUNC.Talent.RedHeavenHero03.flag = TCS_ENUM.Switch.Yes;
              local arrCreatureTarget = GetCreatures(iOppositeSide);
              if arrCreatureTarget ~= nil and length(arrCreatureTarget) > 0 then
                local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
                local strCreatureTarget = arrCreatureTarget[iRandomIndex];
                local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(strCreatureTarget);
                TTHCS_THREAD.cast.area.impl(sidHero, SPELL_MASS_DISRUPTING_RAY, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
              end;
              setATB(sidHero, TCS_ENUM.Atb.immediate);
            end;
            if strHero == "Orlando" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              TCS_FUNC.Talent.Orlando.flag = TCS_ENUM.Switch.Yes;
              TTHCS_THREAD.castGlobalSpell4Mana(sidHero, SPELL_MASS_CURSE, TCS_ENUM.Switch.Yes);
              setATB(sidHero, TCS_ENUM.Atb.immediate);
            end;
          end;
        end;
      end;

    -- ARTIFACT_BAND_OF_CONJURER 060 元素腕带
      TCS_FUNC.Artifact.BandOfConjurer = {};
      TCS_FUNC.Artifact.BandOfConjurer.enumElementCreatureId = { [0] = 85, [1] = 86, [2] = 87, [3] = 88 };
      TCS_FUNC.Artifact.BandOfConjurer.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_BAND_OF_CONJURER] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.BandOfConjurer.start");
            local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
            local iCreatureNumber = iHeroLevel;
            local iCreatureId = 0;
            if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRE_AFFINITY] > 0 then
              iCreatureId = TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_FIRE_AFFINITY];
            else
              local iRandomIndex = TTHCS_COMMON.getRandom(length(TCS_FUNC.Artifact.BandOfConjurer.enumElementCreatureId));
              iCreatureId = TCS_FUNC.Artifact.BandOfConjurer.enumElementCreatureId[iRandomIndex];
            end;
            local iPosX, iPosY = TTHCS_GLOBAL.getSummonPosition(iSide);
            local strCreatureSummon = TTHCS_THREAD.summonCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
            TCS_FUNC.Summon.trigger(iSide, strCreatureSummon);
            ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_BAND_OF_CONJURER]["Effect"], strCreatureSummon, 5);
          end;
        end;
      end;

    -- ARTIFACT_GEM_OF_PHANTOM 102 幻影宝石
      TCS_FUNC.Artifact.GemOfPhantom = {};
      TCS_FUNC.Artifact.GemOfPhantom.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          local iValue = TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_GEM_OF_PHANTOM];
          if iValue > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.GemOfPhantom.start");
            local iCreatureNumber = TTHCS_COMMON.floor(iValue / 1000);
            local iCreatureId = iValue - iCreatureNumber * 1000;
            local iPosX, iPosY = TTHCS_GLOBAL.getSummonPosition(iSide);
            local strCreatureSummon = TTHCS_THREAD.summonCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
            TCS_FUNC.Summon.trigger(iSide, strCreatureSummon);
            ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_GEM_OF_PHANTOM]["Effect"], strCreatureSummon, 5);
          end;
        end;
      end;

    -- ARTIFACT_DRUM_OF_CHARGE 106 冲锋战鼓
      TCS_FUNC.Artifact.DrumOfCharge = {};
      TCS_FUNC.Artifact.DrumOfCharge.start = function(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_DRUM_OF_CHARGE] == 1 then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.DrumOfCharge.start");
            local arrRandomCreature = TTHCS_GLOBAL.getRandomCreature(iSide);
            for i, sidRandomCreature in arrRandomCreature do
              setATB(sidRandomCreature, TCS_ENUM.Atb.immediate);
              TTHCS_GLOBAL.print(sidRandomCreature.." move immediate");
              ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_DRUM_OF_CHARGE]["Effect"], sidRandomCreature, 5);
            end;
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Crag.strHero
              and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
            then
              setATB(sidHero, TCS_ENUM.Atb.immediate);
            end;
            local arrUnEffectCreature = {};
            local arrCreature = GetCreatures(iSide);
            for i, sidCreature in arrCreature do
              local bCheck = not nil;
              for j, sidRandomCreature in arrRandomCreature do
                if sidCreature == sidRandomCreature then
                  bCheck = nil;
                end;
              end;
              if bCheck then
                push(arrUnEffectCreature, sidCreature);
              end;
            end;
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Crag.strHero
              and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
              and length(arrUnEffectCreature) > 1
            then
              local iRandomIndex = TTHCS_COMMON.getRandom(length(arrUnEffectCreature));
              local sidCreatureCrag = arrUnEffectCreature[iRandomIndex];
              setATB(sidCreatureCrag, TCS_ENUM.Atb.immediate);
              ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_DRUM_OF_CHARGE]["Effect"], sidCreatureCrag, 5);
              TTHCS_GLOBAL.print(sidCreatureCrag.." move immediate");
            end;
          end;
        end;
      end;

    -- ARTIFACT_HORN_OF_CHARGE 107 冲锋号角
      TCS_FUNC.Artifact.HornOfCharge = {};
      TCS_FUNC.Artifact.HornOfCharge.flag = 0;
      TCS_FUNC.Artifact.HornOfCharge.trigger = function(iSide, itemUnit, itemUnitLast, listCreaturePositionMove, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_HORN_OF_CHARGE] == 1
            and TCS_FUNC.Artifact.HornOfCharge.flag == 0
            and contains(listCreaturePositionMove[iSide], itemUnitLast["UnitName"]) ~= nil
            and contains(listCreatureNumberDecrease[iOppositeSide], itemUnitLast["UnitName"]) == nil
            and contains(listCreatureStatusDeath[iOppositeSide], itemUnitLast["UnitName"]) == nil then
            TTHCS_GLOBAL.print("TCS_FUNC.Artifact.HornOfCharge.trigger");
            TCS_FUNC.Artifact.HornOfCharge.sign(iSide);
            TCS_BATTLE.atb.record(itemUnitLast["UnitName"], TCS_ENUM.Atb.immediate);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Crag.strHero
              and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
            then
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
            end;
            ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_HORN_OF_CHARGE]["Effect"], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;
      TCS_FUNC.Artifact.HornOfCharge.sign = function(iSide)
        if TCS_FUNC.Talent.Crag.signArtifact(iSide, "Artifact-"..ARTIFACT_HORN_OF_CHARGE) == nil then
          TCS_FUNC.Artifact.HornOfCharge.flag = 1;
        end;
      end;

    -- ARTIFACT_FLAG_OF_CHARGE 141 冲锋战旗
      TCS_FUNC.Artifact.FlagOfCharge = {};
      TCS_FUNC.Artifact.FlagOfCharge.flag = 0;
      TCS_FUNC.Artifact.FlagOfCharge.trigger = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and TCS_VARI.Info.HeroArtifact[strHero][ARTIFACT_FLAG_OF_CHARGE] == 1
            and TCS_FUNC.Artifact.FlagOfCharge.flag == 0 then
            if length(TCS_VARI.Unit.trigger) > 1 then
              local itemUnitLastFriendly = nil;
              for i = length(TCS_VARI.Unit.trigger) - 2, 0, -1 do
                local itemCreature = TCS_VARI.Unit.trigger[i];
                if itemCreature["Side"] == iSide
                  and itemCreature["UnitCategory"] ~= TTH_ENUM.CombatHero
                  and TTHCS_GLOBAL.checkCombatCreature(itemCreature["UnitName"]) then
                  itemUnitLastFriendly = itemCreature;
                  break;
                end;
              end;
              if itemUnitLastFriendly ~= nil then
                TTHCS_GLOBAL.print("TCS_FUNC.Artifact.FlagOfCharge.trigger");
                TCS_FUNC.Artifact.FlagOfCharge.sign(iSide);
                TCS_BATTLE.atb.record(itemUnitLastFriendly["UnitName"], TCS_ENUM.Atb.immediate);
                if 1 == 1
                  and strHero == TCS_FUNC.Talent.Crag.strHero
                  and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
                then
                  TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
                end;
                ShowFlyingSign(TTHCS_PATH["Artifact"][ARTIFACT_FLAG_OF_CHARGE]["Effect"], itemUnitLastFriendly["UnitName"], 5);
              end;
            end;
          end;
        end;
      end;
      TCS_FUNC.Artifact.FlagOfCharge.sign = function(iSide)
        if TCS_FUNC.Talent.Crag.signArtifact(iSide, "Artifact-"..ARTIFACT_FLAG_OF_CHARGE) == nil then
          TCS_FUNC.Artifact.FlagOfCharge.flag = 1;
        end;
      end;

  -- 组合宝物
    TCS_FUNC.ArtifactSet = {};

    -- ARTIFACTSET_NECROMANCERS 005 死亡拥抱 Necromancers
      TCS_FUNC.ArtifactSet.Necromancers = {};
      TCS_FUNC.ArtifactSet.Necromancers.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_NECROMANCERS] >= 4
            and TTH_TABLE.Hero[strHero]["Race"] ~= TOWN_STRONGHOLD
            and length(listCreatureStatusDeath[iOppositeSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.Necromancers.trigger");
            TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_VAMPIRISM, itemUnitLast["UnitName"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
            TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_NECROMANCERS.."_"..4]["Effect"], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;

    -- ARTIFACTSET_HUNTERS 007 射手梦幻
      TCS_FUNC.ArtifactSet.Hunters = {};
      TCS_FUNC.ArtifactSet.Hunters.arrSignCreature = {};
      TCS_FUNC.ArtifactSet.Hunters.first = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_HUNTERS] >= 3
            and itemHeroMana[iSide] == 0
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0
            and length(TCS_FUNC.ArtifactSet.Hunters.arrSignCreature) == 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.Hunters.first");
            local iComponentCount = TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_HUNTERS];
            local iTimes = TTHCS_COMMON.ceil(iComponentCount / 3);
            for i = 1, iTimes do
              local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][i - 1];
              if sidCreatureTarget ~= nil then
                push(TCS_FUNC.ArtifactSet.Hunters.arrSignCreature, sidCreatureTarget);
                ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_HUNTERS.."_"..3]["EffectTarget"], sidCreatureTarget, 5);
              end;
            end;
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_HUNTERS.."_"..3]["EffectCaster"], sidHero, 5);
          end;
        end;
      end;
      TCS_FUNC.ArtifactSet.Hunters.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and TTH_TABLE.Creature[itemUnitLast["UnitType"]]["Range"] == 1
            and length(TCS_FUNC.ArtifactSet.Hunters.arrSignCreature) > 0
            and (
              length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            ) then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.Hunters.trigger");
            for i, sidCreatureTarget in TCS_FUNC.ArtifactSet.Hunters.arrSignCreature do
              TTHCS_THREAD.shoot(itemUnitLast["UnitName"], sidCreatureTarget);
              ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_HUNTERS.."_"..3]["EffectCaster"], itemUnitLast["UnitName"], 5);
            end;
          end;
        end;
      end;

    -- ARTIFACTSET_OGRES 008 力量武器
      TCS_FUNC.ArtifactSet.Ogres = {};
      TCS_FUNC.ArtifactSet.Ogres.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_OGRES] >= 2
            and itemHeroMana[iSide] == 0
            and (
              length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            )
            and TTH_TABLE.Hero[strHero]["Race"] == TOWN_STRONGHOLD then
            local arrCreatureTarget = GetCreatures(iSide);
            local arrCreatureStronghold = {};
            for i, sidCreatureTarget in arrCreatureTarget do
              local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
              if contains(TTHCS_TABLE.StrongholdCreature, itemCreatureTarget["UnitType"]) ~= nil then
                push(arrCreatureStronghold, sidCreatureTarget);
              end;
            end;
            if length(arrCreatureStronghold) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.Ogres.trigger");
              local iComponentCount = TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_OGRES];
              local iTimes = TTHCS_COMMON.ceil(iComponentCount / 2);
              for i = 1, iTimes do
                local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureStronghold));
                local sidCreatureStronghold = arrCreatureStronghold[iRandomIndex];
                TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_WARCRY_CALL_OF_BLOOD, sidCreatureStronghold, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes);
              end;
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.min + 0.3);
            end;
          end;
        end;
      end;

    -- ARTIFACTSET_ELEMENT_AIR 015 雷电迅捷 ElementAir
      TCS_FUNC.ArtifactSet.ElementAir = {};
      TCS_FUNC.ArtifactSet.ElementAir.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_ELEMENT_AIR] >= 2
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.ElementAir.trigger");
            local iRandomIndex = TTHCS_COMMON.getRandom(length(listCreatureNumberDecrease[iOppositeSide]));
            local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][iRandomIndex];
            local iSpellId = SPELL_LIGHTNING_BOLT;
            local iFinalSpellId = iSpellId;
            local bCheckEmpowered = TCS_FUNC.Append.checkEmpowered(sidHero);
            if bCheckEmpowered == TCS_ENUM.Switch.Yes then
              iFinalSpellId = TTH_TABLE.Spell[iSpellId]["Empowered"];
            end;
            local bCheckMana = TCS_FUNC.Append.checkMana(sidHero);
            if bCheckMana == TCS_ENUM.Switch.Yes then
              TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
            else
              TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
            end;
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_AIR.."_"..2]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- ARTIFACTSET_ELEMENT_EARTH 016 大地之力 ElementEarth
      TCS_FUNC.ArtifactSet.ElementEarth = {};
      TCS_FUNC.ArtifactSet.ElementEarth.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_ELEMENT_EARTH] >= 2
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.ElementEarth.trigger");
            local iRandomIndex = TTHCS_COMMON.getRandom(length(listCreatureNumberDecrease[iOppositeSide]));
            local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][iRandomIndex];
            local iSpellId = SPELL_IMPLOSION;
            local iFinalSpellId = iSpellId;
            local bCheckEmpowered = TCS_FUNC.Append.checkEmpowered(sidHero);
            if bCheckEmpowered == TCS_ENUM.Switch.Yes then
              iFinalSpellId = TTH_TABLE.Spell[iSpellId]["Empowered"];
            end;
            local bCheckMana = TCS_FUNC.Append.checkMana(sidHero);
            if bCheckMana == TCS_ENUM.Switch.Yes then
              TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, TCS_ENUM.Switch.No, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
            else
              TTHCS_THREAD.cast.aimed.impl(sidHero, iFinalSpellId, sidCreatureTarget, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No);
            end;
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_EARTH.."_"..2]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- ARTIFACTSET_ELEMENT_FIRE 017 附骨之焰 ElementFire
      TCS_FUNC.ArtifactSet.ElementFire = {};
      TCS_FUNC.ArtifactSet.ElementFire.trigger = function(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero
            and itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_ELEMENT_FIRE] >= 2
            and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.ElementFire.trigger");
            local iRandomIndex = TTHCS_COMMON.getRandom(length(listCreatureNumberDecrease[iOppositeSide]));
            local sidCreatureTarget = listCreatureNumberDecrease[iOppositeSide][iRandomIndex];
            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL, 1, SPELL_ABILITY_FLAMESTRIKE, sidCreatureTarget, TCS_ENUM.Switch.No);
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_FIRE.."_"..2]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- ARTIFACTSET_ELEMENT_WATER 018 流水之蕴 ElementWater
      TCS_FUNC.ArtifactSet.ElementWater = {};
      TCS_FUNC.ArtifactSet.ElementWater.trigger = function(iSide, itemUnit, itemHeroMana)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if itemHeroMana[iSide] < 0
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_ELEMENT_WATER] >= 2 then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.ElementWater.trigger");
            local iManaPoint = 3;
            TTHCS_GLOBAL.recoveryHeroMana(sidHero, iManaPoint);
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_WATER.."_"..2]["Effect"], sidHero, 5);
          end;
        end;
      end;

    -- ARTIFACTSET_CHARGE 020 冲锋陷阵 Charge
      TCS_FUNC.ArtifactSet.Charge = {};
      TCS_FUNC.ArtifactSet.Charge.flag = 0;
      TCS_FUNC.ArtifactSet.Charge.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if 1 == 1
            and itemUnitLast ~= nil and itemUnitLast["Side"] == iSide
            and itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature
            and TCS_VARI.Info.HeroArtifactSet[strHero][ARTIFACTSET_CHARGE] >= 3
            and TCS_FUNC.ArtifactSet.Charge.flag == 0
            and (
              length(listCreatureNumberDecrease[iOppositeSide]) > 0
              or length(listCreatureStatusDeath[iOppositeSide]) > 0
            )
          then
            TTHCS_GLOBAL.print("TCS_FUNC.ArtifactSet.Charge.trigger");
            TCS_FUNC.ArtifactSet.Charge.sign(iSide);
            TCS_BATTLE.atb.record(itemUnitLast["UnitName"], TCS_ENUM.Atb.max);
            if 1 == 1
              and strHero == TCS_FUNC.Talent.Crag.strHero
              and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
            then
              TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.immediate);
            end;
            ShowFlyingSign(TTHCS_PATH["ArtifactSet"][ARTIFACTSET_CHARGE.."_"..3]["Effect"], itemUnitLast["UnitName"], 5);
          end;
        end;
      end;
      TCS_FUNC.ArtifactSet.Charge.sign = function(iSide)
        if TCS_FUNC.Talent.Crag.signArtifact(iSide, "ArtifactSet-"..ARTIFACTSET_CHARGE) == nil then
          TCS_FUNC.ArtifactSet.Charge.flag = 1;
        end;
      end;

  -- 生物
    TCS_FUNC.Creature = {};

    -- CREATURE_DEATH_KNIGHT 090 死亡骑士
      TCS_FUNC.Creature.DeathKnight = {};
      TCS_FUNC.Creature.DeathKnight.strHero = "LordHaart";
      TCS_FUNC.Creature.DeathKnight.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if 1 == 1
          and GetHero(iSide) ~= nil
          and GetHeroName(GetHero(iSide)) == TCS_FUNC.Creature.DeathKnight.strHero
          and itemUnitLast ~= nil
          and itemUnitLast["Side"] == iSide
          and itemUnitLast["UnitType"] == CREATURE_DEATH_KNIGHT
          and length(listCreatureNumberDecrease[iOppositeSide]) > 0
        then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.DeathKnight.trigger");
          itemUnitLast = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
          local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemUnitLast, 1, iOppositeSide, TCS_ENUM.Switch.No);
          for i, sidCreatureDecrease in listCreatureNumberDecrease[iOppositeSide] do
            if contains(arrCreatureNearBy, sidCreatureDecrease) ~= nil then
              local itemCreatureDecrease = TTHCS_GLOBAL.geneUnitInfo(sidCreatureDecrease);
              TTHCS_THREAD.attack8Tool(iSide, CREATURE_NECROMANCY_TOOL_LORDHAART, 1, itemCreatureDecrease["PosX"], itemCreatureDecrease["PosY"], sidCreatureDecrease, 1);
            end;
          end;
          ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_DEATH_KNIGHT]["Effect"], itemUnitLast["UnitName"], 5);
        end;
      end;
      TCS_FUNC.Creature.DeathKnight.aure = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if 1 == 1
          and GetHero(iSide) ~= nil
          and GetHeroName(GetHero(iSide)) == TCS_FUNC.Creature.DeathKnight.strHero
          and TCS_VARI.Info.HeroUpgradeShantiri[TCS_FUNC.Creature.DeathKnight.strHero] == 1
          and itemUnitLast ~= nil
          and itemUnitLast["Side"] == iOppositeSide
        then
          local listCreatureMain = {};
          local arrCreature = GetCreatures(iSide);
          for i, sidCreature in arrCreature do
            local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
            if itemCreature["UnitType"] == CREATURE_DEATH_KNIGHT then
              push(listCreatureMain, itemCreature);
            end;
          end;
          if length(listCreatureMain) > 0 then
            listCreatureMain = TTHCS_COMMON.desc8key(listCreatureMain, "UnitNumber");
            local itemCreatureMain = listCreatureMain[0];
            local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureMain, 1, iOppositeSide, TCS_ENUM.Switch.No);
            if contains(arrCreatureNearBy, itemUnitLast["UnitName"]) ~= nil then
              TTHCS_GLOBAL.print("TCS_FUNC.Creature.DeathKnight.aure");
              TTHCS_THREAD.attack8Tool(iSide, CREATURE_NECROMANCY_TOOL_LORDHAART, 1, itemUnitLast["PosX"], itemUnitLast["PosY"], itemUnitLast["UnitName"], 1);
              ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_DEATH_KNIGHT]["EffectAure"], itemUnitLast["UnitName"], 5);
            end;
          end;
        end;
      end;

    -- CREATURE_CHERUBIN 181 神圣守护者
      TCS_FUNC.Creature.Cherubin = {};
      TCS_FUNC.Creature.Cherubin.arrSpellId = { [0] = 221, [1] = 220, [2] = 219, [3] = 218 };
      TCS_FUNC.Creature.Cherubin.iSpellIndex = 0;
      TCS_FUNC.Creature.Cherubin.after = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if itemUnitLast["Side"] == iSide
          and itemUnitLast["UnitType"] == CREATURE_CHERUBIN then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.Cherubin.after");
          local iSpellId = TCS_FUNC.Creature.Cherubin.arrSpellId[TCS_FUNC.Creature.Cherubin.iSpellIndex];
          TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_CHERUBIN, itemUnitLast["UnitNumber"], iSpellId, TCS_ENUM.Switch.No);
          TCS_FUNC.Creature.Cherubin.iSpellIndex = TCS_FUNC.Creature.Cherubin.iSpellIndex + 1;
          if TCS_FUNC.Creature.Cherubin.iSpellIndex >= length(TCS_FUNC.Creature.Cherubin.arrSpellId) then
            TCS_FUNC.Creature.Cherubin.iSpellIndex = 0;
          end;
        end;
      end;

    -- CREATURE_DRAGON_KNIGHT 183 暗黑龙骑士
      TCS_FUNC.Creature.DragonKnight = {};
      TCS_FUNC.Creature.DragonKnight.arrSpellId = { [0] = 210, [1] = 215, [2] = 212, [3] = 213 };
      TCS_FUNC.Creature.DragonKnight.iSpellIndex = 0;
      TCS_FUNC.Creature.DragonKnight.after = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if itemUnitLast["Side"] == iSide
          and itemUnitLast["UnitType"] == CREATURE_DRAGON_KNIGHT then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.DragonKnight.after");
          local iSpellId = TCS_FUNC.Creature.DragonKnight.arrSpellId[TCS_FUNC.Creature.DragonKnight.iSpellIndex];
          TTHCS_THREAD.castGlobalSpell8Tool(iSide, CREATURE_DRAGON_KNIGHT, itemUnitLast["UnitNumber"], iSpellId, TCS_ENUM.Switch.No);
          TCS_FUNC.Creature.DragonKnight.iSpellIndex = TCS_FUNC.Creature.DragonKnight.iSpellIndex + 1;
          if TCS_FUNC.Creature.DragonKnight.iSpellIndex >= length(TCS_FUNC.Creature.DragonKnight.arrSpellId) then
            TCS_FUNC.Creature.DragonKnight.iSpellIndex = 0;
          end;
        end;
      end;

    -- CREATURE_ENCHANTER_ACADEMY 185 魔幻法师（学院）
    -- CREATURE_ENCHANTER_NEUTRAL 186 魔幻法师（中立）
      TCS_FUNC.Creature.Enchanter = {};
      TCS_FUNC.Creature.Enchanter.arrCreatureType = { 185, 186 };
      TCS_FUNC.Creature.Enchanter.iSide = 0;
      TCS_FUNC.Creature.Enchanter.after = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if itemUnitLast["Side"] == iSide
          and contains(TCS_FUNC.Creature.Enchanter.arrCreatureType, itemUnitLast["UnitType"]) ~= nil then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.Enchanter.after");
          local iTimes = 1;
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            -- Dracon 045 德肯
              if strHero == "Dracon" and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
                  iTimes = iTimes + 1;
                else
                  local iHeroLevel = TCS_VARI.Info.HeroLevel[strHero];
                  iTimes = iTimes + TTHCS_COMMON.ceil(iHeroLevel / 10);
                end;
              end;
          end;
          for i = 1, iTimes do
            local arrCreatureTarget = GetCreatures(TCS_FUNC.Creature.Enchanter.iSide);
            local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureTarget));
            local strCreatureTarget = arrCreatureTarget[iRandomIndex];
            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_ENCHANTER_CASTER, itemUnitLast["UnitNumber"], SPELL_ABILITY_RANDOM_CAST_DARK_LIGHT, strCreatureTarget, TCS_ENUM.Switch.No);
            TCS_FUNC.Creature.Enchanter.iSide = 1 - TCS_FUNC.Creature.Enchanter.iSide;
          end;
        end;
      end;

    -- CREATURE_JUSTICAR 188 阿斯塔特修士
      TCS_FUNC.Creature.Justicar = {};
      TCS_FUNC.Creature.Justicar.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if itemUnitLast ~= nil and itemUnitLast["Side"] == iOppositeSide then
          if (itemUnitLast["UnitCategory"] == TTH_ENUM.CombatHero and contains(TTHCS_TABLE.JusticarTargetHero, itemUnitLast["UnitType"]) ~= nil)
            or (itemUnitLast["UnitCategory"] == TTH_ENUM.CombatCreature and contains(TTHCS_TABLE.JusticarTargetCreature, itemUnitLast["UnitType"]) ~= nil) then
            local arrCreatureCaster = {};
            for i, strCreature in listCreatureNumberDecrease[iSide] do
              local itemCreature = TTHCS_GLOBAL.geneUnitInfo(strCreature);
              if itemCreature["UnitType"] == CREATURE_JUSTICAR then
                push(arrCreatureCaster, strCreature);
              end;
            end;
            if length(arrCreatureCaster) > 0 then
              TTHCS_GLOBAL.print("TCS_FUNC.Creature.Justicar.trigger");
              for i, strCreatureCaster in arrCreatureCaster do
                TTHCS_THREAD.castGlobalSpell4Mana(strCreatureCaster, SPELL_HOLY_WORD, TCS_ENUM.Switch.Yes);
                TCS_BATTLE.atb.record(strCreatureCaster, TCS_ENUM.Atb.max);
              end;
            end;
          end;
        end;
      end;

    -- CREATURE_LEGATE 190 圣血剑士
      TCS_FUNC.Creature.Legate = {};
      TCS_FUNC.Creature.Legate.trigger = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitType"] == CREATURE_LEGATE then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.Legate.trigger");
          local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(itemUnitLast["UnitName"]);
          TTHCS_THREAD.attack8Tool(iOppositeSide, CREATURE_LEGATE_SHADOW, 1, itemCreatureCurrent["PosX"], itemCreatureCurrent["PosY"], itemCreatureCurrent["UnitName"], 1);
          ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_LEGATE]["Effect"], itemUnitLast["UnitName"], 5);
          local sidHero = GetHero(iSide);
          local strHero = TCS_FUNC.Talent.Sanguinius.strHero;
          if 1 == 1
            and sidHero ~= nil
            and GetHeroName(sidHero) == strHero
            and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1
          then
            local arrCreatureTarget = TTHCS_GLOBAL.listUnitInArea(itemCreatureCurrent, 1, iOppositeSide, TCS_ENUM.Switch.No);
            for i, sidCreatureTarget in arrCreatureTarget do
              local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
              TTHCS_THREAD.attack8Tool(iSide, CREATURE_LEGATE_SHADOW, 1, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], itemCreatureTarget["UnitName"], 1);
            end;
          end;
          TCS_FUNC.Talent.Sanguinius.move(iSide, itemUnit);
        end;
      end;

    -- CREATURE_SIREN 195 女妖
      TCS_FUNC.Creature.Siren = {};
      TCS_FUNC.Creature.Siren.strHero = "Adelaide";
      TCS_FUNC.Creature.Siren.flag = {};
      TCS_FUNC.Creature.Siren.trigger = function(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        local strHero = "";
        if sidHero ~= nil then
          strHero = GetHeroName(sidHero);
        end;
        if itemUnitLast ~= nil and itemUnitLast["Side"] == iSide and itemUnitLast["UnitType"] == CREATURE_SIREN
          and length(listCreatureNumberDecrease[iOppositeSide]) > 0 then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.Siren.trigger");
          for i, sidTargetDecrease in listCreatureNumberDecrease[iOppositeSide] do
            local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidTargetDecrease);
            TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_SIREN_TOOL, itemUnitLast["UnitNumber"], SPELL_ICE_BOLT, sidTargetDecrease, TCS_ENUM.Switch.No);
            if strHero == TCS_FUNC.Creature.Siren.strHero then
              if TCS_FUNC.Creature.Siren.flag[strHero] == nil then
                TCS_FUNC.Creature.Siren.flag[strHero] = 2;
              end;
              if TCS_FUNC.Creature.Siren.flag[strHero] >= 2 then
                TCS_FUNC.Creature.Siren.flag[strHero] = 0;
                TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_ICE_BOLT, sidTargetDecrease, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  TTHCS_THREAD.cast.area.impl(sidHero, SPELL_FROST_RING, itemCreatureTarget["PosX"], itemCreatureTarget["PosY"], TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_DEEP_FREEZE, sidTargetDecrease, TCS_ENUM.Switch.Yes, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                end;
                TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                ShowFlyingSign(TTHCS_PATH["Talent"][strHero]["Effect"], sidHero, 5);
              end;
            end;
          end;
          ShowFlyingSign(TTH_TABLE.Spell[SPELL_ICE_BOLT]["Text"], itemUnitLast["UnitName"], 5);
        end;
      end;
      TCS_FUNC.Creature.Siren.charge = function(iSide, itemUnit, itemUnitLast)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if strHero == TCS_FUNC.Creature.Siren.strHero then
            if itemUnitLast ~= nil and itemUnitLast["UnitName"] == sidHero then
              TTHCS_GLOBAL.print("TCS_FUNC.Creature.Siren.charge");
              if TCS_FUNC.Creature.Siren.flag[strHero] == nil then
                TCS_FUNC.Creature.Siren.flag[strHero] = 2;
              end;
              TCS_FUNC.Creature.Siren.flag[strHero] = TCS_FUNC.Creature.Siren.flag[strHero] + 1;
            end;
          end;
        end;
      end;

    -- CREATURE_FATE_WEAVER_SPIDER 204 织命蛛后（蜘蛛形态）
    -- CREATURE_FATE_WEAVER_HUMAN 205 织命蛛后（人形态）
      TCS_FUNC.Creature.FateWeaver = {};
      TCS_FUNC.Creature.FateWeaver.strHero = "Anastasya";
      TCS_FUNC.Creature.FateWeaver.arrKeyHero = {
        [0] = "FateWeaver_strHero_0"
        , [1] = "FateWeaver_strHero_1"
      };
      TCS_FUNC.Creature.FateWeaver.arrKeyCount = {
        [0] = "FateWeaver_iCount_0"
        , [1] = "FateWeaver_iCount_1"
      };
      TCS_FUNC.Creature.FateWeaver.arrKeyDead = {
        [0] = "FateWeaver_iDead_0"
        , [1] = "FateWeaver_iDead_1"
      };
      TCS_FUNC.Creature.FateWeaver.record = function()
        for iSide = TTHCS_ENUM.SideAttacker, TTHCS_ENUM.SideDefender do
          local iNumberInit = 0;
          local arrCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide];
          for i, itemCreatureInit in arrCreatureInit do
            if 1 ~= 1
              or itemCreatureInit["UnitType"] == CREATURE_FATE_WEAVER_SPIDER
              or itemCreatureInit["UnitType"] == CREATURE_FATE_WEAVER_HUMAN
            then
              iNumberInit = iNumberInit + itemCreatureInit["UnitNumber"];
            end;
          end;
          if iNumberInit > 0 then
            local iNumberCurrent = 0;
            local arrCreatureCurrent = GetCreatures(iSide);
            for i, sidCreatureCurrent in arrCreatureCurrent do
              local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCurrent);
              if 1 ~= 1
                or itemCreatureCurrent["UnitType"] == CREATURE_FATE_WEAVER_SPIDER
                or itemCreatureCurrent["UnitType"] == CREATURE_FATE_WEAVER_HUMAN
              then
                iNumberCurrent = iNumberCurrent + itemCreatureCurrent["UnitNumber"];
              end;
            end;
            local sidHero = GetHero(iSide);
            local strHero = nil;
            if sidHero ~= nil then
              strHero = GetHeroName(sidHero);
            end;
            if strHero then
              SetGameVar(TCS_FUNC.Creature.FateWeaver.arrKeyHero[iSide], strHero);
              SetGameVar(TCS_FUNC.Creature.FateWeaver.arrKeyCount[iSide], iNumberCurrent);
              SetGameVar(TCS_FUNC.Creature.FateWeaver.arrKeyDead[iSide], iNumberInit - iNumberCurrent);
            end;
          end;
        end;
      end;
      TCS_FUNC.Creature.FateWeaver.check = function(iSide, sidCreature)
        local bCheck = nil;

        local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
        local itemCreatureFull = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreature];
        if 1 == 1
          and itemCreatureFull ~= nil
          and itemCreatureFull["UnitNumber"] == itemCreatureCurrent["UnitNumber"]
        then
          bCheck = not nil;
        end;

        return bCheck;
      end;
      TCS_FUNC.Creature.FateWeaver.set = function(iSide, sidCreaturePre, sidCreaturePost)
        local bCheck = nil;

        local itemCreaturePost = TTHCS_GLOBAL.geneUnitInfo(sidCreaturePost);
        local itemCreaturePre = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreaturePre];
        TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreaturePre] = nil;
        itemCreaturePre["UnitName"] = itemCreaturePost["UnitName"];
        itemCreaturePre["UnitType"] = itemCreaturePost["UnitType"];
        TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreaturePost] = itemCreaturePre;
        local arrCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide];
        TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide] = {};
        for sidCreature, itemCreatureInit in arrCreatureInit do
          if itemCreatureInit ~= nil then
            TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreature] = itemCreatureInit;
          end;
        end;
      end;
      TCS_FUNC.Creature.FateWeaver.isMain = function(iSide, sidCreatureTarget)
        local bCheck = nil;
        local listCreatureCaster = {};
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if 1 ~= 1
            or itemCreature["UnitType"] == CREATURE_FATE_WEAVER_SPIDER
            or itemCreature["UnitType"] == CREATURE_FATE_WEAVER_HUMAN
          then
            push(listCreatureCaster, itemCreature);
          end;
        end;
        listCreatureCaster = TTHCS_COMMON.desc8key(listCreatureCaster, "UnitNumber");
        if 1 == 1
          and length(listCreatureCaster) > 0
          and listCreatureCaster[0]["UnitName"] == sidCreatureTarget
        then
          bCheck = not nil;
        end;

        return bCheck;
      end;
      TCS_FUNC.Creature.FateWeaver.triggerSpider = function(iSide, itemUnit)
        TCS_FUNC.Creature.FateWeaver.record();
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        local strHero = "";
        if sidHero ~= nil then
          strHero = GetHeroName(sidHero);
        end;
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if itemCreature["UnitType"] == CREATURE_FATE_WEAVER_SPIDER then
            local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreature, 1, iOppositeSide, TCS_ENUM.Switch.No);
            if 1 == 1
              and length(arrCreatureNearBy) == 0
              and TCS_FUNC.Creature.FateWeaver.check(iSide, sidCreature)
            then
              TTHCS_GLOBAL.print("TCS_FUNC.Creature.FateWeaver.triggerSpider "..sidCreature);
              TCS_VARI.isAutoFinish = 0;
              EnableAutoFinish(nil);
              TTHCS_THREAD.removeCreature(sidCreature);
              local sidCreatureCast = TTHCS_THREAD.addCreature(iSide, CREATURE_FATE_WEAVER_HUMAN, itemCreature["UnitNumber"], itemCreature["PosX"], itemCreature["PosY"]);
              ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_FATE_WEAVER_HUMAN]["Effect"], sidCreatureCast, 5);
              TTHCS_GLOBAL.resetMana(sidCreatureCast, itemCreature["CurrentMana"]);
              local itemCreatureCast = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCast);
              TCS_FUNC.Creature.FateWeaver.set(iSide, sidCreature, sidCreatureCast);
              if strHero == TCS_FUNC.Creature.FateWeaver.strHero then
                local arrCreatureTarget = GetCreatures(iOppositeSide);
                local listSortDistance = {};
                for i, sidCreatureTarget in arrCreatureTarget do
                  local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
                  local iDistanceX = itemCreatureCast["PosX"] - itemCreatureTarget["PosX"];
                  local iDistanceY = itemCreatureCast["PosY"] - itemCreatureTarget["PosY"];
                  itemCreatureTarget["Distance"] = iDistanceX * iDistanceX +  iDistanceY * iDistanceY;
                  push(listSortDistance, itemCreatureTarget);
                end;
                if length(listSortDistance) > 0 then
                  listSortDistance = TTHCS_COMMON.asc8key(listSortDistance, "Distance");
                  local itemCreatureNearest = listSortDistance[0];
                  if TCS_VARI.Info.HeroUpgradeShantiri[strHero] ~= 1 then
                    TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_SIREN_TOOL, itemCreatureCast["UnitNumber"], SPELL_SORROW, itemCreatureNearest["UnitName"], TCS_ENUM.Switch.No);
                  else
                    TTHCS_THREAD.cast.aimed.impl(sidHero, SPELL_SORROW, itemCreatureNearest["UnitName"], TCS_ENUM.Switch.No, TCS_ENUM.Switch.No, TCS_ENUM.Switch.No);
                  end;
                end;
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  TCS_BATTLE.atb.record(sidCreatureCast, TCS_ENUM.Atb.max);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  if TCS_FUNC.Creature.FateWeaver.isMain(iSide, sidCreatureCast) then
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
      TCS_FUNC.Creature.FateWeaver.triggerHuman = function(iSide, itemUnit)
        TCS_FUNC.Creature.FateWeaver.record();
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iSide);
        local strHero = "";
        if sidHero ~= nil then
          strHero = GetHeroName(sidHero);
        end;
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if itemCreature["UnitType"] == CREATURE_FATE_WEAVER_HUMAN then
            local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreature, 1, iOppositeSide, TCS_ENUM.Switch.No);
            if 1 == 1
              and length(arrCreatureNearBy) > 0
              and TCS_FUNC.Creature.FateWeaver.check(iSide, sidCreature)
            then
              TTHCS_GLOBAL.print("TCS_FUNC.Creature.FateWeaver.triggerHuman "..sidCreature);
              TCS_VARI.isAutoFinish = 0;
              EnableAutoFinish(nil);
              TTHCS_THREAD.removeCreature(sidCreature);
              local sidCreatureCast = TTHCS_THREAD.addCreature(iSide, CREATURE_FATE_WEAVER_SPIDER, itemCreature["UnitNumber"], itemCreature["PosX"], itemCreature["PosY"]);
              ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_FATE_WEAVER_SPIDER]["Effect"], sidCreatureCast, 5);
              TTHCS_GLOBAL.resetMana(sidCreatureCast, itemCreature["CurrentMana"]);
              local itemCreatureCast = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCast);
              TCS_FUNC.Creature.FateWeaver.set(iSide, sidCreature, sidCreatureCast);
              if strHero == TCS_FUNC.Creature.FateWeaver.strHero then
                TTHCS_THREAD.castGlobalSpell5Mana(sidCreatureCast, SPELL_ABILITY_DEATH_WAIL, TCS_ENUM.Switch.Yes);
                if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
                  TCS_BATTLE.atb.record(sidCreatureCast, TCS_ENUM.Atb.max);
                end;
                if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
                  if TCS_FUNC.Creature.FateWeaver.isMain(iSide, sidCreatureCast) then
                    TCS_BATTLE.atb.record(sidHero, TCS_ENUM.Atb.max);
                  end;
                end;
              end;
            end;
          end;
        end;
      end;

    -- CREATURE_FEARLESS_LORD_MELEE 204 无畏领主（冲锋形态）
    -- CREATURE_FEARLESS_LORD_SHOT 205 无畏领主（重炮形态）
      TCS_FUNC.Creature.FearlessLord = {};
      TCS_FUNC.Creature.FearlessLord.strHero = "DavianThule";
      TCS_FUNC.Creature.FearlessLord.arrKeyHero = {
        [0] = "FearlessLord_strHero_0"
        , [1] = "FearlessLord_strHero_1"
      };
      TCS_FUNC.Creature.FearlessLord.arrKeyCount = {
        [0] = "FearlessLord_iCount_0"
        , [1] = "FearlessLord_iCount_1"
      };
      TCS_FUNC.Creature.FearlessLord.arrKeyDead = {
        [0] = "FearlessLord_iDead_0"
        , [1] = "FearlessLord_iDead_1"
      };
      TCS_FUNC.Creature.FearlessLord.record = function()
        for iSide = TTHCS_ENUM.SideAttacker, TTHCS_ENUM.SideDefender do
          local iNumberInit = 0;
          local arrCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide];
          for i, itemCreatureInit in arrCreatureInit do
            if 1 ~= 1
              or itemCreatureInit["UnitType"] == CREATURE_FEARLESS_LORD_MELEE
              or itemCreatureInit["UnitType"] == CREATURE_FEARLESS_LORD_SHOT
            then
              iNumberInit = iNumberInit + itemCreatureInit["UnitNumber"];
            end;
          end;
          if iNumberInit > 0 then
            local iNumberCurrent = 0;
            local arrCreatureCurrent = GetCreatures(iSide);
            for i, sidCreatureCurrent in arrCreatureCurrent do
              local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCurrent);
              if 1 ~= 1
                or itemCreatureCurrent["UnitType"] == CREATURE_FEARLESS_LORD_MELEE
                or itemCreatureCurrent["UnitType"] == CREATURE_FEARLESS_LORD_SHOT
              then
                iNumberCurrent = iNumberCurrent + itemCreatureCurrent["UnitNumber"];
              end;
            end;
            local sidHero = GetHero(iSide);
            local strHero = nil;
            if sidHero ~= nil then
              strHero = GetHeroName(sidHero);
            end;
            if strHero then
              SetGameVar(TCS_FUNC.Creature.FearlessLord.arrKeyHero[iSide], strHero);
              SetGameVar(TCS_FUNC.Creature.FearlessLord.arrKeyCount[iSide], iNumberCurrent);
              SetGameVar(TCS_FUNC.Creature.FearlessLord.arrKeyDead[iSide], iNumberInit - iNumberCurrent);
            end;
          end;
        end;
      end;
      TCS_FUNC.Creature.FearlessLord.checkNumber = function(iSide, sidCreature)
        local bCheck = nil;

        local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
        local itemCreatureFull = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreature];
        if itemCreatureFull["UnitNumber"] == itemCreatureCurrent["UnitNumber"] then
          bCheck = not nil;
        end;

        return bCheck;
      end;
      TCS_FUNC.Creature.FearlessLord.set = function(iSide, sidCreaturePre, sidCreaturePost)
        local bCheck = nil;

        local itemCreaturePost = TTHCS_GLOBAL.geneUnitInfo(sidCreaturePost);
        local itemCreaturePre = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreaturePre];
        TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreaturePre] = nil;
        itemCreaturePre["UnitName"] = itemCreaturePost["UnitName"];
        itemCreaturePre["UnitType"] = itemCreaturePost["UnitType"];
        TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreaturePost] = itemCreaturePre;
        local arrCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide];
        TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide] = {};
        for sidCreature, itemCreatureInit in arrCreatureInit do
          if itemCreatureInit ~= nil then
            TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreature] = itemCreatureInit;
          end;
        end;
      end;
      TCS_FUNC.Creature.FearlessLord.statRepair = {};
      TCS_FUNC.Creature.FearlessLord.startRepair = function(iSide, sidCreature)
        if 1 ~= 1
          or TCS_FUNC.Creature.FearlessLord.statRepair[sidCreature] == nil
          or TCS_FUNC.Creature.FearlessLord.statRepair[sidCreature] == 0
        then
          TCS_FUNC.Creature.FearlessLord.statRepair[sidCreature] = 1;
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreature, 1, iSide, TCS_ENUM.Switch.No);
          if length(arrCreatureNearBy) > 0 then
            for i, sidCreatureNearBy in arrCreatureNearBy do
              TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL_FearlessLord, itemCreature["UnitNumber"], SPELL_CELESTIAL_SHIELD, sidCreatureNearBy, TCS_ENUM.Switch.No);
            end;
          end;
        end;
      end;
      TCS_FUNC.Creature.FearlessLord.endRepair = function(sidCreature)
        TCS_FUNC.Creature.FearlessLord.statRepair[sidCreature] = 0;
      end;
      TCS_FUNC.Creature.FearlessLord.checkRepair = function(iSide)
        local bCheck = nil;
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if TCS_FUNC.Creature.FearlessLord.statRepair[sidCreature] == 1 then
            bCheck = not nil;
          end;
        end;
        return bCheck;
      end;
      TCS_FUNC.Creature.FearlessLord.triggerRepair = function(iSide, itemUnit)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if 1 == 1
          and TCS_FUNC.Creature.FearlessLord.checkRepair(iSide)
        then
          TTHCS_GLOBAL.print("TCS_FUNC.Creature.FearlessLord.triggerRepair");
          local arrCreatureRepair = GetCreatures(iSide);
          for i, sidCreatureRepair in arrCreatureRepair do
            if TCS_FUNC.Creature.FearlessLord.statRepair[sidCreatureRepair] == 1 then
              -- local itemCreatureFull = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreatureRepair];
              local itemCreatureRepair = TTHCS_GLOBAL.geneUnitInfo(sidCreatureRepair);
              TTHCS_THREAD.castAimedSpell8Tool(iSide, CREATURE_FORTRESS_TOOL_FearlessLord, itemCreatureRepair["UnitNumber"], SPELL_ABILITY_REPAIR, itemCreatureRepair["UnitName"], TCS_ENUM.Switch.No);
              local sidHero = GetHero(iSide);
              if sidHero ~= nil then
                local strHero = GetHeroName(sidHero);
                if strHero == TCS_FUNC.Creature.FearlessLord.strHero then
                  TTHCS_THREAD.defend(sidCreatureRepair);
                end;
              end;
              ShowFlyingSign(TTHCS_PATH["Creature"][CREATURE_FEARLESS_LORD_SHOT]["EffectRepair"], itemCreatureRepair["UnitName"], 5);
              sleep(50);
              -- local itemPost = {};
              -- local i = 0;
              -- repeat
              --   itemPost = TTHCS_GLOBAL.geneUnitInfo(sidCreatureRepair);
              --   i = i + 1;
              --   print("i: "..i);
              --   sleep(10);
              -- until 1 ~= 1
              --   or itemPost["UnitNumber"] > itemCreatureRepair["UnitNumber"]
              --   or i > 50;
              if TCS_FUNC.Creature.FearlessLord.checkNumber(iSide, itemCreatureRepair["UnitName"]) then
                TCS_FUNC.Creature.FearlessLord.cast(iSide, itemCreatureRepair["UnitName"]);
                TCS_FUNC.Creature.FearlessLord.endRepair(itemCreatureRepair["UnitName"]);
              else
                TCS_BATTLE.atb.record(itemCreatureRepair["UnitName"], TCS_ENUM.Atb.min);
              end;
            end;
          end;
          TCS_FUNC.Creature.FearlessLord.record();
        end;
      end;
      TCS_FUNC.Creature.FearlessLord.cast = function(iSide, sidCreature)
        TCS_VARI.isAutoFinish = 0;
        EnableAutoFinish(nil);
        local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
        local iUnitType = CREATURE_FEARLESS_LORD_MELEE;
        if itemCreature["UnitType"] == CREATURE_FEARLESS_LORD_MELEE then
          iUnitType = CREATURE_FEARLESS_LORD_SHOT;
        elseif itemCreature["UnitType"] == CREATURE_FEARLESS_LORD_SHOT then
          iUnitType = CREATURE_FEARLESS_LORD_MELEE;
        end;
        TTHCS_THREAD.removeCreature(itemCreature["UnitName"]);
        local sidCreatureCast = TTHCS_THREAD.addCreature(iSide, iUnitType, itemCreature["UnitNumber"], itemCreature["PosX"], itemCreature["PosY"]);
        ShowFlyingSign(TTHCS_PATH["Creature"][iUnitType]["Effect"], sidCreatureCast, 5);
        local itemCreatureCast = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCast);
        TCS_FUNC.Creature.FearlessLord.set(iSide, sidCreature, sidCreatureCast);
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if 1 == 1
            and strHero == TCS_FUNC.Creature.FearlessLord.strHero
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1
          then
            if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
              TTHCS_THREAD.castGlobalSpell4Mana(sidCreatureCast, SPELL_RUNE_OF_DRAGONFORM, TCS_ENUM.Switch.No);
            end;
            if IsHuman(iSide) then
              TCS_BATTLE.atb.record(sidCreatureCast, TCS_ENUM.Atb.max);
            else
              TCS_BATTLE.atb.record(sidCreatureCast, TCS_ENUM.Atb.immediate);
            end;
          end;
        end;
      end;
      TCS_FUNC.Creature.FearlessLord.castShot = function(iSide, itemUnit)
        TCS_FUNC.Creature.FearlessLord.record();
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if itemCreature["UnitType"] == CREATURE_FEARLESS_LORD_MELEE then
            local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreature, 1, iOppositeSide, TCS_ENUM.Switch.No);
            if length(arrCreatureNearBy) == 0 then
              if TCS_FUNC.Creature.FearlessLord.checkNumber(iSide, itemCreature["UnitName"]) then
                TTHCS_GLOBAL.print("TCS_FUNC.Creature.FearlessLord.castShot "..itemCreature["UnitName"]);
                TCS_FUNC.Creature.FearlessLord.cast(iSide, itemCreature["UnitName"]);
              else
                TCS_FUNC.Creature.FearlessLord.startRepair(iSide, itemCreature["UnitName"]);
              end;
            end;
          end;
        end;
      end;
      TCS_FUNC.Creature.FearlessLord.castMelee = function(iSide, itemUnit)
        TCS_FUNC.Creature.FearlessLord.record();
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if itemCreature["UnitType"] == CREATURE_FEARLESS_LORD_SHOT then
            local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreature, 1, iOppositeSide, TCS_ENUM.Switch.No);
            if length(arrCreatureNearBy) > 0 then
              if TCS_FUNC.Creature.FearlessLord.checkNumber(iSide, itemCreature["UnitName"]) then
                TTHCS_GLOBAL.print("TCS_FUNC.Creature.FearlessLord.castMelee "..itemCreature["UnitName"]);
                TCS_FUNC.Creature.FearlessLord.cast(iSide, itemCreature["UnitName"]);
              else
                TCS_FUNC.Creature.FearlessLord.startRepair(iSide, itemCreature["UnitName"]);
              end;
            end;
          end;
        end;
      end;

  -- 召唤统一
    TCS_FUNC.Summon = {};
    TCS_FUNC.Summon.trigger = function(iSide, sidCreature)
      -- Zehir 056 泽希尔
        TCS_FUNC.Talent.Zehir.buff(iSide, sidCreature);

      -- Kastore 073 卡斯托雷
        TCS_FUNC.Talent.Kastore.buff(iSide, sidCreature);
    end;

  -- 追加统一
    TCS_FUNC.Append = {};
    TCS_FUNC.Append.checkEmpowered = function(sidUnit)
      local bCheck = TCS_ENUM.Switch.No;
      local itemUnit = TTHCS_GLOBAL.geneUnitInfo(sidUnit);
      if itemUnit["UnitCategory"] == TTH_ENUM.CombatHero then
        local strHero = GetHeroName(sidUnit);
        if strHero == "Inagost" then
          if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
            if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              local iSpellPower = TCS_VARI.Info.HeroAttribute[strHero][STAT_SPELL_POWER];
              local iKnowledge = TCS_VARI.Info.HeroAttribute[strHero][STAT_KNOWLEDGE];
              if iSpellPower >= iKnowledge then
                bCheck = TCS_ENUM.Switch.Yes;
              end;
            end;
          else
            bCheck = TCS_ENUM.Switch.Yes;
          end;
        end;
        if strHero == "Sheltem"
          and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
          bCheck = TCS_ENUM.Switch.Yes;
        end;
      end;
      return bCheck;
    end;
    TCS_FUNC.Append.checkMana = function(sidUnit)
      local bCheck = TCS_ENUM.Switch.No;
      local itemUnit = TTHCS_GLOBAL.geneUnitInfo(sidUnit);
      if itemUnit["UnitCategory"] == TTH_ENUM.CombatHero then
        local strHero = GetHeroName(sidUnit);
        if strHero == "Inagost" then
          if TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 0 then
            if TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
              local iSpellPower = TCS_VARI.Info.HeroAttribute[strHero][STAT_SPELL_POWER];
              local iKnowledge = TCS_VARI.Info.HeroAttribute[strHero][STAT_KNOWLEDGE];
              if iSpellPower <= iKnowledge then
                bCheck = TCS_ENUM.Switch.Yes;
              end;
            end;
          else
            bCheck = TCS_ENUM.Switch.Yes;
          end;
        end;
        if strHero == "Solmyr"
          and TCS_VARI.Info.HeroUpgradeShantiri[strHero] == 1 then
          bCheck = TCS_ENUM.Switch.Yes;
        end;
      end;
      return bCheck;
    end;

-- 战场
  TCS_BATTLE = {};

  -- 记录快照
    TCS_BATTLE.snapshot = {};
    TCS_BATTLE.snapshot.record = function()
      if TCS_VARI.Snapshot.last ~= nil then
        TCS_VARI.Snapshot.before = TCS_VARI.Snapshot.last;
      else
        TCS_VARI.Snapshot.before = TCS_VARI.Snapshot.init;
      end;
      TCS_VARI.Snapshot.last = TTHCS_GLOBAL.geneSnapshot(TCS_ENUM.Switch.No);
    end;

  -- 战斗结束校验
    TCS_BATTLE.finish = {};
    TCS_BATTLE.finish.check = function(iSide)
      local bCheck = nil;
      local arrCreatureCurrent = GetCreatures(iSide);
      if 1 == 1
        and arrCreatureCurrent ~= nil
        and length(arrCreatureCurrent) > 0
      then
        local bInit = 0;
        for i, sidCreatureCurrent in arrCreatureCurrent do
          if TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide][sidCreatureCurrent] ~= nil then
            bInit = bInit + 1;
          end;
        end;
        if bInit > 0 then
          bCheck = not nil;
        end;
      end;
      local arrCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide];
      for i, itemCreatureInit in arrCreatureInit do
        if 1 == 1
          and IsCombatUnit(itemCreatureInit["UnitName"])
          and GetCreatureNumber(itemCreatureInit["UnitName"]) > 0
          and GetUnitSide(itemCreatureInit["UnitName"]) == itemCreatureInit["Side"]
        then
          bCheck = not nil;
        end;
      end;
      if bCheck == nil then
        TCS_VARI.isAutoFinish = 1;
        EnableAutoFinish(not nil);
      end;
    end;

  -- 解决人类玩家重复执行
    TCS_BATTLE.duplicate = {};
    TCS_BATTLE.duplicate.value = 0;
    TCS_BATTLE.duplicate.arrSidUnit = {};
    TCS_BATTLE.duplicate.checkHuman = function(itemUnit)
      local bCheck = nil;
      if IsHuman(itemUnit["Side"]) then
        bCheck = not nil;
        TCS_BATTLE.duplicate.arrSidUnit = {};
      else
        push(TCS_BATTLE.duplicate.arrSidUnit, itemUnit["UnitName"]);
        if length(TCS_BATTLE.duplicate.arrSidUnit) == 2 then
          if TCS_BATTLE.duplicate.arrSidUnit[0] == TCS_BATTLE.duplicate.arrSidUnit[1] then
            bCheck = not nil;
          end;
          TCS_BATTLE.duplicate.arrSidUnit = {};
        end;
      end;
      return bCheck;
    end;
    TCS_BATTLE.duplicate.clear = function()
      TCS_BATTLE.duplicate.value = 0;
    end;
    TCS_BATTLE.duplicate.pause = function(itemUnit)
      if TCS_BATTLE.duplicate.checkHuman(itemUnit) then
        TCS_BATTLE.duplicate.value = 1;
      end;
    end;
    TCS_BATTLE.duplicate.isPause = function()
      local bCheck = nil;
      if TCS_BATTLE.duplicate.value == 1 then
        bCheck = not nil;
      end;
      return bCheck;
    end;

  -- 游戏运行状态控制
    TCS_BATTLE.status = {};
    TCS_BATTLE.status.pause = function()
      print("combatSetPause");
      combatSetPause(1);
      local sidHero = GetHero(TCS_ENUM.Side.Attacker);
      TTHCS_GLOBAL.setHeroMana(sidHero, GetUnitManaPoints(sidHero));
    end;
    TCS_BATTLE.status.continue = function()
      print("combatSetContinue");
      combatSetPause(nil);
    end;

  -- ATB相关
    TCS_BATTLE.atb = {};
    TCS_BATTLE.atb.record = function(sidUnit, iAtb)
      local itemAtb = {};
      itemAtb["UnitName"] = sidUnit;
      itemAtb["ATB"] = iAtb;
      push(TCS_VARI.Unit.setAtb, itemAtb);
    end;
    TCS_BATTLE.atb.deal = function()
      for i, itemAtb in TCS_VARI.Unit.setAtb do
        if IsCombatUnit(itemAtb["UnitName"]) ~= nil then
          setATB(itemAtb["UnitName"], itemAtb["ATB"]);
        end;
      end;
      TCS_VARI.Unit.setAtb = {};
    end;

-- 生命周期
  -- 布阵阶段
    function Events_Tactics()
      print("Events_Tactics begin");
      combatSetPause(1);
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        TCS_FUNC.Talent.KujinMP.tactics(iSide);
      end;
      combatSetPause(nil);
      -- EnableAutoFinish(nil);
      print("Events_Tactics end");
    end;

  -- 战场加载
    print("Combat script loading...");
    while combatStarted() == nil do
      sleep(1)
    end;
    print("Combat script loaded.");

  -- 战斗开始阶段
    function Events_Start()
      print("Events_Start begin");
      combatSetPause(1);

      -- 等待战场随机数初始化
        TTHCS_COMMON.initRandom();
        while not TTHCS_COMMON.random do
          sleep(1);
        end;

      TCS_INIT.Snapshot();
      TCS_INIT.HeroLevel();
      TCS_INIT.HeroAttribute();
      TCS_INIT.HeroTalent();
      TCS_INIT.HeroUpgradeMastery();
      TCS_INIT.HeroUpgradeShantiri();
      TCS_INIT.HeroSkill();
      TCS_INIT.HeroArtifact();
      TCS_INIT.HeroArtifactSet();
      TCS_INIT.TownBattle();
      TCS_INIT.TthMap10W();
      if TTHCS_GLOBAL.countSpecialHero() == 0 then
        TCS_BATTLE.start();
      end;

      combatSetPause(nil);
      print("Events_Start end");
    end;

  -- 监听: 战斗开始触发接口
    TCS_BATTLE.hasDealStart = TCS_ENUM.Switch.No;
    TCS_BATTLE.start = function()
      print("start");
      TCS_BATTLE.hasDealStart = TCS_ENUM.Switch.Yes;
      for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
        -- 特长
          -- Haven
            -- Ving 004 艾莲娜
              TCS_FUNC.Talent.Ving.start(iSide);

            -- Sarge 005 克劳斯
              TCS_FUNC.Talent.Sarge.start(iSide);

          -- Sylvan
            -- Ildar 037 娜瑞莎
              TCS_FUNC.Talent.Ildar.start(iSide);

            -- Vaniel 038 蒂耶鲁
              TCS_FUNC.Talent.Vaniel.start(iSide);

          -- Academy
            -- Solmyr 058 索姆拉
              TCS_FUNC.Talent.Solmyr.start(iSide);

          -- Dungeon
            -- Shadwyn 068 伊拉娅
              TCS_FUNC.Talent.Shadwyn.start(iSide);

            -- Kastore 073 卡斯托雷
              TCS_FUNC.Talent.Kastore.masterOfIce.start(iSide);
              TCS_FUNC.Talent.Kastore.masterOfFire.start(iSide);
              TCS_FUNC.Talent.Kastore.masterOfLightnings.start(iSide);

          -- Necropolis
            -- LordHaart 077 罗德哈特
              TCS_FUNC.Talent.LordHaart.start(iSide);

            -- Mortarion 162 莫塔里安
              TCS_FUNC.Talent.Mortarion.start(iSide);

            -- Sandro 095 山德鲁
              TCS_FUNC.Talent.Sandro.trigger.HolyWord(iSide);

          -- Inferno

          -- Fortress
            -- Tazar 120 泰泽
              TCS_FUNC.Talent.Tazar.start(iSide);

            -- Hangvul2 127 尤兰德
              TCS_FUNC.Talent.Hangvul2.start(iSide);

            -- Vegeyr 129 斯威
              TCS_FUNC.Talent.Vegeyr.start(iSide);

          -- Stronghold
            -- Azar 138 艾扎-埃克
              TCS_FUNC.Talent.Azar.start(iSide);

            -- Hero4 139 哥沙克
              TCS_FUNC.Talent.Hero4.start(iSide);

            -- Crag 141 肯洛-哈格
              TCS_FUNC.Talent.Crag.start(iSide);

            -- KujinMP 147 库金
              TCS_FUNC.Talent.KujinMP.start(iSide);

            -- Shiva 151 希娃
              TCS_FUNC.Talent.Shiva.start(iSide);

        -- 技能
          -- HERO_SKILL_CASTER_CERTIFICATE 081 神秘精髓
            TCS_FUNC.Skill.CasterCertificate.start(iSide);

          -- HERO_SKILL_FOREST_GUARD_EMBLEM 115 战地支援
            TCS_FUNC.Skill.ForestGuardEmblem.start(iSide);

          -- HERO_SKILL_PARIAH 083 堕落骑士
            TCS_FUNC.Skill.Pariah.start(iSide);

          -- HERO_SKILL_TWILIGHT 109 微光黎明
            TCS_FUNC.Skill.Twilight.start(iSide);

          -- HERO_SKILL_BEHIND_ENEMY 309 深入敌后
            TCS_FUNC.Skill.BehindEnemy.start(iSide);

        -- 宝物
          -- ARTIFACT_BAND_OF_CONJURER 060 元素腕带
            TCS_FUNC.Artifact.BandOfConjurer.start(iSide);

          -- ARTIFACT_GEM_OF_PHANTOM 102 幻影宝石
            TCS_FUNC.Artifact.GemOfPhantom.start(iSide);

          -- ARTIFACT_DRUM_OF_CHARGE 106 冲锋战鼓
            TCS_FUNC.Artifact.DrumOfCharge.start(iSide);

          -- ARTIFACT_ANGELIC_ALLIANCE 068 天使联盟
            TCS_FUNC.Artifact.AngelicAlliance.start(iSide);

          -- ARTIFACT_CURSE_SHOULDER 114 诅咒斗篷
            TCS_FUNC.Artifact.CurseShoulder.start(iSide);

          -- ARTIFACT_SENTINEL 124 哨兵之盾
            TCS_FUNC.Artifact.Sentinel.start(iSide);

        -- 组合宝物

        -- 生物
      end;
    end;

  -- 监听: 单位行动触发接口
    TCS_BATTLE.move = function(sidUnit)
      print("===begin===");
      print("move: ", sidUnit);

      -- 结束战斗校验
        if TCS_VARI.isAutoFinish == 0 then
          for iSideCheckFinish = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
            TCS_BATTLE.finish.check(iSideCheckFinish);
          end;
        end;

      local iSide = GetUnitSide(sidUnit);
      local itemUnit = TTHCS_GLOBAL.geneUnitInfo(sidUnit);

      -- 当前单位不存在
        if itemUnit == nil then
          print("itemUnit not exist");
          print("====end====");
          return nil;
        end;

      -- 记录快照
        TCS_BATTLE.snapshot.record();

      -- 快照差异解析
        local listSnapshotDiff = TTHCS_GLOBAL.diffSnapshot(TCS_VARI.Snapshot.init, TCS_VARI.Snapshot.before, TCS_VARI.Snapshot.last);
        local bIsEffect = TCS_ENUM.Switch.No;
        local itemHeroMana = {};                      -- 英雄魔法值
        local listCreatureStatusUnchanged = {};       -- 生物状态未改变
        local listCreatureStatusRevive = {};          -- 生物被复活
        local listCreatureStatusDeath = {};           -- 生物被击杀
        local listCreatureStatusSummon = {};          -- 生物被召唤
        local listCreatureStatusGating = {};          -- 生物被异界召唤
        local listCreatureStatusConsume = {};         -- 生物被食尸
        local listCreatureNumberUnchanged = {};       -- 生物数量未改变
        local listCreatureNumberIncrease = {};        -- 生物数量增加
        local listCreatureNumberDecrease = {};        -- 生物数量减少
        local listCreatureManaUnchanged = {};         -- 生物魔法值未改变
        local listCreatureManaIncrease = {};          -- 生物魔法值增加
        local listCreatureManaDecrease = {};          -- 生物魔法值减少
        local listCreaturePositionUnchanged = {};     -- 生物坐标未改变
        local listCreaturePositionMove = {};          -- 生物坐标改变
        local listCreatureRageLevelUnchanged = {};    -- 生物血怒未改变
        local listCreatureRageLevelIncrease = {};     -- 生物血怒提升
        local listCreatureRageLevelDecrease = {};     -- 生物血怒降低
        local listWarMachineStatusUnchanged = {};     -- 战争机械状态未改变
        local listWarMachineStatusRevive = {};        -- 战争机械被修理复活
        local listWarMachineStatusDeath = {};         -- 战争机械被摧毁
        local listBuildingStatusUnchanged = {};       -- 城防状态未改变
        local listBuildingStatusDeath = {};           -- 城防被摧毁
        local listSpellSpawnStatusUnchanged = {};     -- 召唤物状态未改变
        local listSpellSpawnStatusDeath = {};         -- 召唤物被摧毁
        local listSpellSpawnStatusSummon = {};        -- 召唤物被召唤
        for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
          if listSnapshotDiff[TTH_ENUM.CombatHero][iSide] ~= nil then
            itemHeroMana[iSide] = listSnapshotDiff[TTH_ENUM.CombatHero][iSide][TCS_ENUM.Snapshot.Mana];
            if itemHeroMana[iSide] ~= 0 then
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
          end;
          listCreatureStatusUnchanged[iSide] = {};
          listCreatureStatusRevive[iSide] = {};
          listCreatureStatusDeath[iSide] = {};
          listCreatureStatusSummon[iSide] = {};
          listCreatureStatusGating[iSide] = {};
          listCreatureStatusConsume[iSide] = {};
          listCreatureNumberUnchanged[iSide] = {};
          listCreatureNumberIncrease[iSide] = {};
          listCreatureNumberDecrease[iSide] = {};
          listCreatureManaUnchanged[iSide] = {};
          listCreatureManaIncrease[iSide] = {};
          listCreatureManaDecrease[iSide] = {};
          listCreaturePositionUnchanged[iSide] = {};
          listCreaturePositionMove[iSide] = {};
          listCreatureRageLevelUnchanged[iSide] = {};
          listCreatureRageLevelIncrease[iSide] = {};
          listCreatureRageLevelDecrease[iSide] = {};
          listWarMachineStatusUnchanged[iSide] = {};
          listWarMachineStatusRevive[iSide] = {};
          listWarMachineStatusDeath[iSide] = {};
          listBuildingStatusUnchanged[iSide] = {};
          listBuildingStatusDeath[iSide] = {};
          listSpellSpawnStatusUnchanged[iSide] = {};
          listSpellSpawnStatusDeath[iSide] = {};
          listSpellSpawnStatusSummon[iSide] = {};
          for sidCreature, itemCreatureDiff in listSnapshotDiff[TTH_ENUM.CombatCreature][iSide] do
            if itemCreatureDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Unchanged then
              push(listCreatureStatusUnchanged[iSide], sidCreature);
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Revive then
              push(listCreatureStatusRevive[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Death then
              push(listCreatureStatusDeath[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Summon then
              push(listCreatureStatusSummon[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Gating then
              push(listCreatureStatusGating[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Consume then
              push(listCreatureStatusConsume[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
            if itemCreatureDiff[TCS_ENUM.Snapshot.Number] == TCS_ENUM.Snapshot.Creature.Number.Unchanged then
              push(listCreatureNumberUnchanged[iSide], sidCreature);
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Number] == TCS_ENUM.Snapshot.Creature.Number.Increase then
              push(listCreatureNumberIncrease[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Number] == TCS_ENUM.Snapshot.Creature.Number.Decrease then
              push(listCreatureNumberDecrease[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
            if itemCreatureDiff[TCS_ENUM.Snapshot.Mana] == TCS_ENUM.Snapshot.Creature.Mana.Unchanged then
              push(listCreatureManaUnchanged[iSide], sidCreature);
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Mana] == TCS_ENUM.Snapshot.Creature.Mana.Increase then
              push(listCreatureManaIncrease[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Mana] == TCS_ENUM.Snapshot.Creature.Mana.Decrease then
              push(listCreatureManaDecrease[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
            if itemCreatureDiff[TCS_ENUM.Snapshot.Position] == TCS_ENUM.Snapshot.Creature.Position.Unchanged then
              push(listCreaturePositionUnchanged[iSide], sidCreature);
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.Position] == TCS_ENUM.Snapshot.Creature.Position.Move then
              push(listCreaturePositionMove[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
            if itemCreatureDiff[TCS_ENUM.Snapshot.RageLevel] == TCS_ENUM.Snapshot.Creature.RageLevel.Unchanged then
              push(listCreatureRageLevelUnchanged[iSide], sidCreature);
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.RageLevel] == TCS_ENUM.Snapshot.Creature.RageLevel.Increase then
              push(listCreatureRageLevelIncrease[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemCreatureDiff[TCS_ENUM.Snapshot.RageLevel] == TCS_ENUM.Snapshot.Creature.RageLevel.Decrease then
              push(listCreatureRageLevelDecrease[iSide], sidCreature);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
          end;
          for sidWarMachine, itemWarMachineDiff in listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide] do
            if itemWarMachineDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.WarMachine.Status.Unchanged then
              push(listWarMachineStatusUnchanged[iSide], sidWarMachine);
            elseif itemWarMachineDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.WarMachine.Status.Revive then
              push(listWarMachineStatusRevive[iSide], sidWarMachine);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemWarMachineDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.WarMachine.Status.Death then
              push(listWarMachineStatusDeath[iSide], sidWarMachine);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
          end;
          for sidBuilding, itemBuildingDiff in listSnapshotDiff[TTH_ENUM.CombatBuilding][iSide] do
            if itemBuildingDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Building.Status.Unchanged then
              push(listBuildingStatusUnchanged[iSide], sidBuilding);
            elseif itemBuildingDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Building.Status.Death then
              push(listBuildingStatusDeath[iSide], sidBuilding);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
          end;
          for sidSpellSpawn, itemSpellSpawnDiff in listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide] do
            if itemSpellSpawnDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.SpellSpawn.Status.Unchanged then
              push(listSpellSpawnStatusUnchanged[iSide], sidSpellSpawn);
            elseif itemSpellSpawnDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.SpellSpawn.Status.Death then
              push(listSpellSpawnStatusDeath[iSide], sidSpellSpawn);
              bIsEffect = TCS_ENUM.Switch.Yes;
            elseif itemSpellSpawnDiff[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.SpellSpawn.Status.Summon then
              push(listSpellSpawnStatusSummon[iSide], sidSpellSpawn);
              bIsEffect = TCS_ENUM.Switch.Yes;
            end;
          end;
        end;

      -- 人类玩家跳过重复执行
        if TCS_BATTLE.duplicate.isPause() then
          TCS_BATTLE.duplicate.clear();
          print("human repeat");
          print("====end====");
          return nil;
        end;
        TCS_BATTLE.duplicate.pause(itemUnit);

      -- 暂停游戏，以执行脚本
        TCS_BATTLE.status.pause();

      -- 记录当前行动单位
        push(TCS_VARI.Unit.trigger, itemUnit);

      -- 行动前特效触发入口
        for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
          -- 特长
            -- Haven
              -- GodricMP 012 哥德里克
                TCS_FUNC.Talent.GodricMP.first(iSide, itemUnit);

              -- Maeve 016 玫芙
                TCS_FUNC.Talent.Maeve.first(iSide, itemUnit);

              -- RedHeavenHero03 019 维拉利亚
                TCS_FUNC.Talent.RedHeavenHero03.first(iSide, itemUnit);

              -- Orlando 020 奥兰多
                TCS_FUNC.Talent.Orlando.first(iSide, itemUnit);

              -- Sanguinius 156 圣吉列斯
                TCS_FUNC.Talent.Sanguinius.move(iSide, itemUnit);

            -- Sylvan
              -- Gelu 027 格鲁
                TCS_FUNC.Talent.Gelu.first(iSide, itemUnit);
                TCS_FUNC.Talent.Gelu.encourage.move(iSide, itemUnit);

              -- Gem 035 珍尼
                TCS_FUNC.Talent.Gem.move(iSide, itemUnit);

              -- Ildar 037 娜瑞莎
                TCS_FUNC.Talent.Ildar.move(iSide, itemUnit);

            -- Academy
              -- Davius 044 戴维斯
                TCS_FUNC.Talent.Davius.first(iSide, itemUnit);

              -- Tan 052 加利布
                TCS_FUNC.Talent.Tan.move(iSide, itemUnit);

              -- Nur 054 纳西尔
                TCS_FUNC.Talent.Nur.move(iSide, itemUnit);

              -- Faiz 057 法伊兹
                TCS_FUNC.Talent.Faiz.move(iSide, itemUnit);

            -- Dungeon
              -- Urunir 059 宇尔沃娜
                TCS_FUNC.Talent.Urunir.move(iSide, itemUnit);

              -- Kastore 073 卡斯托雷
                TCS_FUNC.Talent.Kastore.masterOfQuakes.first(iSide, itemUnit);
                TCS_FUNC.Talent.Kastore.fireAffinity.first(iSide, itemUnit);

            -- Necropolis
              -- Gles 079 卡斯帕
                TCS_FUNC.Talent.Gles.move(iSide, itemUnit);

              -- Giovanni 087 乔瓦尼
                TCS_FUNC.Talent.Giovanni.move(iSide, itemUnit);

              -- OrnellaNecro 088 欧尼拉
                TCS_FUNC.Talent.OrnellaNecro.move(iSide, itemUnit);

              -- Mortarion 162 莫塔里安
                TCS_FUNC.Talent.Mortarion.reSummon(iSide, itemUnit);
                TCS_FUNC.Talent.Mortarion.heroDebuff(iSide, itemUnit);

                TCS_FUNC.Talent.Mortarion.wither(iSide, itemUnit);
                TCS_FUNC.Talent.Mortarion.defend(iSide, itemUnit);

              -- Arantir 092 阿兰蒂尔
                TCS_FUNC.Talent.Arantir.move(iSide, itemUnit);

              -- Sandro 095 山德鲁
                TCS_FUNC.Talent.Sandro.trigger.Hypnotize(iSide, itemUnit);
                TCS_FUNC.Talent.Sandro.trigger.ConjurePhoenix(iSide, itemUnit);

            -- Inferno

            -- Fortress
              -- Bart 122 巴特
                TCS_FUNC.Talent.Bart.move(iSide, itemUnit);

            -- Stronghold
              -- Hero8 137 坦尔塞克
                TCS_FUNC.Talent.Hero8.active(iSide, itemUnit);

              -- Azar 138 艾扎-埃克
                TCS_FUNC.Talent.Azar.first(iSide, itemUnit);

              -- Gottai 142 高泰
                TCS_FUNC.Talent.Gottai.first(iSide, itemUnit);

              -- Matewa 149 马特瓦
                TCS_FUNC.Talent.Matewa.first(iSide, itemUnit);

              -- Mokka 154 摩卡
                TCS_FUNC.Talent.Mokka.first(iSide, itemUnit);
                TCS_FUNC.Talent.Mokka.move(iSide, itemUnit);

          -- 技能
            -- HERO_SKILL_REPAIR_MACHINES 317 战地修理
              TCS_FUNC.Skill.RepairMachines.move(iSide, itemUnit);

            -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
              TCS_FUNC.Skill.DeadLuck.move(iSide, itemUnit);

            -- HERO_SKILL_ELVEN_LUCK 116 精灵的幸运
              TCS_FUNC.Skill.ElvenLuck.move(iSide, itemUnit);

            -- HERO_SKILL_ECHO_OF_SYLANNA 315 西莱纳的回响
              TCS_FUNC.Skill.EchoOfSylanna.move(iSide, itemUnit);

            -- HERO_SKILL_ENCHANT_MACHINES 316 附魔机械
              TCS_FUNC.Skill.EnchantMachines.move(iSide, itemUnit);

            -- HERO_SKILL_GUARDIAN_ANGEL 139 光明指引
              TCS_FUNC.Skill.GuardianAngel.move(iSide, itemUnit);

          -- 宝物
            -- ARTIFACT_PENDANT_OF_BLIND 101 闪耀权冠
              TCS_FUNC.Artifact.PendantOfBlind.first(iSide, itemUnit);

            -- ARTIFACT_CODEX 126 大法师之典
              TCS_FUNC.Artifact.Codex.first(iSide, itemUnit);

          -- 组合宝物

          -- 生物
            -- CREATURE_FEARLESS_LORD_MELEE 204 无畏领主（冲锋形态）
            -- CREATURE_FEARLESS_LORD_SHOT 205 无畏领主（重炮形态）
              TCS_FUNC.Creature.FearlessLord.castShot(iSide, itemUnit);
              TCS_FUNC.Creature.FearlessLord.castMelee(iSide, itemUnit);
              TCS_FUNC.Creature.FearlessLord.triggerRepair(iSide, itemUnit);
        end;

      -- 获取上个行动单位
        local itemUnitLast = nil;
        if length(TCS_VARI.Unit.trigger) > 1 then
          itemUnitLast = TCS_VARI.Unit.trigger[length(TCS_VARI.Unit.trigger) - 2];
          print("last-move: ", itemUnitLast["UnitName"]);
        end;

      -- 有开场生效的英雄特长 沙漏大师/粉碎者
        if TCS_BATTLE.hasDealStart == TCS_ENUM.Switch.No then
          if length(TCS_VARI.Unit.trigger) > TTHCS_GLOBAL.countSpecialHero() then
            TCS_BATTLE.start();
          end;
        end;

      -- 跳过结算-首个单位行动
        if itemUnitLast == nil then
          print("first turn")

          for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
            -- HERO_SKILL_PARIAH 083 堕落骑士
              TCS_FUNC.Skill.Pariah.first(iSide);

            -- HERO_SKILL_TWILIGHT 109 微光黎明
              TCS_FUNC.Skill.Twilight.first(iSide);
          end;
        end;

      -- 行动后特效触发入口
        if itemUnitLast ~= nil then
          for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
            -- 特长
              -- Haven
                -- Orrin 002 杜戈尔
                  TCS_FUNC.Talent.Orrin.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Mardigo 003 拉兹罗
                  TCS_FUNC.Talent.Mardigo.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

                -- Ving 004 艾莲娜
                  TCS_FUNC.Talent.Ving.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

                -- Christian 007 维托利奥
                  TCS_FUNC.Talent.Christian.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

                -- RedHeavenHero05 009 伯权德
                  TCS_FUNC.Talent.RedHeavenHero05.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath);

                -- Nicolai 011 尼克莱
                  TCS_FUNC.Talent.Nicolai.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureManaUnchanged);

                -- Maeve 016 玫芙
                  TCS_FUNC.Talent.Maeve.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- RedHeavenHero03 019 维拉利亚
                  TCS_FUNC.Talent.RedHeavenHero03.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Orlando 020 奥兰多
                  TCS_FUNC.Talent.Orlando.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- OrtanCassius 155 奥尔坦-卡西乌斯
                  TCS_FUNC.Talent.OrtanCassius.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

              -- Sylvan
                -- Nadaur 024 塔兰纳
                  TCS_FUNC.Talent.Nadaur.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Gelu 027 格鲁
                  TCS_FUNC.Talent.Gelu.encourage.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Arniel 028 伊沃
                  TCS_FUNC.Talent.Arniel.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);
                  TCS_FUNC.Talent.Arniel.sign(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Itil 031 于尔辛
                  TCS_FUNC.Talent.Itil.trigger(iSide, itemUnit, listCreatureStatusRevive, listCreatureNumberIncrease);

                -- Gem 035 珍尼
                  TCS_FUNC.Talent.Gem.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberIncrease, listCreatureNumberDecrease);

                -- Vaniel 038 蒂耶鲁
                  TCS_FUNC.Talent.Vaniel.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Vinrael 039 艾丽莎
                  TCS_FUNC.Talent.Vinrael.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);
                  TCS_FUNC.Talent.Vinrael.deal(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- Academy
                -- Isher 043 拉扎克
                  TCS_FUNC.Talent.Isher.trigger(iSide, itemUnit, listCreatureNumberDecrease);

                -- Davius 044 戴维斯
                  TCS_FUNC.Talent.Davius.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Razzak 047 纳克西斯
                  TCS_FUNC.Talent.Razzak.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureManaUnchanged);

                -- Tan 052 加利布
                  TCS_FUNC.Talent.Tan.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Emilia 053 艾米莉亚
                  TCS_FUNC.Talent.Emilia.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listSpellSpawnStatusSummon);

                -- Nur 054 纳西尔
                  TCS_FUNC.Talent.Nur.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Astral 055 努尔
                  TCS_FUNC.Talent.Astral.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Zehir 056 泽希尔
                  TCS_FUNC.Talent.Zehir.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon);

                -- Faiz 057 法伊兹
                  TCS_FUNC.Talent.Faiz.trigger(iSide, itemUnit, listCreaturePositionMove);

              -- Dungeon
                -- Urunir 059 宇尔沃娜
                  TCS_FUNC.Talent.Urunir.charge(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);
                  TCS_FUNC.Talent.Urunir.move(iSide, itemUnit);

                -- Menel 060 基特拉
                  TCS_FUNC.Talent.Menel.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Ferigl 061 索戈尔
                  TCS_FUNC.Talent.Ferigl.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);
                  TCS_FUNC.Talent.Ferigl.cast(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Ohtarig 064 维尚
                  TCS_FUNC.Talent.Ohtarig.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

                -- Eruina 065 埃莉娜
                  TCS_FUNC.Talent.Eruina.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Kelodin 067 莎蒂娅
                  TCS_FUNC.Talent.Kelodin.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureManaUnchanged);

                -- Thralsai 069 斯拉塞
                  TCS_FUNC.Talent.Thralsai.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreaturePositionMove);

                -- Agbeth 070 阿格贝斯
                  TCS_FUNC.Talent.Agbeth.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Sephinroth 076 萨费罗斯
                  TCS_FUNC.Talent.Sephinroth.kill(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureStatusDeath);
                  TCS_FUNC.Talent.Sephinroth.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Almegir 071 伊蓓丝
                  TCS_FUNC.Talent.Almegir.trigger(iSide, itemUnit, itemHeroMana);

                -- Kastore 073 卡斯托雷
                  TCS_FUNC.Talent.Kastore.Encourage.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon);
                  TCS_FUNC.Talent.Kastore.masterOfAnimation.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon);
                  TCS_FUNC.Talent.Kastore.runicArmor.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusSummon);

              -- Necropolis
                -- Gles 079 卡斯帕
                  TCS_FUNC.Talent.Gles.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberIncrease, listCreatureNumberDecrease);

                -- Straker 081 奥森
                  TCS_FUNC.Talent.Straker.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Tamika 082 卢克雷蒂娅
                  TCS_FUNC.Talent.Tamika.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

                -- Xerxon 083 塞尔克松
                  TCS_FUNC.Talent.Xerxon.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreaturePositionMove);

                -- Aislinn 085 艾斯瑞
                  TCS_FUNC.Talent.Aislinn.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureStatusRevive, listCreatureNumberIncrease);

                -- Giovanni 087 乔瓦尼
                  TCS_FUNC.Talent.Giovanni.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- OrnellaNecro 088 欧尼拉
                  TCS_FUNC.Talent.OrnellaNecro.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Nimbus 090 尼姆巴斯
                  TCS_FUNC.Talent.Nimbus.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureManaDecrease);

                -- Mortarion 162 莫塔里安
                  TCS_FUNC.Talent.Mortarion.plague(iSide, itemUnit, itemUnitLast);
                  TCS_FUNC.Talent.Mortarion.guard(iSide, itemUnit);
                  TCS_FUNC.Talent.Mortarion.spread(iSide, itemUnit, itemUnitLast);

                -- Muscip 091 纳蒂尔
                  TCS_FUNC.Talent.Muscip.charge(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);
                  TCS_FUNC.Talent.Muscip.after(iSide, itemUnit, itemUnitLast);
                  TCS_FUNC.Talent.Muscip.trigger(iSide, itemUnit, listCreatureStatusSummon);

                -- Nemor 093 迪尔德丽
                  TCS_FUNC.Talent.Nemor.after(iSide, itemUnit, itemUnitLast);
                  TCS_FUNC.Talent.Nemor.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

                -- Sandro 095 山德鲁
                  TCS_FUNC.Talent.Sandro.trigger.Resurrect(iSide, itemUnit, itemHeroMana);
                  TCS_FUNC.Talent.Sandro.trigger.Vampirism(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);
                  TCS_FUNC.Talent.Sandro.trigger.Armageddon(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);
                  TCS_FUNC.Talent.Sandro.trigger.DeepFreeze(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Thant 096 山特
                  TCS_FUNC.Talent.Thant.trigger(iSide, itemUnit, itemUnitLast, listCreatureManaDecrease);

                -- Vidomina 097 维德尼娜
                  TCS_FUNC.Talent.Vidomina.trigger(iSide, itemUnit, listCreatureStatusDeath);

              -- Inferno
                -- Calh 099 艾丹
                  TCS_FUNC.Talent.Calh.trigger(iSide, itemUnit, listCreatureStatusDeath);

                -- Calid 100 格劳尔
                  TCS_FUNC.Talent.Calid.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, 1);

                -- Deleb 101 迪里布
                  TCS_FUNC.Talent.Deleb.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Orlando2 104 奥兰多
                  TCS_FUNC.Talent.Orlando2.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Efion 105 阿莱斯特
                  TCS_FUNC.Talent.Efion.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, 1);

                -- Grok 106 格洛克
                  TCS_FUNC.Talent.Grok.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreaturePositionMove);
                  TCS_FUNC.Talent.Grok.gating(iSide, itemUnit, listCreatureStatusGating);

                -- Oddrema 109 耶泽蓓丝
                  TCS_FUNC.Talent.Oddrema.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Malustar 107 马鲁斯塔
                  TCS_FUNC.Talent.Malustar.gating(iSide, itemUnit, listCreatureStatusGating);

                -- Ash 113 艾许
                  TCS_FUNC.Talent.Ash.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Biara 114 拜娅拉
                  TCS_FUNC.Talent.Biara.sign(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);
                  TCS_FUNC.Talent.Biara.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

              -- Fortress
                -- Bersy 117 艾巴
                  TCS_FUNC.Talent.Bersy.trigger(iSide, itemUnit, itemUnitLast, listCreaturePositionMove);

                -- Maximus 118 马克西姆斯
                  TCS_FUNC.Talent.Maximus.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

                -- Skeggy 119 卡里
                  TCS_FUNC.Talent.Skeggy.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

                -- Vilma 121 威尔玛
                  TCS_FUNC.Talent.Vilma.trigger(iSide, itemUnit, itemUnitLast, listCreaturePositionUnchanged);

                -- Bart 122 巴特
                  TCS_FUNC.Talent.Bart.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Egil 124 俄林
                  TCS_FUNC.Talent.Egil.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);
                  TCS_FUNC.Talent.Egil.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Vegeyr 129 斯威
                  TCS_FUNC.Talent.Vegeyr.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- Stronghold
                -- Hero9 135 科尔汉
                  TCS_FUNC.Talent.Hero9.trigger(iSide, itemUnit, itemUnitLast);

                -- Hero7 136 哈戈什
                  TCS_FUNC.Talent.Hero7.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

                -- Hero8 137 坦尔塞克
                  TCS_FUNC.Talent.Hero8.trigger(iSide, itemUnit, itemUnitLast, listCreaturePositionMove, listCreatureManaDecrease, listCreatureNumberDecrease, listCreatureStatusDeath);

                -- Hero6 140 沙-库如汉特
                  TCS_FUNC.Talent.Hero6.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Gottai 142 高泰
                  TCS_FUNC.Talent.Gottai.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Hero1 143 克拉格
                  TCS_FUNC.Talent.Hero1.sign(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);
                  TCS_FUNC.Talent.Hero1.trigger(iSide, itemUnit, itemUnitLast);

                -- Hero3 145 伽如娜
                  TCS_FUNC.Talent.Hero3.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Kraal 146 克拉尔
                  TCS_FUNC.Talent.Kraal.trigger(iSide, itemUnit, itemUnitLast);

                -- Matewa 149 马特瓦
                  TCS_FUNC.Talent.Matewa.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

                -- Quroq 150 魁洛克
                  TCS_FUNC.Talent.Quroq.trigger(iSide, itemUnit, itemUnitLast);

                -- Shiva 151 希娃
                  TCS_FUNC.Talent.Shiva.trigger(iSide, itemUnit, itemUnitLast, listCreatureRageLevelIncrease);

                -- Zouleika 152 祖莱卡
                  TCS_FUNC.Talent.Zouleika.trigger(iSide, itemUnit, itemUnitLast, listCreatureRageLevelDecrease);

                -- Erika 153 艾莉卡
                  TCS_FUNC.Talent.Erika.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana);

                -- Mokka 154 摩卡
                  TCS_FUNC.Talent.Mokka.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

            -- 技能
              -- HERO_SKILL_MAGIC_BALANCE 314 魔力平衡
                TCS_FUNC.Skill.MagicBalance.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- HERO_SKILL_DEMONIC_RETALIATION 092 领主之怒
                TCS_FUNC.Skill.DemonicRetaliation.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);
                TCS_FUNC.Skill.DemonicRetaliation.charge(iSide, itemUnit, itemUnitLast);

              -- HERO_SKILL_EXPLODING_CORPSES 093 风暴突袭
                TCS_FUNC.Skill.ExplodingCorpses.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);
                TCS_FUNC.Skill.ExplodingCorpses.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

              -- HERO_SKILL_ELEMENTAL_OVERKILL 149 混乱风暴
                TCS_FUNC.Skill.ElementalOverkill.death(iSide, itemUnit, listCreatureStatusDeath);

              -- HERO_SKILL_CONSUME_CORPSE 058 食尸者
                TCS_FUNC.Skill.ConsumeCorpse.consume(iSide, itemUnit, listCreatureStatusConsume);

              -- HERO_SKILL_WEAKENING_STRIKE 095 虚弱打击
              -- HERO_SKILL_BARBARIAN_WEAKENING_STRIKE 209 虚弱打击
                TCS_FUNC.Skill.WeakeningStrike.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

              -- HERO_SKILL_FIRE_AFFINITY 097 元素勇士
                TCS_FUNC.Skill.FireAffinity.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureStatusSummon, listCreatureStatusDeath);

              -- HERO_SKILL_DEATH_TREAD 099 攻城大师
                TCS_FUNC.Skill.DeathTread.trigger(iSide, itemUnit, listBuildingStatusDeath);

              -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
                TCS_FUNC.Skill.DeadLuck.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

              -- HERO_SKILL_ECHO_OF_SYLANNA 315 西莱纳的回响
                TCS_FUNC.Skill.EchoOfSylanna.destroy(iSide, itemUnit, itemUnitLast, listSpellSpawnStatusDeath);
                TCS_FUNC.Skill.EchoOfSylanna.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

              -- HERO_SKILL_ENCHANT_MACHINES 316 附魔机械
                TCS_FUNC.Skill.EnchantMachines.chargeCreature(iSide, itemUnit, itemUnitLast);
                TCS_FUNC.Skill.EnchantMachines.chargeWarMachine(iSide, itemUnit, itemUnitLast);

              -- HERO_SKILL_SEAL_OF_PROTECTION 131 众志成城
                TCS_FUNC.Skill.SealOfProtection.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

              -- HERO_SKILL_GUARDIAN_ANGEL 139 光明指引
                TCS_FUNC.Skill.GuardianAngel.charge(iSide, itemUnit, itemUnitLast, itemHeroMana);

              -- HERO_SKILL_PAYBACK 147 黑暗再生
                TCS_FUNC.Skill.Payback.trigger(iSide, itemUnit, itemHeroMana);

              -- HERO_SKILL_ELITE_CASTERS 148 精炼魔力
              -- HERO_SKILL_BARBARIAN_ELITE_CASTERS 214 精炼魔力
                TCS_FUNC.Skill.EliteCasters.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- HERO_SKILL_RUNIC_MACHINES 156 符文机械
                TCS_FUNC.Skill.RunicMachines.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana);

              -- HERO_SKILL_SAFETY_STEP 311 步步为营
                TCS_FUNC.Skill.SafetyStep.trigger(iSide, itemUnit, itemUnitLast, listCreaturePositionMove, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- HERO_SKILL_BEHIND_ENEMY 309 深入敌后
                TCS_FUNC.Skill.BehindEnemy.trigger(iSide, itemUnit);

            -- 宝物
              -- ARTIFACT_WAYFARER_BOOTS 026 储能长靴
                TCS_FUNC.Artifact.WayfarerBoots.trigger(iSide, itemUnit, itemUnitLast, listCreaturePositionUnchanged);

              -- ARTIFACT_MOONBLADE 058 月光利刃
                TCS_FUNC.Artifact.Moonblade.trigger(iSide, itemUnit, itemHeroMana);

              -- ARTIFACT_HORN_OF_CHARGE 107 冲锋号角
                TCS_FUNC.Artifact.HornOfCharge.trigger(iSide, itemUnit, itemUnitLast, listCreaturePositionMove, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- ARTIFACT_FLAG_OF_CHARGE 141 冲锋战旗
                TCS_FUNC.Artifact.FlagOfCharge.trigger(iSide, itemUnit, itemUnitLast);

              -- ARTIFACT_EIGHTFOLD 125 亚莎之八重杖
                TCS_FUNC.Artifact.Eightfold.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana);

              -- ARTIFACT_BOOK_OF_MALASSA 147 玛拉萨之书
                TCS_FUNC.Artifact.BookOfMalassa.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

            -- 组合宝物
              -- ARTIFACTSET_NECROMANCERS 005 死亡拥抱 Necromancers
                TCS_FUNC.ArtifactSet.Necromancers.trigger(iSide, itemUnit, itemUnitLast, listCreatureStatusDeath);

              -- ARTIFACTSET_HUNTERS 007 射手梦幻 Hunters
                TCS_FUNC.ArtifactSet.Hunters.first(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);
                TCS_FUNC.ArtifactSet.Hunters.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- ARTIFACTSET_OGRES 008 力量武器 Ogres
                TCS_FUNC.ArtifactSet.Ogres.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease, listCreatureStatusDeath);

              -- ARTIFACTSET_ELEMENT_AIR 015 雷电迅捷 ElementAir
                TCS_FUNC.ArtifactSet.ElementAir.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

              -- ARTIFACTSET_ELEMENT_EARTH 016 大地之力 ElementEarth
                TCS_FUNC.ArtifactSet.ElementEarth.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

              -- ARTIFACTSET_ELEMENT_FIRE 017 附骨之焰 ElementFire
                TCS_FUNC.ArtifactSet.ElementFire.trigger(iSide, itemUnit, itemUnitLast, itemHeroMana, listCreatureNumberDecrease);

              -- ARTIFACTSET_ELEMENT_WATER 018 流水之蕴 ElementWater
                TCS_FUNC.ArtifactSet.ElementWater.trigger(iSide, itemUnit, itemHeroMana);

              -- ARTIFACTSET_CHARGE 020 冲锋陷阵 Charge
                TCS_FUNC.ArtifactSet.Charge.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease, listCreatureStatusDeath);

            -- 生物
              -- CREATURE_DEATH_KNIGHT 090 死亡骑士
                TCS_FUNC.Creature.DeathKnight.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);
                TCS_FUNC.Creature.DeathKnight.aure(iSide, itemUnit, itemUnitLast);

              -- CREATURE_CHERUBIN 181 神圣守护者
                TCS_FUNC.Creature.Cherubin.after(iSide, itemUnit, itemUnitLast);

              -- CREATURE_DRAGON_KNIGHT 183 暗黑龙骑士
                TCS_FUNC.Creature.DragonKnight.after(iSide, itemUnit, itemUnitLast);

              -- CREATURE_ENCHANTER_ACADEMY 185 魔幻法师（学院）
              -- CREATURE_ENCHANTER_NEUTRAL 186 魔幻法师（中立）
                TCS_FUNC.Creature.Enchanter.after(iSide, itemUnit, itemUnitLast);

              -- CREATURE_JUSTICAR 188 阿斯塔特修士
                TCS_FUNC.Creature.Justicar.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);

              -- CREATURE_LEGATE 190 圣血剑士
                TCS_FUNC.Creature.Legate.trigger(iSide, itemUnit, itemUnitLast);

              -- CREATURE_SIREN 195 女妖
                TCS_FUNC.Creature.Siren.trigger(iSide, itemUnit, itemUnitLast, listCreatureNumberDecrease);
                TCS_FUNC.Creature.Siren.charge(iSide, itemUnit, itemUnitLast);

              -- CREATURE_FATE_WEAVER_SPIDER 204 织命蛛后（蜘蛛形态）
              -- CREATURE_FATE_WEAVER_HUMAN 205 织命蛛后（人形态）
                TCS_FUNC.Creature.FateWeaver.triggerSpider(iSide, itemUnit);
                TCS_FUNC.Creature.FateWeaver.triggerHuman(iSide, itemUnit);
          end;
        end;

      -- 设置单位的ATB
        TCS_BATTLE.atb.deal();

      -- 脚本执行结束，恢复游戏
        TCS_BATTLE.status.continue();

      print("====end====");
    end;

  -- 监听: 单位死亡触发接口
    TCS_BATTLE.death = function(sidUnit)
      print("===begin===");
      print("death: ", sidUnit);

      if TCS_VARI.isAutoFinish == 0 then
        repeat
          sleep(10);
        until 1 ~= 1
          or IsCombatUnit(sidUnit) == nil
          or GetCreatureNumber(sidUnit) == 0;
        local iSide = GetUnitSide(sidUnit);
        TCS_BATTLE.finish.check(iSide);
      end;

      -- 特长
        -- Haven

        -- Sylvan

        -- Academy

        -- Inferno

        -- Necropolis

        -- Fortress

        -- Dungeon

        -- Stronghold

      -- 技能

      -- 宝物

      -- 组合宝物

      -- 生物

      print("====end====");
    end;

-- 系统接口
  function AttackerHeroMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function DefenderHeroMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function AttackerCreatureMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function DefenderCreatureMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function AttackerWarMachineMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function DefenderWarMachineMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function DefenderBuildingMove(sidUnit)
    TCS_BATTLE.move(sidUnit);
  end;
  function AttackerHeroDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function DefenderHeroDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function AttackerCreatureDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function DefenderCreatureDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function AttackerWarMachineDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function DefenderWarMachineDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function DefenderBuildingDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function AttackerSpellSpawnDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;
  function DefenderSpellSpawnDeath(sidUnit)
    TCS_BATTLE.death(sidUnit);
  end;

print("TTH_CombatCore loaded.");