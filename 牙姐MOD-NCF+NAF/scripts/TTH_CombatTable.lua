-- 数据
  TCS_TABLE = {};

  -- 战场特效
    TCS_TABLE.Effect = {};

    -- 天赋
      TCS_TABLE.Effect.Talent = {
        [0] = "Ildar"
        , [1] = "Razzak"
        , [2] = "Astral"
        , [3] = "Orlando2"
        , [4] = "Kraal"
      };

    -- 属性
      TCS_TABLE.Effect.Attribute = {
        [0] = STAT_SPELL_POWER
        , [1] = STAT_KNOWLEDGE
      };

    -- 技能
      TCS_TABLE.Effect.Skill = {
        [0] = HERO_SKILL_WEAKENING_STRIKE
        , [1] = HERO_SKILL_ELITE_CASTERS
        , [2] = HERO_SKILL_MYSTICISM
        , [3] = HERO_SKILL_BARBARIAN_MYSTICISM
        , [4] = HERO_SKILL_PRAYER
        , [5] = HERO_SKILL_SEAL_OF_PROTECTION
        , [6] = HERO_SKILL_DEATH_TREAD
        , [7] = HERO_SKILL_GUARDIAN_ANGEL
        , [8] = HERO_SKILL_PARIAH
        , [9] = HERO_SKILL_TWILIGHT
        , [10] = HERO_SKILL_EXPLODING_CORPSES
        , [11] = HERO_SKILL_BALLISTA
        , [12] = HERO_SKILL_TRIPLE_BALLISTA
        , [13] = HERO_SKILL_CHILLING_STEEL
        , [14] = HERO_SKILL_WILDFIRE
        , [15] = HERO_SKILL_DEMONIC_FIRE
        , [16] = HERO_SKILL_DEMONIC_RETALIATION
        , [17] = HERO_SKILL_DEMONIC_FLAME
        , [18] = HERO_SKILL_FIRE_AFFINITY
        , [19] = HERO_SKILL_MASTER_OF_ICE
        , [20] = HERO_SKILL_MASTER_OF_FIRE
        , [21] = HERO_SKILL_MASTER_OF_LIGHTNINGS
        , [22] = HERO_SKILL_DEAD_LUCK
        , [23] = HERO_SKILL_FIRST_AID
        , [24] = HERO_SKILL_CATAPULT
        , [25] = HERO_SKILL_WAR_MACHINES
        , [26] = HERO_SKILL_CASTER_CERTIFICATE
        , [27] = HERO_SKILL_PAYBACK
        , [28] = HERO_SKILL_PATHFINDING
        , [29] = HERO_SKILL_LAST_STAND
        , [30] = HERO_SKILL_FOREST_GUARD_EMBLEM
        , [31] = HERO_SKILL_SORCERY
        , [32] = HERO_SKILL_REMOTE_CONTROL
        , [33] = HERO_SKILL_MARCH_OF_THE_MACHINES
        , [34] = HERO_SKILL_MASTER_OF_SICKNESS
        , [35] = HERO_SKILL_SUN_FIRE
        , [36] = HERO_SKILL_ELEMENTAL_OVERKILL
        , [37] = HERO_SKILL_TAP_RUNES
        , [38] = HERO_SKILL_RUNIC_MACHINES
        , [39] = HERO_SKILL_VOICE
        , [40] = HERO_SKILL_SHAKE_GROUND
        , [41] = HERO_SKILL_MASTER_OF_BLESSING
        , [42] = HERO_SKILL_UNSUMMON
        , [43] = HERO_SKILL_ELVEN_LUCK
        , [44] = HERO_SKILL_ELEMENTAL_BALANCE
      };

    -- 宝物
      TCS_TABLE.Effect.Artifact = {
        [0] = ARTIFACT_ANGELIC_ALLIANCE
        , [1] = ARTIFACT_SENTINEL
        , [2] = ARTIFACT_CURSE_SHOULDER
        , [3] = ARTIFACT_BOOTS_OF_THE_WALKING_DEAD
        , [4] = ARTIFACT_EIGHTFOLD
        , [5] = ARTIFACT_MOONBLADE
        , [6] = ARTIFACT_BAND_OF_CONJURER
        , [7] = ARTIFACT_PENDANT_OF_BLIND
        , [8] = ARTIFACT_GEM_OF_PHANTOM
        , [9] = ARTIFACT_DRUM_OF_CHARGE
        , [10] = ARTIFACT_BOOK_OF_MALASSA
        , [11] = ARTIFACT_RING_OF_MACHINE_AFFINITY
        , [12] = ARTIFACT_CROWN_OF_LEADER
        , [13] = ARTIFACT_WAYFARER_BOOTS
        , [14] = ARTIFACT_FLAG_OF_CHARGE
        , [15] = ARTIFACT_CODEX
        , [16] = ARTIFACT_DRAGON_SCALE_ARMOR
        , [17] = ARTIFACT_DRAGON_SCALE_SHIELD
        , [18] = ARTIFACT_DRAGON_BONE_GRAVES
        , [19] = ARTIFACT_DRAGON_WING_MANTLE
        , [20] = ARTIFACT_DRAGON_TEETH_NECKLACE
        , [21] = ARTIFACT_DRAGON_TALON_CROWN
        , [22] = ARTIFACT_DRAGON_EYE_RING
        , [23] = ARTIFACT_RING_OF_CELERITY
        , [24] = ARTIFACT_RING_OF_HASTE
        , [25] = ARTIFACT_HORN_OF_CHARGE
      };

    -- 组合宝物
      TCS_TABLE.Effect.ArtifactSet = {
        ARTIFACTSET_OGRES
        , ARTIFACTSET_ELEMENT_AIR
        , ARTIFACTSET_ELEMENT_EARTH
        , ARTIFACTSET_ELEMENT_FIRE
        , ARTIFACTSET_ELEMENT_WATER
        , ARTIFACTSET_HUNTERS
        , ARTIFACTSET_NECROMANCERS
        , ARTIFACTSET_MAGIS
        , ARTIFACTSET_CHARGE
      };

-- 基础函数
  function length(array)
      local count = 0
      for index, element in array do
          count = count + 1
      end
      return count
  end
  function contains(array, sample)
      for index, element in array do
          if (element == sample) then
              return not nil;
          end;
      end;
      return nil;
  end;
  function index(array, sample)
      for index, element in array do
          if (element == sample) then
              return index;
          end
      end
      return -1;
  end;
  function WaitForTutorialMessageBox()
      while IsTutorialMessageBoxOpen() do
          sleep(1);
      end;
  end;
  function abs(n)
      if n < 0 then
          return -n;
      else
          return n;
      end;
  end;
  function h55_floor(n)
      local i = 0;
      repeat i = i + 1; until i > n;
      return i - 1;
  end;
  function h55_ceil(n)
      local i = 0;
      repeat i = i + 1; until i >= n;
      return i;
  end;
  function tth_mod(n, m)
      if n >= m then
          repeat n = n - m; until n < m;
      end;
      return n;
  end;
  function pop(array, index)
      local new_array = {};
      local len_array = length(array);
      local ret_element;
      if array ~= nil and len_array > index then
          for i = 0, len_array - 1 do
              if i == index then
                  ret_element = array[i];
              else
                  new_array[length(new_array)] = array[i];
              end;
          end;
      end;
      return new_array, ret_element;
  end;
  function push(array, element)
      array[length(array)] = element;
      return array;
  end;

