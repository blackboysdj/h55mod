-- 高级银行生物及数量
  TTH_BankMonsterByNoRace = {
    ["BUILDING_CYCLOPS_STOCKPILE"] = {
      ["ID"] = {
        [0] = 85    -- 火元素
        , [1] = 86    -- 水元素
        , [2] = 87    -- 地元素
        , [3] = 88    -- 风元素
        , [4] = 91    -- 凤凰
      }
      , ["GROWTH"] = {
        [0] = 4
        , [1] = 4
        , [2] = 4
        , [3] = 4
        , [4] = 1
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_Stockpile.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
    , ["BUILDING_DRAGON_UTOPIA"] = {
      ["ID"] = {
        [0] = 55    -- 绿龙
        , [1] = 56    -- 翡翠龙
        , [2] = 151   -- 青晶龙
        , [3] = 83    -- 阴影龙
        , [4] = 84    -- 黑龙
        , [5] = 144   -- 红龙
      }
      , ["GROWTH"] = {
        [0] = 1
        , [1] = 1
        , [2] = 1
        , [3] = 1
        , [4] = 1
        , [5] = 1
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_Utopia.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
    , ["BUILDING_PYRAMID"] = {
      ["ID"] = {
        [0] = 116     --木乃伊
        , [1] = 116   --木乃伊
        , [2] = 90    --死亡骑士
        , [3] = 90    --死亡骑士
        , [4] = 42    --鬼龙
        , [5] = 38    --大尸巫
        , [6] = 156   --巫妖大师
      }
      , ["GROWTH"] = {
        [0] = 3
        , [1] = 3
        , [2] = 2
        , [3] = 2
        , [4] = 2
        , [5] = 3
        , [6] = 3
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_Pyramid.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
    , ["BUILDING_BUOY"] = {
      ["ID"] = {
        [0] = 16    -- 魔童
        , [1] = 131   -- 寄生魔
        , [2] = 82    -- 暗影女族长
        , [3] = 143   -- 暗影主母
        , [4] = 28    -- 大魔鬼
        , [5] = 137   -- 大恶魔
      }
      , ["GROWTH"] = {
        [0] = 16
        , [1] = 16
        , [2] = 2
        , [3] = 2
        , [4] = 1
        , [5] = 1
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_Urgash.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
    , ["BUILDING_SUNKEN_TEMPLE"] = {
      ["ID"] = {
        [0] = 80    --深渊多头蜥
        , [1] = 142   --腐血多头蜥
        , [2] = 115   --蝎尾飞狮
        , [3] = 10    --圣裁官
        , [4] = 110   --狂热者
        , [5] = 101   --神符族长
        , [6] = 170   --神符守卫
      }
      , ["GROWTH"] = {
        [0] = 3
        , [1] = 3
        , [2] = 2
        , [3] = 3
        , [4] = 3
        , [5] = 4
        , [6] = 4
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_SunkenW.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
    , ["BUILDING_DEMOLISH"] = {
      ["ID"] = {
        [0] = 72    --刺客
        , [1] = 138   --潜行者
        , [2] = 113   --狼
        , [3] = 113   --狼
        , [4] = 78    --冷血骑兵
        , [5] = 141   --迅猛骑兵
      }
      , ["GROWTH"] = {
        [0] = 7
        , [1] = 7
        , [2] = 8
        , [3] = 8
        , [4] = 4
        , [5] = 4
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_Mausoleum.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
    , ["BUILDING_TREANT_THICKET"] = {
      ["ID"] = {
        [0] = 50    --德鲁伊长老
        , [1] = 148   --高阶德鲁伊
        , [2] = 52    --银色独角兽
        , [3] = 149   --神圣独角兽
        , [4] = 56    --翡翠龙
        , [5] = 151   --青晶龙
      }
      , ["GROWTH"] = {
        [0] = 4
        , [1] = 4
        , [2] = 3
        , [3] = 3
        , [4] = 1
        , [5] = 1
      }
      , ["LINK"] = "/Arenas/CombatArena/FinalCombat/Bank_Treant.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)"
    }
  };

-- 根据英雄技能赠送魔法相关
  TTH_TABLE_GIVE_MAGIC_BY_SKILL = {
    -- 高级光明 + 愤怒大师 = 正当之力
    {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_BLOODLUST]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_LIGHT_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_WRATH
      }
    }
    -- 高级光明 + 佑福大师 = 非凡神力
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_BLESS]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_LIGHT_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_BLESSING
      }
    }
    -- 高级光明 + 防护大师 = 偏转飞弹
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_DEFLECT_ARROWS]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_LIGHT_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_ABJURATION
      }
    }
    -- 高级黑暗 + 心智大师 = 延迟大法
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_SLOW]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DARK_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_MIND
      }
    }
    -- 高级黑暗 + 诅咒大师 = 虚弱诅咒
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_CURSE]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DARK_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_CURSES
      }
    }
    -- 高级黑暗 + 折磨大师 = 破甲弱化
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_DISRUPTING_RAY]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DARK_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_SICKNESS
      }
    }
    -- 高级召唤 + 地血大师 = 火焰陷阱
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_LAND_MINE]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_QUAKES
      }
    }
    -- 高级召唤 + 西莱纳的回响 = 召唤蜂窝
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_SUMMON_HIVE]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        HERO_SKILL_SUN_FIRE
      }
    }
    -- 专家召唤 + 西莱纳的回响 + 符咒大师 = 召唤凤凰
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_CONJURE_PHOENIX]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        HERO_SKILL_SUN_FIRE
        , PERK_MASTER_OF_CREATURES
      }
    }
    -- 专家召唤 + 符咒大师 = 召唤元素
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_SUMMON_ELEMENTALS]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 3
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_CREATURES
      }
    }
    -- 高级召唤 + 生命大师 = 亡灵复生
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_ANIMATE_DEAD]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_ANIMATION
      }
    }
    -- 高级破坏 + 寒冰大师 = 寒冰激射
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_ICE_BOLT]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_ICE
      }
    }
    -- 高级破坏 + 烈火大师 = 连珠火球
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_FIREBALL]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_FIRE
      }
    }
    -- 初级破坏 + 风暴大师 = 霹雳闪电
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_LIGHTNING_BOLT]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 1
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_LIGHTNINGS
      }
    }
    -- 专家破坏 + 致命深寒 = 严冬冰环
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_FROST_RING]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 3
        }
      }
      , ["SKILL_PERK"] = {
        NECROMANCER_FEAT_DEADLY_COLD
      }
    }
    -- 专家光明 + 高级召唤 + 生命大师 = 活力再生
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_REGENERATION]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_LIGHT_MAGIC
          , ["LEVEL"] = 3
        }
        , {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_ANIMATION
      }
    }
    -- 初级黑暗 + 心智大师 + 高级召唤 + 迷雾之墙 = 迷惑心智
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_FORGETFULNESS]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DARK_MAGIC
          , ["LEVEL"] = 1
        }
        , {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_MIND
        , RANGER_FEAT_FOG_VEIL
      }
    }
    -- 高级召唤 + 迷雾之墙 + 高级破坏 + 点燃 = 火墙阻隔
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_FIREWALL]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
        , {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        HERO_SKILL_SET_AFIRE
        , RANGER_FEAT_FOG_VEIL
      }
    }
    -- 高级破坏 + 风暴大师 + 高级光明 + 暴风来袭 = 连锁闪电
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_CHAIN_LIGHTNING]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 2
        }
        , {
          ["MASTERY"] = SKILL_LIGHT_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_LIGHTNINGS
        , RANGER_FEAT_STORM_WIND
      }
    }
    -- 专家制宝 + 附魔机械 + 高级召唤 + 生命大师 = 幻象军团
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_PHANTOM]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = HERO_SKILL_ARTIFICIER
          , ["LEVEL"] = 3
        }
        , {
          ["MASTERY"] = SKILL_SUMMONING_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        HERO_SKILL_REMOTE_CONTROL
        , HERO_SKILL_MASTER_OF_ANIMATION
      }
    }
    -- 专家异界传送 + 混乱风暴 = 流星火雨
    , {
      ["MAGIC"] = TTH_TABLE.Spell[SPELL_METEOR_SHOWER]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = HERO_SKILL_GATING
          , ["LEVEL"] = 3
        }
      }
      , ["SKILL_PERK"] = {
        HERO_SKILL_ELEMENTAL_OVERKILL
      }
    }
  };

-- 非墓园生物-转化为对应墓园生物
  List_Nec_AllCreatures = {
      {
          {CREATURE_PEASANT, CREATURE_FAMILIAR, CREATURE_PIXIE, CREATURE_GREMLIN, CREATURE_SCOUT, CREATURE_DEFENDER, CREATURE_GOBLIN, CREATURE_SKELETON}, CREATURE_SKELETON, 2
      },
      {
          {CREATURE_MILITIAMAN, CREATURE_IMP, CREATURE_SPRITE, CREATURE_MASTER_GREMLIN, CREATURE_ASSASSIN, CREATURE_STOUT_DEFENDER, CREATURE_GOBLIN_TRAPPER, CREATURE_SKELETON_ARCHER}, CREATURE_SKELETON_ARCHER, 2
      },
      {
          {CREATURE_LANDLORD, CREATURE_QUASIT, CREATURE_STALKER, CREATURE_DRYAD, CREATURE_GREMLIN_SABOTEUR, CREATURE_STONE_DEFENDER, CREATURE_GOBLIN_DEFILER, CREATURE_SKELETON_WARRIOR}, CREATURE_SKELETON_WARRIOR, 2
      },
      {
          {CREATURE_ARCHER, CREATURE_DEMON, CREATURE_BLADE_JUGGLER, CREATURE_WITCH, CREATURE_AXE_FIGHTER, CREATURE_CENTAUR, CREATURE_STONE_GARGOYLE, CREATURE_WALKING_DEAD}, CREATURE_WALKING_DEAD, 3
      },
      {
          {CREATURE_MARKSMAN, CREATURE_HORNED_DEMON, CREATURE_WAR_DANCER, CREATURE_BLOOD_WITCH, CREATURE_AXE_THROWER, CREATURE_CENTAUR_NOMAD, CREATURE_OBSIDIAN_GARGOYLE, CREATURE_ZOMBIE}, CREATURE_ZOMBIE, 3
      },
      {
          {CREATURE_LONGBOWMAN, CREATURE_HORNED_LEAPER, CREATURE_BLADE_SINGER, CREATURE_BLOOD_WITCH_2, CREATURE_HARPOONER, CREATURE_CENTAUR_MARADEUR, CREATURE_MARBLE_GARGOYLE, CREATURE_DISEASE_ZOMBIE}, CREATURE_DISEASE_ZOMBIE, 3
      },
      {
          {CREATURE_FOOTMAN, CREATURE_HELL_HOUND, CREATURE_WOOD_ELF, CREATURE_MINOTAUR, CREATURE_BEAR_RIDER, CREATURE_ORC_WARRIOR, CREATURE_IRON_GOLEM, CREATURE_MANES}, CREATURE_MANES, 5
      },
      {
          {CREATURE_SWORDSMAN, CREATURE_CERBERI, CREATURE_GRAND_ELF, CREATURE_MINOTAUR_KING, CREATURE_BLACKBEAR_RIDER, CREATURE_ORC_SLAYER, CREATURE_STEEL_GOLEM, CREATURE_GHOST}, CREATURE_GHOST, 5
      },
      {
          {CREATURE_VINDICATOR, CREATURE_FIREBREATHER_HOUND, CREATURE_MINOTAUR_CAPTAIN, CREATURE_SHARP_SHOOTER, CREATURE_WHITE_BEAR_RIDER, CREATURE_ORC_WARMONGER, CREATURE_OBSIDIAN_GOLEM, CREATURE_POLTERGEIST}, CREATURE_POLTERGEIST, 5
      },
      {
          {CREATURE_GRIFFIN, CREATURE_SUCCUBUS, CREATURE_DRUID, CREATURE_MAGI, CREATURE_RIDER, CREATURE_BROWLER, CREATURE_SHAMAN, CREATURE_VAMPIRE}, CREATURE_VAMPIRE, 8
      },
      {
          {CREATURE_ROYAL_GRIFFIN, CREATURE_INFERNAL_SUCCUBUS, CREATURE_DRUID_ELDER, CREATURE_ARCH_MAGI, CREATURE_RAVAGER, CREATURE_BERSERKER, CREATURE_SHAMAN_WITCH, CREATURE_VAMPIRE_LORD}, CREATURE_VAMPIRE_LORD, 8
      },
      {
          {CREATURE_BATTLE_GRIFFIN, CREATURE_SUCCUBUS_SEDUCER, CREATURE_BLACK_RIDER, CREATURE_HIGH_DRUID, CREATURE_COMBAT_MAGE, CREATURE_BATTLE_RAGER, CREATURE_SHAMAN_HAG, CREATURE_NOSFERATU}, CREATURE_NOSFERATU, 8
      },
      {
          {CREATURE_PRIEST, CREATURE_NIGHTMARE, CREATURE_UNICORN, CREATURE_GENIE, CREATURE_HYDRA, CREATURE_RUNE_MAGE, CREATURE_ORCCHIEF_BUTCHER, CREATURE_LICH}, CREATURE_LICH, 13
      },
      {
          {CREATURE_CLERIC, CREATURE_FRIGHTFUL_NIGHTMARE, CREATURE_WAR_UNICORN, CREATURE_MASTER_GENIE, CREATURE_CHAOS_HYDRA, CREATURE_FLAME_MAGE, CREATURE_ORCCHIEF_EXECUTIONER, CREATURE_DEMILICH}, CREATURE_DEMILICH, 13
      },
      {
          {CREATURE_ZEALOT, CREATURE_HELLMARE, CREATURE_ACIDIC_HYDRA, CREATURE_WHITE_UNICORN, CREATURE_DJINN_VIZIER, CREATURE_FLAME_KEEPER, CREATURE_ORCCHIEF_CHIEFTAIN, CREATURE_LICH_MASTER}, CREATURE_LICH_MASTER, 13
      },
      {
          {CREATURE_CAVALIER, CREATURE_PIT_FIEND, CREATURE_TREANT, CREATURE_RAKSHASA, CREATURE_MATRON, CREATURE_THANE, CREATURE_WYVERN, CREATURE_WIGHT}, CREATURE_WIGHT, 21
      },
      {
          {CREATURE_PALADIN, CREATURE_BALOR, CREATURE_TREANT_GUARDIAN, CREATURE_RAKSHASA_RUKH, CREATURE_MATRIARCH, CREATURE_WARLORD, CREATURE_WYVERN_POISONOUS, CREATURE_WRAITH}, CREATURE_WRAITH, 21
      },
      {
          {CREATURE_CHAMPION, CREATURE_PIT_SPAWN, CREATURE_SHADOW_MISTRESS, CREATURE_ANGER_TREANT, CREATURE_RAKSHASA_KSHATRI, CREATURE_THUNDER_THANE, CREATURE_WYVERN_PAOKAI, CREATURE_BANSHEE}, CREATURE_BANSHEE, 21
      },
      {
          {CREATURE_ANGEL, CREATURE_DEVIL, CREATURE_GREEN_DRAGON, CREATURE_GIANT, CREATURE_DEEP_DRAGON, CREATURE_CYCLOP, CREATURE_FIRE_DRAGON, CREATURE_BONE_DRAGON}, CREATURE_BONE_DRAGON, 34
      },
      {
          {CREATURE_ARCHANGEL, CREATURE_ARCHDEVIL, CREATURE_GOLD_DRAGON, CREATURE_TITAN, CREATURE_BLACK_DRAGON, CREATURE_CYCLOP_UNTAMED, CREATURE_MAGMA_DRAGON, CREATURE_SHADOW_DRAGON}, CREATURE_SHADOW_DRAGON, 34
      },
      {
          {CREATURE_SERAPH, CREATURE_ARCH_DEMON, CREATURE_RED_DRAGON, CREATURE_RAINBOW_DRAGON, CREATURE_STORM_LORD, CREATURE_CYCLOP_BLOODEYED, CREATURE_LAVA_DRAGON, CREATURE_HORROR_DRAGON}, CREATURE_HORROR_DRAGON, 34
      },
      {
          {CREATURE_WOLF, CREATURE_FIRE_ELEMENTAL, CREATURE_EARTH_ELEMENTAL, CREATURE_WATER_ELEMENTAL, CREATURE_AIR_ELEMENTAL}, CREATURE_VAMPIRE, 8
      },
      {
          {CREATURE_SNOW_APE, CREATURE_MUMMY}, CREATURE_MUMMY, 13
      },
      {
          {CREATURE_MANTICORE, CREATURE_DEATH_KNIGHT, CREATURE_PHOENIX}, CREATURE_DEATH_KNIGHT, 21
      }
  };