-- TTH环境
  TTHCS_FINAL = {};
    TTHCS_FINAL.MAX_MANA = 9999;

  TTHCS_ENUM = {};
    -- 战场大小
      TTHCS_ENUM.BattleEffectFieldSmall = 1;
      TTHCS_ENUM.BattleEffectFieldBig = 2;

    -- 攻守方
      TTHCS_ENUM.SideAttacker = 0;
      TTHCS_ENUM.SideDefender = 1;

    -- 战场坐标状态
      TTHCS_ENUM.PositionStatus = {};
      TTHCS_ENUM.PositionStatus.unsign = 0;
      TTHCS_ENUM.PositionStatus.capture = 1;
      TTHCS_ENUM.PositionStatus.check = 2;

    -- 战场建筑类型
      TTHCS_ENUM.TownBuildingWall = 1;
      TTHCS_ENUM.TownBuildingGate = 2;
      TTHCS_ENUM.TownBuildingLeftTower = 3;
      TTHCS_ENUM.TownBuildingBigTower = 4;
      TTHCS_ENUM.TownBuildingMoat = 5;
      TTHCS_ENUM.TownBuildingRightTower = 6;

    -- 施法类型
      TTHCS_ENUM.Global = 1;
      TTHCS_ENUM.Area = 2;

    -- 施法对象
      TTHCS_ENUM.Friend = 1;
      TTHCS_ENUM.Hostile = 2;

    -- 力量武器触发类型
      TTHCS_ENUM.Voice = 1;
      TTHCS_ENUM.Combat = 2;

  TTHCS_TABLE = {};
    -- 战场大小
      TTHCS_TABLE.BattleEffectField = {
        [TTHCS_ENUM.BattleEffectFieldSmall] = {
          ["PosX"] = {
            ["Min"] = 2
            , ["Center"] = 8
            , ["Max"] = 13
          }
          , ["PosY"] = {
            ["Min"] = 1
            , ["Center"] = 6
            , ["Max"] = 10
          }
        }
        , [TTHCS_ENUM.BattleEffectFieldBig] = {
          ["PosX"] = {
            ["Min"] = 2
            , ["Center"] = 9
            , ["Max"] = 15
          }
          , ["PosY"] = {
            ["Min"] = 1
            , ["Center"] = 8
            , ["Max"] = 14
          }
        }
      };
    -- 天神召唤位
      TTHCS_TABLE.BattleGodPosition = {
        [TTHCS_ENUM.BattleEffectFieldSmall] = {
          [0] = {
            ["PosX"] = 6
            , ["PosY"] = 6
          }
          , [1] = {
            ["PosX"] = 10
            , ["PosY"] = 6
          }
        }
        , [TTHCS_ENUM.BattleEffectFieldBig] = {
          [0] = {
            ["PosX"] = 6
            , ["PosY"] = 8
          }
          , [1] = {
            ["PosX"] = 12
            , ["PosY"] = 8
          }
        }
      };
    -- 元素腕带召唤位
      TTHCS_TABLE.BattleSummonPosition = {
        [TTHCS_ENUM.BattleEffectFieldSmall] = {
          [0] = {
            ["PosX"] = 2
            , ["PosY"] = 6
          }
          , [1] = {
            ["PosX"] = 13
            , ["PosY"] = 6
          }
        }
        , [TTHCS_ENUM.BattleEffectFieldBig] = {
          [0] = {
            ["PosX"] = 2
            , ["PosY"] = 7
          }
          , [1] = {
            ["PosX"] = 15
            , ["PosY"] = 7
          }
        }
      };

    -- 魔幻法师施放魔法
      TTHCS_TABLE.EnchanterMagic = {
        [1] = {
          ["Id"] = SPELL_MASS_BLESS
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [2] = {
          ["Id"] = SPELL_MASS_CURSE
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
        }
        , [3] = {
          ["Id"] = SPELL_MASS_HASTE
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [4] = {
          ["Id"] = SPELL_MASS_SLOW
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
        }
        , [5] = {
          ["Id"] = SPELL_MASS_BLOODLUST
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [6] = {
          ["Id"] = SPELL_MASS_WEAKNESS
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
        }
        , [7] = {
          ["Id"] = SPELL_MASS_STONESKIN
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [8] = {
          ["Id"] = SPELL_MASS_DISRUPTING_RAY
          , ["Type"] = TTHCS_ENUM.Area
          , ["Area"] = 4
          , ["Target"] = TTHCS_ENUM.Hostile
        }
        , [9] = {
          ["Id"] = SPELL_MASS_DEFLECT_ARROWS
          , ["Type"] = TTHCS_ENUM.Global
          , ["Area"] = 4
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [10] = {
          ["Id"] = SPELL_MASS_FORGETFULNESS
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
        }
        , [11] = {
          ["Id"] = SPELL_MASS_DISPEL
          , ["Type"] = TTHCS_ENUM.Area
          , ["Area"] = 4
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [12] = {
          ["Id"] = SPELL_MASS_PLAGUE
          , ["Type"] = TTHCS_ENUM.Area
          , ["Area"] = 4
          , ["Target"] = TTHCS_ENUM.Hostile
        }
      };

    -- 神圣守护者施放魔法
      TTHCS_TABLE.CherubinMagic = {
        [1] = {
          ["Id"] = SPELL_MASS_BLESS
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [2] = {
          ["Id"] = SPELL_MASS_HASTE
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
        , [3] = {
          ["Id"] = SPELL_MASS_BLOODLUST
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Friend
        }
      };

    -- 暗黑龙骑士施放魔法
      TTHCS_TABLE.DragonKnightMagic = {
        [1] = {
          ["Id"] = SPELL_MASS_CURSE
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
          , ["Immune"] = {
            CREATURE_DRAGON_KNIGHT
            , CREATURE_DRAGON_KNIGHT_LESS
            , CREATURE_BLACK_DRAGON
            , CREATURE_OBSIDIAN_GOLEM
          }
        }
        , [2] = {
          ["Id"] = SPELL_MASS_SLOW
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
          , ["Immune"] = {
            CREATURE_DRAGON_KNIGHT
            , CREATURE_DRAGON_KNIGHT_LESS
            , CREATURE_BLACK_DRAGON
            , CREATURE_OBSIDIAN_GOLEM
            , CREATURE_ANGER_TREANT
            , CREATURE_IRON_GOLEM
            , CREATURE_STEEL_GOLEM
          }
        }
        , [3] = {
          ["Id"] = SPELL_MASS_WEAKNESS
          , ["Type"] = TTHCS_ENUM.Global
          , ["Target"] = TTHCS_ENUM.Hostile
          , ["Immune"] = {
            CREATURE_DRAGON_KNIGHT
            , CREATURE_DRAGON_KNIGHT_LESS
            , CREATURE_BLACK_DRAGON
            , CREATURE_OBSIDIAN_GOLEM
            , CREATURE_BLOOD_WITCH_2
          }
        }
      };

    -- 据点生物
      TTHCS_TABLE.StrongholdCreature = {
        CREATURE_GOBLIN
        , CREATURE_GOBLIN_TRAPPER
        , CREATURE_GOBLIN_DEFILER
        , CREATURE_CENTAUR
        , CREATURE_CENTAUR_NOMAD
        , CREATURE_CENTAUR_MARADEUR
        , CREATURE_ORC_WARRIOR
        , CREATURE_ORC_SLAYER
        , CREATURE_ORC_WARMONGER
        , CREATURE_SHAMAN
        , CREATURE_SHAMAN_WITCH
        , CREATURE_SHAMAN_HAG
        , CREATURE_ORCCHIEF_BUTCHER
        , CREATURE_ORCCHIEF_EXECUTIONER
        , CREATURE_ORCCHIEF_CHIEFTAIN
        -- , CREATURE_WYVERN
        -- , CREATURE_WYVERN_POISONOUS
        -- , CREATURE_WYVERN_PAOKAI
        , CREATURE_CYCLOP
        , CREATURE_CYCLOP_UNTAMED
        , CREATURE_CYCLOP_BLOODEYED
        , CREATURE_WOLF
      };

    -- 森林生物
      TTHCS_TABLE.PreserveCreature = {
        CREATURE_PIXIE
        , CREATURE_SPRITE
        , CREATURE_DRYAD
        , CREATURE_BLADE_JUGGLER
        , CREATURE_WAR_DANCER
        , CREATURE_BLADE_SINGER
        , CREATURE_WOOD_ELF
        , CREATURE_GRAND_ELF
        , CREATURE_SHARP_SHOOTER
        , CREATURE_DRUID
        , CREATURE_DRUID_ELDER
        , CREATURE_HIGH_DRUID
        , CREATURE_UNICORN
        , CREATURE_WAR_UNICORN
        , CREATURE_WHITE_UNICORN
        , CREATURE_TREANT
        , CREATURE_TREANT_GUARDIAN
        , CREATURE_ANGER_TREANT
        , CREATURE_GREEN_DRAGON
        , CREATURE_GOLD_DRAGON
        , CREATURE_RAINBOW_DRAGON
        , CREATURE_SNOW_APE
        , CREATURE_WING_UNICORN
      };
    -- 森林远程生物
      TTHCS_TABLE.PreserveRangeCreature = {
        CREATURE_WOOD_ELF
        , CREATURE_GRAND_ELF
        , CREATURE_SHARP_SHOOTER
        , CREATURE_DRUID
        , CREATURE_DRUID_ELDER
        , CREATURE_HIGH_DRUID
        , CREATURE_SNOW_APE
      };

    -- 天神
      TTHCS_TABLE.GodCreature = {
        CREATURE_CHERUBIN
        , CREATURE_CHERUBIN_LESS
        , CREATURE_DRAGON_KNIGHT
        , CREATURE_DRAGON_KNIGHT_LESS
      };

    -- 元素魔法（目标）
        TTHCS_TABLE.ElementMagicAimed = {
          SPELL_MAGIC_ARROW
          , SPELL_MAGIC_FIST
          , SPELL_LIGHTNING_BOLT
          , SPELL_ICE_BOLT
          , SPELL_CHAIN_LIGHTNING
          , SPELL_IMPLOSION
        };
    -- 元素魔法（范围）
        TTHCS_TABLE.ElementMagicArea = {
          SPELL_FIREBALL
          , SPELL_FROST_RING
          , SPELL_METEOR_SHOWER
          , SPELL_STONE_SPIKES
        };

    -- 注魔弩可关联魔法（目标）
        TTHCS_TABLE.ImbueBallistaSpellAimed = {
          SPELL_DISPEL
          , SPELL_DIVINE_VENGEANCE
          , SPELL_CURSE
          , SPELL_SLOW
          , SPELL_DISRUPTING_RAY
          , SPELL_WEAKNESS
          , SPELL_FORGETFULNESS
          , SPELL_PLAGUE
          , SPELL_SORROW
          , SPELL_BERSERK
          , SPELL_BLIND
          , SPELL_HYPNOTIZE
          , SPELL_MAGIC_FIST
          , SPELL_EMPOWERED_MAGIC_FIST
          , SPELL_WASP_SWARM
          , SPELL_MAGIC_ARROW
          , SPELL_EMPOWERED_MAGIC_ARROW
          , SPELL_LIGHTNING_BOLT
          , SPELL_EMPOWERED_LIGHTNING_BOLT
          , SPELL_ICE_BOLT
          , SPELL_EMPOWERED_ICE_BOLT
          , SPELL_CHAIN_LIGHTNING
          , SPELL_EMPOWERED_CHAIN_LIGHTNING
          , SPELL_IMPLOSION
          , SPELL_EMPOWERED_IMPLOSION
          , SPELL_DEEP_FREEZE
          , SPELL_EMPOWERED_DEEP_FREEZE
        };
    -- 注魔弩可关联魔法（范围）
        TTHCS_TABLE.ImbueBallistaSpellArea = {
          SPELL_MASS_DISPEL
          , SPELL_MASS_DISRUPTING_RAY
          , SPELL_MASS_PLAGUE
          , SPELL_LAND_MINE
          , SPELL_ARCANE_CRYSTAL
          , SPELL_BLADE_BARRIER
          , SPELL_SUMMON_HIVE
          , SPELL_STONE_SPIKES
          , SPELL_EMPOWERED_STONE_SPIKES
          , SPELL_FIREBALL
          , SPELL_EMPOWERED_FIREBALL
          , SPELL_FROST_RING
          , SPELL_EMPOWERED_FROST_RING
          , SPELL_METEOR_SHOWER
          , SPELL_EMPOWERED_METEOR_SHOWER
          , SPELL_FIREWALL
        };

    TTHCS_TABLE.JusticarTargetHero = {
      'Calh', 'Calid', 'Deleb', 'Jazaz', 'Marder', 'Orlando2'
      , 'Efion', 'Grok', 'Malustar', 'Nymus', 'Oddrema', 'Sovereign', 'Agrael', 'Jeddite'
      , 'Ash', 'Biara', 'Calid2', 'Sheltem', 'Zydar'

      , 'LordHaart', 'Berein', 'Gles', 'Nikolay', 'Straker', 'Tamika', 'Xerxon', 'Karissa'
      , 'Aislinn', 'Effig', 'Giovanni', 'OrnellaNecro', 'Aberrar', 'Muscip'
      , 'Arantir', 'Nemor', 'Nimbus', 'Pelt', 'Sandro', 'Thant', 'Adelaide', 'Vidomina'

      , 'Hero1', 'Hero2', 'Hero3', 'Hero4', 'Hero6', 'Hero8', 'Hero9'
      , 'Gottai', 'Crag', 'KujinMP', 'Hero7', 'Azar', 'Kraal', 'Kunyak'
      , 'Matewa', 'Quroq', 'Shiva', 'Mokka', 'Erika', 'Zouleika'
    };
    TTHCS_TABLE.JusticarTargetCreature = {
        CREATURE_FAMILIAR, CREATURE_IMP, CREATURE_QUASIT
        , CREATURE_DEMON, CREATURE_HORNED_DEMON, CREATURE_HORNED_LEAPER
        , CREATURE_HELL_HOUND, CREATURE_CERBERI, CREATURE_FIREBREATHER_HOUND
        , CREATURE_SUCCUBUS, CREATURE_INFERNAL_SUCCUBUS, CREATURE_SUCCUBUS_SEDUCER
        , CREATURE_NIGHTMARE, CREATURE_FRIGHTFUL_NIGHTMARE, CREATURE_HELLMARE
        , CREATURE_PIT_FIEND, CREATURE_BALOR, CREATURE_PIT_SPAWN
        , CREATURE_DEVIL, CREATURE_ARCHDEVIL, CREATURE_ARCH_DEMON

        , CREATURE_SKELETON, CREATURE_SKELETON_ARCHER, CREATURE_SKELETON_WARRIOR
        , CREATURE_WALKING_DEAD, CREATURE_ZOMBIE, CREATURE_DISEASE_ZOMBIE
        , CREATURE_MANES, CREATURE_GHOST, CREATURE_POLTERGEIST
        , CREATURE_VAMPIRE, CREATURE_VAMPIRE_LORD, CREATURE_NOSFERATU
        , CREATURE_LICH, CREATURE_DEMILICH, CREATURE_LICH_MASTER
        , CREATURE_WIGHT, CREATURE_WRAITH, CREATURE_BANSHEE
        , CREATURE_BONE_DRAGON, CREATURE_SHADOW_DRAGON, CREATURE_HORROR_DRAGON
        , CREATURE_DEATH_KNIGHT, CREATURE_MUMMY, CREATURE_DRAGON_KNIGHT, CREATURE_DRAGON_KNIGHT_LESS

        , CREATURE_GOBLIN, CREATURE_GOBLIN_TRAPPER, CREATURE_GOBLIN_DEFILER
        , CREATURE_CENTAUR, CREATURE_CENTAUR_NOMAD, CREATURE_CENTAUR_MARADEUR
        , CREATURE_ORC_WARRIOR, CREATURE_ORC_SLAYER, CREATURE_ORC_WARMONGER
        , CREATURE_SHAMAN, CREATURE_SHAMAN_WITCH, CREATURE_SHAMAN_HAG
        , CREATURE_ORCCHIEF_BUTCHER, CREATURE_ORCCHIEF_EXECUTIONER, CREATURE_ORCCHIEF_CHIEFTAIN
        , CREATURE_WYVERN, CREATURE_WYVERN_POISONOUS, CREATURE_WYVERN_PAOKAI
        , CREATURE_CYCLOP, CREATURE_CYCLOP_UNTAMED, CREATURE_CYCLOP_BLOODEYED
        , CREATURE_WOLF
    };

    -- 恶灵诅咒关联魔法
      TTHCS_TABLE.ReaverCurseSpell = {
        SPELL_CURSE
        , SPELL_DISRUPTING_RAY
        , SPELL_WEAKNESS
        , SPELL_PLAGUE
        , SPELL_SORROW
        , SPELL_BERSERK
        , SPELL_BLIND
      };

    -- 战场开始时有特殊行动的英雄
      TTHCS_TABLE.CombatStartSpecialHero = {
        "Timerkhan"
        , "RedHeavenHero05"
        , "Arniel"
        , "Orlando2"
        , "Hero1"
        , "Heam"
      }

  TTHCS_COMMON = {};
    -- 向下取整
      function TTHCS_COMMON.floor(n)
        local i = 0;
        repeat i = i + 1; until i > n;
        return i - 1;
      end;

    -- 向上取整
      function TTHCS_COMMON.ceil(n)
        if n == 0 then return 0 end;
        local i = 0;
        repeat i = i + 1; until i >= n;
        return i;
      end;

    -- 四舍五入
      function TTHCS_COMMON.round(n)
        if n == 0 then return 0 end;
        local m = n;
        if m >= 1 then
          repeat m = m - 1; until m < 1;
        end;
        if m == 0 then return n end;
        if m ~= 0 then
          if m >= 0.5 then
            return n - m + 1;
          else
            return n - m;
          end;
        end;
      end;

    -- 绝对值
      function TTHCS_COMMON.abs(n)
        if n < 0 then
          return -n;
        else
          return n;
        end;
      end;

    -- 较小值
      function TTHCS_COMMON.min(m, n)
        if m < n then
          return m;
        else
          return n;
        end;
      end;

    -- 较大值
      function TTHCS_COMMON.max(m, n)
        if m > n then
          return m;
        else
          return n;
        end;
      end;

    -- 两个数组相连
      function TTHCS_COMMON.concat(arr1, arr2)
        local retArr = {};
        if arr1 ~= nil then
          local lenArr1 = length(arr1);
          for i = 0, lenArr1 - 1 do
            retArr[i] = arr1[i];
          end
          if arr2 ~= nil then
            local lenArr2 = length(arr2);
            for i = (lenArr1), (lenArr1 + lenArr2 - 1) do
              retArr[i] = arr2[i - lenArr1];
            end;
          end;
        end;
        return retArr;
      end;

    -- 数组对象中按key排列的最小值
      function TTHCS_COMMON.min8key(arr, strKey)
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

    -- 数组对象中按key排列的最大值
      function TTHCS_COMMON.max8key(arr, strKey)
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
              if objItem ~= nil and iCompare[strKey] < objItem[strKey] then
                iCompare = objItem;
              end;
            end;
          end;
        end;
        return iCompare;
      end;

    -- 数组对象按key排序-正序
      function TTHCS_COMMON.asc8key(arr, strKey)
        local iLenArr = length(arr);
        local temp = nil;
        for i = 0, iLenArr - 2 do
          for j = 0, iLenArr - 2 - i do
            if arr[j][strKey] > arr[j + 1][strKey] then
              temp = arr[j];
              arr[j] = arr[j + 1];
              arr[j + 1] = temp;
            end;
          end;
        end;
        return arr;
      end;

    -- 数组对象按key排序-逆序
      function TTHCS_COMMON.desc8key(arr, strKey)
        local iLenArr = length(arr);
        local temp = nil;
        for i = 0, iLenArr - 2 do
          for j = 0, iLenArr - 2 - i do
            if arr[j][strKey] < arr[j + 1][strKey] then
              temp = arr[j];
              arr[j] = arr[j + 1];
              arr[j + 1] = temp;
            end;
          end;
        end;
        return arr;
      end;

    -- 生物数组最大战力
      function TTHCS_COMMON.max8Power(arrCreature)
        local iCompare = nil;
        if arrCreature ~= nil and length(arrCreature) > 0 then
          for iIndex, strCreature in arrCreature do
            if strCreature == nil then
              return nil;
            end;
            local iPowerTotal = 0;
            if strCreature ~= nil then
              local iPower = TTH_TABLE.Creature[GetCreatureType(strCreature)]["POWER"];
              local iCount = GetCreatureNumber(strCreature);
              iPowerTotal = iPower * iCount;
              if iCompare == nil then
                iCompare = {
                  ["CombatName"] = strCreature
                  , ["Power"] = iPowerTotal
                };
              else
                if iCompare["Power"] < iPowerTotal then
                  iCompare = {
                    ["CombatName"] = strCreature
                    , ["Power"] = iPowerTotal
                  };
                end;
              end;
            end;
          end;
        end;
        return iCompare;
      end;

    -- 伪随机
      TTHCS_COMMON.random = nil;
      local default_state = {
        {1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0},
        {0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0},
        {1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0},
        {1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1},
      };
      function TTHCS_COMMON.initRandom()
        local seed_t = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
        local seed = {}
        local shift = 0
        for side = 0, 1 do
          for j, unit in GetCreatures(side) do
            local type = GetCreatureType(unit)
            local num = GetCreatureNumber(unit)
            local x, y = pos(unit)
            local n = mod(type, 180) + 180 * (x + 14 * (y + 14 * mod(num, 200)))
            shift = shift + 7
            for i=1,24 do
              local bit = mod(n, 2)
              n = (n - bit) / 2
              local index = mod(shift + i, 24) + 1
              seed_t[index] = seed_t[index] ~= bit or 0
            end
          end
          local x = 0
          local p = 1
          for i=1,24 do
            x = x + p * seed_t[i]
            p = p * 2
          end
          for i=1,12 do
            seed_t[i], seed_t[25 - i] = seed_t[25 - i], seed_t[i]
          end
          seed[side+1] = x
          seed[side+3] = x
          seed[side+5] = x
        end
        print('PRNG seed = ' .. seed[1] .. ':' .. seed[2])
        TTHCS_COMMON.random = TTHCS_COMMON.newPRNG(seed)
      end;
      function TTHCS_COMMON.setPRNGSeed(state, seeds)
          state = state or {}
          seeds = seeds or {}
          for i=1,4 do
              if not state[i] then
                  state[i] = {}
              end
              for j=1,32 do
                  state[i][j] = %default_state[i][j]
              end
          end
          local col, row = 1, 4
          local si
          for i=1,6 do
              si = seeds[i] or si
              if not si then break end
              local si = si
              for j=1,23 do
                  local bit = mod(si, 2)
                  si = (si - bit) / 2
                  state[row][col] = state[row][col] ~= bit or 0
                  row = row - 1
                  if row < 1 then row, col = 4, col + 1 end
                  if col > 32 then break end
              end
              if col > 32 then break end
          end
          return state
      end;
      function TTHCS_COMMON.newPRNG(seeds)
        local state = TTHCS_COMMON.setPRNGSeed({}, seeds)
        local random = function(n, m)
          local state = %state
          local s
          local t = state[4]
          for i=1,21 do  -- t = t xor (t << 11)
            t[i] = t[i] ~= t[i+11] or 0
          end
          for i=9,32 do  -- t = t xor (t >> 8)
            t[i] = t[i] ~= t[i-8] or 0
          end
          state[4] = state[3]
          state[3] = state[2]
          s = state[1]
          state[2] = s
          for i=1,32 do  -- t = t xor s
            t[i] = t[i] ~= s[i] or 0
          end
          for i=20,32 do  -- t = t xor (s >> 19)
            t[i] = t[i] ~= s[i-19] or 0
          end
          state[1] = t
          local r = 0
          local p = 1
          for i=24,1,-1 do
            r = r + p * t[i]
            p = p * 2
          end
          r = r / 16777216
          if n then
            if not m then
              n, m = 1, n
            end
            return n + TTHCS_COMMON.floor(r * (m - n + 1))
          else
            return r
          end
        end
        return random, state
      end;
      function TTHCS_COMMON.getRandom(iMod)
        local iRandom = TTHCS_COMMON.random(100);
        local iMod = tth_mod(iRandom, iMod);
        return iMod;
      end;

  TTHCS_THREAD = {};
    -- 包装函数
      function TTHCS_THREAD.unitCastAimedSpell(sidCaster, iSpellId, sidTarget)
        UnitCastAimedSpell(sidCaster, iSpellId, sidTarget);
      end;
      function TTHCS_THREAD.unitCastAreaSpell(sidCaster, iSpellId, iPosX, iPosY)
        UnitCastAreaSpell(sidCaster, iSpellId, iPosX, iPosY);
      end;
      function TTHCS_THREAD.unitCastGlobalSpell(sidCaster, iSpellId)
        UnitCastGlobalSpell(sidCaster, iSpellId);
      end;
      function TTHCS_THREAD.unitAttack(sidCaster, sidTarget)
        AttackCombatUnit(sidCaster, sidTarget);
      end;
      function TTHCS_THREAD.unitShoot(sidCaster, sidTarget)
        ShootCombatUnit(sidCaster, sidTarget);
      end;
      function TTHCS_THREAD.unitDefend(sidCaster)
        DefendCombatUnit(sidCaster);
      end;
      function TTHCS_THREAD.unitMove(sidCaster, iPosX, iPosY)
        commandMove(sidCaster, iPosX, iPosY);
      end;
      function TTHCS_THREAD.unitDisplace(sidCaster, iPosX, iPosY)
        displace(sidCaster, iPosX, iPosY);
      end;

    -- 施放单体魔法
      function TTHCS_THREAD.castAimedSpell4Mana(sidCaster, iSpellId, sidTarget, bSign)
        local iCurrentMana = GetUnitManaPoints(sidCaster);
        TTHCS_GLOBAL.maxMana(sidCaster);
        if TTHCS_GLOBAL.checkCombatCreature(sidTarget) then
          startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
          local sidTarget4ShakeGround = TTHCS_THREAD.castAimedSpell4ShakeGround(TTHCS_GLOBAL.geneUnitInfo(sidCaster)["Side"], iSpellId, sidTarget);
          if TTHCS_GLOBAL.checkCombatCreature(sidTarget4ShakeGround) then
            startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget4ShakeGround);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SHAKE_GROUND]["Effect"], sidTarget4ShakeGround, 5);
            sleep(50);
          end;
          local sidTarget4Solmyr = TTHCS_THREAD.castAimedSpell4Solmyr(TTHCS_GLOBAL.geneUnitInfo(sidCaster)["Side"], iSpellId, sidTarget);
          if TTHCS_GLOBAL.checkCombatCreature(sidTarget4Solmyr) then
            startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget4Solmyr);
            ShowFlyingSign(TTHCS_PATH["Talent"]["Solmyr"]["EffectLightning"], sidTarget4Solmyr, 5);
            sleep(50);
          end;
        end;
        TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
      end;
      function TTHCS_THREAD.castAimedSpell4Mana5Creature(iSide, sidCaster, iSpellId, sidTarget, bSign)
        local iLenBefore = length(GetCreatures(iSide));
        local iLenAfter = iLenBefore;
        local iCurrentMana = GetUnitManaPoints(sidCaster);
        TTHCS_GLOBAL.maxMana(sidCaster);
        if TTHCS_GLOBAL.checkCombatCreature(sidTarget) then
          startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
        end;
        TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
        local iTimes = 1;
        repeat
          sleep(10);
          iLenAfter = length(GetCreatures(iSide));
          iTimes = iTimes + 1;
        until iLenAfter > iLenBefore or iTimes > 5;
        local sidCreatureRet = nil;
        if iTimes <= 5 then
          sidCreatureRet = GetCreatures(iSide)[iLenAfter - 1];
        end;
        return sidCreatureRet;
      end;
      function TTHCS_THREAD.castAimedSpell5Mana(sidCaster, iSpellId, sidTarget, bSign)
        if TTHCS_GLOBAL.checkCombatCreature(sidTarget) then
          startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
          local sidTarget4ShakeGround = TTHCS_THREAD.castAimedSpell4ShakeGround(TTHCS_GLOBAL.geneUnitInfo(sidCaster)["Side"], iSpellId, sidTarget);
          if TTHCS_GLOBAL.checkCombatCreature(sidTarget4ShakeGround) then
            startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget4ShakeGround);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SHAKE_GROUND]["Effect"], sidTarget4ShakeGround, 5);
            sleep(50);
          end;
          local sidTarget4Solmyr = TTHCS_THREAD.castAimedSpell4Solmyr(TTHCS_GLOBAL.geneUnitInfo(sidCaster)["Side"], iSpellId, sidTarget);
          if TTHCS_GLOBAL.checkCombatCreature(sidTarget4Solmyr) then
            startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget4Solmyr);
            ShowFlyingSign(TTHCS_PATH["Talent"]["Solmyr"]["EffectLightning"], sidTarget4Solmyr, 5);
            sleep(50);
          end;
        end;
      end;
      function TTHCS_THREAD.castAimedSpell5Mana4Body(sidCaster, iSpellId, sidTarget, bSign)
        local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
        if IsCombatUnit(sidTarget) ~= nil and itemTarget["UnitNumber"] == 0 then
          startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
        end;
      end;
      function TTHCS_THREAD.castAimedSpell8Tool(iSide, iCreatureId, iCreatureNumber, iSpellId, sidTarget, bSign)
        if TTHCS_GLOBAL.checkCombatCreature(sidTarget) then
          local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
          local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
          if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
            TTHCS_GLOBAL.maxMana(sidCaster);
            startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget);
            TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
            sleep(50);
            TTHCS_THREAD.removeCreature(sidCaster);
            sleep(20);
          end;
          local sidTarget4ShakeGround = TTHCS_THREAD.castAimedSpell4ShakeGround(iSide, iSpellId, sidTarget);
          if TTHCS_GLOBAL.checkCombatCreature(sidTarget4ShakeGround) then
            local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
            local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
            if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
              TTHCS_GLOBAL.maxMana(sidCaster);
              startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget4ShakeGround);
              ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_SHAKE_GROUND]["Effect"], sidTarget4ShakeGround, 5);
              sleep(50);
              TTHCS_THREAD.removeCreature(sidCaster);
              sleep(20);
            end;
          end;
          local sidTarget4Solmyr = TTHCS_THREAD.castAimedSpell4Solmyr(iSide, iSpellId, sidTarget);
          if TTHCS_GLOBAL.checkCombatCreature(sidTarget4Solmyr) then
            local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
            local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
            if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
              TTHCS_GLOBAL.maxMana(sidCaster);
              startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget4Solmyr);
              ShowFlyingSign(TTHCS_PATH["Talent"]["Solmyr"]["EffectLightning"], sidTarget4Solmyr, 5);
              sleep(50);
              TTHCS_THREAD.removeCreature(sidCaster);
              sleep(20);
            end;
          end;
        end;
      end;
      function TTHCS_THREAD.castAimedSpell8Tool4Body(iSide, iCreatureId, iCreatureNumber, iSpellId, sidTarget, bSign)
        local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
        if IsCombatUnit(sidTarget) ~= nil and itemTarget["UnitNumber"] == 0 then
          local sidCaster = nil;
          local itemCaster = {};
          repeat
            if sidCaster ~= nil then
              TTHCS_THREAD.removeCreature(sidCaster);
            end;
            sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, -1, -1);
            itemCaster = TTHCS_GLOBAL.geneUnitInfo(sidCaster);
          until itemCaster ~= nil and TTHCS_COMMON.isEffectUnit(sidTarget, itemCaster["PosX"], itemCaster["PosY"]) == TCS_ENUM.Switch.No;
          if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
            TTHCS_GLOBAL.maxMana(sidCaster);
            startThread(TTHCS_THREAD.unitCastAimedSpell, sidCaster, iSpellId, sidTarget);
            TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
            sleep(50);
            TTHCS_THREAD.removeCreature(sidCaster);
            sleep(20);
          end;
        end;
      end;
      function TTHCS_THREAD.castAimedSpell4ShakeGround(iSide, iSpellId, sidTarget)
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_SHAKE_GROUND] == 1 then
            local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
            if TTHCS_GLOBAL.checkCombatCreature(sidTarget)
              and iSide ~= itemTarget["Side"]
              and (
                (
                  TTH_TABLE.Spell[iSpellId] ~= nil
                  and TTH_TABLE.Spell[iSpellId]["Element"] == TTH_ENUM.Destructive
                )
                or iSpellId == SPELL_ABILITY_FLAMESTRIKE
              ) then
              local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
              local arrCreatureTarget = GetCreatures(iOppositeSide);
              local arrCreatureFilter = {};
              for i, sidCreature in arrCreatureTarget do
                if sidCreature ~= sidTarget then
                  push(arrCreatureFilter, sidCreature);
                end;
              end;
              if length(arrCreatureFilter) > 0 then
                local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureFilter));
                local sidCreatureFilter = arrCreatureFilter[iRandomIndex];
                return sidCreatureFilter;
              end;
            end;
          end;
        end;
        return nil;
      end;
      function TTHCS_THREAD.castAimedSpell4Solmyr(iSide, iSpellId, sidTarget)
        local sidHero = GetHero(iSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if strHero == "Solmyr"
            and TCS_VARI.Info.HeroUpgradeMastery[strHero] == 1 then
            local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
            if TTHCS_GLOBAL.checkCombatCreature(sidTarget)
              and iSide ~= itemTarget["Side"]
              and (
                (
                  TTH_TABLE.Spell[iSpellId] ~= nil
                  and TTH_TABLE.Spell[iSpellId]["Element"] == TTH_ENUM.Destructive
                )
                or iSpellId == SPELL_ABILITY_FLAMESTRIKE
              ) then
              local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
              local arrCreatureTarget = GetCreatures(iOppositeSide);
              local arrCreatureFilter = {};
              for i, sidCreature in arrCreatureTarget do
                if sidCreature ~= sidTarget then
                  push(arrCreatureFilter, sidCreature);
                end;
              end;
              if length(arrCreatureFilter) > 0 then
                local iRandomIndex = TTHCS_COMMON.getRandom(length(arrCreatureFilter));
                local sidCreatureFilter = arrCreatureFilter[iRandomIndex];
                return sidCreatureFilter;
              end;
            end;
          end;
        end;
        return nil;
      end;

    -- 施放范围魔法
      function TTHCS_THREAD.castAreaSpell4Mana(sidCaster, iSpellId, iPosX, iPosY, bSign)
        local iCurrentMana = GetUnitManaPoints(sidCaster);
        TTHCS_GLOBAL.maxMana(sidCaster);
        startThread(TTHCS_THREAD.unitCastAreaSpell, sidCaster, iSpellId, iPosX, iPosY);
        TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
        sleep(50);
        TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
      end;
      function TTHCS_THREAD.castAreaSpell5Mana(sidCaster, iSpellId, iPosX, iPosY, bSign)
        startThread(TTHCS_THREAD.unitCastAreaSpell, sidCaster, iSpellId, iPosX, iPosY);
        TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
        sleep(50);
      end;
      function TTHCS_THREAD.castAreaSpell8Tool(iSide, iCreatureId, iCreatureNumber, iSpellId, iTargetPosX, iTargetPosY, bSign)
        local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
        local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
          TTHCS_GLOBAL.maxMana(sidCaster);
          startThread(TTHCS_THREAD.unitCastAreaSpell, sidCaster, iSpellId, iTargetPosX, iTargetPosY);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
          TTHCS_THREAD.removeCreature(sidCaster);
          sleep(20);
        end;
      end;
      function TTHCS_THREAD.castAreaSpell8Tool4Body(iSide, iCreatureId, iCreatureNumber, iSpellId, iPosX, iPosY, bSign)
        local sidCaster = nil;
        local itemCaster = {};
        repeat
          if sidCaster ~= nil then
            TTHCS_THREAD.removeCreature(sidCaster);
          end;
          sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, -1, -1);
          itemCaster = TTHCS_GLOBAL.geneUnitInfo(sidCaster);
        until itemCaster ~= nil and TTHCS_COMMON.isEffectTarget(iCreatureId, iPosX, iPosY, itemCaster["PosX"], itemCaster["PosY"]) == TCS_ENUM.Switch.No;
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
          TTHCS_GLOBAL.maxMana(sidCaster);
          startThread(TTHCS_THREAD.unitCastAreaSpell, sidCaster, iSpellId, iPosX, iPosY);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
          TTHCS_THREAD.removeCreature(sidCaster);
          sleep(20);
        end;
      end;
      function TTHCS_THREAD.castAreaSpell4SpellSpawn(iSide, iCreatureId, iCreatureNumber, sidCaster, iSpellId, iPosX, iPosY, bSign)
        local iCurrentMana = GetUnitManaPoints(sidCaster);
        local iLenBefore = length(GetSpellSpawns(iSide));
        local iLenAfter = iLenBefore;
        local strCreatureTool = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
        local itemCreatureTool = TTHCS_GLOBAL.geneUnitInfo(strCreatureTool);
        TTHCS_THREAD.removeCreature(strCreatureTool);
        startThread(TTHCS_THREAD.unitCastAreaSpell, sidCaster, iSpellId, itemCreatureTool["PosX"], itemCreatureTool["PosY"]);
        TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
        sleep(50);
        TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
        local iTimes = 0;
        repeat
          sleep(10);
          iLenAfter = length(GetSpellSpawns(iSide));
          iTimes = iTimes + 1;
        until iLenAfter > iLenBefore or iTimes > 10;
        if iTimes > 10 then
          return nil;
        else
          return GetSpellSpawns(iSide)[iLenAfter - 1];
        end;
      end;

    -- 施放群体魔法
      function TTHCS_THREAD.castGlobalSpell4Mana(sidCaster, iSpellId, bSign)
        local iCurrentMana = GetUnitManaPoints(sidCaster);
        TTHCS_GLOBAL.maxMana(sidCaster);
        startThread(TTHCS_THREAD.unitCastGlobalSpell, sidCaster, iSpellId);
        TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
        sleep(50);
        TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
      end;
      function TTHCS_THREAD.castGlobalSpell5Mana(sidCaster, iSpellId, bSign)
        startThread(TTHCS_THREAD.unitCastGlobalSpell, sidCaster, iSpellId);
        TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
        sleep(50);
      end;
      function TTHCS_THREAD.castGlobalSpell8Tool(iSide, iCreatureId, iCreatureNumber, iSpellId, bSign)
        local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
        local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
          TTHCS_GLOBAL.maxMana(sidCaster);
          startThread(TTHCS_THREAD.unitCastGlobalSpell, sidCaster, iSpellId);
          TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
          sleep(50);
          TTHCS_THREAD.removeCreature(sidCaster);
          sleep(20);
        end;
      end;
      function TTHCS_THREAD.castGlobalSpell4God(iSide, iCreatureId, iCreatureNumber, arrSpellId, iArtifactId, bRemove)
        local iPosX, iPosY = TTHCS_GLOBAL.getGodPosition(iSide);
        local sidCaster = TTHCS_THREAD.summonCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) == TCS_ENUM.Switch.Yes then
          local iCurrentMana = GetUnitManaPoints(sidCaster);
          TTHCS_GLOBAL.maxMana(sidCaster);
          for i, iSpellId in arrSpellId do
            startThread(TTHCS_THREAD.unitCastGlobalSpell, sidCaster, iSpellId);
          end;
          ShowFlyingSign(TTHCS_PATH["Artifact"][iArtifactId]["Effect"], sidCaster, 5);
          sleep(50);
          if bRemove == TCS_ENUM.Switch.Yes then
            TTHCS_THREAD.removeCreature(sidCaster);
            sleep(20);
          else
            TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
          end;
        end;
      end;
      function TTHCS_THREAD.castGlobalSpell4Mana4Creature(iSide, sidCaster, iSpellId, bSign)
        local iLenBefore = length(GetCreatures(iSide));
        local iLenAfter = iLenBefore;
        local iCurrentMana = GetUnitManaPoints(sidCaster);
        TTHCS_GLOBAL.maxMana(sidCaster);
        startThread(TTHCS_THREAD.unitCastGlobalSpell, sidCaster, iSpellId);
        TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign);
        sleep(50);
        TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana);
        local iTimes = 0;
        repeat
          sleep(10);
          iLenAfter = length(GetCreatures(iSide));
          iTimes = iTimes + 1;
        until iLenAfter > iLenBefore or iTimes > 10;
        if iTimes > 10 then
          return nil;
        else
          return GetCreatures(iSide)[iLenAfter - 1];
        end;
      end;

    -- 添加生物
      function TTHCS_THREAD.addCreature(iSide, iUnitType, iUnitNumber, iPositionX, iPositionY)
        local iLenBefore = length(GetCreatures(iSide));
        local iLenAfter = iLenBefore;
        AddCreature(iSide, iUnitType, iUnitNumber, iPositionX, iPositionY);
        repeat
          sleep(1);
          iLenAfter = length(GetCreatures(iSide));
        until iLenAfter > iLenBefore;
        return GetCreatures(iSide)[iLenAfter - 1];
      end;

    -- 召唤生物
      function TTHCS_THREAD.summonCreature(iSide, iUnitType, iUnitNumber, iPositionX, iPositionY, bDebuff)
        local iUnitNumberbDebuff = iUnitNumber;
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local sidHero = GetHero(iOppositeSide);
        if sidHero ~= nil then
          local strHero = GetHeroName(sidHero);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_UNSUMMON] == 1 and bDebuff == nil then
            iUnitNumberbDebuff = TTHCS_COMMON.ceil(iUnitNumberbDebuff / 2);
            ShowFlyingSign(TTHCS_PATH["Perk"][HERO_SKILL_UNSUMMON]["Effect"], sidHero, 5);
          end;
        end;
        local iLenBefore = length(GetCreatures(iSide));
        local iLenAfter = iLenBefore;
        SummonCreature(iSide, iUnitType, iUnitNumberbDebuff, iPositionX, iPositionY);
        repeat
          sleep(1);
          iLenAfter = length(GetCreatures(iSide));
        until iLenAfter > iLenBefore;
        return GetCreatures(iSide)[iLenAfter - 1];
      end;

    -- 移除单位
      function TTHCS_THREAD.removeCreature(sidUnit)
        if IsCombatUnit(sidUnit) ~= nil then
          RemoveCombatUnit(sidUnit);
        end;
        repeat sleep(1); until IsCombatUnit(sidUnit) == nil;
      end;

    -- 单位近战攻击
      function TTHCS_THREAD.attack(sidCaster, sidTarget)
        startThread(TTHCS_THREAD.unitAttack, sidCaster, sidTarget);
        print(sidCaster.." attack to "..sidTarget);
        sleep(20);
      end;
      function TTHCS_THREAD.attack8CheckPosition(iSide, sidCaster, sidTarget)
        local bCheck = nil;
        local iCheckIndex = -1;
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local itemCaster = TTHCS_GLOBAL.geneUnitInfo(sidCaster);
        local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) == nil
          or TTHCS_GLOBAL.checkCombatCreature(sidTarget) == nil then
          return bCheck;
        end;
        local arrTarget = TTHCS_GLOBAL.listUnitInArea(itemCaster, 1, iOppositeSide, TCS_ENUM.Switch.No);
        startThread(TTHCS_THREAD.unitAttack, sidCaster, sidTarget);
        sleep(50);
        if contains(arrTarget, sidTarget) == nil then
          local itemCasterCurrent = {};
          local bExistCasterCurrent = not nil;
          local arrCaster = {};
          repeat
            sleep(10);
            itemCasterCurrent = TTHCS_GLOBAL.geneUnitInfo(sidCaster);
            bExistCasterCurrent = TTHCS_GLOBAL.checkCombatCreature(sidCaster);
            arrCaster = TTHCS_GLOBAL.listUnitInArea(itemTarget, 1, iSide, TCS_ENUM.Switch.No);
          until bExistCasterCurrent == nil
            or contains(arrCaster, sidCaster) ~= nil
            or (
              itemCasterCurrent["PosX"] == itemCaster["PosX"]
              and itemCasterCurrent["PosY"] == itemCaster["PosY"]
            )
            or contains(TTHCS_TABLE.GodCreature, itemTarget["UnitType"]) ~= nil;
          if bExistCasterCurrent == nil then
            bCheck = not nil;
            iCheckIndex = 0;
          else
            if contains(arrCaster, sidCaster) == nil then
              if itemCasterCurrent["PosX"] == itemCaster["PosX"]
                and itemCasterCurrent["PosY"] == itemCaster["PosY"] then
                bCheck = nil;
                iCheckIndex = 1;
              else
                if contains(TTHCS_TABLE.GodCreature, itemTarget["UnitType"]) == nil then
                  bCheck = nil;
                  iCheckIndex = 2;
                else
                  bCheck = not nil;
                  iCheckIndex = 3;
                end;
              end;
            else
              bCheck = not nil;
              iCheckIndex = 4;
            end;
          end;
        else
          bCheck = not nil;
          iCheckIndex = 5;
        end;
        if bCheck then
          print(sidCaster.." success "..iCheckIndex.." attack to "..sidTarget.." at "..itemTarget["PosX"].."-"..itemTarget["PosY"]);
        else
          print(sidCaster.." failure "..iCheckIndex.." attack to "..sidTarget.." at "..itemTarget["PosX"].."-"..itemTarget["PosY"]);
        end;
        sleep(20);
        return bCheck;
      end;
      function TTHCS_THREAD.attack8Tool(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY, sidTarget, iTimes)
        local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
          for i = 1, iTimes do
            startThread(TTHCS_THREAD.unitAttack, sidCaster, sidTarget);
            sleep(20);
          end;
          TTHCS_THREAD.removeCreature(sidCaster);
          sleep(20);
        end;
      end;

    -- 单位远程攻击
      function TTHCS_THREAD.shoot(sidCaster, sidTarget)
        if TTHCS_GLOBAL.checkCombatCreature(sidTarget) then
          startThread(TTHCS_THREAD.unitShoot, sidCaster, sidTarget);
          print(sidCaster.." shoot to "..sidTarget);
          sleep(80);
        end;
      end;
      function TTHCS_THREAD.shoot8Tool(iSide, iCreatureId, iCreatureNumber, sidTarget)
        local iPosX, iPosY = TTHCS_GLOBAL.getTempPosition4Caster(iSide);
        local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, iPosX, iPosY);
        if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
          startThread(TTHCS_THREAD.unitShoot, sidCaster, sidTarget);
          sleep(20);
          TTHCS_THREAD.removeCreature(sidCaster);
          sleep(20);
        end;
      end;

    -- 单位移动
      function TTHCS_THREAD.move(sidCaster, iPosX, iPosY)
        startThread(TTHCS_THREAD.unitMove, sidCaster, iPosX, iPosY);
        print(sidCaster.." move to "..iPosX.."-"..iPosY);
        sleep(20);
      end;

    -- 击退生物-小型单位击退1格
      -- 参数: sidCreatureCaster, sidCreatureTarget
      function TTHCS_THREAD.repel(sidCreatureCaster, sidCreatureTarget)
        local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCaster);
        local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
        local iCombatSizeTarget = TTH_TABLE.Creature[itemCreatureTarget["UnitType"]]["CombatSize"];
        if iCombatSizeTarget == 1 then
          local iDiffX = TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, "PosX");
          local iDiffY = TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, "PosY");
          local iFinalX = itemCreatureTarget["PosX"] + iDiffX;
          local iFinalY = itemCreatureTarget["PosY"] + iDiffY;
          startThread(TTHCS_THREAD.unitMove, sidCreatureTarget, iFinalX, iFinalY);
          print(sidCreatureCaster.." repel "..sidCreatureTarget.." to "..iFinalX.."-"..iFinalY);
          sleep(20);
        end;
      end;

    -- 单位瞬移
      function TTHCS_THREAD.displace(sidCaster, iPosX, iPosY)
        startThread(TTHCS_THREAD.unitDisplace, sidCaster, iPosX, iPosY);
        local iTime = 0;
        local iMaxTime = 15;
        local iCurrentPosX = 0;
        local iCurrentPosY = 0;
        repeat
          sleep(10);
          iTime = iTime + 1;
          if TTHCS_GLOBAL.checkCombatCreature(sidCaster) then
            iCurrentPosX, iCurrentPosY = GetUnitPosition(sidCaster);
          end;
        until (iCurrentPosX == iPosX and iCurrentPosY == iPosY) or iTime >= iMaxTime;
        print(sidCaster.." displace to "..iPosX.."-"..iPosY);
        return iTime < iMaxTime
      end;

    -- 单位防御
      function TTHCS_THREAD.defend(sidCaster)
        startThread(TTHCS_THREAD.unitDefend, sidCaster);
        print(sidCaster.." defend");
        sleep(10);
      end;

    -- 工具生物上DEBUFF
      TTHCS_THREAD.debuff = {};
      TTHCS_THREAD.debuff.status = 0; -- 0: init, 1: attack, 2: shoot
      TTHCS_THREAD.debuff.itemParam = {};
      TTHCS_THREAD.debuff.trigger = function(iSide, iCreatureId, iCreatureNumber, sidTarget)
        TTHCS_THREAD.debuff.itemParam = {
          ["Side"] = iSide
          , ["CreatureId"] = iCreatureId
          , ["CreatureNumber"] = iCreatureNumber
          , ["SidTarget"] = sidTarget
          , ["CasterPosition"] = TTHCS_GLOBAL.getPosition4Shoot(iSide)
        };
        TTHCS_THREAD.debuff.attack();
      end;
      TTHCS_THREAD.debuff.errorHook4Attack = function()
        print("TTHCS_THREAD.debuff.errorHook4Attack")
        TTHCS_THREAD.debuff.shoot();
      end;
      TTHCS_THREAD.debuff.attack = function()
        errorHook(TTHCS_THREAD.debuff.errorHook4Attack);
        local iSide = TTHCS_THREAD.debuff.itemParam["Side"];
        local iCreatureId = TTHCS_THREAD.debuff.itemParam["CreatureId"];
        local iCreatureNumber = TTHCS_THREAD.debuff.itemParam["CreatureNumber"];
        local sidTarget = TTHCS_THREAD.debuff.itemParam["SidTarget"];
        local listCasterPosition = TTHCS_THREAD.debuff.itemParam["CasterPosition"];
        local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
        local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, itemTarget["PosX"], itemTarget["PosY"]);
        local arrCaster = TTHCS_GLOBAL.listUnitInArea(itemTarget, 1, iSide, TCS_ENUM.Switch.No);
        if contains(arrCaster, sidCaster) ~= nil then
          TTHCS_THREAD.unitAttack(sidCaster, sidTarget);
          sleep(20);
        end;
        TTHCS_THREAD.removeCreature(sidCaster);
        if contains(arrCaster, sidCaster) == nil then
          TTHCS_THREAD.debuff.shoot(sidCaster, sidTarget);
        end;
      end;
      TTHCS_THREAD.debuff.errorHook4Shoot = function()
        print("TTHCS_THREAD.debuff.errorHook")
        TTHCS_THREAD.debuff.shoot();
      end;
      TTHCS_THREAD.debuff.shoot = function()
        errorHook(TTHCS_THREAD.debuff.errorHook4Shoot);
        local iSide = TTHCS_THREAD.debuff.itemParam["Side"];
        local iCreatureId = TTHCS_THREAD.debuff.itemParam["CreatureId"];
        local iCreatureNumber = TTHCS_THREAD.debuff.itemParam["CreatureNumber"];
        local sidTarget = TTHCS_THREAD.debuff.itemParam["SidTarget"];
        local listCasterPosition = TTHCS_THREAD.debuff.itemParam["CasterPosition"];
        TTHCS_GLOBAL.printPosition(listCasterPosition);
        local itemTarget = TTHCS_GLOBAL.geneUnitInfo(sidTarget);
        for x, itemPosition in listCasterPosition do
          for y, enumStatus in itemPosition do
            if listCasterPosition[x][y] == TTHCS_ENUM.PositionStatus.unsign then
              listCasterPosition[x][y] = TTHCS_ENUM.PositionStatus.check;
              local sidCaster = TTHCS_THREAD.addCreature(iSide, iCreatureId, iCreatureNumber, x, y);
              TTHCS_THREAD.unitShoot(sidCaster, sidTarget);
              sleep(20);
              TTHCS_THREAD.removeCreature(sidCaster);
              sleep(20);
              return nil;
            end;
          end;
        end;
      end;

  TTHCS_GLOBAL = {};
    -- 设置单位魔法值到原数值
      function TTHCS_GLOBAL.resetMana(sidCaster, iCurrentMana)
        SetUnitManaPoints(sidCaster, iCurrentMana);
        repeat sleep(1); until GetUnitManaPoints(sidCaster) == iCurrentMana;
      end;

    -- 设置单位魔法值到9999
      function TTHCS_GLOBAL.maxMana(sidCaster)
        local itemCaster = TTHCS_GLOBAL.geneUnitInfo(sidCaster);
        if itemCaster["MaxMana"] > 0 then
          SetUnitManaPoints(sidCaster, TTHCS_FINAL.MAX_MANA);
          repeat sleep(1); until GetUnitManaPoints(sidCaster) == TTHCS_FINAL.MAX_MANA;
        end;
      end;

    -- 打印魔法并提示
      function TTHCS_GLOBAL.signSpell(sidCaster, iSpellId, bSign)
        if bSign == TCS_ENUM.Switch.Yes then
          print(sidCaster.." cast "..TTH_TABLE.Spell[iSpellId]["DebugText"]);
          ShowFlyingSign(TTH_TABLE.Spell[iSpellId]["Text"], sidCaster, 5);
        end;
      end;

    -- 打印日志
      function TTHCS_GLOBAL.print(strDebug)
        if TCS_VARI.debug == TCS_ENUM.Switch.Yes then
          print(strDebug);
        end;
      end;

    -- 获取生物是否存活
      function TTHCS_GLOBAL.checkCombatCreature(sidUnit)
        local bCheck = nil;
        if sidUnit ~= nil then
          local itemUnit = TTHCS_GLOBAL.geneUnitInfo(sidUnit);
          if itemUnit ~= nil then
            if itemUnit["UnitCategory"] == TTH_ENUM.CombatCreature then
              if itemUnit["UnitNumber"] > 0 then
                bCheck = not nil;
              end;
            else
              bCheck = not nil;
            end;
          end;
        end;
        return bCheck;
      end;

    -- 生成单位信息
      function TTHCS_GLOBAL.geneUnitInfo(sidUnit)
        if IsCombatUnit(sidUnit) == nil then
          return nil;
        end;
        local itemUnit = {};
        itemUnit["Side"] = GetUnitSide(sidUnit);
        itemUnit["UnitCategory"] = GetUnitType(sidUnit);
        itemUnit["UnitName"] = sidUnit;
        itemUnit["PosX"], itemUnit["PosY"] = GetUnitPosition(sidUnit);
        if itemUnit["UnitCategory"] == TTH_ENUM.CombatHero then
          itemUnit["UnitType"] = GetHeroName(sidUnit);
          itemUnit["CurrentMana"] = GetUnitManaPoints(sidUnit);
          itemUnit["MaxMana"] = GetUnitMaxManaPoints(sidUnit);
        elseif itemUnit["UnitCategory"] == TTH_ENUM.CombatCreature then
          itemUnit["UnitType"] = GetCreatureType(sidUnit);
          itemUnit["UnitNumber"] = GetCreatureNumber(sidUnit);
          itemUnit["CurrentMana"] = GetUnitManaPoints(sidUnit);
          itemUnit["MaxMana"] = GetUnitMaxManaPoints(sidUnit);
          if TTH_TABLE.Creature[itemUnit["UnitType"]]["DemonRage"] == 1
            and GetHero(itemUnit["Side"]) ~= nil
            and itemUnit["UnitNumber"] > 0
            and TTH_TABLE.Hero[GetHeroName(GetHero(itemUnit["Side"]))]["Race"] == TOWN_STRONGHOLD then
            itemUnit["RagePoint"] = GetRagePoints(sidUnit);
            itemUnit["RageLevel"] = GetRageLevel(sidUnit);
          end;
        elseif itemUnit["UnitCategory"] == TTH_ENUM.CombatWarMachine then
          itemUnit["UnitType"] = GetWarMachineType(sidUnit);
        elseif itemUnit["UnitCategory"] == TTH_ENUM.CombatBuilding then
          itemUnit["UnitType"] = GetBuildingType(sidUnit);
        elseif itemUnit["UnitCategory"] == TTH_ENUM.CombatSpellSpawn then
          itemUnit["UnitType"] = TTHCS_GLOBAL.GetSpellSpawnType(sidUnit);
        end;
        return itemUnit;
      end;

    -- 生成战场快照
      function TTHCS_GLOBAL.geneSnapshot(bInit)
        local listSnapshot = {};
        listSnapshot[TTH_ENUM.CombatHero] = {};
        listSnapshot[TTH_ENUM.CombatCreature] = {};
        listSnapshot[TTH_ENUM.CombatWarMachine] = {};
        listSnapshot[TTH_ENUM.CombatBuilding] = {};
        listSnapshot[TTH_ENUM.CombatSpellSpawn] = {};
        for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
          -- Hero
            local sidHero = GetHero(iSide);
            if sidHero ~= nil then
              listSnapshot[TTH_ENUM.CombatHero][iSide] = TTHCS_GLOBAL.geneUnitInfo(sidHero);
            end;

          -- Creature
            listSnapshot[TTH_ENUM.CombatCreature][iSide] = {};
            local arrCreature = GetCreatures(iSide);
            for i, sidCreature in arrCreature do
              listSnapshot[TTH_ENUM.CombatCreature][iSide][sidCreature] = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
            end;
            if bInit == TCS_ENUM.Switch.No then
              local listCreatureInit = TCS_VARI.Snapshot.init[TTH_ENUM.CombatCreature][iSide];
              for i, itemCreatureInit in listCreatureInit do
                if listSnapshot[TTH_ENUM.CombatCreature][iSide][itemCreatureInit["UnitName"]] == nil then
                  local itemCreatureCurrent = TTHCS_GLOBAL.geneUnitInfo(itemCreatureInit["UnitName"]);
                  if itemCreatureCurrent ~= nil then
                    listSnapshot[TTH_ENUM.CombatCreature][iSide][itemCreatureInit["UnitName"]] = itemCreatureCurrent;
                  end;
                end;
              end;
            end;

          -- WarMachine
            listSnapshot[TTH_ENUM.CombatWarMachine][iSide] = {};
            local arrWarMachine = GetWarMachines(iSide);
            for i, sidWarMachine in arrWarMachine do
              listSnapshot[TTH_ENUM.CombatWarMachine][iSide][sidWarMachine] = TTHCS_GLOBAL.geneUnitInfo(sidWarMachine);
            end;

          -- Building
            listSnapshot[TTH_ENUM.CombatBuilding][iSide] = {};
            local arrBuilding = GetBuildings(iSide);
            for i, sidBuilding in arrBuilding do
              listSnapshot[TTH_ENUM.CombatBuilding][iSide][sidBuilding] = TTHCS_GLOBAL.geneUnitInfo(sidBuilding);
            end;

          -- SpellSpawn
            listSnapshot[TTH_ENUM.CombatSpellSpawn][iSide] = {};
            local arrSpellSpawn = GetSpellSpawns(iSide);
            for i, sidSpellSpawn in arrSpellSpawn do
              listSnapshot[TTH_ENUM.CombatSpellSpawn][iSide][sidSpellSpawn] = TTHCS_GLOBAL.geneUnitInfo(sidSpellSpawn);
            end;
        end;
        return listSnapshot;
      end;

    -- 比较战场快照
      function TTHCS_GLOBAL.diffSnapshot(listSnapshotInit, listSnapshotBefore, listSnapshotLast)
        local listSnapshotDiff = {};
        listSnapshotDiff[TTH_ENUM.CombatHero] = {};
        listSnapshotDiff[TTH_ENUM.CombatCreature] = {};
        listSnapshotDiff[TTH_ENUM.CombatWarMachine] = {};
        listSnapshotDiff[TTH_ENUM.CombatBuilding] = {};
        listSnapshotDiff[TTH_ENUM.CombatSpellSpawn] = {};
        for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
          -- Hero
            local sidHero = GetHero(iSide);
            if sidHero ~= nil then
              listSnapshotDiff[TTH_ENUM.CombatHero][iSide] = {};
              local itemHeroBefore = listSnapshotBefore[TTH_ENUM.CombatHero][iSide];
              local itemHeroLast = listSnapshotLast[TTH_ENUM.CombatHero][iSide];
              if itemHeroLast["CurrentMana"] - itemHeroBefore["CurrentMana"] == 0 then
                listSnapshotDiff[TTH_ENUM.CombatHero][iSide][TCS_ENUM.Snapshot.Mana] = TCS_ENUM.Snapshot.Hero.Mana.Unchanged;
              elseif itemHeroLast["CurrentMana"] - itemHeroBefore["CurrentMana"] > 0 then
                listSnapshotDiff[TTH_ENUM.CombatHero][iSide][TCS_ENUM.Snapshot.Mana] = TCS_ENUM.Snapshot.Hero.Mana.Increase;
              else
                listSnapshotDiff[TTH_ENUM.CombatHero][iSide][TCS_ENUM.Snapshot.Mana] = TCS_ENUM.Snapshot.Hero.Mana.Decrease;
              end;
            end;
          -- Creature
            listSnapshotDiff[TTH_ENUM.CombatCreature][iSide] = {};
            local listCreatureInit = listSnapshotInit[TTH_ENUM.CombatCreature][iSide];
            local listCreatureBefore = listSnapshotBefore[TTH_ENUM.CombatCreature][iSide];
            local listCreatureLast = listSnapshotLast[TTH_ENUM.CombatCreature][iSide];
            for sidCreature, itemCreatureLast in listCreatureLast do
              listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature] = {};
              local itemCreatureBefore = listCreatureBefore[sidCreature];
              local itemCreatureInit = listCreatureInit[sidCreature];
              listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Creature.Status.Unchanged;
              if itemCreatureLast ~= nil and itemCreatureLast["UnitNumber"] > 0
                and itemCreatureBefore ~= nil and itemCreatureBefore["UnitNumber"] == 0 then
                listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Creature.Status.Revive;
              end;
              if itemCreatureLast ~= nil and itemCreatureLast["UnitNumber"] == 0
                and itemCreatureBefore ~= nil and itemCreatureBefore["UnitNumber"] > 0 then
                listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Creature.Status.Death;
              end;
              if itemCreatureLast ~= nil and itemCreatureLast["UnitNumber"] > 0
                and itemCreatureInit == nil and itemCreatureBefore == nil then
                listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Creature.Status.Summon;
              end;
            end;
            -- for sidCreature, itemCreatureBefore in listCreatureBefore do
            --   local itemCreatureLast = listCreatureLast[sidCreature];
            --   if itemCreatureLast == nil
            --     and itemCreatureBefore ~= nil and itemCreatureBefore["UnitNumber"] == 0 then
            --     listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature] = {};
            --     listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Creature.Status.Consume;
            --   end;
            -- end;
            for sidCreature, itemCreature in listSnapshotDiff[TTH_ENUM.CombatCreature][iSide] do
              if itemCreature[TCS_ENUM.Snapshot.Status] == TCS_ENUM.Snapshot.Creature.Status.Unchanged then
                local itemCreatureBefore = listCreatureBefore[sidCreature];
                local itemCreatureLast = listCreatureLast[sidCreature];
                if itemCreatureBefore ~= nil and itemCreatureLast ~= nil then
                  if itemCreatureLast["CurrentMana"] - itemCreatureBefore["CurrentMana"] == 0 then
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Mana] = TCS_ENUM.Snapshot.Creature.Mana.Unchanged;
                  elseif itemCreatureLast["CurrentMana"] - itemCreatureBefore["CurrentMana"] > 0 then
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Mana] = TCS_ENUM.Snapshot.Creature.Mana.Increase;
                  else
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Mana] = TCS_ENUM.Snapshot.Creature.Mana.Decrease;
                  end;
                  if itemCreatureLast["PosX"] == itemCreatureBefore["PosX"] and itemCreatureLast["PosY"] == itemCreatureBefore["PosY"] then
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Position] = TCS_ENUM.Snapshot.Creature.Position.Unchanged;
                  else
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Position] = TCS_ENUM.Snapshot.Creature.Position.Move;
                  end;
                  if itemCreatureLast["UnitNumber"] - itemCreatureBefore["UnitNumber"] == 0 then
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Number] = TCS_ENUM.Snapshot.Creature.Number.Unchanged;
                  elseif itemCreatureLast["UnitNumber"] - itemCreatureBefore["UnitNumber"] > 0 then
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Number] = TCS_ENUM.Snapshot.Creature.Number.Increase;
                  else
                    listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.Number] = TCS_ENUM.Snapshot.Creature.Number.Decrease;
                  end;
                  if itemCreatureLast["RageLevel"] ~= nil then
                    if itemCreatureLast["RageLevel"] - itemCreatureBefore["RageLevel"] == 0 then
                      listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.RageLevel] = TCS_ENUM.Snapshot.Creature.RageLevel.Unchanged;
                    elseif itemCreatureLast["RageLevel"] - itemCreatureBefore["RageLevel"] > 0 then
                      listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.RageLevel] = TCS_ENUM.Snapshot.Creature.RageLevel.Increase;
                    else
                      listSnapshotDiff[TTH_ENUM.CombatCreature][iSide][sidCreature][TCS_ENUM.Snapshot.RageLevel] = TCS_ENUM.Snapshot.Creature.RageLevel.Decrease;
                    end;
                  end;
                end;
              end;
            end;
          -- WarMachine
            listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide] = {};
            local listWarMachineBefore = listSnapshotBefore[TTH_ENUM.CombatWarMachine][iSide];
            local listWarMachineLast = listSnapshotLast[TTH_ENUM.CombatWarMachine][iSide];
            for sidWarMachine, itemWarMachineLast in listWarMachineLast do
              listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide][sidWarMachine] = {};
              local itemWarMachineBefore = listWarMachineBefore[sidWarMachine];
              if itemWarMachineBefore == nil then
                listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide][sidWarMachine][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.WarMachine.Status.Revive;
              else
                listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide][sidWarMachine][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.WarMachine.Status.Unchanged;
              end;
            end;
            for sidWarMachine, itemWarMachineBefore in listWarMachineBefore do
              listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide][sidWarMachine] = {};
              local itemWarMachineLast = listWarMachineLast[sidWarMachine];
              if itemWarMachineLast == nil then
                listSnapshotDiff[TTH_ENUM.CombatWarMachine][iSide][sidWarMachine][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.WarMachine.Status.Death;
              end;
            end;
          -- Building
            listSnapshotDiff[TTH_ENUM.CombatBuilding][iSide] = {};
            local listBuildingBefore = listSnapshotBefore[TTH_ENUM.CombatBuilding][iSide];
            local listBuildingLast = listSnapshotLast[TTH_ENUM.CombatBuilding][iSide];
            for sidBuilding, itemBuildingBefore in listBuildingBefore do
              listSnapshotDiff[TTH_ENUM.CombatBuilding][iSide][sidBuilding] = {};
              local itemBuildingLast = listBuildingLast[sidBuilding];
              if itemBuildingLast == nil then
                listSnapshotDiff[TTH_ENUM.CombatBuilding][iSide][sidBuilding][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Building.Status.Death;
              else
                listSnapshotDiff[TTH_ENUM.CombatBuilding][iSide][sidBuilding][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.Building.Status.Unchanged;
              end;
            end;
          -- SpellSpawn
            listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide] = {};
            local listSpellSpawnBefore = listSnapshotBefore[TTH_ENUM.CombatSpellSpawn][iSide];
            local listSpellSpawnLast = listSnapshotLast[TTH_ENUM.CombatSpellSpawn][iSide];
            for sidSpellSpawn, itemSpellSpawnLast in listSpellSpawnLast do
              listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide][sidSpellSpawn] = {};
              local itemSpellSpawnBefore = listSpellSpawnBefore[sidSpellSpawn];
              if itemSpellSpawnBefore == nil then
                listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide][sidSpellSpawn][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.SpellSpawn.Status.Summon;
              else
                listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide][sidSpellSpawn][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.SpellSpawn.Status.Unchanged;
              end;
            end;
            for sidSpellSpawn, itemSpellSpawnBefore in listSpellSpawnBefore do
              listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide][sidSpellSpawn] = {};
              local itemSpellSpawnLast = listSpellSpawnLast[sidSpellSpawn];
              if itemSpellSpawnLast == nil then
                listSnapshotDiff[TTH_ENUM.CombatSpellSpawn][iSide][sidSpellSpawn][TCS_ENUM.Snapshot.Status] = TCS_ENUM.Snapshot.SpellSpawn.Status.Death;
              end;
            end;
        end;
        return listSnapshotDiff;
      end;

    -- 获取对方的攻守方
      function TTHCS_GLOBAL.getOppositeSide(iSide)
        return 1 - iSide;
      end;

    -- 校验开场生效的英雄天赋数量 沙漏大师/粉碎者
      function TTHCS_GLOBAL.countSpecialHero()
        local iCountSpecialHero = 0;
        for iSide = TCS_ENUM.Side.Attacker, TCS_ENUM.Side.Defender do
          local sidHero = GetHero(iSide);
          if sidHero ~= nil then
            local strHero = GetHeroName(sidHero);
            if contains(TTHCS_TABLE.CombatStartSpecialHero, GetHeroName(sidHero)) ~= nil then
              iCountSpecialHero = iCountSpecialHero + 1;
            end;
          end;
        end;
        return iCountSpecialHero;
      end;

    -- 获取召唤物类型
      function TTHCS_GLOBAL.GetSpellSpawnType(sidUnit)
        local enumUnitType = TTH_ENUM.CombatSpellSpawnBladeBarrier;
        if string.match(sidUnit, "SUMMON_HIVE") ~= nil then
          enumUnitType = TTH_ENUM.CombatSpellSpawnSummonHive;
        elseif string.match(sidUnit, "ARCANE_CRYSTAL") ~= nil then
          enumUnitType = TTH_ENUM.CombatSpellSpawnArcaneCrystal;
        else
          enumUnitType = TTH_ENUM.CombatSpellSpawnBladeBarrier;
        end;
        return enumUnitType;
      end;

    -- 获取战场大小
      function TTHCS_GLOBAL.getBattleFieldSize()
        local enumBattleEffectField = TTHCS_ENUM.BattleEffectFieldSmall;
        local iPosX, iPosY = GetUnitPosition(GetAttackerHero());
        if iPosY == TTHCS_TABLE.BattleEffectField[TTHCS_ENUM.BattleEffectFieldBig]["PosY"]["Max"] then
          enumBattleEffectField = TTHCS_ENUM.BattleEffectFieldBig;
        end;
        return enumBattleEffectField;
      end;

    -- 生成战场坐标
      function TTHCS_GLOBAL.genePosition()
        local enumBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
        local iPosMinX = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosX"]["Min"];
        local iPosMaxX = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosX"]["Max"];
        local iPosMinY = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosY"]["Min"];
        local iPosMaxY = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosY"]["Max"];
        local listPosition = {};
        for x = iPosMinX, iPosMaxX do
          listPosition[x] = {};
          for y = iPosMinY, iPosMaxY do
            listPosition[x][y] = TTHCS_ENUM.PositionStatus.unsign;
          end;
        end;
        return listPosition;
      end;

    -- 打印坐标状态图
      function TTHCS_GLOBAL.printPosition(listPosition)
        print(
          listPosition[2][10]
          , listPosition[3][10]
          , listPosition[4][10]
          , listPosition[5][10]
          , listPosition[6][10]
          , listPosition[7][10]
          , listPosition[8][10]
          , listPosition[9][10]
          , listPosition[10][10]
          , listPosition[11][10]
          , listPosition[12][10]
          , listPosition[13][10]
        );
        print(
          listPosition[2][9]
          , listPosition[3][9]
          , listPosition[4][9]
          , listPosition[5][9]
          , listPosition[6][9]
          , listPosition[7][9]
          , listPosition[8][9]
          , listPosition[9][9]
          , listPosition[10][9]
          , listPosition[11][9]
          , listPosition[12][9]
          , listPosition[13][9]
        );
        print(
          listPosition[2][8]
          , listPosition[3][8]
          , listPosition[4][8]
          , listPosition[5][8]
          , listPosition[6][8]
          , listPosition[7][8]
          , listPosition[8][8]
          , listPosition[9][8]
          , listPosition[10][8]
          , listPosition[11][8]
          , listPosition[12][8]
          , listPosition[13][8]
        );
        print(
          listPosition[2][7]
          , listPosition[3][7]
          , listPosition[4][7]
          , listPosition[5][7]
          , listPosition[6][7]
          , listPosition[7][7]
          , listPosition[8][7]
          , listPosition[9][7]
          , listPosition[10][7]
          , listPosition[11][7]
          , listPosition[12][7]
          , listPosition[13][7]
        );
        print(
          listPosition[2][6]
          , listPosition[3][6]
          , listPosition[4][6]
          , listPosition[5][6]
          , listPosition[6][6]
          , listPosition[7][6]
          , listPosition[8][6]
          , listPosition[9][6]
          , listPosition[10][6]
          , listPosition[11][6]
          , listPosition[12][6]
          , listPosition[13][6]
        );
        print(
          listPosition[2][5]
          , listPosition[3][5]
          , listPosition[4][5]
          , listPosition[5][5]
          , listPosition[6][5]
          , listPosition[7][5]
          , listPosition[8][5]
          , listPosition[9][5]
          , listPosition[10][5]
          , listPosition[11][5]
          , listPosition[12][5]
          , listPosition[13][5]
        );
        print(
          listPosition[2][4]
          , listPosition[3][4]
          , listPosition[4][4]
          , listPosition[5][4]
          , listPosition[6][4]
          , listPosition[7][4]
          , listPosition[8][4]
          , listPosition[9][4]
          , listPosition[10][4]
          , listPosition[11][4]
          , listPosition[12][4]
          , listPosition[13][4]
        );
        print(
          listPosition[2][3]
          , listPosition[3][3]
          , listPosition[4][3]
          , listPosition[5][3]
          , listPosition[6][3]
          , listPosition[7][3]
          , listPosition[8][3]
          , listPosition[9][3]
          , listPosition[10][3]
          , listPosition[11][3]
          , listPosition[12][3]
          , listPosition[13][3]
        );
        print(
          listPosition[2][2]
          , listPosition[3][2]
          , listPosition[4][2]
          , listPosition[5][2]
          , listPosition[6][2]
          , listPosition[7][2]
          , listPosition[8][2]
          , listPosition[9][2]
          , listPosition[10][2]
          , listPosition[11][2]
          , listPosition[12][2]
          , listPosition[13][2]
        );
        print(
          listPosition[2][1]
          , listPosition[3][1]
          , listPosition[4][1]
          , listPosition[5][1]
          , listPosition[6][1]
          , listPosition[7][1]
          , listPosition[8][1]
          , listPosition[9][1]
          , listPosition[10][1]
          , listPosition[11][1]
          , listPosition[12][1]
          , listPosition[13][1]
        );
      end;

    -- 获取战场可远程坐标
      function TTHCS_GLOBAL.getPosition4Shoot(iSide)
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        local listPosition = TTHCS_GLOBAL.genePosition();
        local iAreaSize = 1;
        local arrCreature = GetCreatures(iOppositeSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          local iUnitCombatSize = TTH_TABLE.Creature[itemCreature["UnitType"]]["CombatSize"];
          local listPosition4Effect = TTHCS_COMMON.calcEffectArea(iUnitCombatSize + 1 + iAreaSize, itemCreature["PosX"], itemCreature["PosY"], itemCreature["UnitCategory"]);
          for j, itemPosition4Effect in listPosition4Effect do
            local x = itemPosition4Effect["PosX"];
            local y = itemPosition4Effect["PosY"];
            if listPosition[x] ~= nil and listPosition[x][y] == TTHCS_ENUM.PositionStatus.unsign then
              listPosition[x][y] = TTHCS_ENUM.PositionStatus.capture;
            end;
          end;
        end;
        local arrSpellSpawn4Side = GetSpellSpawns(iSide);
        for i, sidSpellSpawn in arrSpellSpawn4Side do
          local itemSpellSpawn = TTHCS_GLOBAL.geneUnitInfo(sidSpellSpawn);
          local iUnitCombatSize = 1;
          local listPosition4Effect = TTHCS_COMMON.calcEffectArea(iUnitCombatSize + 1 + iAreaSize, itemSpellSpawn["PosX"], itemSpellSpawn["PosY"], itemSpellSpawn["UnitCategory"]);
          for j, itemPosition4Effect in listPosition4Effect do
            local x = itemPosition4Effect["PosX"];
            local y = itemPosition4Effect["PosY"];
            if listPosition[x] ~= nil and listPosition[x][y] == TTHCS_ENUM.PositionStatus.unsign then
              listPosition[x][y] = TTHCS_ENUM.PositionStatus.capture;
            end;
          end;
        end;
        local arrSpellSpawn4Opposite = GetSpellSpawns(iOppositeSide);
        for i, sidSpellSpawn in arrSpellSpawn4Opposite do
          local itemSpellSpawn = TTHCS_GLOBAL.geneUnitInfo(sidSpellSpawn);
          local iUnitCombatSize = 1;
          local listPosition4Effect = TTHCS_COMMON.calcEffectArea(iUnitCombatSize + 1 + iAreaSize, itemSpellSpawn["PosX"], itemSpellSpawn["PosY"], itemSpellSpawn["UnitCategory"]);
          for j, itemPosition4Effect in listPosition4Effect do
            local x = itemPosition4Effect["PosX"];
            local y = itemPosition4Effect["PosY"];
            if listPosition[x] ~= nil and listPosition[x][y] == TTHCS_ENUM.PositionStatus.unsign then
              listPosition[x][y] = TTHCS_ENUM.PositionStatus.capture;
            end;
          end;
        end;
        return listPosition;
      end;

    -- 获取战场边缘临时施法生物的坐标
      function TTHCS_GLOBAL.getTempPosition4Caster(iSide)
        local enumBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
        local iPositionX = 0;
        local iPositionY = 1;
        if iSide == TCS_ENUM.Side.Attacker then
          iPositionX = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosX"]["Min"];
        else
          iPositionX = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosX"]["Max"];
        end;
        return iPositionX, iPositionY;
      end;

    -- 获取天神的坐标
      function TTHCS_GLOBAL.getGodPosition(iSide)
        local enumBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
        local iPositionX = TTHCS_TABLE.BattleGodPosition[enumBattleFieldSize][iSide]["PosX"];
        local iPositionY = TTHCS_TABLE.BattleGodPosition[enumBattleFieldSize][iSide]["PosY"];
        return iPositionX, iPositionY;
      end;

    -- 获取元素腕带的坐标
      function TTHCS_GLOBAL.getSummonPosition(iSide)
        local enumBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
        local iPositionX = TTHCS_TABLE.BattleSummonPosition[enumBattleFieldSize][iSide]["PosX"];
        local iPositionY = TTHCS_TABLE.BattleSummonPosition[enumBattleFieldSize][iSide]["PosY"];
        return iPositionX, iPositionY;
      end;

    -- 计算给定坐标的影响坐标区域
      -- 参数: iAreaSize, iPosX, iPosY
      -- 返回值: arrPosition
      function TTHCS_COMMON.calcEffectArea(iAreaSize, iPosX, iPosY, enumEffectType)
        local iMagicXLeft = TTHCS_COMMON.floor((iAreaSize - 1) / 2);
        local iMagicXRight = TTHCS_COMMON.ceil((iAreaSize - 1) / 2);
        local arrPosition = {};
        if enumEffectType == TTH_ENUM.CombatMagic then
          for x = iPosX - iMagicXLeft, iPosX + iMagicXRight do
            for y = iPosY - iMagicXLeft, iPosY + iMagicXRight do
              arrPosition[length(arrPosition)] = {
                ["PosX"] = x
                , ["PosY"] = y
              };
            end;
          end;
        else
          for x = iPosX - iMagicXRight, iPosX + iMagicXLeft do
            for y = iPosY - iMagicXRight, iPosY + iMagicXLeft do
              arrPosition[length(arrPosition)] = {
                ["PosX"] = x
                , ["PosY"] = y
              };
            end;
          end;
        end;
        return arrPosition;
      end;

    -- 计算单位是否受坐标影响
      -- 参数: strUnitName, iPosX, iPosY
      -- 返回值: enumEffect
      function TTHCS_COMMON.isEffectUnit(strUnitName, iPosX, iPosY)
        local objUnit = TTHCS_GLOBAL.geneUnitInfo(strUnitName);
        local enumEffect = TCS_ENUM.Switch.No;
        local iUnitCombatSize = 1;
        if objUnit["UnitCategory"] == TTH_ENUM.CombatCreature then
          iUnitCombatSize = TTH_TABLE.Creature[objUnit["UnitType"]]["CombatSize"];
        elseif objUnit["UnitCategory"] == TTH_ENUM.CombatWarMachine then
          iUnitCombatSize = TTH_TABLE.WarMachine[objUnit["UnitType"]]["CombatSize"];
        end;
        local iMagicXLeft = TTHCS_COMMON.ceil((iUnitCombatSize - 1) / 2);
        local iMagicXRight = TTHCS_COMMON.floor((iUnitCombatSize - 1) / 2);
        for x = objUnit["PosX"] - iMagicXLeft, objUnit["PosX"] + iMagicXRight do
          for y = objUnit["PosY"] - iMagicXLeft, objUnit["PosY"] + iMagicXRight do
            if x == iPosX and y == iPosY then
              enumEffect = TCS_ENUM.Switch.Yes;
              break;
            end;
          end;
        end;
        return enumEffect;
      end;

    -- 计算单位是否受坐标影响
      -- 参数: strUnitName, iPosX, iPosY
      -- 返回值: enumEffect
      function TTHCS_COMMON.isEffectTarget(iCreatureId, iTargetPosX, iTargetPosY, iPosX, iPosY)
        local enumEffect = TCS_ENUM.Switch.No;
        local iUnitCombatSize = TTH_TABLE.Creature[iCreatureId]["CombatSize"];
        local iMagicXLeft = TTHCS_COMMON.ceil((iUnitCombatSize - 1) / 2);
        local iMagicXRight = TTHCS_COMMON.floor((iUnitCombatSize - 1) / 2);
        for x = iTargetPosX - iMagicXLeft, iTargetPosX + iMagicXRight do
          for y = iTargetPosY - iMagicXLeft, iTargetPosY + iMagicXRight do
            if x == iPosX and y == iPosY then
              enumEffect = TCS_ENUM.Switch.Yes;
              break;
            end;
          end;
        end;
        return enumEffect;
      end;

    -- 获取生物密集区
      -- 参数: arrUnit4Check, iAreaSize
      -- 返回值: arrPosition, objMaxPosition
      function TTHCS_GLOBAL.getDenseArea(arrUnit4Check, iAreaSize)
        local enumBattleFieldSize = TTHCS_GLOBAL.getBattleFieldSize();
        local arrPosition = {};
        for x = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosX"]["Min"], TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosX"]["Max"] do
          for y = TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosY"]["Min"], TTHCS_TABLE.BattleEffectField[enumBattleFieldSize]["PosY"]["Max"] do
            local arrEffectPosition = TTHCS_COMMON.calcEffectArea(iAreaSize, x, y, TTH_ENUM.CombatMagic);
            for k, itemEffectPosition in arrEffectPosition do
              local iEffectPosX = itemEffectPosition["PosX"];
              local iEffectPosY = itemEffectPosition["PosY"];
              for i, strUnitName in arrUnit4Check do
                local enumEffect = TTHCS_COMMON.isEffectUnit(strUnitName, iEffectPosX, iEffectPosY);
                if enumEffect == TCS_ENUM.Switch.Yes then
                  local iUniquePos = x * 100 + y;
                  if arrPosition[iUniquePos] == nil then
                    arrPosition[iUniquePos] = {
                      ["PosX"] = x
                      , ["PosY"] = y
                      , ["Unit"] = {
                        [0] = strUnitName
                      }
                      , ["Count"] = 1
                    };
                  else
                    if contains(arrPosition[iUniquePos]["Unit"], strUnitName) == nil then
                      arrPosition[iUniquePos]["Unit"] = push(arrPosition[iUniquePos]["Unit"], strUnitName);
                      arrPosition[iUniquePos]["Count"] = arrPosition[iUniquePos]["Count"] + 1;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        local objMaxPosition = TTHCS_COMMON.max8key(arrPosition, "Count");
        return arrPosition, objMaxPosition;
      end;

    -- 获取范围内的单位列表
      -- 参数: strUnitName, iAreaSize, iSide
      -- 返回值: arrUnitName
      function TTHCS_GLOBAL.listUnitInArea(itemUnit, iAreaSize, iSide, bConcatWarMachine)
        local arrUnitName = {};
        local iUnitCombatSize = 1;
        if itemUnit["UnitCategory"] == TTH_ENUM.CombatCreature then
          iUnitCombatSize = TTH_TABLE.Creature[itemUnit["UnitType"]]["CombatSize"];
        elseif itemUnit["UnitCategory"] == TTH_ENUM.CombatWarMachine then
          iUnitCombatSize = TTH_TABLE.WarMachine[itemUnit["UnitType"]]["CombatSize"];
        end;
        local arrCreature4Check = GetCreatures(iSide);
        local arrUnit4Check = arrCreature4Check;
        if bConcatWarMachine == TCS_ENUM.Switch.Yes then
          local arrWarMachine4Check = GetWarMachines(iSide);
          arrUnit4Check = TTHCS_COMMON.concat(arrCreature4Check, arrWarMachine4Check);
        end;
        local arrEffectPosition = TTHCS_COMMON.calcEffectArea(iUnitCombatSize + 1 + iAreaSize, itemUnit["PosX"], itemUnit["PosY"], itemUnit["UnitCategory"]);
        for k, itemEffectPosition in arrEffectPosition do
          local iEffectPosX = itemEffectPosition["PosX"];
          local iEffectPosY = itemEffectPosition["PosY"];
          for i, sidUnitName in arrUnit4Check do
            local enumEffect = TTHCS_COMMON.isEffectUnit(sidUnitName, iEffectPosX, iEffectPosY);
            if enumEffect == TCS_ENUM.Switch.Yes then
              if contains(arrUnitName, sidUnitName) == nil then
                push(arrUnitName, sidUnitName);
              end;
            end;
          end;
        end;
        return arrUnitName;
      end;

    -- 计算单位是否在另一个单位背后
      -- 参数: iSide, sidCreatureCaster, sidCreatureTarget
      -- 返回值: enumEffect
      function TTHCS_GLOBAL.isBehindCreature(iSide, sidCreatureCaster, sidCreatureTarget)
        local enumEffect = TCS_ENUM.Switch.No;
        local iOppositeSide = TTHCS_GLOBAL.getOppositeSide(iSide);
        if TTHCS_GLOBAL.checkCombatCreature(sidCreatureCaster) and TTHCS_GLOBAL.checkCombatCreature(sidCreatureTarget) then
          local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCaster);
          local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
          local arrCreatureNearBy = TTHCS_GLOBAL.listUnitInArea(itemCreatureCaster, 1, iOppositeSide, TCS_ENUM.Switch.No);
          if contains(arrCreatureNearBy, itemCreatureTarget["UnitName"]) ~= nil then
            if iSide == TCS_ENUM.Side.Attacker then
              if itemCreatureCaster["PosX"] > itemCreatureTarget["PosX"] then
                enumEffect = TCS_ENUM.Switch.Yes;
              end;
            else
              if TTH_TABLE.Creature[itemCreatureCaster["UnitType"]]["CombatSize"] == 1 then
                if itemCreatureCaster["PosX"] < itemCreatureTarget["PosX"] then
                  enumEffect = TCS_ENUM.Switch.Yes;
                end;
              else
                if itemCreatureCaster["PosX"] <= itemCreatureTarget["PosX"] then
                  enumEffect = TCS_ENUM.Switch.Yes;
                end;
              end;
            end;
            return enumEffect;
          end;
        end;
      end;

    -- 获取两个生物是否相邻
      -- 参数: sidCreatureCaster, sidCreatureTarget
      -- 返回值: enumEffect
      function TTHCS_GLOBAL.isNearBy4Creature(sidCreatureCaster, sidCreatureTarget)
        local enumEffect = TCS_ENUM.Switch.No;
        local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCaster);
        local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
        if itemCreatureCaster == nil
          or itemCreatureTarget == nil then
          return enumEffect;
        end;
        local iCombatSizeCaster = TTH_TABLE.Creature[itemCreatureCaster["UnitType"]]["CombatSize"];
        local iDistance = 1;
        local arrEffectPosition = TTHCS_COMMON.calcEffectArea(iCombatSizeCaster + iDistance * 2, itemCreatureCaster["PosX"], itemCreatureCaster["PosY"], itemCreatureCaster["UnitCategory"]);
        for i, itemEffectPosition in arrEffectPosition do
          local iEffectPosX = itemEffectPosition["PosX"];
          local iEffectPosY = itemEffectPosition["PosY"];
          local enumEffect = TTHCS_COMMON.isEffectUnit(sidCreatureTarget, iEffectPosX, iEffectPosY);
          if enumEffect == TCS_ENUM.Switch.Yes then
            return enumEffect;
          end;
        end;
        return enumEffect;
      end;

    -- 获取两个水晶是否相邻
      -- 参数: sidArcaneCrystalCaster, sidArcaneCrystalTarget
      -- 返回值: enumEffect
      function TTHCS_GLOBAL.isNearBy4ArcaneCrystal(sidArcaneCrystalCaster, sidArcaneCrystalTarget)
        local enumEffect = TCS_ENUM.Switch.No;
        local itemArcaneCrystalCaster = TTHCS_GLOBAL.geneUnitInfo(sidArcaneCrystalCaster);
        local itemArcaneCrystalTarget = TTHCS_GLOBAL.geneUnitInfo(sidArcaneCrystalTarget);
        if itemArcaneCrystalCaster == nil
          or itemArcaneCrystalTarget == nil then
          return enumEffect;
        end;
        local iCombatSizeCaster = 1;
        local iDistance = 1;
        local arrEffectPosition = TTHCS_COMMON.calcEffectArea(iCombatSizeCaster + iDistance * 2, itemArcaneCrystalCaster["PosX"], itemArcaneCrystalCaster["PosY"], itemArcaneCrystalCaster["UnitCategory"]);
        for i, itemEffectPosition in arrEffectPosition do
          local iEffectPosX = itemEffectPosition["PosX"];
          local iEffectPosY = itemEffectPosition["PosY"];
          local enumEffect = TTHCS_COMMON.isEffectUnit(sidArcaneCrystalTarget, iEffectPosX, iEffectPosY);
          if enumEffect == TCS_ENUM.Switch.Yes then
            return enumEffect;
          end;
        end;
        return enumEffect;
      end;

    -- 获取两个生物距离的平方
      -- 参数: sidCreatureCaster, sidCreatureTarget
      -- 返回值: iDistance
      function TTHCS_GLOBAL.getDistance4Creature(sidCreatureCaster, sidCreatureTarget)
        local iDistance = -1;
        local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCaster);
        local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
        if itemCreatureCaster == nil
          or itemCreatureTarget == nil then
          return iDistance;
        end;
        local infoCreatureCaster = TTH_TABLE.Creature[itemCreatureCaster["UnitType"]];
        local infoCreatureTarget = TTH_TABLE.Creature[itemCreatureTarget["UnitType"]];
        local iDiffX = TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, "PosX");
        local iDiffY = TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, "PosY");
        local iPosXCaster = itemCreatureCaster["PosX"];
        local iPosYCaster = itemCreatureCaster["PosY"];
        if infoCreatureCaster["CombatSize"] == 2 then
          if iDiffX == 1 then
            iPosXCaster = iPosXCaster - 1;
          end;
          if iDiffY == 1 then
            iPosYCaster = iPosYCaster - 1;
          end;
        end;
        local iPosXTarget = itemCreatureTarget["PosX"];
        local iPosYTarget = itemCreatureTarget["PosY"];
        if infoCreatureTarget["CombatSize"] == 2 then
          if iDiffX == -1 then
            iPosXTarget = iPosXTarget - 1;
          end;
          if iDiffY == -1 then
            iPosYTarget = iPosYTarget - 1;
          end;
        end;
        iDistance = (iPosXCaster - iPosXTarget) * (iPosXCaster - iPosXTarget) + (iPosYCaster - iPosYTarget) * (iPosYCaster - iPosYTarget);
        return iDistance;
      end;

    -- 计算生物某轴的位置关系
      -- 参数: sidCreatureCaster, sidCreatureTarget, strAxis
      -- 返回值: bMatch -1: Caster>Target 0: Caster==Target 1: Caster<Target
      function TTHCS_GLOBAL.matchCreaturePosition(sidCreatureCaster, sidCreatureTarget, strAxis)
        local bMatch = nil;
        local itemCreatureCaster = TTHCS_GLOBAL.geneUnitInfo(sidCreatureCaster);
        local iCombatSizeCaster = TTH_TABLE.Creature[itemCreatureCaster["UnitType"]]["CombatSize"];
        local itemCreatureTarget = TTHCS_GLOBAL.geneUnitInfo(sidCreatureTarget);
        local iCombatSizeTarget = TTH_TABLE.Creature[itemCreatureCaster["UnitType"]]["CombatSize"];
        if iCombatSizeCaster == iCombatSizeTarget then
          if itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] >= 1 then
            bMatch = -1;
          elseif itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] == 0 then
            bMatch = 0;
          elseif itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] <= -1 then
            bMatch = 1;
          end;
        elseif iCombatSizeCaster > iCombatSizeTarget then
          if itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] >= 2 then
            bMatch = -1;
          elseif itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] == 0 or itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] == 1 then
            bMatch = 0;
          elseif itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] <= -1 then
            bMatch = 1;
          end;
        elseif iCombatSizeCaster < iCombatSizeTarget then
          if itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] >= 1 then
            bMatch = -1;
          elseif itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] == 0 or itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] == -1 then
            bMatch = 0;
          elseif itemCreatureCaster[strAxis] - itemCreatureTarget[strAxis] <= -2 then
            bMatch = 1;
          end;
        end;
        return bMatch;
      end;

    -- 获取生物列表，按距离某坐标最近距离排序
      -- 参数: iPositionX, iPositionY, iSide
      -- 返回值: arrUnitName
      function TTHCS_GLOBAL.sortCreature8Distance(iPositionX, iPositionY, iSide)
        local arrCreature = GetCreatures(iSide);
        local listCreature = {};
        for i, strCreatureName in arrCreature do
          local objCreature = TTHCS_GLOBAL.geneUnitInfo(strCreatureName);
          local iDistanceX = iPositionX - objCreature["PosX"];
          local iDistanceY = iPositionY - objCreature["PosY"];
          objCreature["Distance"] = iDistanceX * iDistanceX +  iDistanceY * iDistanceY;
          listCreature = push(listCreature, objCreature);
        end;
        local listCreatureSorted8Distance = TTHCS_COMMON.asc8key(listCreature, "Distance");
        return listCreatureSorted8Distance;
      end;

    -- 回复英雄魔法值
      function TTHCS_GLOBAL.recoveryHeroMana(sidUnit, iManaPoint)
        local itemUnit = TTHCS_GLOBAL.geneUnitInfo(sidUnit);
        local iRecoveryMana = iManaPoint;
        if itemUnit["UnitCategory"] == TTH_ENUM.CombatHero then
          local strHero = GetHeroName(sidUnit);
          if TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_MYSTICISM] == 1
            or TCS_VARI.Info.HeroSkill[strHero][HERO_SKILL_BARBARIAN_MYSTICISM] == 1 then
            iRecoveryMana = iRecoveryMana * 2;
          end;
        end;
        local iResultMana = GetUnitManaPoints(sidUnit) + iRecoveryMana;
        SetUnitManaPoints(sidUnit, iResultMana);
        print(sidUnit.." recovery "..iRecoveryMana.." mana");
        repeat sleep(1); until GetUnitManaPoints(sidUnit) == iResultMana;
      end;

    -- 设置英雄魔法值
      function TTHCS_GLOBAL.setHeroMana(sidUnit, iManaPoint)
        SetUnitManaPoints(sidUnit, iManaPoint);
        print(sidUnit.." set "..iManaPoint.." mana");
        repeat sleep(1); until GetUnitManaPoints(sidUnit) == iManaPoint;
      end;

    -- 返回两个单位的距离
      -- 参数: itemUnit1, itemUnit2
      -- 返回值: 对角线长度
      function TTHCS_GLOBAL.distance(itemUnit1, itemUnit2)
        local iDiffX = itemUnit1["PosX"] - itemUnit2["PosX"];
        local iDiffY = itemUnit1["PosY"] - itemUnit2["PosY"];
        return sqrt(iDiffX * iDiffX + iDiffY * iDiffY)
      end;

    -- 获取主力
      -- 参数: iSide, iCreatureId
      -- 返回值: 该类生物数量从多到少排序
      function TTHCS_GLOBAL.sort4CreatureType8Number2desc(iSide, iCreatureId)
        local infoCreature = TTH_TABLE.Creature[iCreatureId];
        local listCreature = {};
        local arrCreature = GetCreatures(iSide);
        for i, sidCreature in arrCreature do
          local itemCreature = TTHCS_GLOBAL.geneUnitInfo(sidCreature);
          if itemCreature["UnitType"] == iCreatureId
            or itemCreature["UnitType"] == infoCreature["Upgrade"][1]
            or itemCreature["UnitType"] == infoCreature["Upgrade"][2] then
            push(listCreature, itemCreature);
          end;
        end;
        listCreature = TTHCS_COMMON.desc8key(listCreature, "UnitNumber");
        return listCreature;
      end;

    -- 校验生物是否某一类型
      -- 参数: itemCreature, iCreatureId
      -- 返回值: 是该类型返回 not nil
      function TTHCS_GLOBAL.checkCreatureType(itemCreature, iCreatureId)
        local bCheck = nil;
        local infoCreature = TTH_TABLE.Creature[iCreatureId];
        if itemCreature["UnitType"] == iCreatureId
          or itemCreature["UnitType"] == infoCreature["Upgrade"][1]
          or itemCreature["UnitType"] == infoCreature["Upgrade"][2] then
          bCheck = not nil;
        end;
        return bCheck;
      end;

    -- 获取单位占据坐标中的随机一个
      -- 参数: sidUnit
      -- 返回值: itemPosition
      function TTHCS_GLOBAL.getUnitPosition4Random(sidUnit)
        local itemPosition = {};
        local itemUnit = TTHCS_GLOBAL.geneUnitInfo(sidUnit);
        if itemUnit["UnitCategory"] == TTH_ENUM.CombatCreature then
          local iCombatSize = TTH_TABLE.Creature[itemUnit["UnitType"]]["CombatSize"];
          if iCombatSize == 1 then
            itemPosition = {
              ["PosX"] = itemUnit["PosX"]
              , ["PosY"] = itemUnit["PosY"]
            };
          else
            local arrPosition = {};
            for x = -1, 0 do
              for y = -1, 0 do
                local itemPositionTemp = {
                  ["PosX"] = itemUnit["PosX"] + x
                  , ["PosY"] = itemUnit["PosY"] + y
                };
                push(arrPosition, itemPositionTemp);
              end;
            end;
            local iRandomIndex = TTHCS_COMMON.getRandom(length(arrPosition));
            itemPosition = arrPosition[iRandomIndex];
          end;
        else
          itemPosition = {
            ["PosX"] = itemUnit["PosX"]
            , ["PosY"] = itemUnit["PosY"]
          };
        end;
        return itemPosition;
      end;

  TTHCS_PATH = {};
    TTHCS_PATH["Talent"] = {};
      -- Orrin 002 杜戈尔
        TTHCS_PATH["Talent"]["Orrin"] = {};
        TTHCS_PATH["Talent"]["Orrin"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/002-Orrin/Combat/Effect.txt";
      -- Ving 004 艾莲娜
        TTHCS_PATH["Talent"]["Ving"] = {};
        TTHCS_PATH["Talent"]["Ving"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/004-Ving/Combat/Effect.txt";
      -- Sarge 005 克劳斯
        TTHCS_PATH["Talent"]["Sarge"] = {};
        TTHCS_PATH["Talent"]["Sarge"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/005-Sarge/Combat/Effect.txt";
      -- RedHeavenHero05 009 伯权德
        TTHCS_PATH["Talent"]["RedHeavenHero05"] = {};
        TTHCS_PATH["Talent"]["RedHeavenHero05"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/009-RedHeavenHero05/Combat/Effect.txt";
      -- Nicolai 011 尼克莱
        TTHCS_PATH["Talent"]["Nicolai"] = {};
        TTHCS_PATH["Talent"]["Nicolai"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/011-Nicolai/Combat/Effect.txt";
      -- Avitus 157 阿维图斯
        TTHCS_PATH["Talent"]["Avitus"] = {};
        TTHCS_PATH["Talent"]["Avitus"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/157-Avitus/Combat/Effect.txt";
      -- Tarkus 158 塔库斯
        TTHCS_PATH["Talent"]["Tarkus"] = {};
        TTHCS_PATH["Talent"]["Tarkus"]["Effect"] = "/Text/TTH/Heroes/Specializations/Heaven/158-Tarkus/Combat/Effect.txt";
        TTHCS_PATH["Talent"]["Tarkus"]["EffectAttack"] = "/Text/TTH/Heroes/Specializations/Heaven/158-Tarkus/Combat/EffectAttack.txt";
        TTHCS_PATH["Talent"]["Tarkus"]["EffectDefend"] = "/Text/TTH/Heroes/Specializations/Heaven/158-Tarkus/Combat/EffectDefend.txt";
      -- Nadaur 024 塔兰纳
        TTHCS_PATH["Talent"]["Nadaur"] = {};
        TTHCS_PATH["Talent"]["Nadaur"]["Effect"] = "/Text/TTH/Heroes/Specializations/Preserve/024-Nadaur/Combat/Effect.txt";
      -- Arniel 028 伊沃
        TTHCS_PATH["Talent"]["Arniel"] = {};
        TTHCS_PATH["Talent"]["Arniel"]["Effect"] = "/Text/TTH/Heroes/Specializations/Preserve/028-Arniel/Combat/Effect.txt";
      -- Mephala 034 孟斐拉
        TTHCS_PATH["Talent"]["Mephala"] = {};
        TTHCS_PATH["Talent"]["Mephala"]["Effect"] = "/Text/TTH/Heroes/Specializations/Preserve/034-Mephala/Combat/Effect.txt";
      -- Gem 035 珍尼
        TTHCS_PATH["Talent"]["Gem"] = {};
        TTHCS_PATH["Talent"]["Gem"]["Effect"] = "/Text/TTH/Heroes/Specializations/Preserve/035-Gem/Combat/Effect.txt";
      -- Ildar 037 娜瑞莎
        TTHCS_PATH["Talent"]["Ildar"] = {};
        TTHCS_PATH["Talent"]["Ildar"]["Effect"] = "/Text/TTH/Heroes/Specializations/Preserve/037-Ildar/Combat/Effect.txt";
      -- Vaniel 038 蒂耶鲁
        TTHCS_PATH["Talent"]["Vaniel"] = {};
        TTHCS_PATH["Talent"]["Vaniel"]["Effect"] = "/Text/TTH/Heroes/Specializations/Preserve/038-Vaniel/Combat/Effect.txt";
      -- Minasli 042 米纳斯丽
        TTHCS_PATH["Talent"]["Minasli"] = {};
        TTHCS_PATH["Talent"]["Minasli"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/042-Minasli/Combat/Effect.txt";
      -- Isher 043 拉扎克
        TTHCS_PATH["Talent"]["Isher"] = {};
        TTHCS_PATH["Talent"]["Isher"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/043-Isher/Combat/Effect.txt";
      -- Razzak 047 纳克西斯
        TTHCS_PATH["Talent"]["Razzak"] = {};
        TTHCS_PATH["Talent"]["Razzak"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/047-Razzak/Combat/Effect.txt";
      -- Tan 052 加利布
        TTHCS_PATH["Talent"]["Tan"] = {};
        TTHCS_PATH["Talent"]["Tan"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/052-Tan/Combat/Effect.txt";
      -- Astral 055 努尔
        TTHCS_PATH["Talent"]["Astral"] = {};
        TTHCS_PATH["Talent"]["Astral"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/055-Astral/Combat/Effect.txt";
      -- Solmyr 058 索姆拉
        TTHCS_PATH["Talent"]["Solmyr"] = {};
        TTHCS_PATH["Talent"]["Solmyr"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/058-Solmyr/Combat/Effect.txt";
        TTHCS_PATH["Talent"]["Solmyr"]["EffectLightning"] = "/Text/TTH/Heroes/Specializations/Academy/058-Solmyr/Combat/EffectLightning.txt";
      -- Emilia 053 艾米莉亚
        TTHCS_PATH["Talent"]["Emilia"] = {};
        TTHCS_PATH["Talent"]["Emilia"]["EffectAtb"] = "/Text/TTH/Heroes/Specializations/Academy/053-Emilia/Combat/EffectAtb.txt";
        TTHCS_PATH["Talent"]["Emilia"]["EffectMove"] = "/Text/TTH/Heroes/Specializations/Academy/053-Emilia/Combat/EffectMove.txt";
      -- Zehir 056 泽希尔
        TTHCS_PATH["Talent"]["Zehir"] = {};
        TTHCS_PATH["Talent"]["Zehir"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/056-Zehir/Combat/Effect.txt";
      -- Faiz 057 法伊兹
        TTHCS_PATH["Talent"]["Faiz"] = {};
        TTHCS_PATH["Talent"]["Faiz"]["Effect"] = "/Text/TTH/Heroes/Specializations/Academy/057-Faiz/Combat/Effect.txt";
      -- Menel 060 基特拉
        TTHCS_PATH["Talent"]["Menel"] = {};
        TTHCS_PATH["Talent"]["Menel"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/060-Menel/Combat/Effect.txt";
      -- Ferigl 061 索戈尔
        TTHCS_PATH["Talent"]["Ferigl"] = {};
        TTHCS_PATH["Talent"]["Ferigl"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/061-Ferigl/Combat/Effect.txt";
      -- Ohtarig 064 维尚
        TTHCS_PATH["Talent"]["Ohtarig"] = {};
        TTHCS_PATH["Talent"]["Ohtarig"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/064-Ohtarig/Combat/Effect.txt";
      -- Eruina 065 埃莉娜
        TTHCS_PATH["Talent"]["Eruina"] = {};
        TTHCS_PATH["Talent"]["Eruina"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/065-Eruina/Combat/Effect.txt";
      -- Kelodin 067 莎蒂娅
        TTHCS_PATH["Talent"]["Kelodin"] = {};
        TTHCS_PATH["Talent"]["Kelodin"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/067-Kelodin/Combat/Effect.txt";
      -- Shadwyn 068 伊拉娅
        TTHCS_PATH["Talent"]["Shadwyn"] = {};
        TTHCS_PATH["Talent"]["Shadwyn"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/068-Shadwyn/Combat/Effect.txt";
      -- Thralsai 069 斯拉塞
        TTHCS_PATH["Talent"]["Thralsai"] = {};
        TTHCS_PATH["Talent"]["Thralsai"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/069-Thralsai/Combat/Effect.txt";
      -- Agbeth 070 阿格贝斯
        TTHCS_PATH["Talent"]["Agbeth"] = {};
        TTHCS_PATH["Talent"]["Agbeth"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/070-Agbeth/Combat/Effect.txt";
      -- Kastore 073 卡斯托雷
        TTHCS_PATH["Talent"]["Kastore"] = {};
        TTHCS_PATH["Talent"]["Kastore"]["EffectEncourage"] = "/Text/TTH/Heroes/Specializations/Dungeon/073-Kastore/Combat/EffectEncourage.txt";
        TTHCS_PATH["Talent"]["Kastore"]["EffectMasterOfIce"] = "/Text/TTH/Heroes/Specializations/Dungeon/073-Kastore/Combat/EffectMasterOfIce.txt";
        TTHCS_PATH["Talent"]["Kastore"]["EffectMasterOfFire"] = "/Text/TTH/Heroes/Specializations/Dungeon/073-Kastore/Combat/EffectMasterOfFire.txt";
        TTHCS_PATH["Talent"]["Kastore"]["EffectMasterOfLightnings"] = "/Text/TTH/Heroes/Specializations/Dungeon/073-Kastore/Combat/EffectMasterOfLightnings.txt";
      -- Sephinroth 076 萨费罗斯
        TTHCS_PATH["Talent"]["Sephinroth"] = {};
        TTHCS_PATH["Talent"]["Sephinroth"]["Effect"] = "/Text/TTH/Heroes/Specializations/Dungeon/076-Sephinroth/Combat/Effect.txt";
      -- Gles 079 卡斯帕
        TTHCS_PATH["Talent"]["Gles"] = {};
        TTHCS_PATH["Talent"]["Gles"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/079-Gles/Combat/Effect.txt";
      -- Straker 081 奥森
        TTHCS_PATH["Talent"]["Straker"] = {};
        TTHCS_PATH["Talent"]["Straker"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/081-Straker/Combat/Effect.txt";
      -- Tamika 082 卢克雷蒂娅
        TTHCS_PATH["Talent"]["Tamika"] = {};
        TTHCS_PATH["Talent"]["Tamika"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/082-Tamika/Combat/Effect.txt";
      -- Xerxon 083 塞尔克松
        TTHCS_PATH["Talent"]["Xerxon"] = {};
        TTHCS_PATH["Talent"]["Xerxon"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/083-Xerxon/Combat/Effect.txt";
      -- Aislinn 085 艾斯瑞
        TTHCS_PATH["Talent"]["Aislinn"] = {};
        TTHCS_PATH["Talent"]["Aislinn"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/085-Aislinn/Combat/Effect.txt";
      -- Giovanni 087 乔瓦尼
        TTHCS_PATH["Talent"]["Giovanni"] = {};
        TTHCS_PATH["Talent"]["Giovanni"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/087-Giovanni/Combat/Effect.txt";
      -- OrnellaNecro 088 欧尼拉
        TTHCS_PATH["Talent"]["OrnellaNecro"] = {};
        TTHCS_PATH["Talent"]["OrnellaNecro"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/088-OrnellaNecro/Combat/Effect.txt";
      -- Nimbus 090 尼姆巴斯
        TTHCS_PATH["Talent"]["Nimbus"] = {};
        TTHCS_PATH["Talent"]["Nimbus"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/090-Nimbus/Combat/Effect.txt";
      -- Muscip 091 纳蒂尔
        TTHCS_PATH["Talent"]["Muscip"] = {};
        TTHCS_PATH["Talent"]["Muscip"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/091-Muscip/Combat/Effect.txt";
      -- Nemor 093 迪尔德丽
        TTHCS_PATH["Talent"]["Nemor"] = {};
        TTHCS_PATH["Talent"]["Nemor"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/093-Nemor/Combat/Effect.txt";
      -- Sandro 095 山德鲁
        TTHCS_PATH["Talent"]["Sandro"] = {};
        TTHCS_PATH["Talent"]["Sandro"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/095-Sandro/Combat/Effect.txt";
      -- Thant 096 山特
        TTHCS_PATH["Talent"]["Thant"] = {};
        TTHCS_PATH["Talent"]["Thant"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/096-Thant/Combat/Effect.txt";
      -- Vidomina 097 维德尼娜
        TTHCS_PATH["Talent"]["Vidomina"] = {};
        TTHCS_PATH["Talent"]["Vidomina"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/097-Vidomina/Combat/Effect.txt";
      -- Adelaide 098 艾德里德
        TTHCS_PATH["Talent"]["Adelaide"] = {};
        TTHCS_PATH["Talent"]["Adelaide"]["Effect"] = "/Text/TTH/Heroes/Specializations/Necromancy/098-Adelaide/Combat/Effect.txt";
      -- Calh 099 艾丹
        TTHCS_PATH["Talent"]["Calh"] = {};
        TTHCS_PATH["Talent"]["Calh"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/099-Calh/Combat/Effect.txt";
      -- Calid 100 格劳尔
        TTHCS_PATH["Talent"]["Calid"] = {};
        TTHCS_PATH["Talent"]["Calid"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/100-Calid/Combat/Effect.txt";
      -- Deleb 101 迪里布
        TTHCS_PATH["Talent"]["Deleb"] = {};
        TTHCS_PATH["Talent"]["Deleb"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/101-Deleb/Combat/Effect.txt";
      -- Jazaz 102 内比罗斯
        TTHCS_PATH["Talent"]["Jazaz"] = {};
        TTHCS_PATH["Talent"]["Jazaz"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/102-Jazaz/Combat/Effect.txt";
      -- Orlando2 104 奥兰多
        TTHCS_PATH["Talent"]["Orlando2"] = {};
        TTHCS_PATH["Talent"]["Orlando2"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/104-Orlando2/Combat/Effect.txt";
      -- Efion 105 阿莱斯特
        TTHCS_PATH["Talent"]["Efion"] = {};
        TTHCS_PATH["Talent"]["Efion"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/105-Efion/Combat/Effect.txt";
      -- Grok 106 格洛克
        TTHCS_PATH["Talent"]["Grok"] = {};
        TTHCS_PATH["Talent"]["Grok"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/106-Grok/Combat/Effect.txt";
      -- Malustar 107 马鲁斯塔
        TTHCS_PATH["Talent"]["Malustar"] = {};
        TTHCS_PATH["Talent"]["Malustar"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/107-Malustar/Combat/Effect.txt";
      -- Oddrema 109 耶泽蓓丝
        TTHCS_PATH["Talent"]["Oddrema"] = {};
        TTHCS_PATH["Talent"]["Oddrema"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/109-Oddrema/Combat/Effect.txt";
      -- Zydar 112 泽达
        TTHCS_PATH["Talent"]["Zydar"] = {};
        TTHCS_PATH["Talent"]["Zydar"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/112-Zydar/Combat/Effect.txt";
      -- Ash 113 艾许
        TTHCS_PATH["Talent"]["Ash"] = {};
        TTHCS_PATH["Talent"]["Ash"]["Effect"] = "/Text/TTH/Heroes/Specializations/Inferno/113-Ash/Combat/Effect.txt";
      -- Bersy 117 艾巴
        TTHCS_PATH["Talent"]["Bersy"] = {};
        TTHCS_PATH["Talent"]["Bersy"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/117-Bersy/Combat/Effect.txt";
      -- Maximus 118 马克西姆斯
        TTHCS_PATH["Talent"]["Maximus"] = {};
        TTHCS_PATH["Talent"]["Maximus"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/118-Maximus/Combat/Effect.txt";
      -- Skeggy 119 卡里
        TTHCS_PATH["Talent"]["Skeggy"] = {};
        TTHCS_PATH["Talent"]["Skeggy"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/119-Skeggy/Combat/Effect.txt";
      -- Tazar 120 泰泽
        TTHCS_PATH["Talent"]["Tazar"] = {};
        TTHCS_PATH["Talent"]["Tazar"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/120-Tazar/Combat/Effect.txt";
      -- Vilma 121 威尔玛
        TTHCS_PATH["Talent"]["Vilma"] = {};
        TTHCS_PATH["Talent"]["Vilma"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/121-Vilma/Combat/Effect.txt";
      -- Bart 122 巴特
        TTHCS_PATH["Talent"]["Bart"] = {};
        TTHCS_PATH["Talent"]["Bart"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/122-Bart/Combat/Effect.txt";
      -- Egil 124 俄林
        TTHCS_PATH["Talent"]["Egil"] = {};
        TTHCS_PATH["Talent"]["Egil"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/124-Egil/Combat/Effect.txt";
      -- Hangvul2 127 尤兰德
        TTHCS_PATH["Talent"]["Hangvul2"] = {};
        TTHCS_PATH["Talent"]["Hangvul2"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/127-Hangvul2/Combat/Effect.txt";
      -- Vegeyr 129 斯威
        TTHCS_PATH["Talent"]["Vegeyr"] = {};
        TTHCS_PATH["Talent"]["Vegeyr"]["Effect"] = "/Text/TTH/Heroes/Specializations/Fortress/129-Vegeyr/Combat/Effect.txt";
      -- Hero9 135 科尔汉
        TTHCS_PATH["Talent"]["Hero9"] = {};
        TTHCS_PATH["Talent"]["Hero9"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/135-Hero9/Combat/Effect.txt";
      -- Hero7 136 哈戈什
        TTHCS_PATH["Talent"]["Hero7"] = {};
        TTHCS_PATH["Talent"]["Hero7"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/136-Hero7/Combat/Effect.txt";
      -- Hero8 137 坦尔塞克
        TTHCS_PATH["Talent"]["Hero8"] = {};
        TTHCS_PATH["Talent"]["Hero8"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/137-Hero8/Combat/Effect.txt";
        TTHCS_PATH["Talent"]["Hero8"]["Revive"] = "/Text/TTH/Heroes/Specializations/Stronghold/137-Hero8/Combat/Revive.txt";
      -- Azar 138 艾扎-埃克
        TTHCS_PATH["Talent"]["Azar"] = {};
        TTHCS_PATH["Talent"]["Azar"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/138-Azar/Combat/Effect.txt";
      -- Hero4 139 哥沙克
        TTHCS_PATH["Talent"]["Hero4"] = {};
        TTHCS_PATH["Talent"]["Hero4"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/139-Hero4/Combat/Effect.txt";
      -- Hero6 140 沙-库如汉特
        TTHCS_PATH["Talent"]["Hero6"] = {};
        TTHCS_PATH["Talent"]["Hero6"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/140-Hero6/Combat/Effect.txt";
      -- Crag 141 肯洛-哈格
        TTHCS_PATH["Talent"]["Crag"] = {};
        TTHCS_PATH["Talent"]["Crag"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/141-Crag/Combat/Effect.txt";
      -- Gottai 142 高泰
        TTHCS_PATH["Talent"]["Gottai"] = {};
        TTHCS_PATH["Talent"]["Gottai"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/142-Gottai/Combat/Effect.txt";
      -- Hero1 143 克拉格
        TTHCS_PATH["Talent"]["Hero1"] = {};
        TTHCS_PATH["Talent"]["Hero1"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/143-Hero1/Combat/Effect.txt";
      -- Hero2 144 厄格特
        TTHCS_PATH["Talent"]["Hero2"] = {};
        TTHCS_PATH["Talent"]["Hero2"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/144-Hero2/Combat/Effect.txt";
      -- Hero3 145 伽如娜
        TTHCS_PATH["Talent"]["Hero3"] = {};
        TTHCS_PATH["Talent"]["Hero3"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/145-Hero3/Combat/Effect.txt";
      -- Kraal 146 克拉尔
        TTHCS_PATH["Talent"]["Kraal"] = {};
        TTHCS_PATH["Talent"]["Kraal"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/146-Kraal/Combat/Effect.txt";
      -- KujinMP 147 库金
        TTHCS_PATH["Talent"]["KujinMP"] = {};
        TTHCS_PATH["Talent"]["KujinMP"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/147-KujinMP/Combat/Effect.txt";
      -- Kunyak 148 库恩亚克
        TTHCS_PATH["Talent"]["Kunyak"] = {};
        TTHCS_PATH["Talent"]["Kunyak"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/148-Kunyak/Combat/Effect.txt";
      -- Matewa 149 马特瓦
        TTHCS_PATH["Talent"]["Matewa"] = {};
        TTHCS_PATH["Talent"]["Matewa"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/149-Matewa/Combat/Effect.txt";
      -- Quroq 150 魁洛克
        TTHCS_PATH["Talent"]["Quroq"] = {};
        TTHCS_PATH["Talent"]["Quroq"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/150-Quroq/Combat/Effect.txt";
      -- Shiva 151 希娃
        TTHCS_PATH["Talent"]["Shiva"] = {};
        TTHCS_PATH["Talent"]["Shiva"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/151-Shiva/Combat/Effect.txt";
      -- Zouleika 152 祖莱卡
        TTHCS_PATH["Talent"]["Zouleika"] = {};
        TTHCS_PATH["Talent"]["Zouleika"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/152-Zouleika/Combat/Effect.txt";
      -- Erika 153 艾莉卡
        TTHCS_PATH["Talent"]["Erika"] = {};
        TTHCS_PATH["Talent"]["Erika"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/153-Erika/Combat/Effect.txt";
      -- Mokka 154 摩卡
        TTHCS_PATH["Talent"]["Mokka"] = {};
        TTHCS_PATH["Talent"]["Mokka"]["Effect"] = "/Text/TTH/Heroes/Specializations/Stronghold/154-Mokka/Combat/Effect.txt";


    TTHCS_PATH["Perk"] = {};
      -- HERO_SKILL_PATHFINDING 019 魔力平衡
        TTHCS_PATH["Perk"][HERO_SKILL_PATHFINDING] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_PATHFINDING]["Effect"] = "/Text/TTH/Skills/Artificier/019-Pathfinding/Combat/Effect.txt";
      -- HERO_SKILL_CASTER_CERTIFICATE 081 神秘精髓
        TTHCS_PATH["Perk"][HERO_SKILL_CASTER_CERTIFICATE] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_CASTER_CERTIFICATE]["Effect"] = "/Text/TTH/Skills/Sorcery/081-CasterCertificate/Combat/Effect.txt";
      -- HERO_SKILL_PARIAH 083 堕落骑士
        TTHCS_PATH["Perk"][HERO_SKILL_PARIAH] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_PARIAH]["Effect"] = "/Text/TTH/Skills/DarkMagic/083-Pariah/Combat/Effect.txt";
      -- HERO_SKILL_ELEMENTAL_BALANCE 084 能量平衡
        TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_BALANCE] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_BALANCE]["Effect"] = "/Text/TTH/Skills/SummoningMagic/084-ElementalBalance/Combat/Effect.txt";
      -- HERO_SKILL_EXPLODING_CORPSES 093 风暴突袭
        TTHCS_PATH["Perk"][HERO_SKILL_EXPLODING_CORPSES] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_EXPLODING_CORPSES]["Effect"] = "/Text/TTH/Skills/Invocation/093-ExplodingCorpses/Combat/Effect.txt";
      -- HERO_SKILL_DEMONIC_RETALIATION 092 领主之怒
        TTHCS_PATH["Perk"][HERO_SKILL_DEMONIC_RETALIATION] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_DEMONIC_RETALIATION]["Effect"] = "/Text/TTH/Skills/Gating/092-DemonicRetaliation/Combat/Effect.txt";
      -- HERO_SKILL_ELEMENTAL_OVERKILL 149 恶魔印记
        TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_OVERKILL] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_ELEMENTAL_OVERKILL]["Effect"] = "/Text/TTH/Skills/Gating/149-ElementalOverkill/Combat/Effect.txt";
      -- HERO_SKILL_DEATH_TREAD 099 攻城大师
        TTHCS_PATH["Perk"][HERO_SKILL_DEATH_TREAD] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_DEATH_TREAD]["Effect"] = "/Text/TTH/Skills/WarMachines/099-DeathTread/Combat/Effect.txt";
      -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
        TTHCS_PATH["Perk"][HERO_SKILL_DEAD_LUCK] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_DEAD_LUCK]["Effect"] = "/Text/TTH/Skills/Necromancy/103-DeadLuck/Combat/Effect.txt";
      -- HERO_SKILL_TWILIGHT 109 微光黎明
        TTHCS_PATH["Perk"][HERO_SKILL_TWILIGHT] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_TWILIGHT]["Effect"] = "/Text/TTH/Skills/LightMagic/109-Twilight/Combat/Effect.txt";
      -- HERO_SKILL_FOREST_GUARD_EMBLEM 115 战地支援
        TTHCS_PATH["Perk"][HERO_SKILL_FOREST_GUARD_EMBLEM] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_FOREST_GUARD_EMBLEM]["Effect"] = "/Text/TTH/Skills/Leadership/115-ForestGuardEmblem/Combat/Effect.txt";
      -- HERO_SKILL_ELVEN_LUCK 116 锐利一击
        TTHCS_PATH["Perk"][HERO_SKILL_ELVEN_LUCK] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_ELVEN_LUCK]["Effect"] = "/Text/TTH/Skills/Avenger/116-ElvenLuck/Combat/Effect.txt";
      -- HERO_SKILL_SUN_FIRE 120 西莱纳的回响
        TTHCS_PATH["Perk"][HERO_SKILL_SUN_FIRE] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_SUN_FIRE]["Effect"] = "/Text/TTH/Skills/Avenger/120-SunFire/Combat/Effect.txt";
      -- HERO_SKILL_REMOTE_CONTROL 126 附魔机械
        TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL]["Effect"] = "/Text/TTH/Skills/Artificier/126-RemoteControl/Combat/Effect.txt";
        TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL]["EffectAll"] = "/Text/TTH/Skills/Artificier/126-RemoteControl/Combat/EffectAll.txt";
        TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL]["Effect1"] = "/Text/TTH/Skills/Artificier/126-RemoteControl/Combat/Effect1.txt";
        TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL]["Effect2"] = "/Text/TTH/Skills/Artificier/126-RemoteControl/Combat/Effect2.txt";
        TTHCS_PATH["Perk"][HERO_SKILL_REMOTE_CONTROL]["Effect3"] = "/Text/TTH/Skills/Artificier/126-RemoteControl/Combat/Effect3.txt";
      -- HERO_SKILL_SEAL_OF_PROTECTION 131 众志成城
        TTHCS_PATH["Perk"][HERO_SKILL_SEAL_OF_PROTECTION] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_SEAL_OF_PROTECTION]["Effect"] = "/Text/TTH/Skills/Training/131-SealOfProtection/Combat/Effect.txt";
      -- HERO_SKILL_UNSUMMON 136 驱逐
        TTHCS_PATH["Perk"][HERO_SKILL_UNSUMMON] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_UNSUMMON]["Effect"] = "/Text/TTH/Skills/SummoningMagic/136-Unsummon/Combat/Effect.txt";
      -- HERO_SKILL_SHAKE_GROUND 139 感电
        TTHCS_PATH["Perk"][HERO_SKILL_SHAKE_GROUND] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_SHAKE_GROUND]["Effect"] = "/Text/TTH/Skills/DestructiveMagic/139-ShakeGround/Combat/Effect.txt";
      -- HERO_SKILL_GUARDIAN_ANGEL 078 光明指引
        TTHCS_PATH["Perk"][HERO_SKILL_GUARDIAN_ANGEL] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_GUARDIAN_ANGEL]["Effect"] = "/Text/TTH/Skills/Training/078-GuardianAngel/Combat/Effect.txt";
      -- HERO_SKILL_ELITE_CASTERS 148 精炼魔力
      -- HERO_SKILL_BARBARIAN_ELITE_CASTERS 214 精炼魔力
        TTHCS_PATH["Perk"][HERO_SKILL_ELITE_CASTERS] = {};
        TTHCS_PATH["Perk"][HERO_SKILL_ELITE_CASTERS]["Effect"] = "/Text/TTH/Skills/Sorcery/148-EliteCasters/Combat/Effect.txt";

    TTHCS_PATH["Mastery"] = {};
      -- HERO_SKILL_WAR_MACHINES 002 战争机械
        TTHCS_PATH["Mastery"][HERO_SKILL_WAR_MACHINES] = {};
        TTHCS_PATH["Mastery"][HERO_SKILL_WAR_MACHINES]["Effect"] = "/Text/TTH/Skills/WarMachines/Mastery/Combat/Effect.txt";

    TTHCS_PATH["Artifact"] = {};
      -- ARTIFACT_BAND_OF_CONJURER 060 元素腕带
        TTHCS_PATH["Artifact"][ARTIFACT_BAND_OF_CONJURER] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_BAND_OF_CONJURER]["Effect"] = "/Text/TTH/Artifact/060-BandOfConjurer/Combat/Effect.txt";
      -- ARTIFACT_GEM_OF_PHANTOM 102 幻影宝石
        TTHCS_PATH["Artifact"][ARTIFACT_GEM_OF_PHANTOM] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_GEM_OF_PHANTOM]["Effect"] = "/Text/TTH/Artifact/102-GemOfPhantom/Combat/Effect.txt";
      -- ARTIFACT_DRUM_OF_CHARGE 106 冲锋战鼓
        TTHCS_PATH["Artifact"][ARTIFACT_DRUM_OF_CHARGE] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_DRUM_OF_CHARGE]["Effect"] = "/Text/TTH/Artifact/106-DrumOfCharge/Combat/Effect.txt";
      -- ARTIFACT_HORN_OF_CHARGE 107 冲锋号角
        TTHCS_PATH["Artifact"][ARTIFACT_HORN_OF_CHARGE] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_HORN_OF_CHARGE]["Effect"] = "/Text/TTH/Artifact/107-HornOfCharge/Combat/Effect.txt";
      -- ARTIFACT_ANGELIC_ALLIANCE 068 天使联盟
        TTHCS_PATH["Artifact"][ARTIFACT_ANGELIC_ALLIANCE] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_ANGELIC_ALLIANCE]["Effect"] = "/Text/TTH/Artifact/068-AngelicAlliance/Combat/Effect.txt";
      -- ARTIFACT_SENTINEL 124 哨兵之盾
        TTHCS_PATH["Artifact"][ARTIFACT_SENTINEL] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_SENTINEL]["Effect"] = "/Text/TTH/Artifact/124-Sentinel/Combat/Effect.txt";
      -- ARTIFACT_CURSE_SHOULDER 114 诅咒斗篷
        TTHCS_PATH["Artifact"][ARTIFACT_CURSE_SHOULDER] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_CURSE_SHOULDER]["Effect"] = "/Text/TTH/Artifact/114-CurseShoulder/Combat/Effect.txt";
      -- ARTIFACT_BOOTS_OF_THE_WALKING_DEAD 140 恶灵长靴
        TTHCS_PATH["Artifact"][ARTIFACT_BOOTS_OF_THE_WALKING_DEAD] = {};
        TTHCS_PATH["Artifact"][ARTIFACT_BOOTS_OF_THE_WALKING_DEAD]["Effect"] = "/Text/TTH/Artifact/140-BootsOfTheWalkingDead/Combat/Effect.txt";

    TTHCS_PATH["ArtifactSet"] = {};
      -- ARTIFACTSET_NECROMANCERS 005 死亡拥抱 Necromancers
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_NECROMANCERS.."_"..4] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_NECROMANCERS.."_"..4]["Effect"] = "/Text/TTH/ArtifactSet/005-Necromancers/Combat/Effect4.txt";
      -- ARTIFACTSET_HUNTERS 007 射手梦幻 Hunters
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_HUNTERS.."_"..3] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_HUNTERS.."_"..3]["EffectCaster"] = "/Text/TTH/ArtifactSet/007-Hunters/Combat/EffectCaster.txt";
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_HUNTERS.."_"..3]["EffectTarget"] = "/Text/TTH/ArtifactSet/007-Hunters/Combat/EffectTarget.txt";
      -- ARTIFACTSET_OGRES 008 力量武器 Ogres
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_OGRES.."_"..2] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_OGRES.."_"..2]["Effect"] = "/Text/TTH/ArtifactSet/008-Ogres/Combat/Effect2.txt";
      -- ARTIFACTSET_ELEMENT_AIR 015 雷电迅捷 ElementAir
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_AIR.."_"..2] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_AIR.."_"..2]["Effect"] = "/Text/TTH/ArtifactSet/015-ElementAir/Combat/Effect2.txt";
      -- ARTIFACTSET_ELEMENT_EARTH 016 大地之力 ElementEarth
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_EARTH.."_"..2] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_EARTH.."_"..2]["Effect"] = "/Text/TTH/ArtifactSet/016-ElementEarth/Combat/Effect2.txt";
      -- ARTIFACTSET_ELEMENT_FIRE 017 附骨之焰 ElementFire
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_FIRE.."_"..2] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_FIRE.."_"..2]["Effect"] = "/Text/TTH/ArtifactSet/017-ElementFire/Combat/Effect2.txt";
      -- ARTIFACTSET_ELEMENT_WATER 018 流水之蕴 ElementWater
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_WATER.."_"..2] = {};
        TTHCS_PATH["ArtifactSet"][ARTIFACTSET_ELEMENT_WATER.."_"..2]["Effect"] = "/Text/TTH/ArtifactSet/018-ElementWater/Combat/Effect2.txt";

    TTHCS_PATH["Creature"] = {};
    -- CREATURE_LEGATE 190 圣血剑士
      TTHCS_PATH["Creature"][CREATURE_LEGATE] = {};
      TTHCS_PATH["Creature"][CREATURE_LEGATE]["Effect"] = "/Text/TTH/Creature/190-Legate/Combat/Effect.txt";

      TTHCS_PATH["Creature"]["Enchanter"] = {};
      TTHCS_PATH["Creature"]["Enchanter"]["Effect1"] = "/Text/TTH/Creature/Enchanter/Combat/Effect1.txt";
      TTHCS_PATH["Creature"]["Enchanter"]["Effect2"] = "/Text/TTH/Creature/Enchanter/Combat/Effect2.txt";
      TTHCS_PATH["Creature"]["Enchanter"]["Effect3"] = "/Text/TTH/Creature/Enchanter/Combat/Effect3.txt";
      TTHCS_PATH["Creature"]["Enchanter"]["EffectConsume"] = "/Text/TTH/Creature/Enchanter/Combat/EffectConsume.txt";

      TTHCS_PATH["Creature"][CREATURE_JUSTICAR] = {};
      TTHCS_PATH["Creature"][CREATURE_JUSTICAR]["EffectLayHands"] = "/Text/TTH/Creature/188-Justicar/Combat/EffectLayHands.txt";
      TTHCS_PATH["Creature"][CREATURE_JUSTICAR]["EffectHolyWord"] = "/Text/TTH/Creature/188-Justicar/Combat/EffectHolyWord.txt";


    TTHCS_PATH["Continuous"] = {};
      TTHCS_PATH["Continuous"]["Effect"] = "/Text/TTH/Combat/Continuous/Effect.txt";
      TTHCS_PATH["Continuous"]["Effect005"] = "/Text/TTH/Combat/Continuous/Effect005.txt";
      TTHCS_PATH["Continuous"]["Effect010"] = "/Text/TTH/Combat/Continuous/Effect010.txt";
      TTHCS_PATH["Continuous"]["Effect015"] = "/Text/TTH/Combat/Continuous/Effect015.txt";
      TTHCS_PATH["Continuous"]["Effect020"] = "/Text/TTH/Combat/Continuous/Effect020.txt";
      TTHCS_PATH["Continuous"]["Effect025"] = "/Text/TTH/Combat/Continuous/Effect025.txt";
      TTHCS_PATH["Continuous"]["Effect030"] = "/Text/TTH/Combat/Continuous/Effect030.txt";
      TTHCS_PATH["Continuous"]["Effect035"] = "/Text/TTH/Combat/Continuous/Effect035.txt";
      TTHCS_PATH["Continuous"]["Effect040"] = "/Text/TTH/Combat/Continuous/Effect040.txt";
      TTHCS_PATH["Continuous"]["Effect045"] = "/Text/TTH/Combat/Continuous/Effect045.txt";
      TTHCS_PATH["Continuous"]["Effect050"] = "/Text/TTH/Combat/Continuous/Effect050.txt";
      TTHCS_PATH["Continuous"]["Effect055"] = "/Text/TTH/Combat/Continuous/Effect055.txt";
      TTHCS_PATH["Continuous"]["Effect060"] = "/Text/TTH/Combat/Continuous/Effect060.txt";
      TTHCS_PATH["Continuous"]["Effect065"] = "/Text/TTH/Combat/Continuous/Effect065.txt";
      TTHCS_PATH["Continuous"]["Effect070"] = "/Text/TTH/Combat/Continuous/Effect070.txt";
      TTHCS_PATH["Continuous"]["Effect075"] = "/Text/TTH/Combat/Continuous/Effect075.txt";
      TTHCS_PATH["Continuous"]["Effect080"] = "/Text/TTH/Combat/Continuous/Effect080.txt";
      TTHCS_PATH["Continuous"]["Effect085"] = "/Text/TTH/Combat/Continuous/Effect085.txt";
      TTHCS_PATH["Continuous"]["Effect090"] = "/Text/TTH/Combat/Continuous/Effect090.txt";
      TTHCS_PATH["Continuous"]["Effect095"] = "/Text/TTH/Combat/Continuous/Effect095.txt";
      TTHCS_PATH["Continuous"]["Effect100"] = "/Text/TTH/Combat/Continuous/Effect100.txt";