-- TTH环境
  -- 常量

  -- 枚举
    TTH_ENUM.Random = -1;
    TTH_ENUM.Default = -1;

    TTH_ENUM.TownBuildingNoBase = -1;

    TTH_ENUM.Talent = 1;
    TTH_ENUM.Artifact = 2;
    TTH_ENUM.Skill = 3;
    TTH_ENUM.Mastery = 31;
    TTH_ENUM.Perk = 32;
    TTH_ENUM.Spell = 4;
    TTH_ENUM.Stat = 5;

    TTH_ENUM.TreasureNone = -1;
    TTH_ENUM.TreasureWood = 6;
    TTH_ENUM.TreasureOre = 4;
    TTH_ENUM.TreasureMercury = 3;
    TTH_ENUM.TreasureCrystal = 0;
    TTH_ENUM.TreasureSulfur = 5;
    TTH_ENUM.TreasureGem = 1;
    TTH_ENUM.TreasureGold = 2; -- 100 为基数
    TTH_ENUM.TreasureCamp = 8;
    TTH_ENUM.TreasureChest = 9; -- 1: 1000金币/500经验; 每+1: 多500金币/500经验
    TTH_ENUM.TreasureSeaBox = 10; -- 海上木箱
    TTH_ENUM.TreasureSeaFloater = 11; -- 漂浮物
    TTH_ENUM.TreasureSeaPeasant = 13; -- 海上难民

    TTH_ENUM.DirectionNorth = 1;
    TTH_ENUM.DirectionEast = 2;
    TTH_ENUM.DirectionSouth = 3;
    TTH_ENUM.DirectionWest = 4;
    TTH_ENUM.RotateNorth = 0;
    TTH_ENUM.RotateEast = 270;
    TTH_ENUM.RotateSouth = 180;
    TTH_ENUM.RotateWest = 90;

    -- 转化类型
      TTH_ENUM.Cast = 1;
      TTH_ENUM.Training = 2;
      TTH_ENUM.Guide = 3;
      TTH_ENUM.Reproduce = 4;

    -- 新增生物的提示类型
      TTH_ENUM.AddCreature = 1;
      TTH_ENUM.CastCreature = 2;
      TTH_ENUM.ReviveCreature = 3;
      TTH_ENUM.ReleaseCreature = 4;

    -- 对话框类型
      TTH_ENUM.QuestionBox = 1;
      TTH_ENUM.MessageBox = 2;

    -- 方法
      TTH_ENUM.FuncTalent = 1;
      TTH_ENUM.FuncArtifact = 2;
      TTH_ENUM.FuncPerk = 3;
      TTH_ENUM.FuncBuilding = 4;

      TTH_ENUM.FuncInit = 1;
      TTH_ENUM.FuncActive = 2;
      TTH_ENUM.FuncLevelUp = 3;
      TTH_ENUM.FuncCombatResult = 4;
      TTH_ENUM.FuncDealWeekly = 5;
      TTH_ENUM.FuncResetWeekly = 6;
      TTH_ENUM.FuncDealDaily = 7;
      TTH_ENUM.FuncResetDaily = 8;

      TTH_ENUM.FuncAlways = 1;
      TTH_ENUM.FuncNotAtGate = 2;
      TTH_ENUM.FuncAtGate = 3;

    -- 玩家类型
      TTH_ENUM.Human = 0;
      TTH_ENUM.Ai = 1;

    -- 是否
      TTH_ENUM.No = 0;
      TTH_ENUM.Yes = 1;

    -- 可不可用
      TTH_ENUM.Unable = 0;
      TTH_ENUM.Enable = 1;

    -- 基础/高级
      TTH_ENUM.None = 1;
      TTH_ENUM.Basic = 2;
      TTH_ENUM.Advanced = 3;

    -- 城镇建筑类型
      TTH_ENUM.TownBuildBasic = 1;
      TTH_ENUM.TownBuildDwelling = 2;
      TTH_ENUM.TownBuildSpecial = 3;
      TTH_ENUM.TownBuildGrail = 4;

    -- 增加/减少
      TTH_ENUM.Decrease = -1;
      TTH_ENUM.Increase = 1;

    -- 内政官因距离导致的移动力衰减
      TTH_ENUM.MoveAttenuationNearBy = 1;
      TTH_ENUM.MoveAttenuationFar1 = 2;
      TTH_ENUM.MoveAttenuationFar2 = 3;
      TTH_ENUM.MoveAttenuationFar3 = 4;

    -- 英雄所在位置
      TTH_ENUM.AtGate = 1;
      TTH_ENUM.NotAtGate = 2;

    -- 宝屋奖励
      TTH_ENUM.BankRewardResource = 1;
      TTH_ENUM.BankRewardStat = 2;
      TTH_ENUM.BankRewardSpell = 3;
      TTH_ENUM.BankRewardArtifact = 4;
      TTH_ENUM.BankRewardCreature = 5;
      TTH_ENUM.BankRewardExp = 6;
      TTH_ENUM.BankRewardHidden = 7;

  -- 文本路径
    TTH_PATH = {};

    TTH_PATH.Switch = {};
    TTH_PATH.Switch[TTH_ENUM.Yes] = "/Text/Game/Scripts/TTH_Path/Basic/Yes.txt";
    TTH_PATH.Switch[TTH_ENUM.No] = "/Text/Game/Scripts/TTH_Path/Basic/No.txt";
    TTH_PATH.Switch["Cross"] = "/Text/Game/Scripts/TTH_Path/Basic/Cross.txt";

    TTH_PATH.Basic = {};
      TTH_PATH.Basic["None"] = "/Text/Game/Scripts/TTH_Path/Basic/None.txt";
      TTH_PATH.Basic["Arrow"] = "/Text/Game/Scripts/TTH_Path/Basic/Arrow.txt";
      TTH_PATH.Basic["PosZ"] = {
        [GROUND] = "/Text/Game/Scripts/TTH_Path/Basic/PosZ/Aboveground.txt"
        , [UNDERGROUND] = "/Text/Game/Scripts/TTH_Path/Basic/PosZ/Underground.txt"
      };

    TTH_PATH.Direction = {};
      TTH_PATH.Direction[TTH_ENUM.DirectionNorth] = "/Text/Game/Scripts/TTH_Path/Direction/North.txt";
      TTH_PATH.Direction[TTH_ENUM.DirectionEast] = "/Text/Game/Scripts/TTH_Path/Direction/East.txt";
      TTH_PATH.Direction[TTH_ENUM.DirectionSouth] = "/Text/Game/Scripts/TTH_Path/Direction/South.txt";
      TTH_PATH.Direction[TTH_ENUM.DirectionWest] = "/Text/Game/Scripts/TTH_Path/Direction/West.txt";

    TTH_PATH.CastCreatureType = {
      [TTH_ENUM.Cast] = "/Text/Game/Scripts/TTH_Path/CastCreatureType/Cast.txt"
      , [TTH_ENUM.Training] = "/Text/Game/Scripts/TTH_Path/CastCreatureType/Training.txt"
      , [TTH_ENUM.Guide] = "/Text/Game/Scripts/TTH_Path/CastCreatureType/Guide.txt"
      , [TTH_ENUM.Reproduce] = "/Text/Game/Scripts/TTH_Path/CastCreatureType/Reproduce.txt"
    };

    TTH_PATH.Stat = {};
      TTH_PATH.Stat[STAT_ATTACK] = "/Text/Game/Scripts/TTH_Path/Stat/Attack.txt";
      TTH_PATH.Stat[STAT_DEFENCE] = "/Text/Game/Scripts/TTH_Path/Stat/Defense.txt";
      TTH_PATH.Stat[STAT_SPELL_POWER] = "/Text/Game/Scripts/TTH_Path/Stat/SpellPower.txt";
      TTH_PATH.Stat[STAT_KNOWLEDGE] = "/Text/Game/Scripts/TTH_Path/Stat/Knowledge.txt";
      TTH_PATH.Stat[STAT_MORALE] = "/Text/Game/Scripts/TTH_Path/Stat/Morale.txt";
      TTH_PATH.Stat[STAT_LUCK] = "/Text/Game/Scripts/TTH_Path/Stat/Luck.txt";
      TTH_PATH.Stat["TemplateIncrease"] = "/Text/Game/Scripts/TTH_Path/Stat/TemplateIncrease.txt";
      TTH_PATH.Stat["TemplateDecrease"] = "/Text/Game/Scripts/TTH_Path/Stat/TemplateDecrease.txt";

    TTH_PATH.Race = {};
      TTH_PATH.Race[TOWN_HEAVEN] = "/Text/Game/Scripts/TTH_Path/Race/Heaven.txt";
      TTH_PATH.Race[TOWN_PRESERVE] = "/Text/Game/Scripts/TTH_Path/Race/Preserve.txt";
      TTH_PATH.Race[TOWN_ACADEMY] = "/Text/Game/Scripts/TTH_Path/Race/Academy.txt";
      TTH_PATH.Race[TOWN_DUNGEON] = "/Text/Game/Scripts/TTH_Path/Race/Dungeon.txt";
      TTH_PATH.Race[TOWN_NECROMANCY] = "/Text/Game/Scripts/TTH_Path/Race/Necromancy.txt";
      TTH_PATH.Race[TOWN_INFERNO] = "/Text/Game/Scripts/TTH_Path/Race/Inferno.txt";
      TTH_PATH.Race[TOWN_FORTRESS] = "/Text/Game/Scripts/TTH_Path/Race/Fortress.txt";
      TTH_PATH.Race[TOWN_STRONGHOLD] = "/Text/Game/Scripts/TTH_Path/Race/Stronghold.txt";

    TTH_PATH.HeroClass = {};
      TTH_PATH.HeroClass[TTH_ENUM.Knight] = "/Text/Game/Scripts/TTH_Path/HeroClass/01-Knight.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Paladin] = "/Text/Game/Scripts/TTH_Path/HeroClass/02-Paladin.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Heretic] = "/Text/Game/Scripts/TTH_Path/HeroClass/03-Heretic.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Retribution] = "/Text/Game/Scripts/TTH_Path/HeroClass/25-Retribution.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Ranger] = "/Text/Game/Scripts/TTH_Path/HeroClass/04-Ranger.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Warden] = "/Text/Game/Scripts/TTH_Path/HeroClass/05-Warden.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Enchanter] = "/Text/Game/Scripts/TTH_Path/HeroClass/06-Enchanter.txt";
      TTH_PATH.HeroClass[TTH_ENUM.GuildMaster] = "/Text/Game/Scripts/TTH_Path/HeroClass/07-GuildMaster.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Wizard] = "/Text/Game/Scripts/TTH_Path/HeroClass/08-Wizard.txt";
      TTH_PATH.HeroClass[TTH_ENUM.ElementAlist] = "/Text/Game/Scripts/TTH_Path/HeroClass/09-ElementAlist.txt";
      TTH_PATH.HeroClass[TTH_ENUM.BeastMaster] = "/Text/Game/Scripts/TTH_Path/HeroClass/10-BeastMaster.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Seer] = "/Text/Game/Scripts/TTH_Path/HeroClass/11-Seer.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Warlock] = "/Text/Game/Scripts/TTH_Path/HeroClass/12-Warlock.txt";
      TTH_PATH.HeroClass[TTH_ENUM.DeathKnight] = "/Text/Game/Scripts/TTH_Path/HeroClass/13-DeathKnight.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Reaver] = "/Text/Game/Scripts/TTH_Path/HeroClass/14-Reaver.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Necromancer] = "/Text/Game/Scripts/TTH_Path/HeroClass/15-Necromancer.txt";
      TTH_PATH.HeroClass[TTH_ENUM.GateKeeper] = "/Text/Game/Scripts/TTH_Path/HeroClass/16-GateKeeper.txt";
      TTH_PATH.HeroClass[TTH_ENUM.DemonLord] = "/Text/Game/Scripts/TTH_Path/HeroClass/17-DemonLord.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Sorcerer] = "/Text/Game/Scripts/TTH_Path/HeroClass/18-Sorcerer.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Engineer] = "/Text/Game/Scripts/TTH_Path/HeroClass/19-Engineer.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Runemage] = "/Text/Game/Scripts/TTH_Path/HeroClass/20-Runemage.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Flamekeepera] = "/Text/Game/Scripts/TTH_Path/HeroClass/21-Flamekeepera.txt";
      TTH_PATH.HeroClass[TTH_ENUM.Barbarian] = "/Text/Game/Scripts/TTH_Path/HeroClass/22-Barbarian.txt";

    TTH_PATH.Mine = {};
      TTH_PATH.Mine["BUILDING_SAWMILL"] = "/Text/Game/Scripts/TTH_Path/Mine/Wood.txt";
      TTH_PATH.Mine["BUILDING_ORE_PIT"] = "/Text/Game/Scripts/TTH_Path/Mine/Ore.txt";
      TTH_PATH.Mine["BUILDING_ALCHEMIST_LAB"] = "/Text/Game/Scripts/TTH_Path/Mine/Mercury.txt";
      TTH_PATH.Mine["BUILDING_CRYSTAL_CAVERN"] = "/Text/Game/Scripts/TTH_Path/Mine/Crystal.txt";
      TTH_PATH.Mine["BUILDING_SULFUR_DUNE"] = "/Text/Game/Scripts/TTH_Path/Mine/Sulfur.txt";
      TTH_PATH.Mine["BUILDING_GEM_POND"] = "/Text/Game/Scripts/TTH_Path/Mine/Gem.txt";
      TTH_PATH.Mine["BUILDING_GOLD_MINE"] = "/Text/Game/Scripts/TTH_Path/Mine/Gold.txt";
      TTH_PATH.Mine["BUILDING_ABANDONED_MINE"] = "/Text/Game/Scripts/TTH_Path/Mine/Abandoned.txt";

    TTH_PATH.HauntMine = {};
      TTH_PATH.HauntMine["BUILDING_SAWMILL"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntWood.txt";
      TTH_PATH.HauntMine["BUILDING_ORE_PIT"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntOre.txt";
      TTH_PATH.HauntMine["BUILDING_ALCHEMIST_LAB"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntMercury.txt";
      TTH_PATH.HauntMine["BUILDING_CRYSTAL_CAVERN"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntCrystal.txt";
      TTH_PATH.HauntMine["BUILDING_SULFUR_DUNE"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntSulfur.txt";
      TTH_PATH.HauntMine["BUILDING_GEM_POND"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntGem.txt";
      TTH_PATH.HauntMine["BUILDING_GOLD_MINE"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntGold.txt";
      TTH_PATH.HauntMine["BUILDING_ABANDONED_MINE"] = "/Text/Game/Scripts/TTH_Path/Mine/HauntAbandoned.txt";

    TTH_PATH.MineBonusLevel = {
      [0] = "/Text/Game/Scripts/TTH_Path/Mine/Level/0.txt"
      , [1] = "/Text/Game/Scripts/TTH_Path/Mine/Level/1.txt"
      , [2] = "/Text/Game/Scripts/TTH_Path/Mine/Level/2.txt"
      , [3] = "/Text/Game/Scripts/TTH_Path/Mine/Level/3.txt"
      , [4] = "/Text/Game/Scripts/TTH_Path/Mine/Level/4.txt"
      , [5] = "/Text/Game/Scripts/TTH_Path/Mine/Level/5.txt"
      , [6] = "/Text/Game/Scripts/TTH_Path/Mine/Level/6.txt"
      , [7] = "/Text/Game/Scripts/TTH_Path/Mine/Level/7.txt"
      , [8] = "/Text/Game/Scripts/TTH_Path/Mine/Level/8.txt"
      , [9] = "/Text/Game/Scripts/TTH_Path/Mine/Level/9.txt"
      , [10] = "/Text/Game/Scripts/TTH_Path/Mine/Level/10.txt"
    };

    TTH_PATH.Visit = {};
      TTH_PATH.Visit["Player"] = {
        [PLAYER_1] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player1.txt"
        , [PLAYER_2] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player2.txt"
        , [PLAYER_3] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player3.txt"
        , [PLAYER_4] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player4.txt"
        , [PLAYER_5] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player5.txt"
        , [PLAYER_6] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player6.txt"
        , [PLAYER_7] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player7.txt"
        , [PLAYER_8] = "/Text/Game/Scripts/TTH_Path/Visit/Player/Player8.txt"
      };
      TTH_PATH.Visit["Economic"] = {};
        TTH_PATH.Visit["Economic"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/Economic/";
        TTH_PATH.Visit["Economic"]["NotEnoughRes"] = TTH_PATH.Visit["Economic"]["Pre"].."NotEnoughRes.txt";
        TTH_PATH.Visit["Economic"]["HasCapture"] = TTH_PATH.Visit["Economic"]["Pre"].."HasCapture.txt";
        TTH_PATH.Visit["Economic"]["BUILDING_MYSTICAL_GARDEN"] = {
          ["Desc"] = TTH_PATH.Visit["Economic"]["Pre"].."MysticalGarden/Desc.txt"
          , ["Confirm"] = TTH_PATH.Visit["Economic"]["Pre"].."MysticalGarden/Confirm.txt"
        };
        TTH_PATH.Visit["Economic"]["BUILDING_WINDMILL"] = {
          ["Desc"] = TTH_PATH.Visit["Economic"]["Pre"].."Windmill/Desc.txt"
          , ["Confirm"] = TTH_PATH.Visit["Economic"]["Pre"].."Windmill/Confirm.txt"
        };
        TTH_PATH.Visit["Economic"]["BUILDING_WATER_WHEEL"] = {
          ["Desc"] = TTH_PATH.Visit["Economic"]["Pre"].."WaterWheel/Desc.txt"
          , ["Confirm"] = TTH_PATH.Visit["Economic"]["Pre"].."WaterWheel/Confirm.txt"
        };
        TTH_PATH.Visit["Economic"]["BUILDING_WARMACHINE_FACTORY"] = {
          ["Desc"] = TTH_PATH.Visit["Economic"]["Pre"].."WarmachineFactory/Desc.txt"
          , ["Confirm"] = TTH_PATH.Visit["Economic"]["Pre"].."WarmachineFactory/Confirm.txt"
        };
        TTH_PATH.Visit["Economic"]["BUILDING_TRADING_POST"] = {
          ["Desc"] = TTH_PATH.Visit["Economic"]["Pre"].."TradingPost/Desc.txt"
          , ["Confirm"] = TTH_PATH.Visit["Economic"]["Pre"].."TradingPost/Confirm.txt"
        };
      TTH_PATH.Visit["DwellingOnAdvMap"] = {};
        TTH_PATH.Visit["DwellingOnAdvMap"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/DwellingOnAdvMap/";
        TTH_PATH.Visit["DwellingOnAdvMap"]["Text"] = TTH_PATH.Visit["DwellingOnAdvMap"]["Pre"].."Text.txt";
        TTH_PATH.Visit["DwellingOnAdvMap"]["NotEnoughRes"] = TTH_PATH.Visit["DwellingOnAdvMap"]["Pre"].."NotEnoughRes.txt";
        TTH_PATH.Visit["DwellingOnAdvMap"]["Confirm"] = TTH_PATH.Visit["DwellingOnAdvMap"]["Pre"].."Confirm.txt";
      TTH_PATH.Visit["Mine"] = {};
        TTH_PATH.Visit["Mine"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/Mine/";
        TTH_PATH.Visit["Mine"]["Text"] = TTH_PATH.Visit["Mine"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Mine"]["Confirm"] = TTH_PATH.Visit["Mine"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["Mine"]["Success"] = TTH_PATH.Visit["Mine"]["Pre"].."Success.txt";
      TTH_PATH.Visit["Mermaids"] = {};
        TTH_PATH.Visit["Mermaids"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/Mermaids/";
        TTH_PATH.Visit["Mermaids"]["Text"] = TTH_PATH.Visit["Mermaids"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Mermaids"]["VisitedToday"] = TTH_PATH.Visit["Mermaids"]["Pre"].."VisitedToday.txt";
        TTH_PATH.Visit["Mermaids"]["HasComplete"] = TTH_PATH.Visit["Mermaids"]["Pre"].."HasComplete.txt";
        TTH_PATH.Visit["Mermaids"]["MissionInfo"] = TTH_PATH.Visit["Mermaids"]["Pre"].."MissionInfo.txt";
        TTH_PATH.Visit["Mermaids"]["LockDate"] = TTH_PATH.Visit["Mermaids"]["Pre"].."LockDate.txt";
        TTH_PATH.Visit["Mermaids"]["OtherHeroHasAccept"] = TTH_PATH.Visit["Mermaids"]["Pre"].."OtherHeroHasAccept.txt";
        TTH_PATH.Visit["Mermaids"]["Reward"] = TTH_PATH.Visit["Mermaids"]["Pre"].."Reward.txt";
        TTH_PATH.Visit["Mermaids"]["ConfirmGoOn"] = TTH_PATH.Visit["Mermaids"]["Pre"].."ConfirmGoOn.txt";
        TTH_PATH.Visit["Mermaids"]["SuccessGiveup"] = TTH_PATH.Visit["Mermaids"]["Pre"].."SuccessGiveup.txt";
        TTH_PATH.Visit["Mermaids"]["ConfirmAccept"] = TTH_PATH.Visit["Mermaids"]["Pre"].."ConfirmAccept.txt";
        TTH_PATH.Visit["Mermaids"]["SuccessAccept"] = TTH_PATH.Visit["Mermaids"]["Pre"].."SuccessAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"] = {};
        TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"] = TTH_PATH.Visit["Mermaids"]["Pre"].."MissionType/";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8RaceConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."KillCreature8RaceConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8SpecialConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."KillCreature8SpecialConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8TierConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."KillCreature8TierConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["LevelUpConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."LevelUpConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["ConstructTownConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."ConstructTownConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureTownConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."CaptureTownConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureDwellingConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."CaptureDwellingConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureMineConfirm"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."CaptureMineConfirm.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8RaceAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."KillCreature8RaceAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8SpecialAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."KillCreature8SpecialAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["KillCreature8TierAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."KillCreature8TierAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["LevelUpAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."LevelUpAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["ConstructTownAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."ConstructTownAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureTownAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."CaptureTownAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureDwellingAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."CaptureDwellingAccept.txt";
        TTH_PATH.Visit["Mermaids"]["MissionType"]["CaptureMineAccept"] = TTH_PATH.Visit["Mermaids"]["MissionType"]["Pre"].."CaptureMineAccept.txt";
      TTH_PATH.Visit["Shantiri"] = {};
        TTH_PATH.Visit["Shantiri"]["CombatLink"] = "/Arenas/CombatArena/FinalCombat/Bank_Shantiri.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)";
        TTH_PATH.Visit["Shantiri"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/Shantiri/";
        TTH_PATH.Visit["Shantiri"]["Text"] = TTH_PATH.Visit["Shantiri"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Shantiri"]["RadioTips"] = TTH_PATH.Visit["Shantiri"]["Pre"].."RadioTips.txt";
        TTH_PATH.Visit["Shantiri"]["HasComplete"] = TTH_PATH.Visit["Shantiri"]["Pre"].."HasComplete.txt";
        TTH_PATH.Visit["Shantiri"]["NotEnoughPower"] = TTH_PATH.Visit["Shantiri"]["Pre"].."NotEnoughPower.txt";
        TTH_PATH.Visit["Shantiri"]["Success"] = TTH_PATH.Visit["Shantiri"]["Pre"].."Success.txt";
        TTH_PATH.Visit["Shantiri"]["Courage"] = {};
        TTH_PATH.Visit["Shantiri"]["Courage"]["Pre"] = TTH_PATH.Visit["Shantiri"]["Pre"].."Courage/";
        TTH_PATH.Visit["Shantiri"]["Courage"]["Text"] = TTH_PATH.Visit["Shantiri"]["Courage"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Shantiri"]["Courage"]["Option"] = TTH_PATH.Visit["Shantiri"]["Courage"]["Pre"].."Option.txt";
        TTH_PATH.Visit["Shantiri"]["Courage"]["Confirm"] = TTH_PATH.Visit["Shantiri"]["Courage"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["Shantiri"]["Might"] = {};
        TTH_PATH.Visit["Shantiri"]["Might"]["Pre"] = TTH_PATH.Visit["Shantiri"]["Pre"].."Might/";
        TTH_PATH.Visit["Shantiri"]["Might"]["Text"] = TTH_PATH.Visit["Shantiri"]["Might"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Shantiri"]["Might"]["Option"] = TTH_PATH.Visit["Shantiri"]["Might"]["Pre"].."Option.txt";
        TTH_PATH.Visit["Shantiri"]["Might"]["Confirm"] = TTH_PATH.Visit["Shantiri"]["Might"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["Shantiri"]["Might"]["NotOptionMastery"] = TTH_PATH.Visit["Shantiri"]["Might"]["Pre"].."NotOptionMastery.txt";
        TTH_PATH.Visit["Shantiri"]["Might"]["NotOptionPerk"] = TTH_PATH.Visit["Shantiri"]["Might"]["Pre"].."NotOptionPerk.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"] = {};
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"] = TTH_PATH.Visit["Shantiri"]["Pre"].."Wisdom/";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["Text"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["Option"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."Option.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["HasNoArtifact1"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."HasNoArtifact1.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["HasNoArtifact2"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."HasNoArtifact2.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["Confirm"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["NotOptionMastery"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."NotOptionMastery.txt";
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["NotOptionPerk"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."NotOptionPerk.txt";
      TTH_PATH.Visit["Bank"] = {};
        TTH_PATH.Visit["Bank"]["CombatLink"] = "/Arenas/CombatArena/FinalCombat/Bank_Bank.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)";
        TTH_PATH.Visit["Bank"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/Bank/";
        TTH_PATH.Visit["Bank"]["Text"] = TTH_PATH.Visit["Bank"]["Pre"].."Text.txt";
        TTH_PATH.Visit["Bank"]["AdvText"] = TTH_PATH.Visit["Bank"]["Pre"].."AdvText.txt";
        TTH_PATH.Visit["Bank"]["Normal"] = TTH_PATH.Visit["Bank"]["Pre"].."Normal.txt";
        TTH_PATH.Visit["Bank"]["Adv"] = TTH_PATH.Visit["Bank"]["Pre"].."Adv.txt";
        TTH_PATH.Visit["Bank"]["RadioTips"] = TTH_PATH.Visit["Bank"]["Pre"].."RadioTips.txt";
        TTH_PATH.Visit["Bank"]["RewardSpellText"] = TTH_PATH.Visit["Bank"]["Pre"].."RewardSpellText.txt";
        TTH_PATH.Visit["Bank"]["RewardCreatureText"] = TTH_PATH.Visit["Bank"]["Pre"].."RewardCreatureText.txt";
        TTH_PATH.Visit["Bank"]["Status"] = {};
          TTH_PATH.Visit["Bank"]["Status"]["Pre"] = TTH_PATH.Visit["Bank"]["Pre"].."Status/";
          TTH_PATH.Visit["Bank"]["Status"]["Open"] = TTH_PATH.Visit["Bank"]["Status"]["Pre"].."Open.txt";
          TTH_PATH.Visit["Bank"]["Status"]["Close"] = TTH_PATH.Visit["Bank"]["Status"]["Pre"].."Close.txt";
          TTH_PATH.Visit["Bank"]["Status"]["HasVisited"] = TTH_PATH.Visit["Bank"]["Status"]["Pre"].."HasVisited.txt";
        TTH_PATH.Visit["Bank"]["Type"] = {};
          TTH_PATH.Visit["Bank"]["Type"]["Pre"] = TTH_PATH.Visit["Bank"]["Pre"].."Type/";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_WAGON"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Wagon.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_SKELETON"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Skeleton.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_UNKEMPT"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Unkempt.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_LEAN_TO"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."LeanTo.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_NAGA_BANK"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."NagaBank.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_BLOOD_TEMPLE"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."BloodTemple.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_CRYPT"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Crypt.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_GARGOYLE_STONEVAULT"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."GargoyleStonevault.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_DWARVEN_TREASURE"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."DwarvenTreasure.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_NAGA_TEMPLE"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."NagaTemple.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_CYCLOPS_STOCKPILE"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."CyclopsStockpile.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_DRAGON_UTOPIA"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."DragonUtopia.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_PYRAMID"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Pyramid.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_BUOY"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Buoy.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_SUNKEN_TEMPLE"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."SunkenTemple.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_DEMOLISH"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."Demolish.txt";
          TTH_PATH.Visit["Bank"]["Type"]["BUILDING_TREANT_THICKET"] = TTH_PATH.Visit["Bank"]["Type"]["Pre"].."TreantThicket.txt";
        TTH_PATH.Visit["Bank"]["RestDay"] = {};
          TTH_PATH.Visit["Bank"]["RestDay"]["Pre"] = TTH_PATH.Visit["Bank"]["Pre"].."RestDay/";
          TTH_PATH.Visit["Bank"]["RestDay"][0] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_0.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][1] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_1.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][2] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_2.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][3] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_3.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][4] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_4.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][5] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_5.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][6] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_6.txt";
          TTH_PATH.Visit["Bank"]["RestDay"][7] = TTH_PATH.Visit["Bank"]["RestDay"]["Pre"].."Day_7.txt";
        TTH_PATH.Visit["Bank"]["Reward"] = {};
          TTH_PATH.Visit["Bank"]["Reward"]["Pre"] = TTH_PATH.Visit["Bank"]["Pre"].."Reward/";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardResource] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardResource.txt";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardStat] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardStat.txt";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardSpell] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardSpell.txt";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardArtifact] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardArtifact.txt";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardCreature] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardCreature.txt";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardExp] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardExp.txt";
          TTH_PATH.Visit["Bank"]["Reward"][TTH_ENUM.BankRewardHidden] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardHidden.txt";
          TTH_PATH.Visit["Bank"]["Reward"]["PartOfRelic"] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."PartOfRelic.txt";
          TTH_PATH.Visit["Bank"]["Reward"]["RadioTips"] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RadioTips.txt";
          TTH_PATH.Visit["Bank"]["Reward"]["RewardSpellFail"] = TTH_PATH.Visit["Bank"]["Reward"]["Pre"].."RewardSpellFail.txt";
      TTH_PATH.Visit["WitchHut"] = {};
        TTH_PATH.Visit["WitchHut"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/WitchHut/";
        TTH_PATH.Visit["WitchHut"]["Text"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Title"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Title.txt";
        TTH_PATH.Visit["WitchHut"]["RadioTips"] = TTH_PATH.Visit["WitchHut"]["Pre"].."RadioTips.txt";
        TTH_PATH.Visit["WitchHut"]["HasLeave"] = TTH_PATH.Visit["WitchHut"]["Pre"].."HasLeave.txt";
        TTH_PATH.Visit["WitchHut"]["Success"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Success.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"] = {};
        TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Mastery/";
        TTH_PATH.Visit["WitchHut"]["Mastery"][0] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."1_logistics.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][1] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."2_enlightment.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][2] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."3_offense.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][3] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."4_defense.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][4] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."5_leadership.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][5] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."6_luck.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][6] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."7_warmachines.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][7] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."8_lightmagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][8] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."9_darkmagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][9] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."10_summoningmagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][10] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."11_destructivemagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][11] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."12_sorcery.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][12] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."13_special.txt";
        TTH_PATH.Visit["WitchHut"]["Reset"] = {};
        TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Reset/";
        TTH_PATH.Visit["WitchHut"]["Reset"][1] = TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"].."Day_1.txt";
        TTH_PATH.Visit["WitchHut"]["Reset"][2] = TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"].."Day_2.txt";
        TTH_PATH.Visit["WitchHut"]["Reset"][3] = TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"].."Day_3.txt";
        TTH_PATH.Visit["WitchHut"]["Reset"][4] = TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"].."Day_4.txt";
        TTH_PATH.Visit["WitchHut"]["Reset"][5] = TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"].."Day_5.txt";
        TTH_PATH.Visit["WitchHut"]["Reset"][6] = TTH_PATH.Visit["WitchHut"]["Reset"]["Pre"].."Day_6.txt";
        TTH_PATH.Visit["WitchHut"]["Fixed"] = {};
        TTH_PATH.Visit["WitchHut"]["Fixed"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Fixed/";
        TTH_PATH.Visit["WitchHut"]["Fixed"]["Text"] = TTH_PATH.Visit["WitchHut"]["Fixed"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Fixed"]["Option"] = TTH_PATH.Visit["WitchHut"]["Fixed"]["Pre"].."Option.txt";
        TTH_PATH.Visit["WitchHut"]["Fixed"]["NotEnoughSlot"] = TTH_PATH.Visit["WitchHut"]["Fixed"]["Pre"].."NotEnoughSlot.txt";
        TTH_PATH.Visit["WitchHut"]["Fixed"]["Confirm"] = TTH_PATH.Visit["WitchHut"]["Fixed"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["WitchHut"]["Fixed"]["Success"] = TTH_PATH.Visit["WitchHut"]["Fixed"]["Pre"].."Success.txt";
        TTH_PATH.Visit["WitchHut"]["Choose"] = {};
        TTH_PATH.Visit["WitchHut"]["Choose"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Choose/";
        TTH_PATH.Visit["WitchHut"]["Choose"]["Text"] = TTH_PATH.Visit["WitchHut"]["Choose"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Choose"]["Option"] = TTH_PATH.Visit["WitchHut"]["Choose"]["Pre"].."Option.txt";
        TTH_PATH.Visit["WitchHut"]["Choose"]["NotOptionMastery"] = TTH_PATH.Visit["WitchHut"]["Choose"]["Pre"].."NotOptionMastery.txt";
        TTH_PATH.Visit["WitchHut"]["Choose"]["Confirm"] = TTH_PATH.Visit["WitchHut"]["Choose"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["WitchHut"]["Choose"]["Success"] = TTH_PATH.Visit["WitchHut"]["Choose"]["Pre"].."Success.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"] = {};
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Bonus/";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Text"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Option"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Option.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["NotOptionMastery"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."NotOptionMastery.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["NotEnoughGold"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Confirm"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Success"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Success.txt";
        TTH_PATH.Visit["WitchHut"]["Race"] = {};
        TTH_PATH.Visit["WitchHut"]["Race"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Race/";
        TTH_PATH.Visit["WitchHut"]["Race"]["Text"] = TTH_PATH.Visit["WitchHut"]["Race"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Race"]["Option"] = TTH_PATH.Visit["WitchHut"]["Race"]["Pre"].."Option.txt";
        TTH_PATH.Visit["WitchHut"]["Race"]["NotEnoughSlot"] = TTH_PATH.Visit["WitchHut"]["Race"]["Pre"].."NotEnoughSlot.txt";
        TTH_PATH.Visit["WitchHut"]["Race"]["NotEnoughGold"] = TTH_PATH.Visit["WitchHut"]["Race"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Visit["WitchHut"]["Race"]["Confirm"] = TTH_PATH.Visit["WitchHut"]["Race"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["WitchHut"]["Race"]["Success"] = TTH_PATH.Visit["WitchHut"]["Race"]["Pre"].."Success.txt";
        TTH_PATH.Visit["WitchHut"]["Artifact"] = {};
        TTH_PATH.Visit["WitchHut"]["Artifact"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Artifact/";
        TTH_PATH.Visit["WitchHut"]["Artifact"]["Text"] = TTH_PATH.Visit["WitchHut"]["Artifact"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Artifact"]["Option"] = TTH_PATH.Visit["WitchHut"]["Artifact"]["Pre"].."Option.txt";
        TTH_PATH.Visit["WitchHut"]["Artifact"]["NotEnoughGold"] = TTH_PATH.Visit["WitchHut"]["Artifact"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Visit["WitchHut"]["Artifact"]["Confirm"] = TTH_PATH.Visit["WitchHut"]["Artifact"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["WitchHut"]["Artifact"]["Success"] = TTH_PATH.Visit["WitchHut"]["Artifact"]["Pre"].."Success.txt";

      TTH_PATH.WitchHutDesc4Mastery = {
        "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/1_logistics.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/2_enlightment.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/3_offense.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/4_defense.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/5_leadership.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/6_luck.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/7_warmachines.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/8_lightmagic.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/9_darkmagic.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/10_summoningmagic.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/11_destructivemagic.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/12_sorcery.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Mastery/13_special.txt"
      };
      TTH_PATH.WitchHutDesc4Reset = {
        "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Reset/Day_1.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Reset/Day_2.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Reset/Day_3.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Reset/Day_4.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Reset/Day_5.txt"
        , "/Text/Game/Scripts/TTH_PATH/Visit/Witch/Reset/Day_5+.txt"
      };

    TTH_PATH.Sphinx = {};
      TTH_PATH.Sphinx["HasVisited"] = "/Text/Game/Scripts/TTH_Path/Visit/Sphinx/HasVisited.txt";

    TTH_PATH.Mayor = {};
      TTH_PATH.Mayor["BeginExpedition"] = "/Text/Game/Scripts/TTH_Path/Mayor/BeginExpedition.txt";
      TTH_PATH.Mayor["EndExpedition"] = "/Text/Game/Scripts/TTH_Path/Mayor/EndExpedition.txt";

    TTH_PATH.FlyingSign = {};
      TTH_PATH.FlyingSign["SignHero4TownRecruit"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/SignHero4TownRecruit.txt";
      TTH_PATH.FlyingSign["SignHero4TownJoin"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/SignHero4TownJoin.txt";
      TTH_PATH.FlyingSign["AddCreature2Hero"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/AddCreature2Hero.txt";
      TTH_PATH.FlyingSign["CastCreature2Hero"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/CastCreature2Hero.txt";
      TTH_PATH.FlyingSign["ReviveCreature2Hero"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/ReviveCreature2Hero.txt";
      TTH_PATH.FlyingSign["ReleaseCreature2Hero"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/ReleaseCreature2Hero.txt";
      TTH_PATH.FlyingSign["RecoveryMaxMove2Hero"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/RecoveryMaxMove2Hero.txt";
      TTH_PATH.FlyingSign["RecoveryMaxMana2Hero"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/RecoveryMaxMana2Hero.txt";
      TTH_PATH.FlyingSign["TeachHeroSpell"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/TeachHeroSpell.txt";
      TTH_PATH.FlyingSign["GiveHeroArtifact"] = "/Text/Game/Scripts/TTH_Path/FlyingSign/GiveHeroArtifact.txt";

    TTH_PATH.FuncPre = "/Text/Game/Scripts/TTH_Func/";

    TTH_PATH.Talent = {};
    TTH_PATH.Talent["Pre"] = TTH_PATH.FuncPre.."Talent/";
    -- Talent 1
      -- Cast
        TTH_PATH.Talent["Cast"] = {};
        TTH_PATH.Talent["Cast"]["Pre"] = TTH_PATH.Talent["Pre"].."Cast/";
        TTH_PATH.Talent["Cast"]["Gcd"] = TTH_PATH.Talent["Cast"]["Pre"].."Gcd.txt";
        TTH_PATH.Talent["Cast"]["NoSavedTimes"] = TTH_PATH.Talent["Cast"]["Pre"].."NoSavedTimes.txt";
        TTH_PATH.Talent["Cast"]["NoSuitableCreature"] = TTH_PATH.Talent["Cast"]["Pre"].."NoSuitableCreature.txt";
        TTH_PATH.Talent["Cast"]["Limit"] = TTH_PATH.Talent["Cast"]["Pre"].."Limit.txt";
        TTH_PATH.Talent["Cast"]["Confirm"] = TTH_PATH.Talent["Cast"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Cast"]["Success"] = TTH_PATH.Talent["Cast"]["Pre"].."Success.txt";

        TTH_PATH.Talent["Cast"]["Hero"] = {};
        TTH_PATH.Talent["Cast"]["Hero"]["Pre"] = TTH_PATH.Talent["Cast"]["Pre"].."Hero/";
        TTH_PATH.Talent["Cast"]["Hero"]["OrtanCassius"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."OrtanCassius.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Sanguinius"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Sanguinius.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Avitus"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Avitus.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Gelu"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Gelu.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Itil"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Itil.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Dracon"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Dracon.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Adelaide"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Adelaide.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Thant"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Thant.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["LordHaart"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."LordHaart.txt";
        TTH_PATH.Talent["Cast"]["Hero"]["Azar"] = TTH_PATH.Talent["Cast"]["Hero"]["Pre"].."Azar.txt";
      -- Nathaniel 001 埃兰妮
        TTH_PATH.Talent["Nathaniel"] = {};
        TTH_PATH.Talent["Nathaniel"]["Pre"] = TTH_PATH.Talent["Pre"].."001-Nathaniel/";
        TTH_PATH.Talent["Nathaniel"]["Text"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Nathaniel"]["NotEnoughCreature"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."NotEnoughCreature.txt";
        TTH_PATH.Talent["Nathaniel"]["ConfirmActive"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."ConfirmActive.txt";
        TTH_PATH.Talent["Nathaniel"]["LoseCreature"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."LoseCreature.txt";
      -- Isabell 006 伊莎贝尔
        TTH_PATH.Talent["Isabell"] = {};
        TTH_PATH.Talent["Isabell"]["Pre"] = TTH_PATH.Talent["Pre"].."006-Isabell/";
        TTH_PATH.Talent["Isabell"]["Text"] = TTH_PATH.Talent["Isabell"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Isabell"]["Option10"] = TTH_PATH.Talent["Isabell"]["Pre"].."Option10.txt";
        TTH_PATH.Talent["Isabell"]["Option100"] = TTH_PATH.Talent["Isabell"]["Pre"].."Option100.txt";
        TTH_PATH.Talent["Isabell"]["Option1000"] = TTH_PATH.Talent["Isabell"]["Pre"].."Option1000.txt";
        TTH_PATH.Talent["Isabell"]["Option10000"] = TTH_PATH.Talent["Isabell"]["Pre"].."Option10000.txt";
        TTH_PATH.Talent["Isabell"]["NotEnoughGold"] = TTH_PATH.Talent["Isabell"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Isabell"]["Confirm"] = TTH_PATH.Talent["Isabell"]["Pre"].."Confirm.txt";
      -- Brem 010 拉特格
        TTH_PATH.Talent["Brem"] = {};
        TTH_PATH.Talent["Brem"]["Pre"] = TTH_PATH.Talent["Pre"].."010-Brem/";
        TTH_PATH.Talent["Brem"]["Text"] = TTH_PATH.Talent["Brem"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Brem"]["NotEnoughTimes"] = TTH_PATH.Talent["Brem"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Brem"]["NotEnoughGold"] = TTH_PATH.Talent["Brem"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Brem"]["OptionTemplate"] = TTH_PATH.Talent["Brem"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Brem"]["NoSuitableStables"] = TTH_PATH.Talent["Brem"]["Pre"].."NoSuitableStables.txt";
        TTH_PATH.Talent["Brem"]["RadioTips"] = TTH_PATH.Talent["Brem"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Brem"]["HasStables"] = TTH_PATH.Talent["Brem"]["Pre"].."HasStables.txt";
        TTH_PATH.Talent["Brem"]["ConfirmVisitStables"] = TTH_PATH.Talent["Brem"]["Pre"].."ConfirmVisitStables.txt";
        TTH_PATH.Talent["Brem"]["SuccessVisitStables"] = TTH_PATH.Talent["Brem"]["Pre"].."SuccessVisitStables.txt";
        TTH_PATH.Talent["Brem"]["Title"] = TTH_PATH.Talent["Brem"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Brem"]["Desc"] = TTH_PATH.Talent["Brem"]["Pre"].."Desc.txt";
      -- RedHeavenHero06 17 加布里埃尔
        TTH_PATH.Talent["RedHeavenHero06"] = {};
        TTH_PATH.Talent["RedHeavenHero06"]["Pre"] = TTH_PATH.Talent["Pre"].."017-RedHeavenHero06/";
        TTH_PATH.Talent["RedHeavenHero06"]["Text"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."Text.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["NotEnoughTimes"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["OptionTemplate"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["NoSuitableMine"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."NoSuitableMine.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["ReachMaxLevel"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."ReachMaxLevel.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["Confirm"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["Success"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."Success.txt";
      -- Avitus 157 阿维图斯
        TTH_PATH.Talent["Avitus"] = {};
        TTH_PATH.Talent["Avitus"]["Pre"] = TTH_PATH.Talent["Pre"].."157-Avitus/";
        TTH_PATH.Talent["Avitus"]["Text"] = TTH_PATH.Talent["Avitus"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Avitus"]["OptionAnalysisSkill"] = TTH_PATH.Talent["Avitus"]["Pre"].."OptionAnalysisSkill.txt";
        TTH_PATH.Talent["Avitus"]["OptionAppointEffect"] = TTH_PATH.Talent["Avitus"]["Pre"].."OptionAppointEffect.txt";
        TTH_PATH.Talent["Avitus"]["Unload"] = TTH_PATH.Talent["Avitus"]["Pre"].."Unload.txt";
        TTH_PATH.Talent["Avitus"]["AnalysisSkill"] = {};
        TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Pre"] = TTH_PATH.Talent["Avitus"]["Pre"].."AnalysisSkill/";
        TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Text"] = TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["NoOption"] = TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["NoSuitableSkill"] = TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Pre"].."NoSuitableSkill.txt";
        TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Success"] = TTH_PATH.Talent["Avitus"]["AnalysisSkill"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Avitus"]["AppointEffect"] = {};
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"] = TTH_PATH.Talent["Avitus"]["Pre"].."AppointEffect/";
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["Text"] = TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["Unload"] = TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"].."Unload.txt";
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["Blocked"] = TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"].."Blocked.txt";
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["NoOption"] = TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["Cancel"] = TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"].."Cancel.txt";
        TTH_PATH.Talent["Avitus"]["AppointEffect"]["Success"] = TTH_PATH.Talent["Avitus"]["AppointEffect"]["Pre"].."Success.txt";
      -- Metlirn 022 安文
        TTH_PATH.Talent["Metlirn"] = {};
        TTH_PATH.Talent["Metlirn"]["Pre"] = TTH_PATH.Talent["Pre"].."022-Metlirn/";
        TTH_PATH.Talent["Metlirn"]["Text"] = TTH_PATH.Talent["Metlirn"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Metlirn"]["NotEnoughTimes"] = TTH_PATH.Talent["Metlirn"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Metlirn"]["RadioTipsRace"] = TTH_PATH.Talent["Metlirn"]["Pre"].."RadioTipsRace.txt";
        TTH_PATH.Talent["Metlirn"]["RadioTipsLevel"] = TTH_PATH.Talent["Metlirn"]["Pre"].."RadioTipsLevel.txt";
        TTH_PATH.Talent["Metlirn"]["OptionGrowthTemplate"] = TTH_PATH.Talent["Metlirn"]["Pre"].."OptionGrowthTemplate.txt";
        TTH_PATH.Talent["Metlirn"]["RadioTipsGrowth"] = TTH_PATH.Talent["Metlirn"]["Pre"].."RadioTipsGrowth.txt";
        TTH_PATH.Talent["Metlirn"]["Confirm"] = TTH_PATH.Talent["Metlirn"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Metlirn"]["Success"] = TTH_PATH.Talent["Metlirn"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Metlirn"]["CombatLink"] = "/Arenas/CombatArena/FinalCombat/Bank_Elf.(AdvMapTownCombat).xdb#xpointer(/AdvMapTownCombat)";
      -- Kyrre 029 凯琳
        TTH_PATH.Talent["Kyrre"] = {};
        TTH_PATH.Talent["Kyrre"]["Pre"] = TTH_PATH.Talent["Pre"].."029-Kyrre/";
        TTH_PATH.Talent["Kyrre"]["GainRecordPoint"] = TTH_PATH.Talent["Kyrre"]["Pre"].."GainRecordPoint.txt";
      -- Gillion 030 吉尔里恩
        TTH_PATH.Talent["Gillion"] = {};
        TTH_PATH.Talent["Gillion"]["Pre"] = TTH_PATH.Talent["Pre"].."030-Gillion/";
        TTH_PATH.Talent["Gillion"]["Text"] = TTH_PATH.Talent["Gillion"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Gillion"]["NotEnoughTimes"] = TTH_PATH.Talent["Gillion"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Gillion"]["NotEnoughGold"] = TTH_PATH.Talent["Gillion"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Gillion"]["OptionTemplate"] = TTH_PATH.Talent["Gillion"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Gillion"]["NoSuitableRedwoord"] = TTH_PATH.Talent["Gillion"]["Pre"].."NoSuitableRedwoord.txt";
        TTH_PATH.Talent["Gillion"]["RadioTips"] = TTH_PATH.Talent["Gillion"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Gillion"]["HasRedwoord"] = TTH_PATH.Talent["Gillion"]["Pre"].."HasRedwoord.txt";
        TTH_PATH.Talent["Gillion"]["ConfirmVisitRedwoord"] = TTH_PATH.Talent["Gillion"]["Pre"].."ConfirmVisitRedwoord.txt";
        TTH_PATH.Talent["Gillion"]["SuccessVisitRedwoord"] = TTH_PATH.Talent["Gillion"]["Pre"].."SuccessVisitRedwoord.txt";
        TTH_PATH.Talent["Gillion"]["Title"] = TTH_PATH.Talent["Gillion"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Gillion"]["Desc"] = TTH_PATH.Talent["Gillion"]["Pre"].."Desc.txt";
      -- Melodia 032 马洛迪亚
        TTH_PATH.Talent["Melodia"] = {};
        TTH_PATH.Talent["Melodia"]["Pre"] = TTH_PATH.Talent["Pre"].."032/";
        TTH_PATH.Talent["Melodia"]["Text"] = TTH_PATH.Talent["Melodia"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Melodia"]["NotEnoughTimes"] = TTH_PATH.Talent["Melodia"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Melodia"]["Success"] = TTH_PATH.Talent["Melodia"]["Pre"].."Success.txt";
      -- Elleshar 036 温利尔
        TTH_PATH.Talent["Elleshar"] = {};
        TTH_PATH.Talent["Elleshar"]["Pre"] = TTH_PATH.Talent["Pre"].."036-Elleshar/";
        TTH_PATH.Talent["Elleshar"]["Cd"] = TTH_PATH.Talent["Elleshar"]["Pre"].."Cd.txt";
        TTH_PATH.Talent["Elleshar"]["Recovery"] = TTH_PATH.Talent["Elleshar"]["Pre"].."Recovery.txt";
      -- Ildar 037 娜瑞莎
        TTH_ENUM.IldarLight = 0;
        TTH_ENUM.IldarDark = 1;
        TTH_PATH.Talent["Ildar"] = {};
        TTH_PATH.Talent["Ildar"]["Pre"] = TTH_PATH.Talent["Pre"].."037/";
        TTH_PATH.Talent["Ildar"]["Text"] = TTH_PATH.Talent["Ildar"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Ildar"][TTH_ENUM.IldarLight] = TTH_PATH.Talent["Ildar"]["Pre"].."Light.txt";
        TTH_PATH.Talent["Ildar"][TTH_ENUM.IldarDark] = TTH_PATH.Talent["Ildar"]["Pre"].."Dark.txt";
        TTH_PATH.Talent["Ildar"]["ConfirmActive"] = TTH_PATH.Talent["Ildar"]["Pre"].."ConfirmActive.txt";
        TTH_PATH.Talent["Ildar"]["Success"] = TTH_PATH.Talent["Ildar"]["Pre"].."Success.txt";
      -- Rissa 046 瑞萨
        TTH_PATH.Talent["Rissa"] = {};
        TTH_PATH.Talent["Rissa"]["Pre"] = TTH_PATH.Talent["Pre"].."046/";
        TTH_PATH.Talent["Rissa"]["Text"] = TTH_PATH.Talent["Rissa"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Rissa"]["NotEnoughTimes"] = TTH_PATH.Talent["Rissa"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Rissa"]["Success"] = TTH_PATH.Talent["Rissa"]["Pre"].."Success.txt";
      -- Razzak 047 纳克西斯
        TTH_PATH.Talent["Razzak"] = {};
        TTH_PATH.Talent["Razzak"]["Pre"] = TTH_PATH.Talent["Pre"].."047-Razzak/";
        TTH_PATH.Talent["Razzak"]["Text"] = TTH_PATH.Talent["Razzak"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Razzak"]["Unknow"] = TTH_PATH.Talent["Razzak"]["Pre"].."Unknow.txt";
        TTH_PATH.Talent["Razzak"]["RadioTipsType"] = TTH_PATH.Talent["Razzak"]["Pre"].."RadioTipsType.txt";
        TTH_PATH.Talent["Razzak"]["RadioTipsSpell"] = TTH_PATH.Talent["Razzak"]["Pre"].."RadioTipsSpell.txt";
        TTH_PATH.Talent["Razzak"]["NoSuitableSpell"] = TTH_PATH.Talent["Razzak"]["Pre"].."NoSuitableSpell.txt";
        TTH_PATH.Talent["Razzak"]["ConfirmActive"] = TTH_PATH.Talent["Razzak"]["Pre"].."ConfirmActive.txt";
        TTH_PATH.Talent["Razzak"]["Cancel"] = TTH_PATH.Talent["Razzak"]["Pre"].."Cancel.txt";
        TTH_PATH.Talent["Razzak"]["Success"] = TTH_PATH.Talent["Razzak"]["Pre"].."Success.txt";
      -- Maahir 050 马希尔
        TTH_PATH.Talent["Maahir"] = {};
        TTH_PATH.Talent["Maahir"]["Pre"] = TTH_PATH.Talent["Pre"].."050/";
        TTH_PATH.Talent["Maahir"]["Text"] = TTH_PATH.Talent["Maahir"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Maahir"]["NoOtherHero"] = TTH_PATH.Talent["Maahir"]["Pre"].."NoOtherHero.txt";
        TTH_PATH.Talent["Maahir"]["NotEnoughOperTimes"] = TTH_PATH.Talent["Maahir"]["Pre"].."NotEnoughOperTimes.txt";
        TTH_PATH.Talent["Maahir"]["NotEnoughMana"] = TTH_PATH.Talent["Maahir"]["Pre"].."NotEnoughMana.txt";
        TTH_PATH.Talent["Maahir"]["NotSuitableHero"] = TTH_PATH.Talent["Maahir"]["Pre"].."NotSuitableHero.txt";
        TTH_PATH.Talent["Maahir"]["Success"] = TTH_PATH.Talent["Maahir"]["Pre"].."Success.txt";
      -- Astral 055 努尔
        TTH_PATH.Talent["Astral"] = {};
        TTH_PATH.Talent["Astral"]["Pre"] = TTH_PATH.Talent["Pre"].."055-Astral/";
        TTH_PATH.Talent["Astral"]["Text"] = TTH_PATH.Talent["Astral"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Astral"]["NotEnoughTimes"] = TTH_PATH.Talent["Astral"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Astral"]["NotEnoughGold"] = TTH_PATH.Talent["Astral"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Astral"]["OptionTemplate"] = TTH_PATH.Talent["Astral"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Astral"]["NoSuitableMagicNode"] = TTH_PATH.Talent["Astral"]["Pre"].."NoSuitableMagicNode.txt";
        TTH_PATH.Talent["Astral"]["HasMagicNode"] = TTH_PATH.Talent["Astral"]["Pre"].."HasMagicNode.txt";
        TTH_PATH.Talent["Astral"]["ConfirmVisitMagicNode"] = TTH_PATH.Talent["Astral"]["Pre"].."ConfirmVisitMagicNode.txt";
        TTH_PATH.Talent["Astral"]["SuccessVisitMagicNode"] = TTH_PATH.Talent["Astral"]["Pre"].."SuccessVisitMagicNode.txt";
        TTH_PATH.Talent["Astral"]["Title"] = TTH_PATH.Talent["Astral"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Astral"]["Desc"] = TTH_PATH.Talent["Astral"]["Pre"].."Desc.txt";
      -- Menel 060 基特拉
        TTH_PATH.Talent["Menel"] = {};
        TTH_PATH.Talent["Menel"]["Pre"] = TTH_PATH.Talent["Pre"].."060-Menel/";
        TTH_PATH.Talent["Menel"]["Text"] = TTH_PATH.Talent["Menel"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Menel"]["Active"] = {};
        TTH_PATH.Talent["Menel"]["Active"]["Pre"] = TTH_PATH.Talent["Menel"]["Pre"].."Active/";
        TTH_PATH.Talent["Menel"]["Active"]["NotEnoughQuota"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NotEnoughQuota.txt";
        TTH_PATH.Talent["Menel"]["Active"]["NotEnoughRes"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NotEnoughRes.txt";
        TTH_PATH.Talent["Menel"]["Active"]["TipsDwellingLevel"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."TipsDwellingLevel.txt";
        TTH_PATH.Talent["Menel"]["Active"]["TipsDirection"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."TipsDirection.txt";
        TTH_PATH.Talent["Menel"]["Active"]["NegetivePlace"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NegetivePlace.txt";
        TTH_PATH.Talent["Menel"]["Active"]["Success"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Menel"]["Active"]["Title"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Menel"]["Active"]["Desc"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Desc.txt";
        TTH_PATH.Talent["Menel"]["Daily"] = {};
        TTH_PATH.Talent["Menel"]["Daily"]["Pre"] = TTH_PATH.Talent["Menel"]["Pre"].."Daily/";
        TTH_PATH.Talent["Menel"]["Daily"]["TitleCapture"] = TTH_PATH.Talent["Menel"]["Daily"]["Pre"].."TitleCapture.txt";
        TTH_PATH.Talent["Menel"]["Daily"]["DescCapture"] = TTH_PATH.Talent["Menel"]["Daily"]["Pre"].."DescCapture.txt";
      -- Sylsai 062 希尔塞
        TTH_PATH.Talent["Sylsai"] = {};
        TTH_PATH.Talent["Sylsai"]["Pre"] = TTH_PATH.Talent["Pre"].."062-Sylsai/";
        TTH_PATH.Talent["Sylsai"]["Text"] = TTH_PATH.Talent["Sylsai"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreature"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreature.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreatureNotEnoughOperTimes"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreatureNotEnoughOperTimes.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreatureEmptyDiplomacyCreature"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreatureEmptyDiplomacyCreature.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreatureMatchSpecialCreature"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreatureMatchSpecialCreature.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreatureConfirmInit"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreatureConfirmInit.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreatureConfirmChange"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreatureConfirmChange.txt";
        TTH_PATH.Talent["Sylsai"]["AppointCreatureSuccess"] = TTH_PATH.Talent["Sylsai"]["Pre"].."AppointCreatureSuccess.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacy"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacy.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyNoAppointCreature"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyNoAppointCreature.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyNotEnoughOperTimes"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyNotEnoughOperTimes.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyNotEnoughGold"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyNotEnoughGold.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyOptionTemplate"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyOptionTemplate.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyNoSuitableDiplomacy"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyNoSuitableDiplomacy.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyRadioTips"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyRadioTips.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyHasDiplomacy"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyHasDiplomacy.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyConfirm"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyConfirm.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyTitle"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyTitle.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacyDesc"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacyDesc.txt";
        TTH_PATH.Talent["Sylsai"]["ConvertDiplomacySuccess"] = TTH_PATH.Talent["Sylsai"]["Pre"].."ConvertDiplomacySuccess.txt";
      -- Welygg 063 威欧里格
        TTH_PATH.Talent["Welygg"] = {};
        TTH_PATH.Talent["Welygg"]["Pre"] = TTH_PATH.Talent["Pre"].."063-Welygg/";
        TTH_PATH.Talent["Welygg"]["Text"] = TTH_PATH.Talent["Welygg"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Welygg"]["NoOption"] = TTH_PATH.Talent["Welygg"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Welygg"]["NotEnoughPreCreatureNumber"] = TTH_PATH.Talent["Welygg"]["Pre"].."NotEnoughPreCreatureNumber.txt";
        TTH_PATH.Talent["Welygg"]["Confirm"] = TTH_PATH.Talent["Welygg"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Welygg"]["NotEnoughPostCreatureNumber"] = TTH_PATH.Talent["Welygg"]["Pre"].."NotEnoughPostCreatureNumber.txt";
        TTH_PATH.Talent["Welygg"]["Success"] = TTH_PATH.Talent["Welygg"]["Pre"].."Success.txt";
      -- Almegir 071 伊蓓丝
        TTH_PATH.Talent["Almegir"] = {};
        TTH_PATH.Talent["Almegir"]["Pre"] = TTH_PATH.Talent["Pre"].."071-Almegir/";
        TTH_PATH.Talent["Almegir"]["Text"] = TTH_PATH.Talent["Almegir"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Almegir"]["NotEnoughTimes"] = TTH_PATH.Talent["Almegir"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Almegir"]["NotEnoughMana"] = TTH_PATH.Talent["Almegir"]["Pre"].."NotEnoughMana.txt";
        TTH_PATH.Talent["Almegir"]["Success"] = TTH_PATH.Talent["Almegir"]["Pre"].."Success.txt";
      -- Inagost 072 塞纳特
        TTH_PATH.Talent["Inagost"] = {};
        TTH_PATH.Talent["Inagost"]["Pre"] = TTH_PATH.Talent["Pre"].."072-Inagost/";
        TTH_PATH.Talent["Inagost"]["Text"] = TTH_PATH.Talent["Inagost"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Inagost"]["HasUsed"] = TTH_PATH.Talent["Inagost"]["Pre"].."HasUsed.txt";
        TTH_PATH.Talent["Inagost"]["Confirm"] = TTH_PATH.Talent["Inagost"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Inagost"]["K2P"] = TTH_PATH.Talent["Inagost"]["Pre"].."K2P.txt";
        TTH_PATH.Talent["Inagost"]["P2K"] = TTH_PATH.Talent["Inagost"]["Pre"].."P2K.txt";
      -- Kastore 073 卡斯托雷
        TTH_PATH.Talent["Kastore"] = {};
        TTH_PATH.Talent["Kastore"]["Pre"] = TTH_PATH.Talent["Pre"].."073-Kastore/";
        TTH_PATH.Talent["Kastore"]["Text"] = TTH_PATH.Talent["Kastore"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Kastore"]["OptionAnalysisSkill"] = TTH_PATH.Talent["Kastore"]["Pre"].."OptionAnalysisSkill.txt";
        TTH_PATH.Talent["Kastore"]["OptionAppointEffect"] = TTH_PATH.Talent["Kastore"]["Pre"].."OptionAppointEffect.txt";
        TTH_PATH.Talent["Kastore"]["Unload"] = TTH_PATH.Talent["Kastore"]["Pre"].."Unload.txt";
        TTH_PATH.Talent["Kastore"]["AnalysisSkill"] = {};
        TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Pre"] = TTH_PATH.Talent["Kastore"]["Pre"].."AnalysisSkill/";
        TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Text"] = TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["NoOption"] = TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["NoSuitableSkill"] = TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Pre"].."NoSuitableSkill.txt";
        TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Success"] = TTH_PATH.Talent["Kastore"]["AnalysisSkill"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Kastore"]["AppointEffect"] = {};
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"] = TTH_PATH.Talent["Kastore"]["Pre"].."AppointEffect/";
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["Text"] = TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["Unload"] = TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"].."Unload.txt";
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["Blocked"] = TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"].."Blocked.txt";
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["NoOption"] = TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["Cancel"] = TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"].."Cancel.txt";
        TTH_PATH.Talent["Kastore"]["AppointEffect"]["Success"] = TTH_PATH.Talent["Kastore"]["AppointEffect"]["Pre"].."Success.txt";
      -- Nikolay 080 尼科莱
        TTH_PATH.Talent["Nikolay"] = {};
        TTH_PATH.Talent["Nikolay"]["Pre"] = TTH_PATH.Talent["Pre"].."080-Nikolay/";
        TTH_PATH.Talent["Nikolay"]["Text"] = TTH_PATH.Talent["Nikolay"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Nikolay"]["NecTown"] = TTH_PATH.Talent["Nikolay"]["Pre"].."NecTown.txt";
        TTH_PATH.Talent["Nikolay"]["NotEnoughCombat"] = TTH_PATH.Talent["Nikolay"]["Pre"].."NotEnoughCombat.txt";
      -- Karissa 084 卡里萨
        TTH_PATH.Talent["Karissa"] = {};
        TTH_PATH.Talent["Karissa"]["Pre"] = TTH_PATH.Talent["Pre"].."084-Karissa/";
        TTH_PATH.Talent["Karissa"]["Text"] = TTH_PATH.Talent["Karissa"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Karissa"]["NoSuitableCreature"] = TTH_PATH.Talent["Karissa"]["Pre"].."NoSuitableCreature.txt";
        TTH_PATH.Talent["Karissa"]["Success"] = TTH_PATH.Talent["Karissa"]["Pre"].."Success.txt";
      -- Pelt 094 弗拉基米尔
        TTH_PATH.Talent["Pelt"] = {};
        TTH_PATH.Talent["Pelt"]["Pre"] = TTH_PATH.Talent["Pre"].."094/";
        TTH_PATH.Talent["Pelt"]["Text"] = TTH_PATH.Talent["Pelt"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Pelt"]["GainPower"] = TTH_PATH.Talent["Pelt"]["Pre"].."GainPower.txt";
        TTH_PATH.Talent["Pelt"]["NoCreature4Cast"] = TTH_PATH.Talent["Pelt"]["Pre"].."NoCreature4Cast.txt";
        TTH_PATH.Talent["Pelt"]["Success"] = TTH_PATH.Talent["Pelt"]["Pre"].."Success.txt";
      -- Sandro 095 山德鲁
        TTH_PATH.Talent["Sandro"] = {};
        TTH_PATH.Talent["Sandro"]["Pre"] = TTH_PATH.Talent["Pre"].."095-Sandro/";
        TTH_PATH.Talent["Sandro"]["Text"] = TTH_PATH.Talent["Sandro"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Sandro"]["OptionAnalysisSpell"] = TTH_PATH.Talent["Sandro"]["Pre"].."OptionAnalysisSpell.txt";
        TTH_PATH.Talent["Sandro"]["OptionAppointEffect"] = TTH_PATH.Talent["Sandro"]["Pre"].."OptionAppointEffect.txt";
        TTH_PATH.Talent["Sandro"]["Unload"] = TTH_PATH.Talent["Sandro"]["Pre"].."Unload.txt";
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"] = {};
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Pre"] = TTH_PATH.Talent["Sandro"]["Pre"].."AnalysisSpell/";
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Text"] = TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["NotEnoughTimes"] = TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["NoOption"] = TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["NoSuitableSpell"] = TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Pre"].."NoSuitableSpell.txt";
        TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Success"] = TTH_PATH.Talent["Sandro"]["AnalysisSpell"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Sandro"]["AppointEffect"] = {};
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"] = TTH_PATH.Talent["Sandro"]["Pre"].."AppointEffect/";
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["Text"] = TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["Unload"] = TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"].."Unload.txt";
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["Blocked"] = TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"].."Blocked.txt";
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["NoOption"] = TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"].."NoOption.txt";
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["Cancel"] = TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"].."Cancel.txt";
        TTH_PATH.Talent["Sandro"]["AppointEffect"]["Success"] = TTH_PATH.Talent["Sandro"]["AppointEffect"]["Pre"].."Success.txt";
      -- Marder 103 马巴斯
        TTH_PATH.Talent["Marder"] = {};
        TTH_PATH.Talent["Marder"]["Pre"] = TTH_PATH.Talent["Pre"].."103-Marder/";
        TTH_PATH.Talent["Marder"]["Text"] = TTH_PATH.Talent["Marder"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Marder"]["NotEnoughTimes"] = TTH_PATH.Talent["Marder"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Marder"]["Success"] = TTH_PATH.Talent["Marder"]["Pre"].."Success.txt";
      -- Nymus 108 耐莫斯
        TTH_PATH.Talent["Nymus"] = {};
        TTH_PATH.Talent["Nymus"]["Pre"] = TTH_PATH.Talent["Pre"].."108-Nymus/";
        TTH_PATH.Talent["Nymus"]["Text"] = TTH_PATH.Talent["Nymus"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Nymus"]["NotEnoughTimes"] = TTH_PATH.Talent["Nymus"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Nymus"]["NotEnoughGold"] = TTH_PATH.Talent["Nymus"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Nymus"]["OptionTemplate"] = TTH_PATH.Talent["Nymus"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Nymus"]["NoSuitablePortal"] = TTH_PATH.Talent["Nymus"]["Pre"].."NoSuitablePortal.txt";
        TTH_PATH.Talent["Nymus"]["RadioTips"] = TTH_PATH.Talent["Nymus"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Nymus"]["HasPortal"] = TTH_PATH.Talent["Nymus"]["Pre"].."HasPortal.txt";
        TTH_PATH.Talent["Nymus"]["ConfirmVisitPortal"] = TTH_PATH.Talent["Nymus"]["Pre"].."ConfirmVisitPortal.txt";
        TTH_PATH.Talent["Nymus"]["SuccessVisitPortal"] = TTH_PATH.Talent["Nymus"]["Pre"].."SuccessVisitPortal.txt";
        TTH_PATH.Talent["Nymus"]["Title"] = TTH_PATH.Talent["Nymus"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Nymus"]["Desc"] = TTH_PATH.Talent["Nymus"]["Pre"].."Desc.txt";
      -- Calid2 115 卡利德
        TTH_PATH.Talent["Calid2"] = {};
        TTH_PATH.Talent["Calid2"]["Pre"] = TTH_PATH.Talent["Pre"].."115-Calid2/";
        TTH_PATH.Talent["Calid2"]["Text"] = TTH_PATH.Talent["Calid2"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Calid2"]["NotEnoughTimes"] = TTH_PATH.Talent["Calid2"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Calid2"]["NotSuitableHero"] = TTH_PATH.Talent["Calid2"]["Pre"].."NotSuitableHero.txt";
        TTH_PATH.Talent["Calid2"]["Success"] = TTH_PATH.Talent["Calid2"]["Pre"].."Success.txt";
      -- Una 128 英伽
        TTH_PATH.Talent["Una"] = {};
        TTH_PATH.Talent["Una"]["Pre"] = TTH_PATH.Talent["Pre"] .."128-Una/";
        TTH_PATH.Talent["Una"]["Text"] = TTH_PATH.Talent["Una"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Una"]["NotEnoughTimes"] = TTH_PATH.Talent["Una"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Una"]["NoSuitableRune"] = TTH_PATH.Talent["Una"]["Pre"].."NoSuitableRune.txt";
        TTH_PATH.Talent["Una"]["Success"] = TTH_PATH.Talent["Una"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Una"]["RadioTips"] = TTH_PATH.Talent["Una"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"] = {};
        TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"] = TTH_PATH.Talent["Una"]["Pre"].."ConfirmRune/";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_CHARGE] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."249-Charge.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_BERSERKING] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."250-Berserking.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_MAGIC_CONTROL] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."251-MagicControl.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_EXORCISM] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."252-Exorcism.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_ELEMENTAL_IMMUNITY] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."253-ElementalImmunity.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_STUNNING] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."254-Stunning.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_BATTLERAGE] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."255-Battlerage.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_ETHEREALNESS] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."256-Etherealness.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_REVIVE] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."257-Revive.txt";
        TTH_PATH.Talent["Una"]["ConfirmRune"][SPELL_RUNE_OF_DRAGONFORM] = TTH_PATH.Talent["Una"]["ConfirmRune"]["Pre"].."258-Dragonform.txt";
      -- Hangvul 130 汉格瓦尔
        TTH_PATH.Talent["Hangvul"] = {};
        TTH_PATH.Talent["Hangvul"]["Pre"] = TTH_PATH.Talent["Pre"].."130-Hangvul/";
        TTH_PATH.Talent["Hangvul"]["Text"] = TTH_PATH.Talent["Hangvul"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Hangvul"]["Active"] = {};
        TTH_PATH.Talent["Hangvul"]["Active"]["Pre"] = TTH_PATH.Talent["Hangvul"]["Pre"].."Active/";
        TTH_PATH.Talent["Hangvul"]["Active"]["NotEnoughQuota"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."NotEnoughQuota.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["NotEnoughRes"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."NotEnoughRes.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["TipsDwellingLevel"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."TipsDwellingLevel.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["TipsDirection"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."TipsDirection.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["NegetivePlace"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."NegetivePlace.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["Success"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["Title"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Hangvul"]["Active"]["Desc"] = TTH_PATH.Talent["Hangvul"]["Active"]["Pre"].."Desc.txt";
        TTH_PATH.Talent["Hangvul"]["Daily"] = {};
        TTH_PATH.Talent["Hangvul"]["Daily"]["Pre"] = TTH_PATH.Talent["Hangvul"]["Pre"].."Daily/";
        TTH_PATH.Talent["Hangvul"]["Daily"]["TitleCapture"] = TTH_PATH.Talent["Hangvul"]["Daily"]["Pre"].."TitleCapture.txt";
        TTH_PATH.Talent["Hangvul"]["Daily"]["DescCapture"] = TTH_PATH.Talent["Hangvul"]["Daily"]["Pre"].."DescCapture.txt";
      -- Ingvar 131 英格瓦
        TTH_PATH.Talent["Ingvar"] = {};
        TTH_PATH.Talent["Ingvar"]["Pre"] = TTH_PATH.Talent["Pre"].."131-Ingvar/";
        TTH_PATH.Talent["Ingvar"]["Text"] = TTH_PATH.Talent["Ingvar"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Ingvar"]["NotEnoughTimes"] = TTH_PATH.Talent["Ingvar"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Ingvar"]["Success"] = TTH_PATH.Talent["Ingvar"]["Pre"].."Success.txt";
      -- Rolf 132 洛尔夫
        TTH_PATH.Talent["Rolf"] = {};
        TTH_PATH.Talent["Rolf"]["Pre"] = TTH_PATH.Talent["Pre"] .."132-Rolf/";
        TTH_PATH.Talent["Rolf"]["Text"] = TTH_PATH.Talent["Rolf"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Rolf"]["NotEnoughTimes"] = TTH_PATH.Talent["Rolf"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Rolf"]["NoSuitableCreature"] = TTH_PATH.Talent["Rolf"]["Pre"].."NoSuitableCreature.txt";
        TTH_PATH.Talent["Rolf"]["Confirm"] = TTH_PATH.Talent["Rolf"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Rolf"]["Success"] = TTH_PATH.Talent["Rolf"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Rolf"]["RadioTips"] = TTH_PATH.Talent["Rolf"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Rolf"]["OptionTemplate"] = TTH_PATH.Talent["Rolf"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Rolf"]["TemplateCreature"] = TTH_PATH.Talent["Rolf"]["Pre"].."TemplateCreature.txt";
      -- Wulfstan 134 乌尔夫斯坦
        TTH_PATH.Talent["Wulfstan"] = {};
        TTH_PATH.Talent["Wulfstan"]["Pre"] = TTH_PATH.Talent["Pre"].."134-Wulfstan/";
        TTH_PATH.Talent["Wulfstan"]["Text"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Wulfstan"]["NotEnoughTimes"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Wulfstan"]["NotEnoughGold"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Wulfstan"]["OptionTemplate"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Wulfstan"]["NoSuitableOutpost"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."NoSuitableOutpost.txt";
        TTH_PATH.Talent["Wulfstan"]["RadioTips"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Wulfstan"]["HasOutpost"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."HasOutpost.txt";
        TTH_PATH.Talent["Wulfstan"]["ConfirmVisitOutpost"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."ConfirmVisitOutpost.txt";
        TTH_PATH.Talent["Wulfstan"]["SuccessVisitOutpost"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."SuccessVisitOutpost.txt";
        TTH_PATH.Talent["Wulfstan"]["Title"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Wulfstan"]["TitleCapture"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."TitleCapture.txt";
        TTH_PATH.Talent["Wulfstan"]["Desc"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."Desc.txt";
        TTH_PATH.Talent["Wulfstan"]["DescCapture"] = TTH_PATH.Talent["Wulfstan"]["Pre"].."DescCapture.txt";

    TTH_PATH.Artifact = {};
    TTH_PATH.Artifact["Pre"] = TTH_PATH.FuncPre.."Artifact/";
    -- Artifact 2
      -- ARTIFACT_MASK_OF_DOPPELGANGER 089 皇家遗物
        TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER] = {};
        TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Pre"] = TTH_PATH.Artifact["Pre"].."089/";
        TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Text"] = TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["ConfirmActive"] = TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Pre"].."ConfirmActive.txt";

      -- ARTIFACT_PEDANT_OF_MASTERY 015 技能坠饰
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY] = {};
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Pre"] = TTH_PATH.Artifact["Pre"].."015-PedantOfMastery/";
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Text"] = TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["HasUpgradeMastery"] = TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Pre"].."HasUpgradeMastery.txt";
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["NotEnoughHeroLevel"] = TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Pre"].."NotEnoughHeroLevel.txt";
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["NoOption"] = TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Pre"].."NoOption.txt";
        TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Success"] = TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Pre"].."Success.txt";

      -- ARTIFACT_SHANTIRI_05 163 龙神之证
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05] = {};
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"] = TTH_PATH.Artifact["Pre"].."163-Shantiri05/";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Text"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["HasUpgradeShantiri"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."HasUpgradeShantiri.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["HasNotUpgradeMastery"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."HasNotUpgradeMastery.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["NotEnoughHeroLevel"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."NotEnoughHeroLevel.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["NoOption"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."NoOption.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Success"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."Success.txt";

      -- ARTIFACT_GEM_OF_PHANTOM 102 幻影宝石
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM] = {};
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"] = TTH_PATH.Artifact["Pre"].."102/";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Text"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["OptionEnglobe"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."OptionEnglobe.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["OptionRelease"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."OptionRelease.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["EnglobeSingleSlot"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."EnglobeSingleSlot.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["EnglobeConfirm"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."EnglobeConfirm.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["EnglobeRemove"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."EnglobeRemove.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["EnglobeSuccess"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."EnglobeSuccess.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["ReleaseEmpty"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."ReleaseEmpty.txt";
        TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["ReleaseFullSlot"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Pre"].."ReleaseFullSlot.txt";

      -- ARTIFACT_DIMENSION_DOOR 103 回城令
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR] = {};
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"] = TTH_PATH.Artifact["Pre"].."103-DimensionDoor/";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["NoOption"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."NoOption.txt";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["HeroInGarrison"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."HeroInGarrison.txt";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["TooCloseEnemyHero"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."TooCloseEnemyHero.txt";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["ConfirmTown"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."ConfirmTown.txt";

      -- ARTIFACT_POTION_MANA 137 魔力药水
      -- ARTIFACT_POTION_ENERGY 138 能量药水
      -- ARTIFACT_POTION_REVIVE 139 复活药水
        TTH_PATH.Artifact["Potion"] = {};
        TTH_PATH.Artifact["Potion"]["Pre"] = TTH_PATH.Artifact["Pre"].."Potion/";
        TTH_PATH.Artifact["Potion"]["NotEnoughTimes"] = TTH_PATH.Artifact["Potion"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Artifact["Potion"]["HasUsedToday"] = TTH_PATH.Artifact["Potion"]["Pre"].."HasUsedToday.txt";
        TTH_PATH.Artifact["Potion"]["HasUsedCombatIndex"] = TTH_PATH.Artifact["Potion"]["Pre"].."HasUsedCombatIndex.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA] = {};
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Pre"] = TTH_PATH.Artifact["Potion"]["Pre"].."137-PotionMana/";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Text"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Confirm"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Success"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Pre"].."Success.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY] = {};
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Pre"] = TTH_PATH.Artifact["Potion"]["Pre"].."138-PotionEnergy/";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Text"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Confirm"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Success"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Pre"].."Success.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE] = {};
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Pre"] = TTH_PATH.Artifact["Potion"]["Pre"].."139-PotionRevive/";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Text"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["NoLastCombat"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Pre"].."NoLastCombat.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Confirm"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Success"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Pre"].."Success.txt";

      -- ARTIFACT_REINCARNATION 112 轮回之戒
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION] = {};
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"] = TTH_PATH.Artifact["Pre"].."112-Reincarnation/";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Text"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"] = {};
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["Pre"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."Convert/";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["Text"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["NoCreature4Cast"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["Pre"].."NoCreature4Cast.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["Success"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Covert"]["Pre"].."Success.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"] = {};
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Pre"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."Gcd/";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Text"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["NotCastHero"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Pre"].."NotCastHero.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["HasEnough"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Pre"].."HasEnough.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Success"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Gcd"]["Pre"].."Success.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"] = {};
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Pre"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."Step/";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Text"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["NotCastHero"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Pre"].."NotCastHero.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["HasEnough"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Pre"].."HasEnough.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Success"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Step"]["Pre"].."Success.txt";

      -- ARTIFACT_LEGION_BASIC 104 军团之证
      -- ARTIFACT_LEGION_ADVANCED 108 军团斗篷
      -- ARTIFACT_LEGION_EXPERT 109 军团之帜
        TTH_PATH.Artifact["Legion"] = {};
        TTH_PATH.Artifact["Legion"]["Pre"] = TTH_PATH.Artifact["Pre"].."Legion/";
        TTH_PATH.Artifact["Legion"]["Confirm"] = TTH_PATH.Artifact["Legion"]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Legion"]["Success"] = TTH_PATH.Artifact["Legion"]["Pre"].."Success.txt";
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_BASIC] = {};
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_BASIC]["Pre"] = TTH_PATH.Artifact["Legion"]["Pre"].."104/";
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_BASIC]["Text"] = TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_BASIC]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_ADVANCED] = {};
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_ADVANCED]["Pre"] = TTH_PATH.Artifact["Legion"]["Pre"].."108/";
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_ADVANCED]["Text"] = TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_ADVANCED]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_EXPERT] = {};
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_EXPERT]["Pre"] = TTH_PATH.Artifact["Legion"]["Pre"].."109/";
        TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_EXPERT]["Text"] = TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_EXPERT]["Pre"].."Text.txt";

      -- ARTIFACT_RES_BASIC 098 矮人十字镐
      -- ARTIFACT_RES_ADVANCED 099 育龙者的魔法盒
      -- ARTIFACT_RES_EXPERT 028 无尽黄金麻袋
        TTH_PATH.Artifact["Mine"] = {};
        TTH_PATH.Artifact["Mine"]["Pre"] = TTH_PATH.Artifact["Pre"].."Mine/";
        TTH_PATH.Artifact["Mine"]["OptionTemplate"] = TTH_PATH.Artifact["Mine"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Artifact["Mine"]["NoSuitableMine"] = TTH_PATH.Artifact["Mine"]["Pre"].."NoSuitableMine.txt";
        TTH_PATH.Artifact["Mine"]["ReachMaxLevel"] = TTH_PATH.Artifact["Mine"]["Pre"].."ReachMaxLevel.txt";
        TTH_PATH.Artifact["Mine"]["Confirm"] = TTH_PATH.Artifact["Mine"]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Mine"]["Success"] = TTH_PATH.Artifact["Mine"]["Pre"].."Success.txt";
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_BASIC] = {};
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_BASIC]["Pre"] = TTH_PATH.Artifact["Mine"]["Pre"].."098/";
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_BASIC]["Text"] = TTH_PATH.Artifact["Mine"][ARTIFACT_RES_BASIC]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_ADVANCED] = {};
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_ADVANCED]["Pre"] = TTH_PATH.Artifact["Mine"]["Pre"].."099/";
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_ADVANCED]["Text"] = TTH_PATH.Artifact["Mine"][ARTIFACT_RES_ADVANCED]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_EXPERT] = {};
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_EXPERT]["Pre"] = TTH_PATH.Artifact["Mine"]["Pre"].."028/";
        TTH_PATH.Artifact["Mine"][ARTIFACT_RES_EXPERT]["Text"] = TTH_PATH.Artifact["Mine"][ARTIFACT_RES_EXPERT]["Pre"].."Text.txt";

      -- ARTIFACT_ENDLESS_BAG_OF_GOLD 029 军团金像
      -- ARTIFACT_HORN_OF_PLENTY 092 丰收之角
        TTH_PATH.Artifact["Economic"] = {};
        TTH_PATH.Artifact["Economic"]["Pre"] = TTH_PATH.Artifact["Pre"].."Economic/";
        TTH_PATH.Artifact["Economic"]["HasBonus"] = TTH_PATH.Artifact["Economic"]["Pre"].."HasBonus.txt";
        TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD] = {};
        TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Pre"] = TTH_PATH.Artifact["Economic"]["Pre"].."029/";
        TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Text"] = TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Confirm"] = TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Success"] = TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Pre"].."Success.txt";
        TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY] = {};
        TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Pre"] = TTH_PATH.Artifact["Economic"]["Pre"].."092/";
        TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Text"] = TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Pre"].."Text.txt";
        TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Confirm"] = TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Success"] = TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Pre"].."Success.txt";

      -- ARTIFACT_BOOK_OF_MALASSA 147 玛拉萨之书
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA] = {};
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Pre"] = TTH_PATH.Artifact["Pre"].."147/";
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Text"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Unknow"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Pre"].."Unknow.txt";
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["RadioTips"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Pre"].."RadioTips.txt";
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Cancel"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Pre"].."Cancel.txt";
        TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Success"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Pre"].."Success.txt";

      -- ARTIFACT_QUILL_OF_MAYOR 182 执政官羽饰
        TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR] = {};
        TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Pre"] = TTH_PATH.Artifact["Pre"].."182/";
        TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Text"] = TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Confirm"] = TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Pre"].."Confirm.txt";
        TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Success"] = TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Pre"].."Success.txt";

    TTH_PATH.Perk = {};
    TTH_PATH.Perk["Pre"] = TTH_PATH.FuncPre.."Perk/";
    -- Perk 3
      -- HERO_SKILL_SCOUTING 020 侦察术
        TTH_PATH.Perk[HERO_SKILL_SCOUTING] = {};
        TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Pre"] = TTH_PATH.Perk["Pre"] .."020-Scouting/";
        TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Text"] = TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_SCOUTING]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Success"] = TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Pre"].."Success.txt";
      -- HERO_SKILL_RECRUITMENT 028 募兵术
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT] = {};
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"] = TTH_PATH.Perk["Pre"] .."028/";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Text"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["HasRecruit"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."HasRecruit.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["NoDwelling"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."NoDwelling.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."Confirm.txt";
      -- HERO_SKILL_DIPLOMACY 030 外交术
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY] = {};
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"] = TTH_PATH.Perk["Pre"] .."030/";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Text"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["NoSuitableCreature"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."NoSuitableCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["RadioTips"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."RadioTips.txt";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["OptionTemplate"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["TemplateCreature"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Pre"].."TemplateCreature.txt";
      -- HERO_SKILL_FORTUNATE_ADVENTURER 033 资源富饶
        TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER] = {};
        TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Pre"] = TTH_PATH.Perk["Pre"] .."033/";
        TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Text"] = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Success"] = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Pre"].."Success.txt";
      -- HERO_SKILL_POWER_OF_HASTE 143 速度能量
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE] = {};
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["Pre"] = TTH_PATH.Perk["Pre"] .."143-PowerOfHaste/";
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["Text"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["NoBuildingOnAdvMap"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["Pre"].."NoBuildingOnAdvMap.txt";
      -- HERO_SKILL_POWER_OF_STONE 144 耐力持久
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE] = {};
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["Pre"] = TTH_PATH.Perk["Pre"] .."144-PowerOfStone/";
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["Text"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["NoBuildingOnAdvMap"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["Pre"].."NoBuildingOnAdvMap.txt";
      -- HERO_SKILL_RAISE_ARCHERS 061 宝物学者
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS] = {};
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"] = TTH_PATH.Perk["Pre"] .."061-RaiseArchers/";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Text"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["NotEnoughGold"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["OptionTemplate4Level"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."OptionTemplate4Level.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["RadioTips4Level"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."RadioTips4Level.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["NoArtifact"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."NoArtifact.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["RadioTips4Artifact"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."RadioTips4Artifact.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Success"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Pre"].."Success.txt";
      -- HERO_SKILL_MELT_ARTIFACT 068 熔毁宝物
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT] = {};
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"] = TTH_PATH.Perk["Pre"] .."068-MeltArtifact/";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Text"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["OptionTemplate4Level"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."OptionTemplate4Level.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["RadioTips4Level"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."RadioTips4Level.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["NoArtifact"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."NoArtifact.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["RadioTips4Artifact"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."RadioTips4Artifact.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Success"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Pre"].."Success.txt";
      -- HERO_SKILL_DARK_RITUAL 071 黑暗仪式
        TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL] = {};
        TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL]["Pre"] = TTH_PATH.Perk["Pre"] .."071-DarkRitual/";
        TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL]["Text"] = TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL]["Success"] = TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL]["Pre"].."Success.txt";
      -- HERO_SKILL_PARIAH 083 堕落骑士
        TTH_PATH.Perk[HERO_SKILL_PARIAH] = {};
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"] = TTH_PATH.Perk["Pre"] .."083-Pariah/";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Text"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Success"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."Success.txt";
      -- HERO_SKILL_TWILIGHT 109 微光黎明
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT] = {};
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"] = TTH_PATH.Perk["Pre"] .."109-Twilight/";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Text"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Success"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."Success.txt";
      -- HERO_SKILL_FOREST_GUARD_EMBLEM 115 战地支援
        TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM] = {};
        TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Pre"] = TTH_PATH.Perk["Pre"] .."115-ForestGuardEmblem/";
        TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Text"] = TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Success"] = TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Pre"].."Success.txt";
      -- HERO_SKILL_GRAIL_VISION 080 杉提瑞之触
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION] = {};
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"] = TTH_PATH.Perk["Pre"] .."080-Shantiri/";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Text"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["OptionTemplate"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["NoSuitableShantiri"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."NoSuitableShantiri.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["RadioTips"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."RadioTips.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Recovery"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."Recovery.txt";
      -- HERO_SKILL_FIRE_AFFINITY 097 元素勇士
        TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY] = {};
        TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Pre"] = TTH_PATH.Perk["Pre"] .."097-FireAffinity/";
        TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Text"] = TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["RadioTips"] = TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Pre"].."RadioTips.txt";
        TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Success"] = TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Pre"].."Success.txt";
      -- HERO_SKILL_DEATH_TREAD 099 死亡行军
        TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD] = {};
        TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Pre"] = TTH_PATH.Perk["Pre"] .."099/";
        TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Text"] = TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["NoFoeTownNearBy"] = TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Pre"].."NoFoeTownNearBy.txt";
        TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Pre"].."Confirm.txt";
      -- HERO_SKILL_HAUNT_MINE 110 幽魂矿井
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE] = {};
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"] = TTH_PATH.Perk["Pre"] .."110-HauntMine/";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Text"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["OptionTemplate"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["NoSuitableMine"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."NoSuitableMine.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["RadioTips"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."RadioTips.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["NoSuitableCreature"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."NoSuitableCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["TemplateCreature"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."TemplateCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["TemplateCreature"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."TemplateCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["TemplateReduceCreature"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."TemplateReduceCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Success"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Pre"].."Success.txt";
      -- HERO_SKILL_MARCH_OF_THE_MACHINES 125 魔像行进
        TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES] = {};
        TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Pre"] = TTH_PATH.Perk["Pre"] .."125-MarchOfTheMachines/";
        TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Text"] = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["TipsCreature"] = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Pre"].."TipsCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Pre"].."Confirm.txt";
      -- HERO_SKILL_SNATCH 168 攫取
        TTH_PATH.Perk[HERO_SKILL_SNATCH] = {};
        TTH_PATH.Perk[HERO_SKILL_SNATCH]["Pre"] = TTH_PATH.Perk["Pre"] .."168/";
        TTH_PATH.Perk[HERO_SKILL_SNATCH]["Text"] = TTH_PATH.Perk[HERO_SKILL_SNATCH]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_SNATCH]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_SNATCH]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_SNATCH]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_SNATCH]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_SNATCH]["Success"] = TTH_PATH.Perk[HERO_SKILL_SNATCH]["Pre"].."Success.txt";
      -- HERO_SKILL_DEFEND_US_ALL 181 全体保卫
        TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL] = {};
        TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Pre"] = TTH_PATH.Perk["Pre"] .."181-DefendUsAll/";
        TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Text"] = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["TipsCreature"] = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Pre"].."TipsCreature.txt";
        TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Pre"].."Confirm.txt";
      -- HERO_SKILL_GOBLIN_SUPPORT 182 地精支援
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT] = {};
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"] = TTH_PATH.Perk["Pre"] .."182-GoblinSupport/";
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Text"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["HasBuilding"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"].."HasBuilding.txt";
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["NotEnoughGold"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["TipsDirection"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"].."TipsDirection.txt";
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["NegetivePlace"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"].."NegetivePlace.txt";
        TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Success"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Pre"].."Success.txt";

    TTH_PATH.Building = {};
    TTH_PATH.Building["Pre"] = TTH_PATH.FuncPre.."Building/";
    -- Building 4
      -- TOWN_DUNGEON
        TTH_PATH.Building[TOWN_DUNGEON] = {};
        TTH_PATH.Building[TOWN_DUNGEON]["Pre"] = TTH_PATH.Building["Pre"] .."Dungeon/";
        -- TOWN_BUILDING_SPECIAL_1
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1] = {};
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"] = TTH_PATH.Building[TOWN_DUNGEON]["Pre"].."Special1/";
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Text"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"].."Text.txt";
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["ErrorRace"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"].."ErrorRace.txt";
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["HasUsed"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"].."HasUsed.txt";
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["NotEnoughHeroLevel"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"].."NotEnoughHeroLevel.txt";

  -- 数据表
    -- 技能池: 英雄天赋/主动宝物/主动技能/城镇建筑
      TTH_TABLE.FuncTalent = {
        [TTH_ENUM.FuncInit] = {
          -- 转化
            ["OrtanCassius"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Sanguinius"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Avitus"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Gelu"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Itil"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Dracon"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Adelaide"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Thant"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["LordHaart"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
            , ["Azar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCastCreature"
            }
          -- 内扩
            , ["Brem"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initBrem"
            }
            , ["Gillion"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initGillion"
            }
            , ["Astral"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initAstral"
            }
            , ["Nikolay"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initNikolay"
            }
            , ["Menel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMenel"
            }
            , ["Nymus"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initNymus"
            }
            , ["Hangvul"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initHangvul"
            }
            , ["Wulfstan"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initWulfstan"
            }
          -- 其他
            , ["Isabell"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initIsabell"
            }
            , ["Nathaniel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initNathaniel"
            }
            , ["Ildar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initIldar"
            }
            , ["Rissa"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initRissa"
            }
            , ["Melodia"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMelodia"
            }
            , ["Marder"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMarder"
            }
            , ["Almegir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initAlmegir"
            }
            , ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initSylsai"
            }
            , ["Muscip"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMuscip"
            }
            , ["Pelt"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initPelt"
            }
            , ["Maahir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMaahir"
            }
            , ["Inagost"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initInagost"
            }
            , ["Ufretin"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initUfretin"
            }
            , ["RedHeavenHero06"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initRedHeavenHero06"
            }
            , ["Rolf"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initRolf"
            }
            , ["Una"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initUna"
            }
            , ["Quroq"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initQuroq"
            }
            , ["Metlirn"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMetlirn"
            }
            , ["Razzak"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initRazzak"
            }
            , ["Calid2"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCalid2"
            }
            , ["Sandro"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initSandro"
            }
            , ["Ingvar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initIngvar"
            }
            , ["Elleshar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.Elleshar.func.init"
            }
            , ["Welygg"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initWelygg"
            }
            , ["Kastore"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initKastore"
            }
        }
        , [TTH_ENUM.FuncActive] = {
          -- 转化
            ["OrtanCassius"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["OrtanCassius"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["Sanguinius"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Sanguinius"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            -- , ["Avitus"] = {
            --   ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Avitus"]
            --   , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
            --   , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            -- }
            , ["Gelu"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Gelu"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["Itil"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Itil"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["Dracon"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Dracon"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["Adelaide"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Adelaide"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["Thant"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Thant"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["LordHaart"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["LordHaart"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
            , ["Azar"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Azar"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
          -- 内扩
            , ["Brem"] = {
              ["Text"] = TTH_PATH.Talent["Brem"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeBrem"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeBrem"
            }
            , ["Gillion"] = {
              ["Text"] = TTH_PATH.Talent["Gillion"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeGillion"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeGillion"
            }
            , ["Astral"] = {
              ["Text"] = TTH_PATH.Talent["Astral"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeAstral"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeAstral"
            }
            , ["Menel"] = {
              ["Text"] = TTH_PATH.Talent["Menel"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeMenel"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeMenel"
            }
            , ["Nymus"] = {
              ["Text"] = TTH_PATH.Talent["Nymus"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeNymus"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeNymus"
            }
            , ["Wulfstan"] = {
              ["Text"] = TTH_PATH.Talent["Wulfstan"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeWulfstan"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeWulfstan"
            }
            , ["Hangvul"] = {
              ["Text"] = TTH_PATH.Talent["Hangvul"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeHangvul"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeHangvul"
            }
          -- 其他
            , ["Nathaniel"] = {
              ["Text"] = TTH_PATH.Talent["Nathaniel"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeNathaniel"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeNathaniel"
            }
            , ["Isabell"] = {
              ["Text"] = TTH_PATH.Talent["Isabell"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeIsabell"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeIsabell"
            }
            , ["RedHeavenHero06"] = {
              ["Text"] = TTH_PATH.Talent["RedHeavenHero06"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeRedHeavenHero06"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeRedHeavenHero06"
            }
            , ["Ildar"] = {
              ["Text"] = TTH_PATH.Talent["Ildar"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeIldar"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeIldar"
            }
            , ["Rissa"] = {
              ["Text"] = TTH_PATH.Talent["Rissa"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeRissa"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeRissa"
            }
            , ["Melodia"] = {
              ["Text"] = TTH_PATH.Talent["Melodia"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeMelodia"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeMelodia"
            }
            , ["Marder"] = {
              ["Text"] = TTH_PATH.Talent["Marder"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeMarder"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeMarder"
            }
            , ["Almegir"] = {
              ["Text"] = TTH_PATH.Talent["Almegir"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeAlmegir"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeAlmegir"
            }
            , ["Sylsai"] = {
              ["Text"] = TTH_PATH.Talent["Sylsai"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeSylsai"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeSylsai"
            }
            , ["Nikolay"] = {
              ["Text"] = TTH_PATH.Talent["Nikolay"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeNikolay"
            }
            , ["Pelt"] = {
              ["Text"] = TTH_PATH.Talent["Pelt"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activePelt"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activePelt"
            }
            , ["Maahir"] = {
              ["Text"] = TTH_PATH.Talent["Maahir"]["Text"]
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeMaahir"
            }
            , ["Inagost"] = {
              ["Text"] = TTH_PATH.Talent["Inagost"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeInagost"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeInagost"
            }
            , ["Rolf"] = {
              ["Text"] = TTH_PATH.Talent["Rolf"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeRolf"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeRolf"
            }
            , ["Una"] = {
              ["Text"] = TTH_PATH.Talent["Una"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeUna"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeUna"
            }
            , ["Metlirn"] = {
              ["Text"] = TTH_PATH.Talent["Metlirn"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeMetlirn"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeMetlirn"
            }
            , ["Razzak"] = {
              ["Text"] = TTH_PATH.Talent["Razzak"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeRazzak"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeRazzak"
            }
            , ["Calid2"] = {
              ["Text"] = TTH_PATH.Talent["Calid2"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCalid2"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCalid2"
            }
            , ["Sandro"] = {
              ["Text"] = TTH_PATH.Talent["Sandro"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeSandro"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeSandro"
            }
            , ["Avitus"] = {
              ["Text"] = TTH_PATH.Talent["Avitus"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeAvitus"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeAvitus"
            }
            , ["Kastore"] = {
              ["Text"] = TTH_PATH.Talent["Kastore"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeKastore"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeKastore"
            }
            , ["Ingvar"] = {
              ["Text"] = TTH_PATH.Talent["Ingvar"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeIngvar"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeIngvar"
            }
            , ["Welygg"] = {
              ["Text"] = TTH_PATH.Talent["Welygg"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeWelygg"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeWelygg"
            }
            , ["Karissa"] = {
              ["Text"] = TTH_PATH.Talent["Karissa"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.Karissa.active.enter"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.Karissa.active.enter"
            }
        }
        , [TTH_ENUM.FuncLevelUp] = {
          -- 其他
        }
        , [TTH_ENUM.FuncCombatResult] = {
          -- 转化
            ["OrtanCassius"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Sanguinius"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Avitus"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Gelu"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Itil"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Dracon"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Adelaide"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Thant"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["LordHaart"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
            , ["Azar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultCastCreature"
            }
          -- 其他
            , ["Elleshar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.Elleshar.func.combat"
            }
            , ["Pelt"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultPelt"
            }
            , ["Sovereign"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultSovereign"
            }
            , ["Kyrre"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultKyrre"
            }
            , ["Metlirn"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultMetlirn"
            }
            , ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultSylsai"
            }
            , ["Nikolay"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.combatResultNikolay"
            }
        }
        , [TTH_ENUM.FuncDealWeekly] = {
          -- 其他
            ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealWeeklySylsai"
            }
        }
        , [TTH_ENUM.FuncResetWeekly] = {
          -- 内扩
            ["Brem"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyBrem"
            }
            , ["Gillion"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyGillion"
            }
            , ["Astral"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyAstral"
            }
            , ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklySylsai"
            }
            , ["Nymus"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyNymus"
            }
            , ["Wulfstan"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyWulfstan"
            }
          -- 其他
            , ["Nathaniel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyNathaniel"
            }
            , ["RedHeavenHero06"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyRedHeavenHero06"
            }
            , ["Rissa"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyRissa"
            }
            , ["Melodia"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyMelodia"
            }
            , ["Marder"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyMarder"
            }
            , ["Almegir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyAlmegir"
            }
            , ["Ufretin"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyUfretin"
            }
            , ["Rolf"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyRolf"
            }
            , ["Una"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyUna"
            }
            , ["Metlirn"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyMetlirn"
            }
            , ["Calid2"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyCalid2"
            }
            , ["Ingvar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyIngvar"
            }
            , ["Maahir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyMaahir"
            }
        }
        , [TTH_ENUM.FuncDealDaily] = {
          -- 内扩
            ["Brem"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyBrem"
            }
            , ["Gillion"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyGillion"
            }
            , ["Astral"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyAstral"
            }
            , ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailySylsai"
            }
            , ["Nymus"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyNymus"
            }
            , ["Wulfstan"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyWulfstan"
            }
          -- 其他
            , ["Isabell"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyIsabell"
            }
            , ["Menel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyMenel"
            }
            , ["Ufretin"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyUfretin"
            }
            , ["Hangvul"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyHangvul"
            }
            , ["Hero9"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyHero9"
            }
            , ["Quroq"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyQuroq"
            }
        }
        , [TTH_ENUM.FuncResetDaily] = {
          -- 转化
            ["OrtanCassius"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Sanguinius"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Avitus"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Gelu"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Itil"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Dracon"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Adelaide"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Thant"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["LordHaart"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
            , ["Azar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCastCreature"
            }
          -- 其他
            , ["RedHeavenHero06"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyRedHeavenHero06"
            }
            , ["Maahir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyMaahir"
            }
            , ["Inagost"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyInagost"
            }
            , ["Calid2"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyCalid2"
            }
            , ["Rissa"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyRissa"
            }
            , ["Metlirn"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyMetlirn"
            }
            , ["Melodia"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyMelodia"
            }
            , ["Ufretin"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyUfretin"
            }
            , ["Nathaniel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyNathaniel"
            }
            , ["Almegir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyAlmegir"
            }
            , ["Ingvar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyIngvar"
            }
            , ["Marder"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyMarder"
            }
            , ["Rolf"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyRolf"
            }
        }
      };

      TTH_TABLE.FuncArtifact = {
        [TTH_ENUM.FuncInit] = {
        }
        , [TTH_ENUM.FuncActive] = {
          [ARTIFACT_DIMENSION_DOOR] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.dimensionDoor.active.enter"
          }
          , [ARTIFACT_POTION_MANA] = {
            ["Text"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_MANA]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active137"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active137"
          }
          , [ARTIFACT_POTION_ENERGY] = {
            ["Text"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_ENERGY]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active138"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active138"
          }
          , [ARTIFACT_POTION_REVIVE] = {
            ["Text"] = TTH_PATH.Artifact["Potion"][ARTIFACT_POTION_REVIVE]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active139"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active139"
          }
          , [ARTIFACT_REINCARNATION] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active112"
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active112"
          }
          , [ARTIFACT_LEGION_BASIC] = {
            ["Text"] = TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_BASIC]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active104"
          }
          , [ARTIFACT_LEGION_ADVANCED] = {
            ["Text"] = TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_ADVANCED]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active108"
          }
          , [ARTIFACT_LEGION_EXPERT] = {
            ["Text"] = TTH_PATH.Artifact["Legion"][ARTIFACT_LEGION_EXPERT]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active109"
          }
          , [ARTIFACT_RES_BASIC] = {
            ["Text"] = TTH_PATH.Artifact["Mine"][ARTIFACT_RES_BASIC]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active098"
          }
          , [ARTIFACT_RES_ADVANCED] = {
            ["Text"] = TTH_PATH.Artifact["Mine"][ARTIFACT_RES_ADVANCED]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active099"
          }
          , [ARTIFACT_RES_EXPERT] = {
            ["Text"] = TTH_PATH.Artifact["Mine"][ARTIFACT_RES_EXPERT]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active028"
          }
          , [ARTIFACT_ENDLESS_BAG_OF_GOLD] = {
            ["Text"] = TTH_PATH.Artifact["Economic"][ARTIFACT_ENDLESS_BAG_OF_GOLD]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active029"
          }
          , [ARTIFACT_HORN_OF_PLENTY] = {
            ["Text"] = TTH_PATH.Artifact["Economic"][ARTIFACT_HORN_OF_PLENTY]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active092"
          }
          , [ARTIFACT_MASK_OF_DOPPELGANGER] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_MASK_OF_DOPPELGANGER]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active089"
          }
          , [ARTIFACT_GEM_OF_PHANTOM] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_GEM_OF_PHANTOM]["Text"]
            , ["NeedWear"] = TTH_ENUM.Yes
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active102"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active102"
          }
          , [ARTIFACT_BOOK_OF_MALASSA] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_BOOK_OF_MALASSA]["Text"]
            , ["NeedWear"] = TTH_ENUM.Yes
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active147"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active147"
          }
          , [ARTIFACT_QUILL_OF_MAYOR] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_QUILL_OF_MAYOR]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active182"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active182"
          }
          , [ARTIFACT_PEDANT_OF_MASTERY] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active015"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active015"
          }
          , [ARTIFACT_SHANTIRI_05] = {
            ["Text"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Text"]
            , ["NeedWear"] = TTH_ENUM.No
            , [TTH_ENUM.FuncAtGate] = "TTH_ARTI.active163"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active163"
          }
        }
        , [TTH_ENUM.FuncLevelUp] = {}
        , [TTH_ENUM.FuncCombatResult] = {
          [ARTIFACT_INHERITANCE] = {
            ["NeedWear"] = TTH_ENUM.Yes
            , [TTH_ENUM.FuncAlways] = "TTH_ARTI.combatResult115"
          }
        }
        , [TTH_ENUM.FuncDealWeekly] = {
        }
        , [TTH_ENUM.FuncResetWeekly] = {
        }
        , [TTH_ENUM.FuncDealDaily] = {
          [ARTIFACT_DRACONIC] = {
            ["NeedWear"] = TTH_ENUM.Yes
            , [TTH_ENUM.FuncAlways] = "TTH_ARTI.dealDaily123"
          }
          , [ARTIFACT_CODEX] = {
            ["NeedWear"] = TTH_ENUM.Yes
            , [TTH_ENUM.FuncAlways] = "TTH_ARTI.dealDaily126"
          }
          , [ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT] = {
            ["NeedWear"] = TTH_ENUM.Yes
            , [TTH_ENUM.FuncAlways] = "TTH_ARTI.dealDaily168"
          }
        }
        , [TTH_ENUM.FuncResetDaily] = {
        }
      };

      TTH_TABLE.FuncPerk = {
        [TTH_ENUM.FuncInit] = {
        }
        , [TTH_ENUM.FuncActive] = {
          [HERO_SKILL_SCOUTING] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_SCOUTING]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active020"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active020"
          }
          , [HERO_SKILL_RECRUITMENT] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active028"
          }
          , [HERO_SKILL_DIPLOMACY] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DIPLOMACY]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active030"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active030"
          }
          , [HERO_SKILL_FORTUNATE_ADVENTURER] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_FORTUNATE_ADVENTURER]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active033"
          }
          , [HERO_SKILL_POWER_OF_HASTE] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_HASTE]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active143"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active143"
          }
          , [HERO_SKILL_POWER_OF_STONE] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_POWER_OF_STONE]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active144"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active144"
          }
          , [HERO_SKILL_DEATH_TREAD] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active099"
          }
          , [HERO_SKILL_HAUNT_MINE] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active110"
          }
          , [HERO_SKILL_SNATCH] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_SNATCH]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active168"
          }
          , [HERO_SKILL_PARIAH] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active083"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active083"
          }
          , [HERO_SKILL_TWILIGHT] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active109"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active109"
          }
          , [HERO_SKILL_FOREST_GUARD_EMBLEM] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_FOREST_GUARD_EMBLEM]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active115"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active115"
          }
          , [HERO_SKILL_GRAIL_VISION] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active080"
          }
          , [HERO_SKILL_GOBLIN_SUPPORT] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_GOBLIN_SUPPORT]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active182"
          }
          , [HERO_SKILL_DEFEND_US_ALL] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DEFEND_US_ALL]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active181"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active181"
          }
          , [HERO_SKILL_MARCH_OF_THE_MACHINES] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_MARCH_OF_THE_MACHINES]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active125"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active125"
          }
          , [HERO_SKILL_MELT_ARTIFACT] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_MELT_ARTIFACT]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active068"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active068"
          }
          , [HERO_SKILL_DARK_RITUAL] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DARK_RITUAL]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active071"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active071"
          }
          , [HERO_SKILL_RAISE_ARCHERS] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.raiseArchers.active.enter"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.raiseArchers.active.enter"
          }
          , [HERO_SKILL_FIRE_AFFINITY] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_FIRE_AFFINITY]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active097"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active097"
          }
        }
        , [TTH_ENUM.FuncLevelUp] = {
        }
        , [TTH_ENUM.FuncCombatResult] = {
          [HERO_SKILL_DEATH_TREAD] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.combatResult099"
          }
          , [HERO_SKILL_PARIAH] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.combatResult083"
          }
          , [HERO_SKILL_TWILIGHT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.combatResult109"
          }
          , [HERO_SKILL_FOREST_GUARD_EMBLEM] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.combatResult115"
          }
        }
        , [TTH_ENUM.FuncDealWeekly] = {
        }
        , [TTH_ENUM.FuncResetWeekly] = {
          [HERO_SKILL_SCOUTING] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly020"
          }
          , [HERO_SKILL_RECRUITMENT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly028"
          }
          , [HERO_SKILL_DIPLOMACY] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly030"
          }
          , [HERO_SKILL_FORTUNATE_ADVENTURER] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly033"
          }
          , [HERO_SKILL_HAUNT_MINE] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly110"
          }
          , [HERO_SKILL_SNATCH] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly168"
          }
          , [HERO_SKILL_PARIAH] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly083"
          }
          , [HERO_SKILL_TWILIGHT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly109"
          }
          , [HERO_SKILL_DEFEND_US_ALL] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly181"
          }
          , [HERO_SKILL_MARCH_OF_THE_MACHINES] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly125"
          }
          , [HERO_SKILL_MELT_ARTIFACT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly068"
          }
          , [HERO_SKILL_RAISE_ARCHERS] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.raiseArchers.basic.resetWeekly"
          }
          , [HERO_SKILL_GRAIL_VISION] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly080"
          }
          , [HERO_SKILL_FOREST_GUARD_EMBLEM] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly115"
          }
        }
        , [TTH_ENUM.FuncDealDaily] = {
          [HERO_SKILL_GOBLIN_SUPPORT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.dealDaily182"
          }
        }
        , [TTH_ENUM.FuncResetDaily] = {
          [HERO_SKILL_SCOUTING] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily020"
          }
          , [HERO_SKILL_POWER_OF_HASTE] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily143"
          }
          , [HERO_SKILL_POWER_OF_STONE] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily144"
          }
          , [HERO_SKILL_PARIAH] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily083"
          }
          , [HERO_SKILL_TWILIGHT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily109"
          }
          , [HERO_SKILL_RECRUITMENT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily028"
          }
          , [HERO_SKILL_SNATCH] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily168"
          }
          , [HERO_SKILL_DIPLOMACY] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily030"
          }
        }
      };

      TTH_TABLE.FuncBuilding = {
        [TTH_ENUM.FuncInit] = {
        }
        , [TTH_ENUM.FuncActive] = {
          [TOWN_DUNGEON] = {
            [TOWN_BUILDING_SPECIAL_1] = {
              ["Text"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Text"]
              , ["Level"] = 1
              , [TTH_ENUM.FuncAtGate] = "TTH_BUILDING.activeDungeonSpecial1"
            }
          }
        }
        , [TTH_ENUM.FuncLevelUp] = {
        }
        , [TTH_ENUM.FuncCombatResult] = {
        }
        , [TTH_ENUM.FuncDealWeekly] = {
        }
        , [TTH_ENUM.FuncResetWeekly] = {
        }
        , [TTH_ENUM.FuncDealDaily] = {
        }
        , [TTH_ENUM.FuncResetDaily] = {
        }
      };

    -- 特殊城镇建筑
      TTH_TABLE.SpecialBuilding = {
        [TOWN_HEAVEN] = {
          [0] = TOWN_BUILDING_SPECIAL_1
          , [1] = TOWN_BUILDING_SPECIAL_2
          , [2] = TOWN_BUILDING_SPECIAL_4
          , [3] = TOWN_BUILDING_SPECIAL_5
        }
        , [TOWN_PRESERVE] = {
          [0] = TOWN_BUILDING_SPECIAL_0
          , [1] = TOWN_BUILDING_SPECIAL_0
          , [2] = TOWN_BUILDING_SPECIAL_2
          , [3] = TOWN_BUILDING_SPECIAL_2
          , [4] = TOWN_BUILDING_SPECIAL_4
          , [5] = TOWN_BUILDING_SPECIAL_5
        }
        , [TOWN_ACADEMY] = {
          [0] = TOWN_BUILDING_SPECIAL_1
          , [1] = TOWN_BUILDING_SPECIAL_2
          , [2] = TOWN_BUILDING_SPECIAL_3
          , [3] = TOWN_BUILDING_SPECIAL_4
        }
        , [TOWN_DUNGEON] = {
          [0] = TOWN_BUILDING_SPECIAL_1
          , [1] = TOWN_BUILDING_SPECIAL_1
          , [2] = TOWN_BUILDING_SPECIAL_3
          , [3] = TOWN_BUILDING_SPECIAL_4
          , [4] = TOWN_BUILDING_SPECIAL_6
        }
        , [TOWN_NECROMANCY] = {
          [0] = TOWN_BUILDING_SPECIAL_1
          , [1] = TOWN_BUILDING_SPECIAL_2
          , [2] = TOWN_BUILDING_SPECIAL_3
          , [3] = TOWN_BUILDING_SPECIAL_4
        }
        , [TOWN_INFERNO] = {
          [0] = TOWN_BUILDING_SPECIAL_1
          , [1] = TOWN_BUILDING_SPECIAL_2
          , [2] = TOWN_BUILDING_SPECIAL_4
          , [3] = TOWN_BUILDING_SPECIAL_5
        }
        , [TOWN_FORTRESS] = {
          [0] = TOWN_BUILDING_SPECIAL_1
          , [1] = TOWN_BUILDING_SPECIAL_1
          , [2] = TOWN_BUILDING_SPECIAL_1
          , [3] = TOWN_BUILDING_SPECIAL_2
          , [4] = TOWN_BUILDING_SPECIAL_3
          , [5] = TOWN_BUILDING_SPECIAL_4
          , [6] = TOWN_BUILDING_SPECIAL_5
        }
        , [TOWN_STRONGHOLD] = {
          [0] = TOWN_BUILDING_SPECIAL_2
          , [1] = TOWN_BUILDING_SPECIAL_4
          , [2] = TOWN_BUILDING_SPECIAL_5
        }
      }

    -- 城镇建筑
      TTH_TABLE.TownBuilding = {
        [TOWN_HEAVEN] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2700
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_BLACKSMITH
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 3000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [15] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 1000
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 1000
              }
            }
            , [17] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_5
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/FARMS.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
          -- TownLevel 6
            , [18] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [20] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 4000
              }
            }
            , [21] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/TRAINING_GROUNDS.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 3500
              }
            }
          -- TownLevel 9
            , [22] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/STABLE.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 3000
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 8000
              }
            }
            , [27] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/MONUMENT_TO_FALLEN_HEROES.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
          -- TownLevel 12
            , [28] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [29] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 15
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 6000
              }
            }
            , [30] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 20
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 15
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 9000
              }
            }
          -- TownLevel 15
            , [31] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [32] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 15
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 10000
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Heaven/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 20
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 12000
              }
            }
        }
        , [TOWN_PRESERVE] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 300
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 900
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 2
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 1000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 1000
              }
            }
            , [15] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/MYSTIC_POND.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 500
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/BLOOMING_GROVE.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
          -- TownLevel 6
            , [17] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [18] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/SPARKLING_FONTAINS.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 12
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [20] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 15
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 2000
              }
            }
          -- TownLevel 9
            , [21] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [22] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 3
                , [SULFUR] = 0
                , [GEM] = 3
                , [GOLD] = 1500
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 4000
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 2000
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 6000
              }
            }
            , [27] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_0
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/AVENGERS_GUILD.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [28] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_0
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/AVENGERS_BROTHERHOOD.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_0
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
          -- TownLevel 12
            , [29] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 15
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 3
                , [GOLD] = 4000
              }
            }
            , [30] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 7
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 8000
              }
            }
          -- TownLevel 15
            , [31] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [32] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 15
                , [SULFUR] = 0
                , [GEM] = 15
                , [GOLD] = 10000
              }
            }
            , [34] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 10000
              }
            }
            , [35] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_5
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Preserve/TREANT_SAMPLING.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 3000
              }
            }
        }
        , [TOWN_ACADEMY] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 1000
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 1000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/ARCANE_FORGE.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 1
                , [ORE] = 1
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_BLACKSMITH
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 1500
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [15] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2400
              }
            }
          -- TownLevel 6
            , [17] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [18] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/ARTIFACT_MERCHANT.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [20] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 10
                , [GEM] = 5
                , [GOLD] = 2200
              }
            }
            , [21] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 5000
              }
            }
          -- TownLevel 9
            , [22] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 6000
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/LIBRARY.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 3000
              }
            }
          -- TownLevel 12
            , [27] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/TREASURE_CAVE.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 3000
              }
            }
            , [28] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 10
                , [GOLD] = 5000
              }
            }
            , [29] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 8000
              }
            }
          -- TownLevel 15
            , [30] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [32] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 12000
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Academy/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 12000
              }
            }
        }
        , [TOWN_DUNGEON] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [2] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [3] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [4] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 1000
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 1000
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [7] = {
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
          -- TownLevel 3
            , [11] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/ALTAR_OF_ELEMENTS.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 2000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/ALTAR_OF_PRIMAL_ELEMENTS.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 3000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [15] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 3
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
          -- TownLevel 6
            , [17] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [18] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/RITUAL_PIT.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/TRADE_GUILD.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [20] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_BLACKSMITH
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [21] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
          -- TownLevel 9
            , [22] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_6
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/HALL_OF_INTRIGUE.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 4000
              }
            }
            , [27] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [28] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 4000
              }
            }
          -- TownLevel 12
            , [29] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [30] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 4
                , [CRYSTAL] = 0
                , [SULFUR] = 4
                , [GEM] = 4
                , [GOLD] = 4000
              }
            }
            , [31] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 6000
              }
            }
          -- TownLevel 15
            , [32] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 15
                , [SULFUR] = 15
                , [GEM] = 0
                , [GOLD] = 12000
              }
            }
            , [34] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Dungeon/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 15
                , [SULFUR] = 20
                , [GEM] = 0
                , [GOLD] = 15000
              }
            }
        }
        , [TOWN_NECROMANCY] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [2] = {
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [3] = {
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 300
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 900
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 800
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 4
                , [CRYSTAL] = 4
                , [SULFUR] = 4
                , [GEM] = 4
                , [GOLD] = 1000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 6
                , [CRYSTAL] = 6
                , [SULFUR] = 6
                , [GEM] = 6
                , [GOLD] = 1000
              }
            }
          -- TownLevel 6
            , [15] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [17] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [18] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/AMPLIFIER.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_3
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/UNEARHED_GRAVES.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
          -- TownLevel 9
            , [20] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [21] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [22] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TAVERN
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 4000
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 2000
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 6000
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/UNHOLY_TEMPLE.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
          -- TownLevel 12
            , [27] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [28] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 4000
              }
            }
            , [29] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 10
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 8000
              }
            }
          -- TownLevel 15
            , [31] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [32] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 20
                , [ORE] = 20
                , [MERCURY] = 20
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 6000
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 20
                , [ORE] = 10
                , [MERCURY] = 15
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 20
                , [GOLD] = 8000
              }
            }
            , [34] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Necromancy/DRAGON_TOMBSTONE.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 3000
              }
            }
        }
        , [TOWN_INFERNO] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [3] = {
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [4] = {
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/INFERNAL_LOOM.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 2
                , [CRYSTAL] = 0
                , [SULFUR] = 2
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 1000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 1000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [15] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
          -- TownLevel 6
            , [16] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [17] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 2
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [18] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 15
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/SPAWN_OF_CHAOS.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          -- TownLevel 9
            , [20] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [21] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [22] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 0
                , [SULFUR] = 3
                , [GEM] = 0
                , [GOLD] = 3500
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 5
                , [CRYSTAL] = 3
                , [SULFUR] = 5
                , [GEM] = 3
                , [GOLD] = 5000
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 4000
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 7
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 6000
              }
            }
          -- TownLevel 12
            , [26] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_5
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/SACRIFICIAL_PIT.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 2000
              }
            }
            , [27] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [28] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 7
                , [GOLD] = 8000
              }
            }
          -- TownLevel 15
            , [29] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [30] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [31] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/HALLS_OF_HORROR.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [32] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Inferno/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 15
                , [CRYSTAL] = 0
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
        }
        , [TOWN_FORTRESS] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [3] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_3
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/GUARDPOST.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [4] = {
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 3
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/RUNIC_SHRINE_LEVEL_ONE.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/RUNIC_SHRINE_LEVEL_TWO.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 2
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 4000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/RUNIC_SHRINE_LEVEL_THREE.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 3
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 6000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MAGIC_GUILD_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MAGIC_GUILD_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [15] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MAGIC_GUILD_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 1000
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 4
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MAGIC_GUILD_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 3
                , [CRYSTAL] = 3
                , [SULFUR] = 3
                , [GEM] = 3
                , [GOLD] = 1000
              }
            }
            , [17] = {
              ["Id"] = TOWN_BUILDING_MAGIC_GUILD
              , ["Level"] = 5
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/MAGIC_GUILD_5.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MAGIC_GUILD
                , ["Level"] = 4
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 1000
              }
            }
          -- TownLevel 6
            , [18] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_BLACKSMITH
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [19] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [23] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 10
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 2000
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 4000
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
          -- TownLevel 9
            , [27] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [28] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [29] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 5
                , [CRYSTAL] = 5
                , [SULFUR] = 5
                , [GEM] = 5
                , [GOLD] = 3000
              }
            }
            , [30] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 6000
              }
            }
          -- TownLevel 12
            , [31] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/RUNIC_STONEWORKS.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [32] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_5
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/RUNIC_ACADEMY.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [33] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/ARENA.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [34] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 20
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 4000
              }
            }
            , [35] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 0
                , [GEM] = 10
                , [GOLD] = 8000
              }
            }
          -- TownLevel 15
            , [36] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [37] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [38] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 15
                , [MERCURY] = 0
                , [CRYSTAL] = 10
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [39] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Fortress/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
        }
        , [TOWN_STRONGHOLD] = {
          -- TownLevel 0
            [0] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/TOWN_HALL_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_BLACKSMITH
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/BLACKSMITH.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [2] = {
              ["Id"] = TOWN_BUILDING_TAVERN
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/TAVERN.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [3] = {
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/MARKETPLACE_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
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
              ["Id"] = TOWN_BUILDING_MARKETPLACE
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/MARKETPLACE_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_MARKETPLACE
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [5] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 1
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_1_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
            , [6] = {
              ["Id"] = TOWN_BUILDING_DWELLING_1
              , ["Level"] = 2
              , ["TownLevel"] = 0
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_1_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          -- TownLevel 3
            , [7] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/TOWN_HALL_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [8] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/FORT_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [9] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_2_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [10] = {
              ["Id"] = TOWN_BUILDING_DWELLING_2
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_2_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_2
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 0
                , [MERCURY] = 3
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2500
              }
            }
            , [11] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/HALL_OF_TRIAL.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [12] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 2
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/HALL_OF_COURAGE.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 2
                , [CRYSTAL] = 2
                , [SULFUR] = 2
                , [GEM] = 2
                , [GOLD] = 3000
              }
            }
            , [13] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_1
              , ["Level"] = 3
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/HALL_OF_MIGHT.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_1
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 4
                , [CRYSTAL] = 4
                , [SULFUR] = 4
                , [GEM] = 4
                , [GOLD] = 4000
              }
            }
            , [14] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_2
              , ["Level"] = 1
              , ["TownLevel"] = 3
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/GARBAGE_PILE.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_1
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 1
                , [ORE] = 1
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 100
              }
            }
          -- TownLevel 6
            , [15] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/FORT_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [16] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_3_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [17] = {
              ["Id"] = TOWN_BUILDING_DWELLING_3
              , ["Level"] = 2
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_3_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 4
                , [GOLD] = 3100
              }
            }
            , [18] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_3
              , ["Level"] = 1
              , ["TownLevel"] = 6
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/TRAVELLERS_SHELTER.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 4
                , [ORE] = 4
                , [MERCURY] = 1
                , [CRYSTAL] = 1
                , [SULFUR] = 1
                , [GEM] = 1
                , [GOLD] = 1500
              }
            }
          -- TownLevel 9
            , [19] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 3
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/TOWN_HALL_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [20] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/PILE_OF_OUR_FOES.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 5
                , [MERCURY] = 4
                , [CRYSTAL] = 0
                , [SULFUR] = 4
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [21] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 1
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_4_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 0
                , [MERCURY] = 9
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 3200
              }
            }
            , [22] = {
              ["Id"] = TOWN_BUILDING_DWELLING_4
              , ["Level"] = 2
              , ["TownLevel"] = 9
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_4_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 7
                , [GEM] = 7
                , [GOLD] = 4400
              }
            }
          -- TownLevel 12
            , [23] = {
              ["Id"] = TOWN_BUILDING_SPECIAL_5
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/SLAVE_MARKET.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_TOWN_HALL
                , ["Level"] = 3
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 4
                , [CRYSTAL] = 0
                , [SULFUR] = 2
                , [GEM] = 4
                , [GOLD] = 3500
              }
            }
            , [24] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_5_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_4
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 10
                , [MERCURY] = 5
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 4500
              }
            }
            , [25] = {
              ["Id"] = TOWN_BUILDING_DWELLING_5
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_5_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 5
                , [ORE] = 15
                , [MERCURY] = 0
                , [CRYSTAL] = 5
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 6000
              }
            }
            , [26] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 1
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_6_1.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_3
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 20
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 5
                , [GEM] = 0
                , [GOLD] = 7000
              }
            }
            , [27] = {
              ["Id"] = TOWN_BUILDING_DWELLING_6
              , ["Level"] = 2
              , ["TownLevel"] = 12
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_6_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_6
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 15
                , [ORE] = 5
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 10
                , [GEM] = 0
                , [GOLD] = 9500
              }
            }
          -- TownLevel 15
            , [28] = {
              ["Id"] = TOWN_BUILDING_TOWN_HALL
              , ["Level"] = 4
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/TOWN_HALL_4.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_SPECIAL_5
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 10000
              }
            }
            , [29] = {
              ["Id"] = TOWN_BUILDING_FORT
              , ["Level"] = 3
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/FORT_3.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_FORT
                , ["Level"] = 2
              }
              , ["Resource"] = {
                [WOOD] = 10
                , [ORE] = 10
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 5000
              }
            }
            , [30] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 1
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_7_1.txt"
              , ["Base"] = {
                ["Id"] = TTH_ENUM.TownBuildingNoBase
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 15
                , [MERCURY] = 7
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 5
                , [GOLD] = 10000
              }
            }
            , [31] = {
              ["Id"] = TOWN_BUILDING_DWELLING_7
              , ["Level"] = 2
              , ["TownLevel"] = 15
              , ["Text"] = "/Text/Game/Scripts/TTH_Path/Buildings/Stronghold/DWELLING_7_2.txt"
              , ["Base"] = {
                ["Id"] = TOWN_BUILDING_DWELLING_7
                , ["Level"] = 1
              }
              , ["Resource"] = {
                [WOOD] = 0
                , [ORE] = 20
                , [MERCURY] = 10
                , [CRYSTAL] = 10
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 11000
              }
            }
        }
      }

    -- 资源矿类型
      TTH_TABLE.MineOnAdvMap = {
        "BUILDING_SAWMILL"
        , "BUILDING_ORE_PIT"
        , "BUILDING_ALCHEMIST_LAB"
        , "BUILDING_CRYSTAL_CAVERN"
        , "BUILDING_SULFUR_DUNE"
        , "BUILDING_GEM_POND"
        , "BUILDING_GOLD_MINE"
        , "BUILDING_ABANDONED_MINE"
      };
      TTH_TABLE.MineOnAdvMapBasic = {
        "BUILDING_SAWMILL"
        , "BUILDING_ORE_PIT"
        , "BUILDING_ABANDONED_MINE"
      };
      TTH_TABLE.MineOnAdvMapAdvanced = {
        "BUILDING_ORE_PIT"
        , "BUILDING_ALCHEMIST_LAB"
        , "BUILDING_CRYSTAL_CAVERN"
        , "BUILDING_SULFUR_DUNE"
        , "BUILDING_GEM_POND"
        , "BUILDING_ABANDONED_MINE"
      };
      TTH_TABLE.MineOnAdvMapExpert = {
        "BUILDING_GOLD_MINE"
        , "BUILDING_ABANDONED_MINE"
      };

    -- 大地图上的兵种前哨建筑
      TTH_TABLE.DwellingOnAdvMap = {
        [1] = {
          [TOWN_HEAVEN] = "BUILDING_PEASANT_HUT"
          , [TOWN_PRESERVE] = "BUILDING_FAIRIE_TREE"
          , [TOWN_ACADEMY] = "BUILDING_WORKSHOP"
          , [TOWN_DUNGEON] = "BUILDING_BATTLE_ACADEMY"
          , [TOWN_NECROMANCY] = "BUILDING_GRAVEYARD"
          , [TOWN_INFERNO] = "BUILDING_IMP_CRUCIBLE"
          , [TOWN_FORTRESS] = "BUILDING_FORTRESS_DEFENDERS"
          , [TOWN_STRONGHOLD] = "BUILDING_STRONGHOLD_GOBLINS"
        }
        , [2] = {
          [TOWN_HEAVEN] = "BUILDING_ARCHERS_HOUSE"
          , [TOWN_PRESERVE] = "BUILDING_WOOD_GUARD_QUARTERS"
          , [TOWN_ACADEMY] = "BUILDING_STONE_PARAPET"
          , [TOWN_DUNGEON] = "BUILDING_SHADOW_STONE"
          , [TOWN_NECROMANCY] = "BUILDING_FORGOTTEN_CRYPT"
          , [TOWN_INFERNO] = "BUILDING_DEMON_GATE"
          , [TOWN_FORTRESS] = "BUILDING_FORTRESS_AXEMEN"
          , [TOWN_STRONGHOLD] = "BUILDING_STRONGHOLD_CENTAURS"
        }
        , [3] = {
          [TOWN_HEAVEN] = "BUILDING_BARRACKS"
          , [TOWN_PRESERVE] = "BUILDING_HIGH_CABINS"
          , [TOWN_ACADEMY] = "BUILDING_GOLEM_FORGE"
          , [TOWN_DUNGEON] = "BUILDING_MAZE"
          , [TOWN_NECROMANCY] = "BUILDING_RUINED_TOWER"
          , [TOWN_INFERNO] = "BUILDING_KENNELS"
          , [TOWN_FORTRESS] = "BUILDING_FORTRESS_BEAR_RIDERS"
          , [TOWN_STRONGHOLD] = "BUILDING_STRONGHOLD_WARRIORS"
        }
        , [4] = {
          [TOWN_HEAVEN] = "BUILDING_HEAVEN_MILITARY_POST"
          , [TOWN_PRESERVE] = "BUILDING_PRESERVE_MILITARY_POST"
          , [TOWN_ACADEMY] = "BUILDING_ACADEMY_MILITARY_POST"
          , [TOWN_DUNGEON] = "BUILDING_DUNGEON_MILITARY_POST"
          , [TOWN_NECROMANCY] = "BUILDING_NECROPOLIS_MILITARY_POST"
          , [TOWN_INFERNO] = "BUILDING_INFERNO_MILITARY_POST"
          , [TOWN_FORTRESS] = "BUILDING_FORTRESS_MILITARY_POST"
          , [TOWN_STRONGHOLD] = "BUILDING_STRONGHOLD_MILITARY_POST"
        }
      }
      TTH_TABLE.ConvertDwellingRes = {
        [1] = {
          [WOOD] = 2
          , [ORE] = 2
          , [GOLD] = 1000
        }
        , [2] = {
          [WOOD] = 3
          , [ORE] = 3
          , [GOLD] = 2000
        }
        , [3] = {
          [WOOD] = 5
          , [ORE] = 5
          , [GOLD] = 4000
        }
        , [4] = {
          [WOOD] = 8
          , [ORE] = 8
          , [GOLD] = 8000
        }
      }

    -- 宝物送魔法
      TTH_TABLE.Artifact4Magic = {
        [ARTIFACT_PENDANT_OF_BLIND] = {
          ["GiveMagic"] = SPELL_BLIND
        }
        , [ARTIFACT_CODEX] = {
          ["GiveMagic"] = SPELL_CONJURE_PHOENIX
        }
      };

    -- 宝物套装属性
      TTH_TABLE.ArtifactSetBonus = {
        [ARTIFACTSET_DWARVEN] = {
          ["Component"] = {
            [0] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
            , [1] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
            , [2] = ARTIFACT_DWARVEN_MITHRAL_HELMET
            , [3] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
          }
        }
        , [ARTIFACTSET_LIONS] = {
          ["Component"] = {
            [0] = ARTIFACT_CROWN_OF_COURAGE
            , [1] = ARTIFACT_LION_HIDE_CAPE
            , [2] = ARTIFACT_NECKLACE_OF_BRAVERY
          }
        }
        , [ARTIFACTSET_MAGIS] = {
          ["Component"] = {
            [0] = ARTIFACT_ROBE_OF_MAGI
            , [1] = ARTIFACT_STAFF_OF_MAGI
            , [2] = ARTIFACT_CROWN_OF_MAGI
            , [3] = ARTIFACT_RING_OF_MAGI
          }
        }
        , [ARTIFACTSET_NECROMANCERS] = {
          ["Component"] = {
            [0] = ARTIFACT_CLOAK_OF_MOURNING
            , [1] = ARTIFACT_STAFF_OF_VEXINGS
            , [2] = ARTIFACT_RING_OF_DEATH
            , [3] = ARTIFACT_NECROMANCER_PENDANT
          }
          , ["GiveMagic"] = {
            [4] = SPELL_VAMPIRISM
          }
        }
        , [ARTIFACTSET_NECROMANCERS_PELT] = {
          ["Component"] = {
            [0] = ARTIFACT_CLOAK_OF_MOURNING
            , [1] = ARTIFACT_STAFF_OF_VEXINGS
            , [2] = ARTIFACT_RING_OF_DEATH
            , [3] = ARTIFACT_NECROMANCER_PENDANT
            , [4] = ARTIFACT_SKULL_HELMET
            , [5] = ARTIFACT_SKULL_OF_MARKAL
          }
        }
        , [ARTIFACTSET_EDUCATIONAL] = {
          ["Component"] = {
            [0] = ARTIFACT_HELM_OF_ENLIGHTMENT
            , [1] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
          }
        }
        , [ARTIFACTSET_HUNTERS] = {
          ["Component"] = {
            [0] = ARTIFACT_UNICORN_HORN_BOW
            , [1] = ARTIFACT_TREEBORN_QUIVER
          }
        }
        , [ARTIFACTSET_OGRES] = {
          ["Component"] = {
            [0] = ARTIFACT_OGRE_CLUB
            , [1] = ARTIFACT_OGRE_SHIELD
          }
          , ["GiveMagic"] = {
            [2] = SPELL_WARCRY_CALL_OF_BLOOD
          }
        }
        , [ARTIFACTSET_RUNIC] = {
          ["Component"] = {
            [0] = ARTIFACT_RUNIC_WAR_AXE
            , [1] = ARTIFACT_RUNIC_WAR_HARNESS
          }
        }
        , [ARTIFACTSET_DEMONIC] = {
          ["Component"] = {
            [0] = ARTIFACT_NIGHTMARISH_RING
            , [1] = ARTIFACT_HELM_OF_CHAOS
          }
        }
        , [ARTIFACTSET_MONK] = {
          ["Component"] = {
            [0] = ARTIFACT_MONK_01
            , [1] = ARTIFACT_MONK_02
            , [2] = ARTIFACT_MONK_03
            , [3] = ARTIFACT_MONK_04
          }
          , ["SetBonus"] = {
            [3] = {
              [STAT_ATTACK] = 0
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 3
              , [STAT_KNOWLEDGE] = 3
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
          }
        }
        , [ARTIFACTSET_GUARDIAN] = {
          ["Component"] = {
            [0] = ARTIFACT_GUARDIAN_01
            , [1] = ARTIFACT_GUARDIAN_02
            , [2] = ARTIFACT_GUARDIAN_03
            , [3] = ARTIFACT_PLATE_MAIL_OF_STABILITY
          }
          , ["SetBonus"] = {
            [2] = {
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
        }
        , [ARTIFACTSET_ROOKIE] = {
          ["Component"] = {
            [0] = ARTIFACT_SWORD_OF_RUINS
            , [1] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
            , [2] = ARTIFACT_SKULL_HELMET
            , [3] = ARTIFACT_BUCKLER
            , [4] = ARTIFACT_BOOTS_OF_INTERFERENCE
          }
          , ["SetBonus"] = {
            [2] = {
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
        }
        , [ARTIFACTSET_PIRATE] = {
          ["Component"] = {
            [0] = ARTIFACT_PIRATE_HAT
            , [1] = ARTIFACT_PIRATE_VEST
            , [2] = ARTIFACT_PIRATE_RING
            , [3] = ARTIFACT_PIRATE_HOOK
            , [4] = ARTIFACT_PIRATE_BOOTS
            , [5] = ARTIFACT_PIRATE_CHARM
          }
          , ["SetBonus"] = {
            [2] = {
              [STAT_ATTACK] = 2
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 0
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
            , [4] = {
              [STAT_ATTACK] = 2
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 0
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
          }
        }
        , [ARTIFACTSET_ELEMENT_AIR] = {
          ["Component"] = {
            [0] = ARTIFACT_TITANS_TRIDENT
            , [1] = ARTIFACT_ORB_AIR
          }
        }
        , [ARTIFACTSET_ELEMENT_EARTH] = {
          ["Component"] = {
            [0] = ARTIFACT_EARTHSLIDERS
            , [1] = ARTIFACT_ORB_EARTH
          }
          , ["GiveMagic"] = {
            [2] = SPELL_IMPLOSION
          }
        }
        , [ARTIFACTSET_ELEMENT_FIRE] = {
          ["Component"] = {
            [0] = ARTIFACT_PHOENIX_FEATHER_CAPE
            , [1] = ARTIFACT_ORB_FIRE
          }
        }
        , [ARTIFACTSET_ELEMENT_WATER] = {
          ["Component"] = {
            [0] = ARTIFACT_EVERCOLD_ICICLE
            , [1] = ARTIFACT_ORB_WATER
          }
        }
        , [ARTIFACTSET_SMITH] = {
          ["Component"] = {
            [0] = ARTIFACT_ICEBERG_SHIELD
            , [1] = ARTIFACT_NECKLACE_OF_POWER
            , [2] = ARTIFACT_WISPERING_RING
            , [3] = ARTIFACT_DWARVEN_SMITHY_HUMMER
          }
          , ["SetBonus"] = {
            [2] = {
              [STAT_ATTACK] = 0
              , [STAT_DEFENCE] = 2
              , [STAT_SPELL_POWER] = 0
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
            , [3] = {
              [STAT_ATTACK] = 0
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 2
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
            , [4] = {
              [STAT_ATTACK] = 2
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 0
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
          }
        }
        , [ARTIFACTSET_CHARGE] = {
          ["Component"] = {
            [0] = ARTIFACT_DRUM_OF_CHARGE
            , [1] = ARTIFACT_HORN_OF_CHARGE
            , [2] = ARTIFACT_FLAG_OF_CHARGE
          }
        }
      };

    -- 宝物合成
      TTH_TABLE.CombineArtifact = {
        [ARTIFACT_GRAAL] = {
          ARTIFACT_LEGION_BASIC
          , ARTIFACT_LEGION_ADVANCED
          , ARTIFACT_LEGION_EXPERT
          , ARTIFACT_ENDLESS_BAG_OF_GOLD
          , ARTIFACT_CROWN_OF_LEADER
        }
        , [ARTIFACT_HORN_OF_PLENTY] = {
          ARTIFACT_RES_BASIC
          , ARTIFACT_RES_ADVANCED
          , ARTIFACT_RES_EXPERT
          , ARTIFACT_BAND_OF_CONJURER
        }
        , [ARTIFACT_SHIELD_OF_WOLF_DUCHY] = {
          ARTIFACT_RING_OF_LIFE
          , ARTIFACT_BEARHIDE_WRAPS
        }
        , [ARTIFACT_INHERITANCE] = {
          ARTIFACT_FOUR_LEAF_CLOVER
          , ARTIFACT_TAROT_DECK
          , ARTIFACT_GOLDEN_SEXTANT
          , ARTIFACT_GOLDEN_HORSESHOE
        }
        , [ARTIFACT_PENDANT_OF_INTERFERENCE] = {
          ARTIFACT_EDGE_OF_BALANCE
          , ARTIFACT_RING_OF_LIGHTING_PROTECTION
          , ARTIFACT_SPIRIT_OF_OPPRESSION
        }
        , [ARTIFACT_RING_OF_FORGOTTEN] = {
          ARTIFACT_BEGINNER_MAGIC_STICK
          , ARTIFACT_RIGID_MANTLE
        }
        , [ARTIFACT_GUARDIAN_01] = {
          ARTIFACT_SWORD_OF_RUINS
          , ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
          , ARTIFACT_SKULL_HELMET
          , ARTIFACT_BUCKLER
          , ARTIFACT_BOOTS_OF_INTERFERENCE
        }
        , [ARTIFACT_GUARDIAN_02] = {
          ARTIFACT_SWORD_OF_RUINS
          , ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
          , ARTIFACT_SKULL_HELMET
          , ARTIFACT_BUCKLER
          , ARTIFACT_BOOTS_OF_INTERFERENCE
        }
        , [ARTIFACT_GUARDIAN_03] = {
          ARTIFACT_SWORD_OF_RUINS
          , ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
          , ARTIFACT_SKULL_HELMET
          , ARTIFACT_BUCKLER
          , ARTIFACT_BOOTS_OF_INTERFERENCE
        }
        , [ARTIFACT_PLATE_MAIL_OF_STABILITY] = {
          ARTIFACT_SWORD_OF_RUINS
          , ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
          , ARTIFACT_SKULL_HELMET
          , ARTIFACT_BUCKLER
          , ARTIFACT_BOOTS_OF_INTERFERENCE
        }
        , [ARTIFACT_DWARVEN_MITHRAL_CUIRASS] = {
          ARTIFACT_ICEBERG_SHIELD
          , ARTIFACT_DWARVEN_SMITHY_HUMMER
          , ARTIFACT_WISPERING_RING
          , ARTIFACT_NECKLACE_OF_POWER
        }
        , [ARTIFACT_DWARVEN_MITHRAL_GREAVES] = {
          ARTIFACT_ICEBERG_SHIELD
          , ARTIFACT_DWARVEN_SMITHY_HUMMER
          , ARTIFACT_WISPERING_RING
          , ARTIFACT_NECKLACE_OF_POWER
        }
        , [ARTIFACT_DWARVEN_MITHRAL_HELMET] = {
          ARTIFACT_ICEBERG_SHIELD
          , ARTIFACT_DWARVEN_SMITHY_HUMMER
          , ARTIFACT_WISPERING_RING
          , ARTIFACT_NECKLACE_OF_POWER
        }
        , [ARTIFACT_DWARVEN_MITHRAL_SHIELD] = {
          ARTIFACT_ICEBERG_SHIELD
          , ARTIFACT_DWARVEN_SMITHY_HUMMER
          , ARTIFACT_WISPERING_RING
          , ARTIFACT_NECKLACE_OF_POWER
        }
        , [ARTIFACT_TOME_OF_DESTRUCTION] = {
          ARTIFACT_MONK_01
          , ARTIFACT_MONK_02
          , ARTIFACT_MONK_03
          , ARTIFACT_MONK_04
        }
        , [ARTIFACT_TOME_OF_LIGHT_MAGIC] = {
          ARTIFACT_MONK_01
          , ARTIFACT_MONK_02
          , ARTIFACT_MONK_03
          , ARTIFACT_MONK_04
        }
        , [ARTIFACT_TOME_OF_DARK_MAGIC] = {
          ARTIFACT_MONK_01
          , ARTIFACT_MONK_02
          , ARTIFACT_MONK_03
          , ARTIFACT_MONK_04
        }
        , [ARTIFACT_TOME_OF_SUMMONING_MAGIC] = {
          ARTIFACT_MONK_01
          , ARTIFACT_MONK_02
          , ARTIFACT_MONK_03
          , ARTIFACT_MONK_04
        }
        , [ARTIFACT_ANGELIC_ALLIANCE] = {
          ARTIFACT_GUARDIAN_01
          , ARTIFACT_GUARDIAN_02
          , ARTIFACT_GUARDIAN_03
          , ARTIFACT_PLATE_MAIL_OF_STABILITY
        }
        , [ARTIFACT_SENTINEL] = {
          ARTIFACT_DWARVEN_MITHRAL_CUIRASS
          , ARTIFACT_DWARVEN_MITHRAL_GREAVES
          , ARTIFACT_DWARVEN_MITHRAL_HELMET
          , ARTIFACT_DWARVEN_MITHRAL_SHIELD
        }
        , [ARTIFACT_CURSE_SHOULDER] = {
          ARTIFACT_JINXING_BAND
          , ARTIFACT_BONESTUDDED_LEATHER
          , ARTIFACT_RING_OF_THE_SHADOWBRAND
          , ARTIFACT_BOOK_OF_POWER
          , ARTIFACT_RING_OF_FORGOTTEN
          , ARTIFACT_SKULL_OF_MARKAL
        }
        , [ARTIFACT_BOOTS_OF_THE_WALKING_DEAD] = {
          ARTIFACT_PIRATE_HAT
          , ARTIFACT_PIRATE_VEST
          , ARTIFACT_PIRATE_RING
          , ARTIFACT_PIRATE_HOOK
          , ARTIFACT_PIRATE_BOOTS
          , ARTIFACT_PIRATE_CHARM
        }
        , [ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT] = {
          ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING
          , ARTIFACT_CROWN_OF_MANY_EYES
          , ARTIFACT_VALORIOUS_ARMOR
          , ARTIFACT_STEADFAST
        }
        , [ARTIFACT_DRACONIC] = {
          ARTIFACT_DRAGON_SCALE_ARMOR
          , ARTIFACT_DRAGON_SCALE_SHIELD
          , ARTIFACT_DRAGON_BONE_GRAVES
          , ARTIFACT_DRAGON_WING_MANTLE
          , ARTIFACT_DRAGON_TEETH_NECKLACE
          , ARTIFACT_DRAGON_TALON_CROWN
          , ARTIFACT_DRAGON_EYE_RING
          , ARTIFACT_DRAGON_FLAME_TONGUE
        }
        , [ARTIFACT_CODEX] = {
          ARTIFACT_TOME_OF_DESTRUCTION
          , ARTIFACT_TOME_OF_LIGHT_MAGIC
          , ARTIFACT_TOME_OF_DARK_MAGIC
          , ARTIFACT_TOME_OF_SUMMONING_MAGIC
        }
        , [ARTIFACT_EIGHTFOLD] = {
          ARTIFACT_ROBE_OF_MAGI
          , ARTIFACT_STAFF_OF_MAGI
          , ARTIFACT_CROWN_OF_MAGI
          , ARTIFACT_RING_OF_MAGI
        }
        , [ARTIFACT_BOOK_OF_MALASSA] = {
          ARTIFACT_ORB_AIR
          , ARTIFACT_ORB_EARTH
          , ARTIFACT_ORB_FIRE
          , ARTIFACT_ORB_WATER
          , ARTIFACT_RUNIC_WAR_AXE
          , ARTIFACT_RUNIC_WAR_HARNESS
        }
        , [ARTIFACT_SHANTIRI_05] = {
          ARTIFACT_SHANTIRI_01
          , ARTIFACT_SHANTIRI_02
          , ARTIFACT_SHANTIRI_03
          , ARTIFACT_SHANTIRI_04
        }
      };

    -- 据点生物
      TTH_TABLE.StrongholdCreature = {
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
        , CREATURE_WYVERN
        , CREATURE_WYVERN_POISONOUS
        , CREATURE_WYVERN_PAOKAI
        , CREATURE_CYCLOP
        , CREATURE_CYCLOP_UNTAMED
        , CREATURE_CYCLOP_BLOODEYED
        , CREATURE_WOLF
      };

    -- 宝屋类型名称
      TTH_TABLE.BankType = {
        "BUILDING_WAGON"
        , "BUILDING_SKELETON"
        , "BUILDING_UNKEMPT"
        , "BUILDING_LEAN_TO"
        , "BUILDING_NAGA_BANK"
        , "BUILDING_BLOOD_TEMPLE"
        , "BUILDING_CRYPT"
        , "BUILDING_GARGOYLE_STONEVAULT"
        , "BUILDING_DWARVEN_TREASURE"
        , "BUILDING_NAGA_TEMPLE"
        , "BUILDING_CYCLOPS_STOCKPILE"
        , "BUILDING_DRAGON_UTOPIA"
        , "BUILDING_PYRAMID"
        , "BUILDING_BUOY"
        , "BUILDING_SUNKEN_TEMPLE"
        , "BUILDING_DEMOLISH"
        , "BUILDING_TREANT_THICKET"
      }

    -- 转化类英雄生物对照表
      TTH_TABLE.CastCreature = {
        ["OrtanCassius"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["MaxGcd"] = 5
          , ["HeroStep"] = 5
          , ["PreCreature"] = {
            [CREATURE_PEASANT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1500
              }
            }
            , [CREATURE_MILITIAMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1500
              }
            }
            , [CREATURE_LANDLORD] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1500
              }
            }
            , [CREATURE_ARCHER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1100
              }
            }
            , [CREATURE_MARKSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1100
              }
            }
            , [CREATURE_LONGBOWMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1100
              }
            }
            , [CREATURE_FOOTMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 600
              }
            }
            , [CREATURE_SWORDSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 600
              }
            }
            , [CREATURE_VINDICATOR] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 600
              }
            }
            , [CREATURE_PRIEST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 300
              }
            }
            , [CREATURE_CLERIC] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 300
              }
            }
            , [CREATURE_ZEALOT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 300
              }
            }
          }
        }
        , ["Sanguinius"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["MaxGcd"] = 6
          , ["HeroStep"] = 6
          , ["PreCreature"] = {
            [CREATURE_FOOTMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_LEGATE
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_SWORDSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_LEGATE
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_VINDICATOR] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_LEGATE
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
          }
        }
        , ["Avitus"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["MaxGcd"] = 4
          , ["HeroStep"] = 4
          , ["PreCreature"] = {
            [CREATURE_ARCHER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_CROSSBOW
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
            , [CREATURE_MARKSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_CROSSBOW
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
            , [CREATURE_LONGBOWMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_CROSSBOW
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 400
              }
            }
          }
        }
        , ["Gelu"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["MaxGcd"] = 6
          , ["HeroStep"] = 6
          , ["PreCreature"] = {
            [CREATURE_ARCHER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1900
              }
            }
            , [CREATURE_MARKSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1900
              }
            }
            , [CREATURE_LONGBOWMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1900
              }
            }
            , [CREATURE_AXE_FIGHTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1900
              }
            }
            , [CREATURE_AXE_THROWER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1900
              }
            }
            , [CREATURE_HARPOONER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1900
              }
            }
            , [CREATURE_WOOD_ELF] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1300
              }
            }
            , [CREATURE_GRAND_ELF] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1300
              }
            }
            , [CREATURE_SHARP_SHOOTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1300
              }
            }
          }
        }
        , ["Itil"] = {
          ["CastType"] = TTH_ENUM.Guide
          , ["MaxGcd"] = 6
          , ["HeroStep"] = 6
          , ["PreCreature"] = {
            [CREATURE_UNICORN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_WING_UNICORN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_WAR_UNICORN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_WING_UNICORN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_WHITE_UNICORN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_WING_UNICORN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
          }
        }
        , ["Dracon"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["MaxGcd"] = 5
          , ["HeroStep"] = 5
          , ["PreCreature"] = {
            [CREATURE_PRIEST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 0
              }
            }
            , [CREATURE_CLERIC] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 0
              }
            }
            , [CREATURE_ZEALOT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 0
              }
            }
            , [CREATURE_RUNE_MAGE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 0
              }
            }
            , [CREATURE_FLAME_MAGE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 0
              }
            }
            , [CREATURE_FLAME_KEEPER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 0
              }
            }
            , [CREATURE_MAGI] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
            , [CREATURE_ARCH_MAGI] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
            , [CREATURE_COMBAT_MAGE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
            , [CREATURE_DRUID] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
            , [CREATURE_DRUID_ELDER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
            , [CREATURE_HIGH_DRUID] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 200
              }
            }
          }
        }
        , ["Adelaide"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["MaxGcd"] = 4
          , ["HeroStep"] = 4
          , ["PreCreature"] = {
            [CREATURE_SKELETON] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_SKELETON_ARCHER] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_SKELETON_WARRIOR] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_WALKING_DEAD] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_ZOMBIE] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_DISEASE_ZOMBIE] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_MANES] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_GHOST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_POLTERGEIST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_VAMPIRE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_VAMPIRE_LORD] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_NOSFERATU] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_LICH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 100
              }
            }
            , [CREATURE_DEMILICH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 100
              }
            }
            , [CREATURE_LICH_MASTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 100
              }
            }
            , [CREATURE_WIGHT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_WRAITH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_BANSHEE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_BONE_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_SHADOW_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_HORROR_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SIREN
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
          }
        }
        , ["Thant"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["MaxGcd"] = 5
          , ["HeroStep"] = 5
          , ["PreCreature"] = {
            [CREATURE_SKELETON] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1700
              }
            }
            , [CREATURE_SKELETON_ARCHER] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1700
              }
            }
            , [CREATURE_SKELETON_WARRIOR] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1700
              }
            }
            , [CREATURE_WALKING_DEAD] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_ZOMBIE] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_DISEASE_ZOMBIE] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_MANES] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_GHOST] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_POLTERGEIST] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_VAMPIRE] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_VAMPIRE_LORD] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_NOSFERATU] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_LICH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_DEMILICH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_LICH_MASTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_WIGHT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_WRAITH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_BANSHEE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_BONE_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_SHADOW_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_HORROR_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
          }
        }
        , ["LordHaart"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["MaxGcd"] = 6
          , ["HeroStep"] = 6
          , ["PreCreature"] = {
            [CREATURE_SKELETON] = {
              ["Scale"] = 6
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [CREATURE_SKELETON_ARCHER] = {
              ["Scale"] = 6
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [CREATURE_SKELETON_WARRIOR] = {
              ["Scale"] = 6
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 2000
              }
            }
            , [CREATURE_WALKING_DEAD] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 1300
              }
            }
            , [CREATURE_ZOMBIE] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 1300
              }
            }
            , [CREATURE_DISEASE_ZOMBIE] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 1300
              }
            }
            , [CREATURE_MANES] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_GHOST] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_POLTERGEIST] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 1100
              }
            }
            , [CREATURE_VAMPIRE] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_VAMPIRE_LORD] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_NOSFERATU] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_LICH] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_DEMILICH] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_LICH_MASTER] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 200
              }
            }
            , [CREATURE_WIGHT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_WRAITH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_BANSHEE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 1
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_BONE_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_SHADOW_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
            , [CREATURE_HORROR_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 0
              }
            }
          }
        }
        , ["Azar"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["MaxGcd"] = 4
          , ["HeroStep"] = 4
          , ["PreCreature"] = {
            [CREATURE_GOBLIN] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_WOLF
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 800
              }
            }
            , [CREATURE_GOBLIN_TRAPPER] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_WOLF
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 800
              }
            }
            , [CREATURE_GOBLIN_DEFILER] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_WOLF
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 800
              }
            }
          }
        }
      };

    -- 元素魔法
      TTH_TABLE.ElementMagic = {
        SPELL_MAGIC_ARROW
        , SPELL_MAGIC_FIST
        , SPELL_LIGHTNING_BOLT
        , SPELL_ICE_BOLT
        , SPELL_FIREBALL
        , SPELL_FROST_RING
        , SPELL_CHAIN_LIGHTNING
        , SPELL_METEOR_SHOWER
        , SPELL_IMPLOSION
        , SPELL_ARMAGEDDON
        , SPELL_STONE_SPIKES
      };

    -- 注魔弩可关联魔法
      TTH_TABLE.ImbueBallistaSpell = {
        [HERO_SKILL_LIGHT_MAGIC] = {
          SPELL_DISPEL
          , SPELL_MASS_DISPEL
          , SPELL_DIVINE_VENGEANCE
        }
        , [HERO_SKILL_DARK_MAGIC] = {
          SPELL_CURSE
          , SPELL_SLOW
          , SPELL_DISRUPTING_RAY
          , SPELL_MASS_DISRUPTING_RAY
          , SPELL_WEAKNESS
          , SPELL_FORGETFULNESS
          , SPELL_MASS_FORGETFULNESS
          , SPELL_PLAGUE
          , SPELL_MASS_PLAGUE
          , SPELL_SORROW
          , SPELL_BERSERK
          , SPELL_BLIND
          , SPELL_HYPNOTIZE
        }
        , [HERO_SKILL_SUMMONING_MAGIC] = {
          SPELL_MAGIC_FIST
          , SPELL_EMPOWERED_MAGIC_FIST
          , SPELL_LAND_MINE
          , SPELL_WASP_SWARM
          -- , SPELL_ARCANE_CRYSTAL
          -- , SPELL_BLADE_BARRIER
          -- , SPELL_SUMMON_HIVE
        }
        , [HERO_SKILL_DESTRUCTIVE_MAGIC] = {
          SPELL_MAGIC_ARROW
          , SPELL_EMPOWERED_MAGIC_ARROW
          , SPELL_STONE_SPIKES
          , SPELL_EMPOWERED_STONE_SPIKES
          , SPELL_LIGHTNING_BOLT
          , SPELL_EMPOWERED_LIGHTNING_BOLT
          , SPELL_ICE_BOLT
          , SPELL_EMPOWERED_ICE_BOLT
          , SPELL_FIREBALL
          , SPELL_EMPOWERED_FIREBALL
          , SPELL_FROST_RING
          , SPELL_EMPOWERED_FROST_RING
          , SPELL_METEOR_SHOWER
          , SPELL_EMPOWERED_METEOR_SHOWER
          , SPELL_CHAIN_LIGHTNING
          , SPELL_EMPOWERED_CHAIN_LIGHTNING
          , SPELL_IMPLOSION
          , SPELL_EMPOWERED_IMPLOSION
          , SPELL_FIREWALL
          , SPELL_DEEP_FREEZE
          , SPELL_EMPOWERED_DEEP_FREEZE
        }
      };

    -- 恶灵诅咒关联魔法
      TTH_TABLE.ReaverCurseSpell = {
        SPELL_CURSE
        , SPELL_DISRUPTING_RAY
        , SPELL_WEAKNESS
        , SPELL_PLAGUE
        , SPELL_SORROW
        , SPELL_BERSERK
        , SPELL_BLIND
      };

    -- 符文
      TTH_TABLE.Rune = {
        [249] = {
          ["Id"] = SPELL_RUNE_OF_CHARGE
          , ["Text"] = "/Text/TTH/Rune/249-Charge/Text.txt"
        }
        , [250] = {
          ["Id"] = SPELL_RUNE_OF_BERSERKING
          , ["Text"] = "/Text/TTH/Rune/250-Berserking/Text.txt"
        }
        , [251] = {
          ["Id"] = SPELL_RUNE_OF_MAGIC_CONTROL
          , ["Text"] = "/Text/TTH/Rune/251-MagicControl/Text.txt"
        }
        , [252] = {
          ["Id"] = SPELL_RUNE_OF_EXORCISM
          , ["Text"] = "/Text/TTH/Rune/252-Exorcism/Text.txt"
        }
        , [253] = {
          ["Id"] = SPELL_RUNE_OF_ELEMENTAL_IMMUNITY
          , ["Text"] = "/Text/TTH/Rune/253-ElementalImmunity/Text.txt"
        }
        , [254] = {
          ["Id"] = SPELL_RUNE_OF_STUNNING
          , ["Text"] = "/Text/TTH/Rune/254-Stunning/Text.txt"
        }
        , [255] = {
          ["Id"] = SPELL_RUNE_OF_BATTLERAGE
          , ["Text"] = "/Text/TTH/Rune/255-Battlerage/Text.txt"
        }
        , [256] = {
          ["Id"] = SPELL_RUNE_OF_ETHEREALNESS
          , ["Text"] = "/Text/TTH/Rune/256-Etherealness/Text.txt"
        }
        , [257] = {
          ["Id"] = SPELL_RUNE_OF_REVIVE
          , ["Text"] = "/Text/TTH/Rune/257-Revive/Text.txt"
        }
        , [258] = {
          ["Id"] = SPELL_RUNE_OF_DRAGONFORM
          , ["Text"] = "/Text/TTH/Rune/258-Dragonform/Text.txt"
        }
      };

    -- 英雄升级所需经验
      TTH_TABLE.Exp4LevelUp = {
        [0] = 0
        , [1] = 1000
        , [2] = 2000
        , [3] = 3200
        , [4] = 4600
        , [5] = 6200
        , [6] = 8000
        , [7] = 10000
        , [8] = 12200
        , [9] = 14700
        , [10] = 17500
        , [11] = 20600
        , [12] = 24320
        , [13] = 28784
        , [14] = 34140
        , [15] = 40567
        , [16] = 48279
        , [17] = 57533
        , [18] = 68637
        , [19] = 81961
        , [20] = 97949
        , [21] = 117134
        , [22] = 140156
        , [23] = 167782
        , [24] = 200933
        , [25] = 244029
        , [26] = 304363
        , [27] = 394864
        , [28] = 539665
        , [29] = 785826
        , [30] = 1228915
        , [31] = 2070784
        , [32] = 3754522
        , [33] = 7290371
        , [34] = 15069238
        , [35] = 32960630
        , [36] = 75899970
        , [37] = 183248314
        , [38] = 462353978
        , [39] = 1215939194
        , [40] = 2147483647
      };

    -- 城镇控制点
      TTH_TABLE.TownTile = {
        [TOWN_HEAVEN] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -1, [1] =  1, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] = -2, [13] = -1, [14] =  0, [15] =  1, [16] =  2, [17] = -1, [18] =  0, [19] =  1, [20] = -2, [21] = -1, [22] =  0, [23] =  1, [24] =  0, [25] =  1, [26] =  2, [27] =  3, [28] = -3, [29] = -2, [30] = -1, [31] =  0, [32] =  1, [33] =  2, [34] =  3, [35] =  4, [36] = -3, [37] = -2, [38] =  0, [39] =  2, [40] =  3, [41] =  4, [42] = -3, [43] =  3, [44] =  4, [45] = -3, [46] =  3, [47] =  4, [48] = -3, [49] =  3, [50] =  4, [51] = -3, [52] = -2, [53] =  2, [54] =  3, [55] =  4, [56] = -2, [57] = -1, [58] =  0, [59] =  1, [60] =  2, [61] =  3, [62] =  6, [63] =  6, [64] =  5, [65] =  5, [66] =  0, [67] =  1, [68] =  2, [69] = -4, [70] = -4, [71] =  5, [72] =  5, [73] = -4, [74] =  4, [75] =  5, [76] =  5, [77] = -1, [78] =  2, [79] =  3, [80] =  4, [81] =  6, [82] =  5, [83] =  4, [84] =  2, [85] = -3, [86] =  0, [87] = -2 },
              ["y"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -1, [4] = -1, [5] = -1, [6] = -1, [7] =  0, [8] =  0, [9] =  0, [10] =  0, [11] =  0, [12] =  1, [13] =  1, [14] =  1, [15] =  1, [16] =  1, [17] =  2, [18] =  2, [19] =  2, [20] = -4, [21] = -4, [22] = -5, [23] = -5, [24] = -4, [25] = -4, [26] = -4, [27] = -4, [28] = -3, [29] = -3, [30] = -3, [31] = -3, [32] = -3, [33] = -3, [34] = -3, [35] = -3, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -2, [41] = -2, [42] = -1, [43] = -1, [44] = -1, [45] =  0, [46] =  0, [47] =  0, [48] =  1, [49] =  1, [50] =  1, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  3, [57] =  3, [58] =  3, [59] =  3, [60] =  3, [61] =  3, [62] = -1, [63] =  0, [64] =  2, [65] =  1, [66] =  4, [67] =  4, [68] =  4, [69] =  0, [70] = -1, [71] =  0, [72] = -1, [73] = -2, [74] = -4, [75] = -2, [76] = -3, [77] = -5, [78] = -5, [79] = -5, [80] =  3, [81] = -2, [82] = -4, [83] = -5, [84] = -6, [85] = -4, [86] = -6, [87] = -5 }
            },
            [1] = {
              ["x"] = {  },
              ["y"] = {  }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -6 }
            },
            [1] = {
              ["x"] = { [0] = -4, [1] = -3, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] =  3, [8] =  4, [9] = -4, [10] = -3, [11] = -2, [12] = -1, [13] =  0, [14] =  1, [15] =  2, [16] =  3, [17] =  4, [18] = -4, [19] = -3, [20] = -2, [21] = -1, [22] =  0, [23] =  1, [24] =  2, [25] =  3, [26] =  4, [27] = -4, [28] = -3, [29] = -2, [30] = -1, [31] =  0, [32] =  1, [33] =  2, [34] =  3, [35] =  4, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] = -4, [46] = -3, [47] = -2, [48] = -1, [49] =  0, [50] =  1, [51] =  2, [52] =  3, [53] =  4, [54] = -4, [55] = -3, [56] = -2, [57] = -1, [58] =  0, [59] =  1, [60] =  2, [61] =  3, [62] =  4, [63] = -4, [64] = -3, [65] = -2, [66] = -1, [67] =  0, [68] =  1, [69] =  2, [70] =  3, [71] =  4, [72] = -4, [73] = -3, [74] = -2, [75] = -1, [76] =  0, [77] =  1, [78] =  2, [79] =  3, [80] =  4 },
              ["y"] = { [0] = -4, [1] = -4, [2] = -4, [3] = -4, [4] = -4, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -3, [10] = -3, [11] = -3, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -3, [18] = -2, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -2, [27] = -1, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  1, [53] =  1, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  2, [59] =  2, [60] =  2, [61] =  2, [62] =  2, [63] =  3, [64] =  3, [65] =  3, [66] =  3, [67] =  3, [68] =  3, [69] =  3, [70] =  3, [71] =  3, [72] =  4, [73] =  4, [74] =  4, [75] =  4, [76] =  4, [77] =  4, [78] =  4, [79] =  4, [80] =  4 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -1 }
            },
            [1] = {
              ["x"] = { [0] =  0 },
              ["y"] = { [0] =  0 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 1
        }
        , [TOWN_PRESERVE] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -1, [1] =  1, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] = -2, [13] = -1, [14] =  0, [15] =  1, [16] =  2, [17] = -1, [18] =  0, [19] =  1, [20] = -2, [21] = -1, [22] =  0, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] = -3, [28] = -2, [29] = -1, [30] =  0, [31] =  1, [32] =  2, [33] =  3, [34] =  4, [35] = -3, [36] = -2, [37] =  0, [38] =  2, [39] =  3, [40] =  4, [41] = -3, [42] =  3, [43] =  4, [44] = -3, [45] =  3, [46] =  4, [47] = -3, [48] =  3, [49] =  4, [50] = -3, [51] = -2, [52] =  2, [53] =  3, [54] =  4, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] =  3, [61] =  6, [62] =  6, [63] =  0, [64] =  1, [65] = -2, [66] = -1, [67] =  5, [68] =  5, [69] =  0, [70] =  1, [71] =  2, [72] =  3, [73] = -4, [74] = -4, [75] = -4, [76] =  5, [77] =  5, [78] =  4, [79] =  5, [80] =  5, [81] =  2, [82] =  4, [83] = -3, [84] =  6, [85] =  2, [86] =  4, [87] =  5 },
              ["y"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -1, [4] = -1, [5] = -1, [6] = -1, [7] =  0, [8] =  0, [9] =  0, [10] =  0, [11] =  0, [12] =  1, [13] =  1, [14] =  1, [15] =  1, [16] =  1, [17] =  2, [18] =  2, [19] =  2, [20] = -4, [21] = -4, [22] = -5, [23] = -4, [24] = -4, [25] = -4, [26] = -4, [27] = -3, [28] = -3, [29] = -3, [30] = -3, [31] = -3, [32] = -3, [33] = -3, [34] = -3, [35] = -2, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -2, [41] = -1, [42] = -1, [43] = -1, [44] =  0, [45] =  0, [46] =  0, [47] =  1, [48] =  1, [49] =  1, [50] =  2, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  3, [56] =  3, [57] =  3, [58] =  3, [59] =  3, [60] =  3, [61] = -1, [62] =  0, [63] =  5, [64] =  5, [65] =  4, [66] =  4, [67] =  2, [68] =  1, [69] =  4, [70] =  4, [71] =  4, [72] =  4, [73] =  1, [74] =  0, [75] = -1, [76] =  0, [77] = -1, [78] = -4, [79] = -2, [80] = -3, [81] = -5, [82] =  3, [83] =  3, [84] =  1, [85] =  5, [86] =  4, [87] =  3 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -5 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] =  0 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
        , [TOWN_ACADEMY] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -2, [1] = -1, [2] =  0, [3] =  1, [4] =  2, [5] = -3, [6] = -2, [7] = -1, [8] =  0, [9] =  1, [10] =  2, [11] =  3, [12] = -3, [13] = -2, [14] = -1, [15] =  0, [16] =  1, [17] =  2, [18] =  3, [19] = -4, [20] = -3, [21] = -2, [22] = -1, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] =  4, [28] = -4, [29] = -3, [30] = -2, [31] = -1, [32] =  0, [33] =  2, [34] =  3, [35] =  4, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] = -3, [46] = -2, [47] = -1, [48] =  0, [49] =  1, [50] =  2, [51] =  3, [52] = -3, [53] = -2, [54] = -1, [55] =  0, [56] =  1, [57] =  2, [58] = -1, [59] =  0, [60] =  1, [61] = -2, [62] =  0, [63] =  2, [64] =  3, [65] =  4, [66] =  1, [67] =  2, [68] =  3, [69] =  3, [70] =  4, [71] =  4, [72] =  5, [73] =  5, [74] =  5, [75] =  5, [76] =  4, [77] =  4, [78] =  0, [79] =  2, [80] =  4, [81] =  5, [82] =  5, [83] =  6, [84] =  6, [85] =  6, [86] =  5, [87] =  1 },
              ["y"] = { [0] = -5, [1] = -5, [2] = -5, [3] = -5, [4] = -5, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -4, [10] = -4, [11] = -4, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -3, [18] = -3, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -2, [27] = -2, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  3, [59] =  3, [60] =  3, [61] =  3, [62] =  4, [63] =  3, [64] =  2, [65] =  1, [66] =  4, [67] =  4, [68] =  3, [69] = -5, [70] = -4, [71] = -3, [72] = -2, [73] = -1, [74] =  0, [75] =  1, [76] =  2, [77] =  3, [78] = -6, [79] = -6, [80] = -5, [81] = -4, [82] = -3, [83] = -2, [84] = -1, [85] =  0, [86] =  2, [87] = -1 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -6 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] =  0 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
        , [TOWN_DUNGEON] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] =  1, [1] = -1, [2] = -2, [3] = -2, [4] = -1, [5] =  0, [6] =  1, [7] =  2, [8] =  3, [9] = -3, [10] = -2, [11] = -1, [12] =  0, [13] =  1, [14] =  2, [15] =  3, [16] =  4, [17] = -4, [18] = -3, [19] = -2, [20] = -1, [21] =  0, [22] =  1, [23] =  2, [24] =  3, [25] =  4, [26] = -4, [27] = -3, [28] = -2, [29] = -1, [30] =  0, [31] =  1, [32] =  2, [33] =  3, [34] =  4, [35] =  5, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] =  5, [46] = -3, [47] = -2, [48] = -1, [49] =  0, [50] =  1, [51] =  2, [52] =  3, [53] =  4, [54] =  5, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] =  3, [61] =  4, [62] =  5, [63] = -2, [64] = -1, [65] =  0, [66] =  1, [67] =  2, [68] =  3, [69] =  4, [70] =  0, [71] =  1, [72] =  2, [73] =  0, [74] =  2, [75] =  2, [76] =  3, [77] =  0, [78] =  4, [79] =  4, [80] =  5, [81] =  5, [82] =  6, [83] =  6, [84] = -3, [85] = -3, [86] =  6 },
              ["y"] = { [0] = -5, [1] = -5, [2] = -5, [3] = -4, [4] = -4, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -3, [10] = -3, [11] = -3, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -2, [18] = -2, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -1, [27] = -1, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  0, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  1, [53] =  1, [54] =  1, [55] =  2, [56] =  2, [57] =  2, [58] =  2, [59] =  2, [60] =  2, [61] =  2, [62] =  2, [63] =  3, [64] =  3, [65] =  3, [66] =  3, [67] =  3, [68] =  3, [69] =  3, [70] =  4, [71] =  4, [72] =  4, [73] = -6, [74] = -6, [75] = -5, [76] = -5, [77] = -5, [78] = -5, [79] = -4, [80] = -3, [81] = -2, [82] = -1, [83] =  0, [84] = -4, [85] =  2, [86] = -2 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -6 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -1 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
        , [TOWN_NECROMANCY] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -1, [1] =  1, [2] = -2, [3] = -1, [4] =  0, [5] =  1, [6] =  2, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] = -2, [13] = -1, [14] =  0, [15] =  1, [16] =  2, [17] = -1, [18] =  0, [19] =  1, [20] = -2, [21] = -1, [22] =  0, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] = -3, [28] = -2, [29] = -1, [30] =  0, [31] =  1, [32] =  2, [33] =  3, [34] =  4, [35] = -3, [36] = -2, [37] =  0, [38] =  2, [39] =  3, [40] =  4, [41] = -3, [42] =  3, [43] =  4, [44] = -3, [45] =  3, [46] =  4, [47] = -3, [48] =  3, [49] =  4, [50] = -3, [51] = -2, [52] =  2, [53] =  3, [54] =  4, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] =  3, [61] =  6, [62] =  6, [63] =  1, [64] = -2, [65] = -1, [66] =  5, [67] =  5, [68] =  0, [69] =  1, [70] =  2, [71] =  3, [72] = -4, [73] = -4, [74] = -4, [75] =  5, [76] =  5, [77] =  4, [78] =  5, [79] =  5, [80] =  2, [81] =  4, [82] = -3, [83] =  6, [84] =  2, [85] =  4, [86] =  5, [87] =  0 },
              ["y"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -1, [4] = -1, [5] = -1, [6] = -1, [7] =  0, [8] =  0, [9] =  0, [10] =  0, [11] =  0, [12] =  1, [13] =  1, [14] =  1, [15] =  1, [16] =  1, [17] =  2, [18] =  2, [19] =  2, [20] = -4, [21] = -4, [22] = -5, [23] = -4, [24] = -4, [25] = -4, [26] = -4, [27] = -3, [28] = -3, [29] = -3, [30] = -3, [31] = -3, [32] = -3, [33] = -3, [34] = -3, [35] = -2, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -2, [41] = -1, [42] = -1, [43] = -1, [44] =  0, [45] =  0, [46] =  0, [47] =  1, [48] =  1, [49] =  1, [50] =  2, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  3, [56] =  3, [57] =  3, [58] =  3, [59] =  3, [60] =  3, [61] = -1, [62] =  0, [63] =  5, [64] =  4, [65] =  4, [66] =  2, [67] =  1, [68] =  4, [69] =  4, [70] =  4, [71] =  4, [72] =  1, [73] =  0, [74] = -1, [75] =  0, [76] = -1, [77] = -4, [78] = -2, [79] = -3, [80] = -5, [81] =  3, [82] =  3, [83] =  1, [84] =  5, [85] =  4, [86] =  3, [87] =  5 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -5 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] =  0 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
        , [TOWN_INFERNO] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -2, [1] = -2, [2] = -1, [3] = -3, [4] = -3, [5] = -4, [6] = -4, [7] = -3, [8] = -3, [9] = -3, [10] = -2, [11] = -1, [12] =  0, [13] =  1, [14] =  2, [15] =  3, [16] = -1, [17] =  0, [18] =  1, [19] =  2, [20] =  3, [21] = -1, [22] =  0, [23] =  1, [24] =  2, [25] =  3, [26] = -1, [27] =  0, [28] =  1, [29] =  2, [30] =  3, [31] = -1, [32] =  0, [33] =  1, [34] =  2, [35] =  3, [36] = -2, [37] = -2, [38] = -2, [39] = -2, [40] = -1, [41] =  0, [42] =  1, [43] =  2, [44] =  3, [45] =  2, [46] =  3, [47] =  4, [48] = -4, [49] = -3, [50] = -2, [51] = -1, [52] =  2, [53] =  3, [54] =  4, [55] =  4, [56] =  4, [57] =  4, [58] =  4, [59] =  4, [60] =  5, [61] =  5, [62] =  5, [63] =  5, [64] =  5, [65] =  5, [66] = -1, [67] =  0, [68] =  1, [69] =  2, [70] =  3, [71] =  4, [72] =  0, [73] =  6, [74] =  6, [75] =  6, [76] =  1, [77] =  1, [78] =  0, [79] =  0, [80] =  4, [81] =  5, [82] =  2, [83] = -3, [84] =  0, [85] =  1, [86] =  2, [87] = -2 },
              ["y"] = { [0] = -3, [1] = -4, [2] = -4, [3] = -4, [4] = -3, [5] = -1, [6] =  0, [7] = -2, [8] = -1, [9] =  0, [10] = -2, [11] = -3, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -2, [17] = -2, [18] = -2, [19] = -2, [20] = -2, [21] = -1, [22] = -1, [23] = -1, [24] = -1, [25] = -1, [26] =  0, [27] =  0, [28] =  0, [29] =  0, [30] =  0, [31] =  1, [32] =  1, [33] =  1, [34] =  1, [35] =  1, [36] = -1, [37] =  0, [38] =  1, [39] =  2, [40] =  2, [41] =  2, [42] =  2, [43] =  2, [44] =  2, [45] = -4, [46] = -4, [47] = -4, [48] = -2, [49] =  1, [50] = -5, [51] = -5, [52] = -5, [53] = -5, [54] = -3, [55] = -2, [56] = -1, [57] =  0, [58] =  1, [59] =  2, [60] = -3, [61] = -2, [62] = -1, [63] =  0, [64] =  1, [65] =  2, [66] =  3, [67] =  3, [68] =  3, [69] =  3, [70] =  3, [71] =  3, [72] = -4, [73] = -2, [74] = -1, [75] =  0, [76] = -4, [77] = -5, [78] = -5, [79] = -6, [80] = -5, [81] = -4, [82] = -6, [83] =  2, [84] =  4, [85] =  4, [86] =  4, [87] =  3 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -6 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -1 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
        , [TOWN_FORTRESS] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -2, [1] = -1, [2] =  0, [3] =  1, [4] =  2, [5] = -3, [6] = -2, [7] = -1, [8] =  0, [9] =  1, [10] =  2, [11] =  3, [12] = -3, [13] = -2, [14] = -1, [15] =  0, [16] =  1, [17] =  2, [18] =  3, [19] = -4, [20] = -3, [21] = -2, [22] = -1, [23] =  0, [24] =  1, [25] =  2, [26] =  3, [27] =  4, [28] = -4, [29] = -3, [30] = -2, [31] = -1, [32] =  0, [33] =  2, [34] =  3, [35] =  4, [36] = -4, [37] = -3, [38] = -2, [39] = -1, [40] =  0, [41] =  1, [42] =  2, [43] =  3, [44] =  4, [45] = -3, [46] = -2, [47] = -1, [48] =  0, [49] =  1, [50] =  2, [51] =  3, [52] = -3, [53] = -2, [54] = -1, [55] =  0, [56] =  1, [57] =  2, [58] = -1, [59] =  0, [60] =  1, [61] = -2, [62] =  0, [63] =  2, [64] =  3, [65] =  4, [66] =  1, [67] =  2, [68] =  3, [69] =  3, [70] =  4, [71] =  4, [72] =  5, [73] =  5, [74] =  5, [75] =  5, [76] =  4, [77] =  4, [78] =  0, [79] =  2, [80] =  4, [81] =  5, [82] =  5, [83] =  6, [84] =  6, [85] =  6, [86] =  5, [87] =  1 },
              ["y"] = { [0] = -5, [1] = -5, [2] = -5, [3] = -5, [4] = -5, [5] = -4, [6] = -4, [7] = -4, [8] = -4, [9] = -4, [10] = -4, [11] = -4, [12] = -3, [13] = -3, [14] = -3, [15] = -3, [16] = -3, [17] = -3, [18] = -3, [19] = -2, [20] = -2, [21] = -2, [22] = -2, [23] = -2, [24] = -2, [25] = -2, [26] = -2, [27] = -2, [28] = -1, [29] = -1, [30] = -1, [31] = -1, [32] = -1, [33] = -1, [34] = -1, [35] = -1, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  0, [42] =  0, [43] =  0, [44] =  0, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  1, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  3, [59] =  3, [60] =  3, [61] =  3, [62] =  4, [63] =  3, [64] =  2, [65] =  1, [66] =  4, [67] =  4, [68] =  3, [69] = -5, [70] = -4, [71] = -3, [72] = -2, [73] = -1, [74] =  0, [75] =  1, [76] =  2, [77] =  3, [78] = -6, [79] = -6, [80] = -5, [81] = -4, [82] = -3, [83] = -2, [84] = -1, [85] =  0, [86] =  2, [87] = -1 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] = -6 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  1 },
              ["y"] = { [0] =  0 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
        , [TOWN_STRONGHOLD] = {
          ["blockedTiles"] = {
            [0] = {
              ["x"] = { [0] = -2, [1] = -1, [2] =  0, [3] =  1, [4] =  2, [5] =  3, [6] = -3, [7] = -2, [8] = -1, [9] =  0, [10] =  1, [11] =  2, [12] =  3, [13] =  4, [14] = -3, [15] = -2, [16] = -1, [17] =  0, [18] =  1, [19] =  2, [20] =  3, [21] =  4, [22] = -4, [23] = -3, [24] = -2, [25] = -1, [26] =  0, [27] =  1, [28] =  2, [29] =  3, [30] =  4, [31] = -4, [32] = -3, [33] = -2, [34] = -1, [35] =  0, [36] =  1, [37] =  2, [38] =  3, [39] =  4, [40] =  5, [41] = -4, [42] = -3, [43] = -2, [44] = -1, [45] =  0, [46] =  1, [47] =  2, [48] =  3, [49] =  4, [50] =  5, [51] = -3, [52] = -2, [53] = -1, [54] =  0, [55] =  1, [56] =  2, [57] =  3, [58] =  4, [59] = -3, [60] = -2, [61] = -1, [62] =  0, [63] =  1, [64] =  2, [65] =  3, [66] =  4, [67] = -1, [68] =  0, [69] =  1, [70] =  2, [71] =  3, [72] =  0, [73] =  1, [74] =  5, [75] = -1, [76] = -2, [77] = -3, [78] = -4, [79] = -4, [80] = -5, [81] = -5, [82] = -5, [83] = -4, [84] = -4, [85] = -3, [86] = -1, [87] =  1 },
              ["y"] = { [0] = -4, [1] = -4, [2] = -4, [3] = -4, [4] = -4, [5] = -4, [6] = -3, [7] = -3, [8] = -3, [9] = -3, [10] = -3, [11] = -3, [12] = -3, [13] = -3, [14] = -2, [15] = -2, [16] = -2, [17] = -2, [18] = -2, [19] = -2, [20] = -2, [21] = -2, [22] = -1, [23] = -1, [24] = -1, [25] = -1, [26] = -1, [27] = -1, [28] = -1, [29] = -1, [30] = -1, [31] =  0, [32] =  0, [33] =  0, [34] =  0, [35] =  0, [36] =  0, [37] =  0, [38] =  0, [39] =  0, [40] =  0, [41] =  1, [42] =  1, [43] =  1, [44] =  1, [45] =  1, [46] =  1, [47] =  1, [48] =  1, [49] =  1, [50] =  1, [51] =  2, [52] =  2, [53] =  2, [54] =  2, [55] =  2, [56] =  2, [57] =  2, [58] =  2, [59] =  3, [60] =  3, [61] =  3, [62] =  3, [63] =  3, [64] =  3, [65] =  3, [66] =  3, [67] =  4, [68] =  4, [69] =  4, [70] =  4, [71] =  4, [72] =  5, [73] =  5, [74] = -1, [75] =  5, [76] =  4, [77] =  4, [78] =  3, [79] =  2, [80] =  1, [81] =  0, [82] = -1, [83] = -2, [84] = -3, [85] = -4, [86] = -5, [87] = -5 }
            }
          },
          ["activeTiles"] = {
            [0] = {
              ["x"] = { [0] =  0 },
              ["y"] = { [0] = -5 }
            }
          },
          ["possessionTiles"] = {
            [0] = {
              ["x"] = { [0] =  0 },
              ["y"] = { [0] =  0 }
            }
          },
          ["sharedType"] = "AdvMapTownShared",
          ["entries"] = 0
        }
      }

    -- 默认英雄天赋提升
      TTH_TABLE.HeroDefaultTalent = {
        "RedHeavenHero02"
        , "Axel"
        , "SaintIsabell"
        , "Linaas"
        , "Sufi"
        , "Timerkhan"
        , "Dalom"
        , "Raelag"
        , "Ranleth"
        , "Aberrar"
        , "Agrael"
        , "Brand"
        , "KingTolghar"
        , "Una"
      };

