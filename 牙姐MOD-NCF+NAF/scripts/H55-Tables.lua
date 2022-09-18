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

-- Sounds
  H55_SndStat = "/Sounds/_(Sound)/Interface/Ingame/Join-Flee.xdb#xpointer(/Sound)";
  H55_SndLvlUp = "/Sounds/_(Sound)/Interface/Events/Level Up.xdb#xpointer(/Sound)";
  H55_SndArtifact = "/Sounds/_(Sound)/Interface/Events/Get_artf_res02.xdb#xpointer(/Sound)";
  H55_SndArmy = "/Sounds/_(Sound)/Interface/Events/Get_army.xdb#xpointer(/Sound)";
  H55_SndTPStart = "/Sounds/_(Sound)/Spells/TownTeleportStart.xdb#xpointer(/Sound)";
  H55_SndTPEnd = "/Sounds/_(Sound)/Spells/TownTeleportEnd.xdb#xpointer(/Sound)";
  H55_SndNo = "/Sounds/_(Sound)/Interface/General/scroll_disabled_click.xdb#xpointer(/Sound)";
  H55_SndNewObj = "/Sounds/_(Sound)/Interface/Ingame/Objective/new-obj.xdb#xpointer(/Sound)";
  H55_SndObjComplete = "/Sounds/_(Sound)/Interface/Ingame/Objective/obj-complete.xdb#xpointer(/Sound)";
  H55_SndObjFail = "/Sounds/_(Sound)/Interface/Ingame/Objective/obj-fail.xdb#xpointer(/Sound)";
  H55_SndInteract = "/Sounds/_(Sound)/Interface/Ingame/Interact.xdb#xpointer(/Sound)";
  H55_SndWitch = "/Sounds/_(Sound)/Buildings/WitchHut.xdb#xpointer(/Sound)";
  H55_SndSpell = "/Sounds/_(Sound)/Buildings/ShrineOfMagic.xdb#xpointer(/Sound)";
  H55_SndCrash = "/Maps/Scenario/A2C2M1/Siege_WallCrash02sound.xdb#xpointer(/Sound)"

-- Effects
  H55_TPfx = "/Effects/_(Effect)/Spells/townportal_start.xdb#xpointer(/Effect)";
  H55_Firewallfx = "/Effects/_(Effect)/Spells/FireWall.(Effect).xdb#xpointer(/Effect)";
  H55_Dustfx = "/Effects/_(Effect)/Buildings/Capture/Start_dust_S.xdb#xpointer(/Effect)";
  H55_Fire01fx = "/Effects/_(Effect)/Towns/Inferno/MagicGuild.xdb#xpointer(/Effect)";
  H55_Fire02fx = "/Effects/_(Effect)/Towns/Inferno/DemonGate.xdb#xpointer(/Effect)";
  H55_Glowfx = "/Effects/_(Effect)/Environment/Inferno/Hellpikes/Hellpikes4x4_3.xdb#xpointer(/Effect)";

-- 所有宝物列表
  TTH_TABLE_Artifacts = {
    [1] = {
      [0] = ARTIFACT_RES_BASIC
      , [1] = ARTIFACT_SWORD_OF_RUINS
      , [2] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
      , [3] = ARTIFACT_SKULL_HELMET
      , [4] = ARTIFACT_WISPERING_RING
      , [5] = ARTIFACT_BEGINNER_MAGIC_STICK
      , [6] = ARTIFACT_EDGE_OF_BALANCE
      , [7] = ARTIFACT_STEADFAST
      , [8] = ARTIFACT_BUCKLER
      , [9] = ARTIFACT_FOUR_LEAF_CLOVER
      , [10] = ARTIFACT_GOLDEN_SEXTANT
      , [11] = ARTIFACT_CROWN_OF_MANY_EYES
      , [12] = ARTIFACT_RING_OF_LIGHTING_PROTECTION
      , [13] = ARTIFACT_BOOTS_OF_INTERFERENCE
      , [14] = ARTIFACT_RIGID_MANTLE
      , [15] = ARTIFACT_BEARHIDE_WRAPS
      , [16] = ARTIFACT_RING_OF_UNSUMMONING
    }
    , [2] = {
      [0] = ARTIFACT_RES_ADVANCED
      , [1] = ARTIFACT_LEGION_BASIC
      , [2] = ARTIFACT_TITANS_TRIDENT
      , [3] = ARTIFACT_RING_OF_LIFE
      , [4] = ARTIFACT_EVERCOLD_ICICLE
      , [5] = ARTIFACT_ENDLESS_SACK_OF_GOLD
      , [6] = ARTIFACT_PHOENIX_FEATHER_CAPE
      , [7] = ARTIFACT_VALORIOUS_ARMOR
      , [8] = ARTIFACT_EARTHSLIDERS
      , [9] = ARTIFACT_TAROT_DECK
      , [10] = ARTIFACT_REINCARNATION
      , [11] = ARTIFACT_WEREWOLF_CLAW_NECKLACE
      , [12] = ARTIFACT_SPIRIT_OF_OPPRESSION
    }
    , [3] = {
      [0] = ARTIFACT_NECKLACE_OF_BRAVERY
      , [1] = ARTIFACT_LION_HIDE_CAPE
      , [2] = ARTIFACT_HELM_OF_ENLIGHTMENT
      , [3] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
      , [4] = ARTIFACT_RING_OF_DEATH
      , [5] = ARTIFACT_RUNIC_WAR_AXE
      , [6] = ARTIFACT_RUNIC_WAR_HARNESS
      , [7] = ARTIFACT_TREEBORN_QUIVER
      , [8] = ARTIFACT_MONK_01
      , [9] = ARTIFACT_MONK_02
      , [10] = ARTIFACT_MONK_03
      , [11] = ARTIFACT_MONK_04
      , [12] = ARTIFACT_PIRATE_HAT
      , [13] = ARTIFACT_PIRATE_VEST
      , [14] = ARTIFACT_PIRATE_RING
      , [15] = ARTIFACT_PIRATE_HOOK
      , [16] = ARTIFACT_PIRATE_BOOTS
      , [17] = ARTIFACT_PIRATE_CHARM
    }
    , [4] = {
      [0] = ARTIFACT_LEGION_ADVANCED
      , [1] = ARTIFACT_DRUM_OF_CHARGE
      , [2] = ARTIFACT_WAYFARER_BOOTS
      , [3] = ARTIFACT_MOONBLADE
      , [4] = ARTIFACT_BOOTS_OF_SWIFTNESS
      , [5] = ARTIFACT_BOOTS_OF_SPEED
      , [6] = ARTIFACT_INHERITANCE
      , [7] = ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING
      , [8] = ARTIFACT_ICEBERG_SHIELD
      , [9] = ARTIFACT_NECKLACE_OF_POWER
      , [10] = ARTIFACT_NIGHTMARISH_RING
      , [11] = ARTIFACT_GOLDEN_HORSESHOE
      , [12] = ARTIFACT_ENDLESS_BAG_OF_GOLD
      , [13] = ARTIFACT_RING_OF_CELERITY
      , [14] = ARTIFACT_BAND_OF_CONJURER
      , [15] = ARTIFACT_JINXING_BAND
      , [16] = ARTIFACT_BONESTUDDED_LEATHER
      , [17] = ARTIFACT_HELM_OF_CHAOS
      , [18] = ARTIFACT_RING_OF_THE_SHADOWBRAND
      , [19] = ARTIFACT_DWARVEN_SMITHY_HUMMER
      , [20] = ARTIFACT_BOOK_OF_POWER
      , [21] = ARTIFACT_SHIELD_OF_WOLF_DUCHY
      , [22] = ARTIFACT_RING_OF_FORGOTTEN
      , [23] = ARTIFACT_PENDANT_OF_INTERFERENCE
      , [24] = ARTIFACT_BADGE_OF_SUN_CROSS
      , [25] = ARTIFACT_QUILL_OF_MAYOR
      , [26] = ARTIFACT_CROWN_OF_LEADER
    }
    , [5] = {
      [0] = ARTIFACT_CROWN_OF_COURAGE
      , [1] = ARTIFACT_DRAGON_SCALE_ARMOR
      , [2] = ARTIFACT_DRAGON_SCALE_SHIELD
      , [3] = ARTIFACT_DRAGON_BONE_GRAVES
      , [4] = ARTIFACT_DRAGON_WING_MANTLE
      , [5] = ARTIFACT_DRAGON_TEETH_NECKLACE
      , [6] = ARTIFACT_DRAGON_TALON_CROWN
      , [7] = ARTIFACT_DRAGON_EYE_RING
      , [8] = ARTIFACT_DRAGON_FLAME_TONGUE
      , [9] = ARTIFACT_ROBE_OF_MAGI
      , [10] = ARTIFACT_CROWN_OF_MAGI
      , [11] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
      , [12] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
      , [13] = ARTIFACT_DWARVEN_MITHRAL_HELMET
      , [14] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
      , [15] = ARTIFACT_OGRE_CLUB
      , [16] = ARTIFACT_OGRE_SHIELD
      , [17] = ARTIFACT_SKULL_OF_MARKAL
      , [18] = ARTIFACT_GUARDIAN_01
      , [19] = ARTIFACT_GUARDIAN_02
      , [20] = ARTIFACT_GUARDIAN_03
      , [21] = ARTIFACT_ORB_AIR
      , [22] = ARTIFACT_ORB_EARTH
      , [23] = ARTIFACT_ORB_FIRE
      , [24] = ARTIFACT_ORB_WATER
    }
    , [6] = {
      [0] = ARTIFACT_LEGION_EXPERT
      , [1] = ARTIFACT_PENDANT_OF_BLIND
      , [2] = ARTIFACT_GEM_OF_PHANTOM
      , [3] = ARTIFACT_UNICORN_HORN_BOW
      , [4] = ARTIFACT_STAFF_OF_VEXINGS
      , [5] = ARTIFACT_SHACKLES_OF_WAR
      , [6] = ARTIFACT_PLATE_MAIL_OF_STABILITY
      , [7] = ARTIFACT_PEDANT_OF_MASTERY
      , [8] = ARTIFACT_RING_OF_HASTE
      , [9] = ARTIFACT_CLOAK_OF_MOURNING
      , [10] = ARTIFACT_STAFF_OF_MAGI
      , [11] = ARTIFACT_RING_OF_MAGI
      , [12] = ARTIFACT_TWISTING_NEITHER
      , [13] = ARTIFACT_SHAWL_OF_GREAT_LICH
      , [14] = ARTIFACT_NECROMANCER_PENDANT
      , [15] = ARTIFACT_TOME_OF_DESTRUCTION
      , [16] = ARTIFACT_TOME_OF_LIGHT_MAGIC
      , [17] = ARTIFACT_TOME_OF_DARK_MAGIC
      , [18] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
      , [19] = ARTIFACT_RING_OF_MACHINE_AFFINITY
      , [20] = ARTIFACT_PENDANT_OF_STARDUST
      , [21] = ARTIFACT_RING_OF_HOLY_GRIFFIN
      , [22] = ARTIFACT_CLOAK_OF_MALASSA
    }
    , [7] = {
      [0] = ARTIFACT_ANGELIC_ALLIANCE
      , [1] = ARTIFACT_ANGEL_WINGS
      , [2] = ARTIFACT_GRAAL
      , [3] = ARTIFACT_MASK_OF_DOPPELGANGER
      , [4] = ARTIFACT_HORN_OF_PLENTY
      , [5] = ARTIFACT_CURSE_SHOULDER
      , [6] = ARTIFACT_DRACONIC
      , [7] = ARTIFACT_SENTINEL
      , [8] = ARTIFACT_EIGHTFOLD
      , [9] = ARTIFACT_CODEX
      , [10] = ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT
      , [11] = ARTIFACT_BOOK_OF_MALASSA
    }
  };

-- 开局可随机到的宝物
  TTH_ARTIFACT_STARTING = {
    [0] = ARTIFACT_RES_BASIC
    , [1] = ARTIFACT_LEGION_BASIC
    , [2] = ARTIFACT_SWORD_OF_RUINS
    , [3] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
    , [4] = ARTIFACT_SKULL_HELMET
    , [5] = ARTIFACT_WISPERING_RING
    , [6] = ARTIFACT_BEGINNER_MAGIC_STICK
    , [7] = ARTIFACT_EDGE_OF_BALANCE
    , [8] = ARTIFACT_STEADFAST
    , [9] = ARTIFACT_BUCKLER
    , [10] = ARTIFACT_FOUR_LEAF_CLOVER
    , [11] = ARTIFACT_GOLDEN_SEXTANT
    , [12] = ARTIFACT_CROWN_OF_MANY_EYES
    , [13] = ARTIFACT_RING_OF_LIGHTING_PROTECTION
    , [14] = ARTIFACT_BOOTS_OF_INTERFERENCE
    , [15] = ARTIFACT_RIGID_MANTLE
    , [16] = ARTIFACT_BEARHIDE_WRAPS
    , [17] = ARTIFACT_RING_OF_UNSUMMONING
    , [18] = ARTIFACT_RES_ADVANCED
    , [19] = ARTIFACT_LEGION_ADVANCED
    , [20] = ARTIFACT_TITANS_TRIDENT
    , [21] = ARTIFACT_RING_OF_LIFE
    , [22] = ARTIFACT_EVERCOLD_ICICLE
    , [23] = ARTIFACT_ENDLESS_SACK_OF_GOLD
    , [24] = ARTIFACT_PHOENIX_FEATHER_CAPE
    , [25] = ARTIFACT_VALORIOUS_ARMOR
    , [26] = ARTIFACT_EARTHSLIDERS
    , [27] = ARTIFACT_TAROT_DECK
    , [28] = ARTIFACT_REINCARNATION
    , [29] = ARTIFACT_WEREWOLF_CLAW_NECKLACE
    , [30] = ARTIFACT_SPIRIT_OF_OPPRESSION
    , [31] = ARTIFACT_NECKLACE_OF_BRAVERY
    , [32] = ARTIFACT_LION_HIDE_CAPE
    , [33] = ARTIFACT_HELM_OF_ENLIGHTMENT
    , [34] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
    , [35] = ARTIFACT_RING_OF_DEATH
    , [36] = ARTIFACT_RUNIC_WAR_AXE
    , [37] = ARTIFACT_RUNIC_WAR_HARNESS
    , [38] = ARTIFACT_TREEBORN_QUIVER
    , [39] = ARTIFACT_MONK_01
    , [40] = ARTIFACT_MONK_02
    , [41] = ARTIFACT_MONK_03
    , [42] = ARTIFACT_MONK_04
    , [43] = ARTIFACT_PIRATE_HAT
    , [44] = ARTIFACT_PIRATE_VEST
    , [45] = ARTIFACT_PIRATE_RING
    , [46] = ARTIFACT_PIRATE_HOOK
    , [47] = ARTIFACT_PIRATE_BOOTS
    , [48] = ARTIFACT_PIRATE_CHARM
  };

-- 所有法术列表
  TTH_TABLE_SPELL = {
    [SPELL_BLESS] = {
      ["ID"] = SPELL_BLESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_BLESS.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_MASS_BLESS] = {
      ["ID"] = SPELL_MASS_BLESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_BLESS.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "LIGHT"
    }    
    , [SPELL_HASTE] = {
      ["ID"] = SPELL_HASTE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_HASTE.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_MASS_HASTE] = {
      ["ID"] = SPELL_MASS_HASTE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_HASTE.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "LIGHT"
    }    
    , [SPELL_STONESKIN] = {
      ["ID"] = SPELL_STONESKIN
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_STONESKIN.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_MASS_STONESKIN] = {
      ["ID"] = SPELL_MASS_STONESKIN
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_STONESKIN.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "LIGHT"
    }    
    , [SPELL_BLOODLUST] = {
      ["ID"] = SPELL_BLOODLUST
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_BLOODLUST.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_MASS_BLOODLUST] = {
      ["ID"] = SPELL_MASS_BLOODLUST
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_BLOODLUST.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "LIGHT"
    }    
    , [SPELL_DEFLECT_ARROWS] = {
      ["ID"] = SPELL_DEFLECT_ARROWS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_DEFLECT_ARROWS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_MASS_DEFLECT_ARROWS] = {
      ["ID"] = SPELL_MASS_DEFLECT_ARROWS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_DEFLECT_ARROWS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "LIGHT"
    }    
    , [SPELL_DISPEL] = {
      ["ID"] = SPELL_DISPEL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_DISPEL.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_MASS_DISPEL] = {
      ["ID"] = SPELL_MASS_DISPEL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_DISPEL.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_ANTI_MAGIC] = {
      ["ID"] = SPELL_ANTI_MAGIC
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_ANTI_MAGIC.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_REGENERATION] = {
      ["ID"] = SPELL_REGENERATION
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_REGENERATION.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_TELEPORT] = {
      ["ID"] = SPELL_TELEPORT
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_TELEPORT.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_DIVINE_VENGEANCE] = {
      ["ID"] = SPELL_DIVINE_VENGEANCE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_DIVINE_VENGEANCE.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_HOLY_WORD] = {
      ["ID"] = SPELL_HOLY_WORD
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_HOLY_WORD.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_RESURRECT] = {
      ["ID"] = SPELL_RESURRECT
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RESURRECT.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "LIGHT"
    }
    , [SPELL_CURSE] = {
      ["ID"] = SPELL_CURSE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_CURSE.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_MASS_CURSE] = {
      ["ID"] = SPELL_MASS_CURSE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_CURSE.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_SLOW] = {
      ["ID"] = SPELL_SLOW
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_SLOW.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_MASS_SLOW] = {
      ["ID"] = SPELL_MASS_SLOW
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_SLOW.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_DISRUPTING_RAY] = {
      ["ID"] = SPELL_DISRUPTING_RAY
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_DISRUPTING_RAY.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_MASS_DISRUPTING_RAY] = {
      ["ID"] = SPELL_MASS_DISRUPTING_RAY
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_DISRUPTING_RAY.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_WEAKNESS] = {
      ["ID"] = SPELL_WEAKNESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WEAKNESS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_MASS_WEAKNESS] = {
      ["ID"] = SPELL_MASS_WEAKNESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_WEAKNESS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_FORGETFULNESS] = {
      ["ID"] = SPELL_FORGETFULNESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_FORGETFULNESS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_MASS_FORGETFULNESS] = {
      ["ID"] = SPELL_MASS_FORGETFULNESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_FORGETFULNESS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_PLAGUE] = {
      ["ID"] = SPELL_PLAGUE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_PLAGUE.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_MASS_PLAGUE] = {
      ["ID"] = SPELL_MASS_PLAGUE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_PLAGUE.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DARK"
    }    
    , [SPELL_SORROW] = {
      ["ID"] = SPELL_SORROW
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_SORROW.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_BERSERK] = {
      ["ID"] = SPELL_BERSERK
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_BERSERK.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_BLIND] = {
      ["ID"] = SPELL_BLIND
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_BLIND.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_UNHOLY_WORD] = {
      ["ID"] = SPELL_UNHOLY_WORD
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_UNHOLY_WORD.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_HYPNOTIZE] = {
      ["ID"] = SPELL_HYPNOTIZE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_HYPNOTIZE.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_VAMPIRISM] = {
      ["ID"] = SPELL_VAMPIRISM
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_VAMPIRISM.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "DARK"
    }
    , [SPELL_MAGIC_FIST] = {
      ["ID"] = SPELL_MAGIC_FIST
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_FIST.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_EMPOWERED_MAGIC_FIST] = {
      ["ID"] = SPELL_EMPOWERED_MAGIC_FIST
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_MAGIC_FIST.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "SUMMONING"
    }    
    , [SPELL_LAND_MINE] = {
      ["ID"] = SPELL_LAND_MINE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_LAND_MINE.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_ANIMATE_DEAD] = {
      ["ID"] = SPELL_ANIMATE_DEAD
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_ANIMATE_DEAD.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_CELESTIAL_SHIELD] = {
      ["ID"] = SPELL_CELESTIAL_SHIELD
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_CELESTIAL_SHIELD.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_ARCANE_CRYSTAL] = {
      ["ID"] = SPELL_ARCANE_CRYSTAL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_ARCANE_CRYSTAL.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_WASP_SWARM] = {
      ["ID"] = SPELL_WASP_SWARM
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WASP_SWARM.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_SUMMON_ELEMENTALS] = {
      ["ID"] = SPELL_SUMMON_ELEMENTALS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_ELEMENTALS.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_BLADE_BARRIER] = {
      ["ID"] = SPELL_BLADE_BARRIER
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_BLADE_BARRIER.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_PHANTOM] = {
      ["ID"] = SPELL_PHANTOM
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_EARTHQUAKE] = {
      ["ID"] = SPELL_EARTHQUAKE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EARTHQUAKE.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_FIREWALL] = {
      ["ID"] = SPELL_FIREWALL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_FIREWALL.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_CONJURE_PHOENIX] = {
      ["ID"] = SPELL_CONJURE_PHOENIX
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_CONJURE_PHOENIX.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_SUMMON_HIVE] = {
      ["ID"] = SPELL_SUMMON_HIVE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_HIVE.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "SUMMONING"
    }
    , [SPELL_MAGIC_ARROW] = {
      ["ID"] = SPELL_MAGIC_ARROW
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_ARROW.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_MAGIC_ARROW] = {
      ["ID"] = SPELL_EMPOWERED_MAGIC_ARROW
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_MAGIC_ARROW.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_STONE_SPIKES] = {
      ["ID"] = SPELL_STONE_SPIKES
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_STONE_SPIKES.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_STONE_SPIKES] = {
      ["ID"] = SPELL_EMPOWERED_STONE_SPIKES
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_STONE_SPIKES.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_ICE_BOLT] = {
      ["ID"] = SPELL_ICE_BOLT
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_ICE_BOLT.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_ICE_BOLT] = {
      ["ID"] = SPELL_EMPOWERED_ICE_BOLT
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_ICE_BOLT.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_LIGHTNING_BOLT] = {
      ["ID"] = SPELL_LIGHTNING_BOLT
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_LIGHTNING_BOLT.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_LIGHTNING_BOLT] = {
      ["ID"] = SPELL_EMPOWERED_LIGHTNING_BOLT
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_LIGHTNING_BOLT.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_FIREBALL] = {
      ["ID"] = SPELL_FIREBALL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_FIREBALL.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_FIREBALL] = {
      ["ID"] = SPELL_EMPOWERED_FIREBALL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_FIREBALL.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_FROST_RING] = {
      ["ID"] = SPELL_FROST_RING
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_FROST_RING.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_FROST_RING] = {
      ["ID"] = SPELL_EMPOWERED_FROST_RING
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_FROST_RING.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_METEOR_SHOWER] = {
      ["ID"] = SPELL_METEOR_SHOWER
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_METEOR_SHOWER.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_METEOR_SHOWER] = {
      ["ID"] = SPELL_EMPOWERED_METEOR_SHOWER
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_METEOR_SHOWER.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_CHAIN_LIGHTNING] = {
      ["ID"] = SPELL_CHAIN_LIGHTNING
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_CHAIN_LIGHTNING.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_CHAIN_LIGHTNING] = {
      ["ID"] = SPELL_EMPOWERED_CHAIN_LIGHTNING
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_CHAIN_LIGHTNING.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_IMPLOSION] = {
      ["ID"] = SPELL_IMPLOSION
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_IMPLOSION.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_IMPLOSION] = {
      ["ID"] = SPELL_EMPOWERED_IMPLOSION
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_IMPLOSION.txt"
      , ["LEVEL"] = 4
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_ARMAGEDDON] = {
      ["ID"] = SPELL_ARMAGEDDON
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_ARMAGEDDON.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "DESTRUCTIVE"
    } 
    , [SPELL_EMPOWERED_ARMAGEDDON] = {
      ["ID"] = SPELL_EMPOWERED_ARMAGEDDON
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_ARMAGEDDON.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_DEEP_FREEZE] = {
      ["ID"] = SPELL_DEEP_FREEZE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "DESTRUCTIVE"
    }
    , [SPELL_EMPOWERED_DEEP_FREEZE] = {
      ["ID"] = SPELL_EMPOWERED_DEEP_FREEZE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_DEEP_FREEZE.txt"
      , ["LEVEL"] = 5
      , ["ELEMENT"] = "DESTRUCTIVE"
    }    
    , [SPELL_RUNE_OF_CHARGE] = {
      ["ID"] = SPELL_RUNE_OF_CHARGE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_CHARGE.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_BERSERKING] = {
      ["ID"] = SPELL_RUNE_OF_BERSERKING
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_BERSERKING.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_MAGIC_CONTROL] = {
      ["ID"] = SPELL_RUNE_OF_MAGIC_CONTROL
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_MAGIC_CONTROL.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_EXORCISM] = {
      ["ID"] = SPELL_RUNE_OF_EXORCISM
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_EXORCISM.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_ETHEREALNESS] = {
      ["ID"] = SPELL_RUNE_OF_ETHEREALNESS
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_ETHEREALNESS.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_ELEMENTAL_IMMUNITY] = {
      ["ID"] = SPELL_RUNE_OF_ELEMENTAL_IMMUNITY
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_ELEMENTAL_IMMUNITY.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_REVIVE] = {
      ["ID"] = SPELL_RUNE_OF_REVIVE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_REVIVE.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_STUNNING] = {
      ["ID"] = SPELL_RUNE_OF_STUNNING
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_STUNNING.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_BATTLERAGE] = {
      ["ID"] = SPELL_RUNE_OF_BATTLERAGE
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_BATTLERAGE.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_RUNE_OF_DRAGONFORM] = {
      ["ID"] = SPELL_RUNE_OF_DRAGONFORM
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_RUNE_OF_DRAGONFORM.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "RUNE"
    }
    , [SPELL_WARCRY_RALLING_CRY] = {
      ["ID"] = SPELL_WARCRY_RALLING_CRY
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_RALLING_CRY.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "WARCRY"
    }
    , [SPELL_WARCRY_CALL_OF_BLOOD] = {
      ["ID"] = SPELL_WARCRY_CALL_OF_BLOOD
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_CALL_OF_BLOOD.txt"
      , ["LEVEL"] = 1
      , ["ELEMENT"] = "WARCRY"
    }
    , [SPELL_WARCRY_WORD_OF_THE_CHIEF] = {
      ["ID"] = SPELL_WARCRY_WORD_OF_THE_CHIEF
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_WORD_OF_THE_CHIEF.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "WARCRY"
    }
    , [SPELL_WARCRY_FEAR_MY_ROAR] = {
      ["ID"] = SPELL_WARCRY_FEAR_MY_ROAR
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_FEAR_MY_ROAR.txt"
      , ["LEVEL"] = 2
      , ["ELEMENT"] = "WARCRY"
    }
    , [SPELL_WARCRY_BATTLECRY] = {
      ["ID"] = SPELL_WARCRY_BATTLECRY
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_BATTLECRY.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "WARCRY"
    }
    , [SPELL_WARCRY_SHOUT_OF_MANY] = {
      ["ID"] = SPELL_WARCRY_SHOUT_OF_MANY
      , ["NAME"] = "/Text/Game/Scripts/Spells/spell_name_SPELL_WARCRY_SHOUT_OF_MANY.txt"
      , ["LEVEL"] = 3
      , ["ELEMENT"] = "WARCRY"
    }
  };

-- 根据英雄技能赠送魔法相关
  TTH_TABLE_GIVE_MAGIC_BY_SKILL = {
    -- 高级光明 + 愤怒大师 = 疾速行动
    {
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_HASTE]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_BLESS]
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
    -- 高级光明 + 防护大师 = 坚韧不屈
    , {
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_STONESKIN]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_SLOW]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_CURSE]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_DISRUPTING_RAY]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_LAND_MINE]
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
    -- 专家召唤 + 符咒大师 = 召唤元素
    , {
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_SUMMON_ELEMENTALS]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_ANIMATE_DEAD]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_ICE_BOLT]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_FIREBALL]
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
    -- 高级破坏 + 风暴大师 = 霹雳闪电
    , {
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_LIGHTNING_BOLT]
      , ["SKILL_MASTERY"] = {
        {
          ["MASTERY"] = SKILL_DESTRUCTIVE_MAGIC
          , ["LEVEL"] = 2
        }
      }
      , ["SKILL_PERK"] = {
        PERK_MASTER_OF_LIGHTNINGS
      }
    }
    -- 专家破坏 + 致命深寒 = 严冬冰环
    , {
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_FROST_RING]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_REGENERATION]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_FORGETFULNESS]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_FIREWALL]
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
      ["MAGIC"] = TTH_TABLE_SPELL[SPELL_CHAIN_LIGHTNING]
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
  };

-- 所有法术列表 1级魔法30%几率，2级魔法25%几率，3级魔法20%几率，4级魔法10%几率，5级魔法5%几率，群体魔法5%几率，强效魔法5%几率
  TTH_TABLE_SPELL_TYPE = {
    ["1"] = {
      ["ID"] = {
        SPELL_BLESS
        , SPELL_HASTE
        , SPELL_CURSE
        , SPELL_SLOW
        , SPELL_MAGIC_FIST
        , SPELL_LAND_MINE
        , SPELL_MAGIC_ARROW
        , SPELL_STONE_SPIKES
      }
      , ["NAME"] = {
        "/Text/Game/Scripts/Spells/spell_name_SPELL_BLESS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_HASTE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_CURSE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_SLOW.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_FIST.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_LAND_MINE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MAGIC_ARROW.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_STONE_SPIKES.txt"
      }
    }
    , ["2"] = {
      ["ID"] = {
        SPELL_STONESKIN
        , SPELL_BLOODLUST
        , SPELL_DEFLECT_ARROWS
        , SPELL_DISRUPTING_RAY
        , SPELL_WEAKNESS
        , SPELL_FORGETFULNESS
        , SPELL_ANIMATE_DEAD
        , SPELL_CELESTIAL_SHIELD
        , SPELL_ARCANE_CRYSTAL
        , SPELL_ICE_BOLT
        , SPELL_LIGHTNING_BOLT
      }
      , ["NAME"] = {
        "/Text/Game/Scripts/Spells/spell_name_SPELL_STONESKIN.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_BLOODLUST.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_DEFLECT_ARROWS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_DISRUPTING_RAY.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_WEAKNESS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_FORGETFULNESS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_ANIMATE_DEAD.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_CELESTIAL_SHIELD.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_ARCANE_CRYSTAL.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_ICE_BOLT.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_LIGHTNING_BOLT.txt"
      }
    }
    , ["3"] = {
      ["ID"] = {
        SPELL_DISPEL
        , SPELL_ANTI_MAGIC
        , SPELL_REGENERATION
        , SPELL_PLAGUE
        , SPELL_SORROW
        , SPELL_WASP_SWARM
        , SPELL_SUMMON_ELEMENTALS
        , SPELL_BLADE_BARRIER
        , SPELL_FIREBALL
        , SPELL_FROST_RING
        , SPELL_METEOR_SHOWER
      }
      , ["NAME"] = {
        "/Text/Game/Scripts/Spells/spell_name_SPELL_DISPEL.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_ANTI_MAGIC.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_REGENERATION.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_PLAGUE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_SORROW.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_WASP_SWARM.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_ELEMENTALS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_BLADE_BARRIER.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_FIREBALL.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_FROST_RING.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_METEOR_SHOWER.txt"
      }
    }
    , ["4"] = {
      ["ID"] = {
        SPELL_TELEPORT
        , SPELL_DIVINE_VENGEANCE
        , SPELL_BERSERK
        , SPELL_BLIND
        , SPELL_UNHOLY_WORD
        , SPELL_PHANTOM
        , SPELL_EARTHQUAKE
        , SPELL_FIREWALL
        , SPELL_CHAIN_LIGHTNING
        , SPELL_IMPLOSION
      }
      , ["NAME"] = {
        "/Text/Game/Scripts/Spells/spell_name_SPELL_TELEPORT.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_DIVINE_VENGEANCE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_BERSERK.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_BLIND.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_UNHOLY_WORD.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_PHANTOM.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EARTHQUAKE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_FIREWALL.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_CHAIN_LIGHTNING.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_IMPLOSION.txt"
      }
    }
    , ["5"] = {
      ["ID"] = {
        SPELL_HOLY_WORD
        , SPELL_RESURRECT
        , SPELL_HYPNOTIZE
        , SPELL_VAMPIRISM
        , SPELL_CONJURE_PHOENIX
        , SPELL_SUMMON_HIVE
        , SPELL_ARMAGEDDON
        , SPELL_DEEP_FREEZE
      }
      , ["NAME"] = {
        "/Text/Game/Scripts/Spells/spell_name_SPELL_HOLY_WORD.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_RESURRECT.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_HYPNOTIZE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_VAMPIRISM.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_CONJURE_PHOENIX.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_SUMMON_HIVE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_ARMAGEDDON.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_DEEP_FREEZE.txt"
      }
    }
    , ["MASSandEMPOWERED"] = {
      ["ID"] = {
        SPELL_MASS_CURSE
        , SPELL_MASS_DISRUPTING_RAY
        , SPELL_MASS_SLOW
        , SPELL_MASS_FORGETFULNESS
        , SPELL_MASS_PLAGUE
        , SPELL_MASS_WEAKNESS
        , SPELL_MASS_BLESS
        , SPELL_MASS_DISPEL
        , SPELL_MASS_STONESKIN
        , SPELL_MASS_DEFLECT_ARROWS
        , SPELL_MASS_BLOODLUST
        , SPELL_MASS_HASTE
        , SPELL_EMPOWERED_MAGIC_ARROW
        , SPELL_EMPOWERED_MAGIC_FIST
        , SPELL_EMPOWERED_LIGHTNING_BOLT
        , SPELL_EMPOWERED_ICE_BOLT
        , SPELL_EMPOWERED_FIREBALL
        , SPELL_EMPOWERED_FROST_RING
        , SPELL_EMPOWERED_CHAIN_LIGHTNING
        , SPELL_EMPOWERED_METEOR_SHOWER
        , SPELL_EMPOWERED_IMPLOSION
        , SPELL_EMPOWERED_ARMAGEDDON
        , SPELL_EMPOWERED_STONE_SPIKES
        , SPELL_EMPOWERED_DEEP_FREEZE
      }
      , ["NAME"] = {
        "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_CURSE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_DISRUPTING_RAY.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_SLOW.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_FORGETFULNESS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_PLAGUE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_WEAKNESS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_BLESS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_DISPEL.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_STONESKIN.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_DEFLECT_ARROWS.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_BLOODLUST.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_MASS_HASTE.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_MAGIC_ARROW.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_MAGIC_FIST.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_LIGHTNING_BOLT.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_ICE_BOLT.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_FIREBALL.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_FROST_RING.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_CHAIN_LIGHTNING.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_METEOR_SHOWER.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_IMPLOSION.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_ARMAGEDDON.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_STONE_SPIKES.txt"
        , "/Text/Game/Scripts/Spells/spell_name_SPELL_EMPOWERED_DEEP_FREEZE.txt"
      }
    }
  };

-- 所有生物列表 按ID排序
  TTH_TABLE_NCF_CREATURES = {
    [0] = {
      ["ID"] = CREATURE_UNKNOWN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_0/Name.txt"
      , ["GROWTH"] = 0
      , ["TIER"] = 0
      , ["POWER"] = 0
    }
    , [1] = {
      ["ID"] = CREATURE_PEASANT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_1/Name.txt"
      , ["GROWTH"] = 27
      , ["TIER"] = 1
      , ["POWER"] = 41
      , ["Upgrade"] = {
        [1] = 2
        , [2] = 106
      }
    }
    , [2] = {
      ["ID"] = CREATURE_MILITIAMAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_2/Name.txt"
      , ["GROWTH"] = 27
      , ["TIER"] = 1
      , ["POWER"] = 72
      , ["Pair"] = 106
    }
    , [3] = {
      ["ID"] = CREATURE_ARCHER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_3/Name.txt"
      , ["GROWTH"] = 12
      , ["TIER"] = 2
      , ["POWER"] = 140
      , ["Upgrade"] = {
        [1] = 4
        , [2] = 107
      }
    }
    , [4] = {
      ["ID"] = CREATURE_MARKSMAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_4/Name.txt"
      , ["GROWTH"] = 12
      , ["TIER"] = 2
      , ["POWER"] = 199
      , ["Pair"] = 107
    }
    , [5] = {
      ["ID"] = CREATURE_FOOTMAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_5/Name.txt"
      , ["GROWTH"] = 10
      , ["TIER"] = 3
      , ["POWER"] = 201
      , ["Upgrade"] = {
        [1] = 6
        , [2] = 108
      }
    }
    , [6] = {
      ["ID"] = CREATURE_SWORDSMAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_6/Name.txt"
      , ["GROWTH"] = 10
      , ["TIER"] = 3
      , ["POWER"] = 287
      , ["Pair"] = 108
    }
    , [7] = {
      ["ID"] = CREATURE_GRIFFIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_7/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 524
      , ["Upgrade"] = {
        [1] = 8
        , [2] = 109
      }
    }
    , [8] = {
      ["ID"] = CREATURE_ROYAL_GRIFFIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_8/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 716
      , ["Pair"] = 109
    }
    , [9] = {
      ["ID"] = CREATURE_PRIEST
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_9/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1086
      , ["Upgrade"] = {
        [1] = 10
        , [2] = 110
      }
    }
    , [10] = {
      ["ID"] = CREATURE_CLERIC
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_10/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1487
      , ["Pair"] = 110
    }
    , [11] = {
      ["ID"] = CREATURE_CAVALIER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_11/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2185
      , ["Upgrade"] = {
        [1] = 12
        , [2] = 111
      }
    }
    , [12] = {
      ["ID"] = CREATURE_PALADIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_12/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2520
      , ["Pair"] = 111
    }
    , [13] = {
      ["ID"] = CREATURE_ANGEL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_13/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 4866
      , ["Upgrade"] = {
        [1] = 14
        , [2] = 112
      }
    }
    , [14] = {
      ["ID"] = CREATURE_ARCHANGEL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_14/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6153
      , ["Pair"] = 112
    }
    , [15] = {
      ["ID"] = CREATURE_FAMILIAR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_15/Name.txt"
      , ["GROWTH"] = 16
      , ["TIER"] = 1
      , ["POWER"] = 78
      , ["Upgrade"] = {
        [1] = 16
        , [2] = 131
      }
    }
    , [16] = {
      ["ID"] = CREATURE_IMP
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_16/Name.txt"
      , ["GROWTH"] = 16
      , ["TIER"] = 1
      , ["POWER"] = 127
      , ["Pair"] = 131
    }
    , [17] = {
      ["ID"] = CREATURE_DEMON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_17/Name.txt"
      , ["GROWTH"] = 17
      , ["TIER"] = 2
      , ["POWER"] = 106
      , ["Upgrade"] = {
        [1] = 18
        , [2] = 132
      }
    }
    , [18] = {
      ["ID"] = CREATURE_HORNED_DEMON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_18/Name.txt"
      , ["GROWTH"] = 17
      , ["TIER"] = 2
      , ["POWER"] = 150
      , ["Pair"] = 132
    }
    , [19] = {
      ["ID"] = CREATURE_HELL_HOUND
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_19/Name.txt"
      , ["GROWTH"] = 8
      , ["TIER"] = 3
      , ["POWER"] = 259
      , ["Upgrade"] = {
        [1] = 20
        , [2] = 133
      }
    }
    , [20] = {
      ["ID"] = CREATURE_CERBERI
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_20/Name.txt"
      , ["GROWTH"] = 8
      , ["TIER"] = 3
      , ["POWER"] = 370
      , ["Pair"] = 133
    }
    , [21] = {
      ["ID"] = CREATURE_SUCCUBUS
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_21/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 511
      , ["Upgrade"] = {
        [1] = 22
        , [2] = 134
      }
    }
    , [22] = {
      ["ID"] = CREATURE_INFERNAL_SUCCUBUS
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_22/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 694
      , ["Pair"] = 134
    }
    , [23] = {
      ["ID"] = CREATURE_NIGHTMARE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_23/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 5
      , ["POWER"] = 1069
      , ["Upgrade"] = {
        [1] = 24
        , [2] = 135
      }
    }
    , [24] = {
      ["ID"] = CREATURE_FRIGHTFUL_NIGHTMARE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_24/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 5
      , ["POWER"] = 1415
      , ["Pair"] = 135
    }
    , [25] = {
      ["ID"] = CREATURE_PIT_FIEND
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_25/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2102
      , ["Upgrade"] = {
        [1] = 26
        , [2] = 136
      }
    }
    , [26] = {
      ["ID"] = CREATURE_BALOR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_26/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2445
      , ["Pair"] = 136
    }
    , [27] = {
      ["ID"] = CREATURE_DEVIL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_27/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 4868
      , ["Upgrade"] = {
        [1] = 28
        , [2] = 137
      }
    }
    , [28] = {
      ["ID"] = CREATURE_ARCHDEVIL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_28/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6066
      , ["Pair"] = 137
    }
    , [29] = {
      ["ID"] = CREATURE_SKELETON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_29/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 54
      , ["Upgrade"] = {
        [1] = 30
        , [2] = 152
      }
    }
    , [30] = {
      ["ID"] = CREATURE_SKELETON_ARCHER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_30/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 84
      , ["Pair"] = 152
    }
    , [31] = {
      ["ID"] = CREATURE_WALKING_DEAD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_31/Name.txt"
      , ["GROWTH"] = 15
      , ["TIER"] = 2
      , ["POWER"] = 105
      , ["Upgrade"] = {
        [1] = 32
        , [2] = 153
      }
    }
    , [32] = {
      ["ID"] = CREATURE_ZOMBIE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_32/Name.txt"
      , ["GROWTH"] = 15
      , ["TIER"] = 2
      , ["POWER"] = 150
      , ["Pair"] = 153
    }
    , [33] = {
      ["ID"] = CREATURE_MANES
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_33/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 3
      , ["POWER"] = 232
      , ["Upgrade"] = {
        [1] = 34
        , [2] = 154
      }
    }
    , [34] = {
      ["ID"] = CREATURE_GHOST
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_34/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 3
      , ["POWER"] = 327
      , ["Pair"] = 154
    }
    , [35] = {
      ["ID"] = CREATURE_VAMPIRE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_35/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 518
      , ["Upgrade"] = {
        [1] = 36
        , [2] = 155
      }
    }
    , [36] = {
      ["ID"] = CREATURE_VAMPIRE_LORD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_36/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 739
      , ["Pair"] = 155
    }
    , [37] = {
      ["ID"] = CREATURE_LICH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_37/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1166
      , ["Upgrade"] = {
        [1] = 38
        , [2] = 156
      }
    }
    , [38] = {
      ["ID"] = CREATURE_DEMILICH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_38/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1539
      , ["Pair"] = 156
    }
    , [39] = {
      ["ID"] = CREATURE_WIGHT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_39/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2204
      , ["Upgrade"] = {
        [1] = 40
        , [2] = 157
      }
    }
    , [40] = {
      ["ID"] = CREATURE_WRAITH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_40/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2588
      , ["Pair"] = 157
    }
    , [41] = {
      ["ID"] = CREATURE_BONE_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_41/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 7
      , ["POWER"] = 3174
      , ["Upgrade"] = {
        [1] = 42
        , [2] = 158
      }
    }
    , [42] = {
      ["ID"] = CREATURE_SHADOW_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_42/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 7
      , ["POWER"] = 3905
      , ["Pair"] = 158
    }
    , [43] = {
      ["ID"] = CREATURE_PIXIE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_43/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 1
      , ["POWER"] = 100
      , ["Upgrade"] = {
        [1] = 44
        , [2] = 145
      }
    }
    , [44] = {
      ["ID"] = CREATURE_SPRITE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_44/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 1
      , ["POWER"] = 169
      , ["Pair"] = 145
    }
    , [45] = {
      ["ID"] = CREATURE_BLADE_JUGGLER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_45/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 2
      , ["POWER"] = 191
      , ["Upgrade"] = {
        [1] = 46
        , [2] = 146
      }
    }
    , [46] = {
      ["ID"] = CREATURE_WAR_DANCER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_46/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 2
      , ["POWER"] = 311
      , ["Pair"] = 146
    }
    , [47] = {
      ["ID"] = CREATURE_WOOD_ELF
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_47/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 3
      , ["POWER"] = 309
      , ["Upgrade"] = {
        [1] = 48
        , [2] = 147
      }
    }
    , [48] = {
      ["ID"] = CREATURE_GRAND_ELF
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_48/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 3
      , ["POWER"] = 433
      , ["Pair"] = 147
    }
    , [49] = {
      ["ID"] = CREATURE_DRUID
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_49/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 635
      , ["Upgrade"] = {
        [1] = 50
        , [2] = 148
      }
    }
    , [50] = {
      ["ID"] = CREATURE_DRUID_ELDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_50/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 846
      , ["Pair"] = 148
    }
    , [51] = {
      ["ID"] = CREATURE_UNICORN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_51/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1072
      , ["Upgrade"] = {
        [1] = 52
        , [2] = 149
      }
    }
    , [52] = {
      ["ID"] = CREATURE_WAR_UNICORN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_52/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1441
      , ["Pair"] = 149
    }
    , [53] = {
      ["ID"] = CREATURE_TREANT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_53/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 6
      , ["POWER"] = 1717
      , ["Upgrade"] = {
        [1] = 54
        , [2] = 150
      }
    }
    , [54] = {
      ["ID"] = CREATURE_TREANT_GUARDIAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_54/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 6
      , ["POWER"] = 1993
      , ["Pair"] = 150
    }
    , [55] = {
      ["ID"] = CREATURE_GREEN_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_55/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 4942
      , ["Upgrade"] = {
        [1] = 55
        , [2] = 151
      }
    }
    , [56] = {
      ["ID"] = CREATURE_GOLD_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_56/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6028
      , ["Pair"] = 151
    }
    , [57] = {
      ["ID"] = CREATURE_GREMLIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_57/Name.txt"
      , ["GROWTH"] = 20
      , ["TIER"] = 1
      , ["POWER"] = 63
      , ["Upgrade"] = {
        [1] = 58
        , [2] = 159
      }
    }
    , [58] = {
      ["ID"] = CREATURE_MASTER_GREMLIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_58/Name.txt"
      , ["GROWTH"] = 20
      , ["TIER"] = 1
      , ["POWER"] = 105
      , ["Pair"] = 159
    }
    , [59] = {
      ["ID"] = CREATURE_STONE_GARGOYLE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_59/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 113
      , ["Upgrade"] = {
        [1] = 60
        , [2] = 160
      }
    }
    , [60] = {
      ["ID"] = CREATURE_OBSIDIAN_GARGOYLE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_60/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 172
      , ["Pair"] = 160
    }
    , [61] = {
      ["ID"] = CREATURE_IRON_GOLEM
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_61/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 3
      , ["POWER"] = 243
      , ["Upgrade"] = {
        [1] = 62
        , [2] = 161
      }
    }
    , [62] = {
      ["ID"] = CREATURE_STEEL_GOLEM
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_62/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 3
      , ["POWER"] = 357
      , ["Pair"] = 161
    }
    , [63] = {
      ["ID"] = CREATURE_MAGI
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_63/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 498
      , ["Upgrade"] = {
        [1] = 64
        , [2] = 162
      }
    }
    , [64] = {
      ["ID"] = CREATURE_ARCH_MAGI
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_64/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 643
      , ["Pair"] = 162
    }
    , [65] = {
      ["ID"] = CREATURE_GENIE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_65/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 5
      , ["POWER"] = 839
      , ["Upgrade"] = {
        [1] = 66
        , [2] = 163
      }
    }
    , [66] = {
      ["ID"] = CREATURE_MASTER_GENIE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_66/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 5
      , ["POWER"] = 1126
      , ["Pair"] = 163
    }
    , [67] = {
      ["ID"] = CREATURE_RAKSHASA
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_67/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2108
      , ["Upgrade"] = {
        [1] = 68
        , [2] = 164
      }
    }
    , [68] = {
      ["ID"] = CREATURE_RAKSHASA_RUKH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_68/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2535
      , ["Pair"] = 164
    }
    , [69] = {
      ["ID"] = CREATURE_GIANT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_69/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 4822
      , ["Upgrade"] = {
        [1] = 70
        , [2] = 165
      }
    }
    , [70] = {
      ["ID"] = CREATURE_TITAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_70/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6095
      , ["Pair"] = 165
    }
    , [71] = {
      ["ID"] = CREATURE_SCOUT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_71/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 1
      , ["POWER"] = 180
      , ["Upgrade"] = {
        [1] = 72
        , [2] = 138
      }
    }
    , [72] = {
      ["ID"] = CREATURE_ASSASSIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_72/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 1
      , ["POWER"] = 295
      , ["Pair"] = 138
    }
    , [73] = {
      ["ID"] = CREATURE_WITCH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_73/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 2
      , ["POWER"] = 333
      , ["Upgrade"] = {
        [1] = 74
        , [2] = 139
      }
    }
    , [74] = {
      ["ID"] = CREATURE_BLOOD_WITCH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_74/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 2
      , ["POWER"] = 484
      , ["Pair"] = 139
    }
    , [75] = {
      ["ID"] = CREATURE_MINOTAUR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_75/Name.txt"
      , ["GROWTH"] = 6
      , ["TIER"] = 3
      , ["POWER"] = 342
      , ["Upgrade"] = {
        [1] = 76
        , [2] = 140
      }
    }
    , [76] = {
      ["ID"] = CREATURE_MINOTAUR_KING
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_76/Name.txt"
      , ["GROWTH"] = 6
      , ["TIER"] = 3
      , ["POWER"] = 474
      , ["Pair"] = 140
    }
    , [77] = {
      ["ID"] = CREATURE_RIDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_77/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 598
      , ["Upgrade"] = {
        [1] = 78
        , [2] = 141
      }
    }
    , [78] = {
      ["ID"] = CREATURE_RAVAGER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_78/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 812
      , ["Pair"] = 141
    }
    , [79] = {
      ["ID"] = CREATURE_HYDRA
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_79/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 968
      , ["Upgrade"] = {
        [1] = 80
        , [2] = 142
      }
    }
    , [80] = {
      ["ID"] = CREATURE_CHAOS_HYDRA
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_80/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1324
      , ["Pair"] = 142
    }
    , [81] = {
      ["ID"] = CREATURE_MATRON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_81/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2193
      , ["Upgrade"] = {
        [1] = 82
        , [2] = 143
      }
    }
    , [82] = {
      ["ID"] = CREATURE_MATRIARCH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_82/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2537
      , ["Pair"] = 143
    }
    , [83] = {
      ["ID"] = CREATURE_DEEP_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_83/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 5234
      , ["Upgrade"] = {
        [1] = 84
        , [2] = 144
      }
    }
    , [84] = {
      ["ID"] = CREATURE_BLACK_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_84/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6443
      , ["Pair"] = 144
    }
    , [85] = {
      ["ID"] = CREATURE_FIRE_ELEMENTAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_85/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 829
    }
    , [86] = {
      ["ID"] = CREATURE_WATER_ELEMENTAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_86/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 795
    }
    , [87] = {
      ["ID"] = CREATURE_EARTH_ELEMENTAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_87/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 856
    }
    , [88] = {
      ["ID"] = CREATURE_AIR_ELEMENTAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_88/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 813
    }
    , [89] = {
      ["ID"] = CREATURE_DEATH_KNIGHT
      -- ["ID"] = CREATURE_BLACK_KNIGHT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_89/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2560
    }
    , [90] = {
      ["ID"] = CREATURE_DEATH_KNIGHT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_90/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2560
    }
    , [91] = {
      ["ID"] = CREATURE_PHOENIX
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_91/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 8576
    }
    , [92] = {
      ["ID"] = CREATURE_DEFENDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_92/Name.txt"
      , ["GROWTH"] = 18
      , ["TIER"] = 1
      , ["POWER"] = 70
      , ["Upgrade"] = {
        [1] = 93
        , [2] = 166
      }
    }
    , [93] = {
      ["ID"] = CREATURE_STOUT_DEFENDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_93/Name.txt"
      , ["GROWTH"] = 18
      , ["TIER"] = 1
      , ["POWER"] = 115
      , ["Pair"] = 166
    }
    , [94] = {
      ["ID"] = CREATURE_AXE_FIGHTER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_94/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 115
      , ["Upgrade"] = {
        [1] = 95
        , [2] = 167
      }
    }
    , [95] = {
      ["ID"] = CREATURE_AXE_THROWER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_95/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 171
      , ["Pair"] = 167
    }
    , [96] = {
      ["ID"] = CREATURE_BEAR_RIDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_96/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 3
      , ["POWER"] = 318
      , ["Upgrade"] = {
        [1] = 97
        , [2] = 168
      }
    }
    , [97] = {
      ["ID"] = CREATURE_BLACKBEAR_RIDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_97/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 3
      , ["POWER"] = 436
      , ["Pair"] = 168
    }
    , [98] = {
      ["ID"] = CREATURE_BROWLER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_98/Name.txt"
      , ["GROWTH"] = 10
      , ["TIER"] = 4
      , ["POWER"] = 304
      , ["Upgrade"] = {
        [1] = 99
        , [2] = 169
      }
    }
    , [99] = {
      ["ID"] = CREATURE_BERSERKER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_99/Name.txt"
      , ["GROWTH"] = 10
      , ["TIER"] = 4
      , ["POWER"] = 420
      , ["Pair"] = 169
    }
    , [100] = {
      ["ID"] = CREATURE_RUNE_MAGE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_100/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 5
      , ["POWER"] = 932
      , ["Upgrade"] = {
        [1] = 101
        , [2] = 170
      }
    }
    , [101] = {
      ["ID"] = CREATURE_FLAME_MAGE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_101/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 5
      , ["POWER"] = 1308
      , ["Pair"] = 170
    }
    , [102] = {
      ["ID"] = CREATURE_THANE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_102/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2109
      , ["Upgrade"] = {
        [1] = 103
        , [2] = 171
      }
    }
    , [103] = {
      ["ID"] = CREATURE_WARLORD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_103/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2477
      , ["Pair"] = 171
    }
    , [104] = {
      ["ID"] = CREATURE_FIRE_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_104/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 4883
      , ["Upgrade"] = {
        [1] = 105
        , [2] = 172
      }
    }
    , [105] = {
      ["ID"] = CREATURE_MAGMA_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_105/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6100
      , ["Pair"] = 172
    }
    , [106] = {
      ["ID"] = CREATURE_LANDLORD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_106/Name.txt"
      , ["GROWTH"] = 27
      , ["TIER"] = 1
      , ["POWER"] = 72
      , ["Pair"] = 2
    }
    , [107] = {
      ["ID"] = CREATURE_LONGBOWMAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_107/Name.txt"
      , ["GROWTH"] = 12
      , ["TIER"] = 2
      , ["POWER"] = 203
      , ["Pair"] = 4
    }
    , [108] = {
      ["ID"] = CREATURE_VINDICATOR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_108/Name.txt"
      , ["GROWTH"] = 10
      , ["TIER"] = 3
      , ["POWER"] = 299
      , ["Pair"] = 6
    }
    , [109] = {
      ["ID"] = CREATURE_BATTLE_GRIFFIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_109/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 697
      , ["Pair"] = 8
    }
    , [110] = {
      ["ID"] = CREATURE_ZEALOT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_110/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1523
      , ["Pair"] = 10
    }
    , [111] = {
      ["ID"] = CREATURE_CHAMPION
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_111/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2520
      , ["Pair"] = 12
    }
    , [112] = {
      ["ID"] = CREATURE_SERAPH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_112/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6003
      , ["Pair"] = 14
    }
    , [113] = {
      ["ID"] = CREATURE_WOLF
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_113/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 1020
    }
    , [114] = {
      ["ID"] = CREATURE_SNOW_APE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_114/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2000
    }
    , [115] = {
      ["ID"] = CREATURE_MANTICORE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_115/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2523
    }
    , [116] = {
      ["ID"] = CREATURE_MUMMY
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_116/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1542
    }
    , [117] = {
      ["ID"] = CREATURE_GOBLIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_117/Name.txt"
      , ["GROWTH"] = 31
      , ["TIER"] = 1
      , ["POWER"] = 42
      , ["Upgrade"] = {
        [1] = 118
        , [2] = 173
      }
    }
    , [118] = {
      ["ID"] = CREATURE_GOBLIN_TRAPPER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_118/Name.txt"
      , ["GROWTH"] = 31
      , ["TIER"] = 1
      , ["POWER"] = 69
      , ["Pair"] = 173
    }
    , [119] = {
      ["ID"] = CREATURE_CENTAUR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_119/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 121
      , ["Upgrade"] = {
        [1] = 120
        , [2] = 174
      }
    }
    , [120] = {
      ["ID"] = CREATURE_CENTAUR_NOMAD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_120/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 174
      , ["Pair"] = 174
    }
    , [121] = {
      ["ID"] = CREATURE_ORC_WARRIOR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_121/Name.txt"
      , ["GROWTH"] = 11
      , ["TIER"] = 3
      , ["POWER"] = 190
      , ["Upgrade"] = {
        [1] = 122
        , [2] = 175
      }
    }
    , [122] = {
      ["ID"] = CREATURE_ORC_SLAYER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_122/Name.txt"
      , ["GROWTH"] = 11
      , ["TIER"] = 3
      , ["POWER"] = 254
      , ["Pair"] = 175
    }
    , [123] = {
      ["ID"] = CREATURE_SHAMAN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_123/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 492
      , ["Upgrade"] = {
        [1] = 124
        , [2] = 176
      }
    }
    , [124] = {
      ["ID"] = CREATURE_SHAMAN_WITCH
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_124/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 680
      , ["Pair"] = 176
    }
    , [125] = {
      ["ID"] = CREATURE_ORCCHIEF_BUTCHER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_125/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 5
      , ["POWER"] = 695
      , ["Upgrade"] = {
        [1] = 126
        , [2] = 177
      }
    }
    , [126] = {
      ["ID"] = CREATURE_ORCCHIEF_EXECUTIONER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_126/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 5
      , ["POWER"] = 926
      , ["Pair"] = 177
    }
    , [127] = {
      ["ID"] = CREATURE_WYVERN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_127/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2058
      , ["Upgrade"] = {
        [1] = 128
        , [2] = 178
      }
    }
    , [128] = {
      ["ID"] = CREATURE_WYVERN_POISONOUS
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_128/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2571
      , ["Pair"] = 178
    }
    , [129] = {
      ["ID"] = CREATURE_CYCLOP
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_129/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 4790
      , ["Upgrade"] = {
        [1] = 130
        , [2] = 179
      }
    }
    , [130] = {
      ["ID"] = CREATURE_CYCLOP_UNTAMED
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_130/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 5937
      , ["Pair"] = 179
    }
    , [131] = {
      ["ID"] = CREATURE_QUASIT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_131/Name.txt"
      , ["GROWTH"] = 16
      , ["TIER"] = 1
      , ["POWER"] = 124
      , ["Pair"] = 16
    }
    , [132] = {
      ["ID"] = CREATURE_HORNED_LEAPER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_132/Name.txt"
      , ["GROWTH"] = 17
      , ["TIER"] = 2
      , ["POWER"] = 149
      , ["Pair"] = 18
    }
    , [133] = {
      ["ID"] = CREATURE_FIREBREATHER_HOUND
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_133/Name.txt"
      , ["GROWTH"] = 8
      , ["TIER"] = 3
      , ["POWER"] = 368
      , ["Pair"] = 20
    }
    , [134] = {
      ["ID"] = CREATURE_SUCCUBUS_SEDUCER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_134/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 680
      , ["Pair"] = 22
    }
    , [135] = {
      ["ID"] = CREATURE_HELLMARE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_135/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 5
      , ["POWER"] = 1434
      , ["Pair"] = 24
    }
    , [136] = {
      ["ID"] = CREATURE_PIT_SPAWN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_136/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2448
      , ["Pair"] = 26
    }
    , [137] = {
      ["ID"] = CREATURE_ARCH_DEMON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_137/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6060
      , ["Pair"] = 28
    }
    , [138] = {
      ["ID"] = CREATURE_STALKER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_138/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 1
      , ["POWER"] = 290
      , ["Pair"] = 72
    }
    , [139] = {
      ["ID"] = CREATURE_BLOOD_WITCH_2
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_139/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 2
      , ["POWER"] = 477
      , ["Pair"] = 74
    }
    , [140] = {
      ["ID"] = CREATURE_MINOTAUR_CAPTAIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_140/Name.txt"
      , ["GROWTH"] = 6
      , ["TIER"] = 3
      , ["POWER"] = 488
      , ["Pair"] = 76
    }
    , [141] = {
      ["ID"] = CREATURE_BLACK_RIDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_141/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 833
      , ["Pair"] = 78
    }
    , [142] = {
      ["ID"] = CREATURE_ACIDIC_HYDRA
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_142/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1333
      , ["Pair"] = 80
    }
    , [143] = {
      ["ID"] = CREATURE_SHADOW_MISTRESS
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_143/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2622
      , ["Pair"] = 82
    }
    , [144] = {
      ["ID"] = CREATURE_RED_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_144/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6389
      , ["Pair"] = 84
    }
    , [145] = {
      ["ID"] = CREATURE_DRYAD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_145/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 1
      , ["POWER"] = 174
      , ["Pair"] = 44
    }
    , [146] = {
      ["ID"] = CREATURE_BLADE_SINGER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_146/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 2
      , ["POWER"] = 308
      , ["Pair"] = 46
    }
    , [147] = {
      ["ID"] = CREATURE_SHARP_SHOOTER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_147/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 3
      , ["POWER"] = 447
      , ["Pair"] = 48
    }
    , [148] = {
      ["ID"] = CREATURE_HIGH_DRUID
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_148/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 862
      , ["Pair"] = 50
    }
    , [149] = {
      ["ID"] = CREATURE_WHITE_UNICORN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_149/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1457
      , ["Pair"] = 52
    }
    , [150] = {
      ["ID"] = CREATURE_ANGER_TREANT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_150/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 6
      , ["POWER"] = 2032
      , ["Pair"] = 54
    }
    , [151] = {
      ["ID"] = CREATURE_RAINBOW_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_151/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 5905
      , ["Pair"] = 56
    }
    , [152] = {
      ["ID"] = CREATURE_SKELETON_WARRIOR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_152/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
      , ["Pair"] = 30
    }
    , [153] = {
      ["ID"] = CREATURE_DISEASE_ZOMBIE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_153/Name.txt"
      , ["GROWTH"] = 15
      , ["TIER"] = 2
      , ["POWER"] = 145
      , ["Pair"] = 32
    }
    , [154] = {
      ["ID"] = CREATURE_POLTERGEIST
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_154/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 3
      , ["POWER"] = 331
      , ["Pair"] = 34
    }
    , [155] = {
      ["ID"] = CREATURE_NOSFERATU
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_155/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 757
      , ["Pair"] = 36
    }
    , [156] = {
      ["ID"] = CREATURE_LICH_MASTER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_156/Name.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1541
      , ["Pair"] = 38
    }
    , [157] = {
      ["ID"] = CREATURE_BANSHEE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_157/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2449
      , ["Pair"] = 40
    }
    , [158] = {
      ["ID"] = CREATURE_HORROR_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_158/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 7
      , ["POWER"] = 3872
      , ["Pair"] = 42
    }
    , [159] = {
      ["ID"] = CREATURE_GREMLIN_SABOTEUR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_159/Name.txt"
      , ["GROWTH"] = 20
      , ["TIER"] = 1
      , ["POWER"] = 105
      , ["Pair"] = 58
    }
    , [160] = {
      ["ID"] = CREATURE_MARBLE_GARGOYLE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_160/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 180
      , ["Pair"] = 60
    }
    , [161] = {
      ["ID"] = CREATURE_OBSIDIAN_GOLEM
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_161/Name.txt"
      , ["GROWTH"] = 9
      , ["TIER"] = 3
      , ["POWER"] = 355
      , ["Pair"] = 62
    }
    , [162] = {
      ["ID"] = CREATURE_COMBAT_MAGE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_162/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 642
      , ["Pair"] = 64
    }
    , [163] = {
      ["ID"] = CREATURE_DJINN_VIZIER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_163/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 5
      , ["POWER"] = 1096
      , ["Pair"] = 66
    }
    , [164] = {
      ["ID"] = CREATURE_RAKSHASA_KSHATRI
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_164/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2581
      , ["Pair"] = 68
    }
    , [165] = {
      ["ID"] = CREATURE_STORM_LORD
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_165/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6095
      , ["Pair"] = 70
    }
    , [166] = {
      ["ID"] = CREATURE_STONE_DEFENDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_166/Name.txt"
      , ["GROWTH"] = 18
      , ["TIER"] = 1
      , ["POWER"] = 113
      , ["Pair"] = 93
    }
    , [167] = {
      ["ID"] = CREATURE_HARPOONER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_167/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 171
      , ["Pair"] = 95
    }
    , [168] = {
      ["ID"] = CREATURE_WHITE_BEAR_RIDER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_168/Name.txt"
      , ["GROWTH"] = 7
      , ["TIER"] = 3
      , ["POWER"] = 436
      , ["Pair"] = 97
    }
    , [169] = {
      ["ID"] = CREATURE_BATTLE_RAGER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_169/Name.txt"
      , ["GROWTH"] = 10
      , ["TIER"] = 4
      , ["POWER"] = 420
      , ["Pair"] = 99
    }
    , [170] = {
      ["ID"] = CREATURE_FLAME_KEEPER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_170/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 5
      , ["POWER"] = 1329
      , ["Pair"] = 101
    }
    , [171] = {
      ["ID"] = CREATURE_THUNDER_THANE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_171/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2437
      , ["Pair"] = 103
    }
    , [172] = {
      ["ID"] = CREATURE_LAVA_DRAGON
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_172/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 6070
      , ["Pair"] = 105
    }
    , [173] = {
      ["ID"] = CREATURE_GOBLIN_DEFILER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_173/Name.txt"
      , ["GROWTH"] = 31
      , ["TIER"] = 1
      , ["POWER"] = 66
      , ["Pair"] = 118
    }
    , [174] = {
      ["ID"] = CREATURE_CENTAUR_MARADEUR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_174/Name.txt"
      , ["GROWTH"] = 14
      , ["TIER"] = 2
      , ["POWER"] = 181
      , ["Pair"] = 120
    }
    , [175] = {
      ["ID"] = CREATURE_ORC_WARMONGER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_175/Name.txt"
      , ["GROWTH"] = 11
      , ["TIER"] = 3
      , ["POWER"] = 265
      , ["Pair"] = 122
    }
    , [176] = {
      ["ID"] = CREATURE_SHAMAN_HAG
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_176/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 692
      , ["Pair"] = 124
    }
    , [177] = {
      ["ID"] = CREATURE_ORCCHIEF_CHIEFTAIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_177/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 5
      , ["POWER"] = 895
      , ["Pair"] = 126
    }
    , [178] = {
      ["ID"] = CREATURE_WYVERN_PAOKAI
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_178/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2572
      , ["Pair"] = 128
    }
    , [179] = {
      ["ID"] = CREATURE_CYCLOP_BLOODEYED
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_179/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 5937
      , ["Pair"] = 130
    }
    , [180] = {
      ["ID"] = CREATURE_180
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_180/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [181] = {
      ["ID"] = CREATURE_CHERUBIN
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_181/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 8
      , ["POWER"] = 20000
    }
    , [182] = {
      ["ID"] = CREATURE_CHERUBIN_LESS
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_182/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 8
      , ["POWER"] = 20000
    }
    , [183] = {
      ["ID"] = CREATURE_DRAGON_KNIGHT
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_183/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 8
      , ["POWER"] = 20000
    }
    , [184] = {
      ["ID"] = CREATURE_DRAGON_KNIGHT_LESS
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_184/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 8
      , ["POWER"] = 20000
    }
    , [185] = {
      ["ID"] = CREATURE_ENCHANTER_ACADEMY
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_185/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 1798
    }
    , [186] = {
      ["ID"] = CREATURE_ENCHANTER_NEUTRAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_186/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 1798
    }
    , [187] = {
      ["ID"] = CREATURE_ENCHANTER_CASTER
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_187/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 1798
    }
    , [188] = {
      ["ID"] = CREATURE_JUSTICAR
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_188/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2235
    }
    , [189] = {
      ["ID"] = CREATURE_189
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_189/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [190] = {
      ["ID"] = CREATURE_LEGATE
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_190/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2520
    }
    , [191] = {
      ["ID"] = CREATURE_LEGATE_SHADOW
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_191/Name.txt"
      , ["GROWTH"] = 2
      , ["TIER"] = 6
      , ["POWER"] = 2520
    }
    , [192] = {
      ["ID"] = CREATURE_192
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_192/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [193] = {
      ["ID"] = CREATURE_193
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_193/Name.txt"
      , ["GROWTH"] = 5
      , ["TIER"] = 4
      , ["POWER"] = 524
    }
    , [194] = {
      ["ID"] = CREATURE_194
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_194/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [195] = {
      ["ID"] = CREATURE_195
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_195/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [196] = {
      ["ID"] = CREATURE_196
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_196/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [197] = {
      ["ID"] = CREATURE_197
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_197/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [198] = {
      ["ID"] = CREATURE_198
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_198/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [199] = {
      ["ID"] = CREATURE_199
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_199/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [200] = {
      ["ID"] = CREATURE_200
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_200/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [201] = {
      ["ID"] = CREATURE_201
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_201/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [202] = {
      ["ID"] = CREATURE_202
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_202/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [203] = {
      ["ID"] = CREATURE_203
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_203/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [204] = {
      ["ID"] = CREATURE_204
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_204/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [205] = {
      ["ID"] = CREATURE_205
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_205/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [206] = {
      ["ID"] = CREATURE_206
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_206/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [207] = {
      ["ID"] = CREATURE_207
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_207/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [208] = {
      ["ID"] = CREATURE_208
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_208/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [209] = {
      ["ID"] = CREATURE_209
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_209/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [210] = {
      ["ID"] = CREATURE_210
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_210/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [211] = {
      ["ID"] = CREATURE_211
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_211/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [212] = {
      ["ID"] = CREATURE_212
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_212/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [213] = {
      ["ID"] = CREATURE_213
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_213/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [214] = {
      ["ID"] = CREATURE_214
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_214/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [215] = {
      ["ID"] = CREATURE_215
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_215/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [216] = {
      ["ID"] = CREATURE_216
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_216/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [217] = {
      ["ID"] = CREATURE_217
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_217/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [218] = {
      ["ID"] = CREATURE_218
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_218/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [219] = {
      ["ID"] = CREATURE_219
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_219/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [220] = {
      ["ID"] = CREATURE_220
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_220/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [221] = {
      ["ID"] = CREATURE_221
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_221/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [222] = {
      ["ID"] = CREATURE_222
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_222/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [223] = {
      ["ID"] = CREATURE_223
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_223/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [224] = {
      ["ID"] = CREATURE_224
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_224/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [225] = {
      ["ID"] = CREATURE_225
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_225/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [226] = {
      ["ID"] = CREATURE_226
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_226/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [227] = {
      ["ID"] = CREATURE_227
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_227/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [228] = {
      ["ID"] = CREATURE_228
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_228/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [229] = {
      ["ID"] = CREATURE_229
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_229/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [230] = {
      ["ID"] = CREATURE_230
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_230/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [231] = {
      ["ID"] = CREATURE_231
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_231/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [232] = {
      ["ID"] = CREATURE_232
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_232/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [233] = {
      ["ID"] = CREATURE_233
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_233/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [234] = {
      ["ID"] = CREATURE_234
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_234/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [235] = {
      ["ID"] = CREATURE_235
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_235/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [236] = {
      ["ID"] = CREATURE_236
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_236/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [237] = {
      ["ID"] = CREATURE_237
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_237/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [238] = {
      ["ID"] = CREATURE_238
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_238/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [239] = {
      ["ID"] = CREATURE_239
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_239/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [240] = {
      ["ID"] = CREATURE_240
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_240/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [241] = {
      ["ID"] = CREATURE_241
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_241/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [242] = {
      ["ID"] = CREATURE_242
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_242/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [243] = {
      ["ID"] = CREATURE_243
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_243/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [244] = {
      ["ID"] = CREATURE_244
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_244/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [245] = {
      ["ID"] = CREATURE_245
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_245/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [246] = {
      ["ID"] = CREATURE_246
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_246/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [247] = {
      ["ID"] = CREATURE_247
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_247/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [248] = {
      ["ID"] = CREATURE_248
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_248/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [249] = {
      ["ID"] = CREATURE_249
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_249/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [250] = {
      ["ID"] = CREATURE_250
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_250/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [251] = {
      ["ID"] = CREATURE_251
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_251/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [252] = {
      ["ID"] = CREATURE_252
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_252/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [253] = {
      ["ID"] = CREATURE_253
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_253/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [254] = {
      ["ID"] = CREATURE_254
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_254/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [255] = {
      ["ID"] = CREATURE_255
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_255/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [256] = {
      ["ID"] = CREATURE_256
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_256/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [257] = {
      ["ID"] = CREATURE_257
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_257/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [258] = {
      ["ID"] = CREATURE_258
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_258/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [259] = {
      ["ID"] = CREATURE_259
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_259/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [260] = {
      ["ID"] = CREATURE_260
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_260/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [261] = {
      ["ID"] = CREATURE_261
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_261/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [262] = {
      ["ID"] = CREATURE_262
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_262/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [263] = {
      ["ID"] = CREATURE_263
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_263/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [264] = {
      ["ID"] = CREATURE_264
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_264/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [265] = {
      ["ID"] = CREATURE_265
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_265/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [266] = {
      ["ID"] = CREATURE_266
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_266/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [267] = {
      ["ID"] = CREATURE_267
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_267/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [268] = {
      ["ID"] = CREATURE_268
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_268/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [269] = {
      ["ID"] = CREATURE_269
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_269/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [270] = {
      ["ID"] = CREATURE_270
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_270/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [271] = {
      ["ID"] = CREATURE_271
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_271/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [272] = {
      ["ID"] = CREATURE_272
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_272/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [273] = {
      ["ID"] = CREATURE_273
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_273/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [274] = {
      ["ID"] = CREATURE_274
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_274/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [275] = {
      ["ID"] = CREATURE_275
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_275/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [276] = {
      ["ID"] = CREATURE_276
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_276/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [277] = {
      ["ID"] = CREATURE_277
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_277/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [278] = {
      ["ID"] = CREATURE_278
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_278/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [279] = {
      ["ID"] = CREATURE_279
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_279/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [280] = {
      ["ID"] = CREATURE_280
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_280/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [281] = {
      ["ID"] = CREATURE_281
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_281/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [282] = {
      ["ID"] = CREATURE_282
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_282/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [283] = {
      ["ID"] = CREATURE_283
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_283/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [284] = {
      ["ID"] = CREATURE_284
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_284/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [285] = {
      ["ID"] = CREATURE_285
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_285/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [286] = {
      ["ID"] = CREATURE_286
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_286/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [287] = {
      ["ID"] = CREATURE_287
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_287/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [288] = {
      ["ID"] = CREATURE_288
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_288/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [289] = {
      ["ID"] = CREATURE_289
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_289/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [290] = {
      ["ID"] = CREATURE_290
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_290/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [291] = {
      ["ID"] = CREATURE_291
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_291/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [292] = {
      ["ID"] = CREATURE_292
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_292/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [293] = {
      ["ID"] = CREATURE_293
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_293/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [294] = {
      ["ID"] = CREATURE_294
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_294/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [295] = {
      ["ID"] = CREATURE_295
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_295/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [296] = {
      ["ID"] = CREATURE_296
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_296/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [297] = {
      ["ID"] = CREATURE_297
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_297/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [298] = {
      ["ID"] = CREATURE_298
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_298/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [299] = {
      ["ID"] = CREATURE_299
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_299/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [300] = {
      ["ID"] = CREATURE_300
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_300/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [301] = {
      ["ID"] = CREATURE_301
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_301/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [302] = {
      ["ID"] = CREATURE_302
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_302/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [303] = {
      ["ID"] = CREATURE_303
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_303/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [304] = {
      ["ID"] = CREATURE_304
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_304/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [305] = {
      ["ID"] = CREATURE_305
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_305/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [306] = {
      ["ID"] = CREATURE_306
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_306/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [307] = {
      ["ID"] = CREATURE_307
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_307/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [308] = {
      ["ID"] = CREATURE_308
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_308/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [309] = {
      ["ID"] = CREATURE_309
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_309/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [310] = {
      ["ID"] = CREATURE_310
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_310/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [311] = {
      ["ID"] = CREATURE_311
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_311/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [312] = {
      ["ID"] = CREATURE_312
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_312/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [313] = {
      ["ID"] = CREATURE_313
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_313/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [314] = {
      ["ID"] = CREATURE_314
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_314/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [315] = {
      ["ID"] = CREATURE_315
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_315/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [316] = {
      ["ID"] = CREATURE_316
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_316/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [317] = {
      ["ID"] = CREATURE_317
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_317/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [318] = {
      ["ID"] = CREATURE_318
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_318/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [319] = {
      ["ID"] = CREATURE_319
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_319/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [320] = {
      ["ID"] = CREATURE_320
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_320/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [321] = {
      ["ID"] = CREATURE_321
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_321/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [322] = {
      ["ID"] = CREATURE_322
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_322/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [323] = {
      ["ID"] = CREATURE_323
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_323/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [324] = {
      ["ID"] = CREATURE_324
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_324/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [325] = {
      ["ID"] = CREATURE_325
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_325/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [326] = {
      ["ID"] = CREATURE_326
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_326/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [327] = {
      ["ID"] = CREATURE_327
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_327/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [328] = {
      ["ID"] = CREATURE_328
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_328/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [329] = {
      ["ID"] = CREATURE_329
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_329/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [330] = {
      ["ID"] = CREATURE_330
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_330/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [331] = {
      ["ID"] = CREATURE_331
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_331/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [332] = {
      ["ID"] = CREATURE_332
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_332/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [333] = {
      ["ID"] = CREATURE_333
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_333/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [334] = {
      ["ID"] = CREATURE_334
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_334/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [335] = {
      ["ID"] = CREATURE_335
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_335/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [336] = {
      ["ID"] = CREATURE_336
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_336/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [337] = {
      ["ID"] = CREATURE_337
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_337/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [338] = {
      ["ID"] = CREATURE_338
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_338/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [339] = {
      ["ID"] = CREATURE_339
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_339/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [340] = {
      ["ID"] = CREATURE_340
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_340/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [341] = {
      ["ID"] = CREATURE_341
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_341/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [342] = {
      ["ID"] = CREATURE_342
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_342/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [343] = {
      ["ID"] = CREATURE_343
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_343/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [344] = {
      ["ID"] = CREATURE_344
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_344/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [345] = {
      ["ID"] = CREATURE_345
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_345/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [346] = {
      ["ID"] = CREATURE_346
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_346/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [347] = {
      ["ID"] = CREATURE_347
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_347/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [348] = {
      ["ID"] = CREATURE_348
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_348/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [349] = {
      ["ID"] = CREATURE_349
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_349/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [350] = {
      ["ID"] = CREATURE_350
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_350/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [351] = {
      ["ID"] = CREATURE_351
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_351/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [352] = {
      ["ID"] = CREATURE_352
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_352/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [353] = {
      ["ID"] = CREATURE_353
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_353/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [354] = {
      ["ID"] = CREATURE_354
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_354/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [355] = {
      ["ID"] = CREATURE_355
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_355/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [356] = {
      ["ID"] = CREATURE_356
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_356/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [357] = {
      ["ID"] = CREATURE_357
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_357/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [358] = {
      ["ID"] = CREATURE_358
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_358/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [359] = {
      ["ID"] = CREATURE_359
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_359/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [360] = {
      ["ID"] = CREATURE_360
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_360/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [361] = {
      ["ID"] = CREATURE_361
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_361/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [362] = {
      ["ID"] = CREATURE_362
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_362/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [363] = {
      ["ID"] = CREATURE_363
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_363/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [364] = {
      ["ID"] = CREATURE_364
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_364/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [365] = {
      ["ID"] = CREATURE_365
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_365/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [366] = {
      ["ID"] = CREATURE_366
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_366/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [367] = {
      ["ID"] = CREATURE_367
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_367/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [368] = {
      ["ID"] = CREATURE_368
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_368/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [369] = {
      ["ID"] = CREATURE_369
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_369/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [370] = {
      ["ID"] = CREATURE_370
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_370/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [371] = {
      ["ID"] = CREATURE_371
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_371/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [372] = {
      ["ID"] = CREATURE_372
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_372/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [373] = {
      ["ID"] = CREATURE_373
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_373/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [374] = {
      ["ID"] = CREATURE_374
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_374/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [375] = {
      ["ID"] = CREATURE_375
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_375/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [376] = {
      ["ID"] = CREATURE_376
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_376/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [377] = {
      ["ID"] = CREATURE_377
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_377/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [378] = {
      ["ID"] = CREATURE_378
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_378/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [379] = {
      ["ID"] = CREATURE_379
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_379/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [380] = {
      ["ID"] = CREATURE_380
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_380/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [381] = {
      ["ID"] = CREATURE_381
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_381/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [382] = {
      ["ID"] = CREATURE_382
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_382/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [383] = {
      ["ID"] = CREATURE_383
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_383/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [384] = {
      ["ID"] = CREATURE_384
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_384/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [385] = {
      ["ID"] = CREATURE_385
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_385/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [386] = {
      ["ID"] = CREATURE_386
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_386/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [387] = {
      ["ID"] = CREATURE_387
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_387/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [388] = {
      ["ID"] = CREATURE_388
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_388/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [389] = {
      ["ID"] = CREATURE_389
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_389/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [390] = {
      ["ID"] = CREATURE_390
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_390/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [391] = {
      ["ID"] = CREATURE_391
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_391/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [392] = {
      ["ID"] = CREATURE_392
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_392/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [393] = {
      ["ID"] = CREATURE_393
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_393/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [394] = {
      ["ID"] = CREATURE_394
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_394/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [395] = {
      ["ID"] = CREATURE_395
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_395/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [396] = {
      ["ID"] = CREATURE_396
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_396/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [397] = {
      ["ID"] = CREATURE_397
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_397/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [398] = {
      ["ID"] = CREATURE_398
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_398/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [399] = {
      ["ID"] = CREATURE_399
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_399/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [400] = {
      ["ID"] = CREATURE_400
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_400/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [401] = {
      ["ID"] = CREATURE_401
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_401/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [402] = {
      ["ID"] = CREATURE_402
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_402/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [403] = {
      ["ID"] = CREATURE_403
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_403/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [404] = {
      ["ID"] = CREATURE_404
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_404/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [405] = {
      ["ID"] = CREATURE_405
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_405/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [406] = {
      ["ID"] = CREATURE_406
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_406/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [407] = {
      ["ID"] = CREATURE_407
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_407/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [408] = {
      ["ID"] = CREATURE_408
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_408/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [409] = {
      ["ID"] = CREATURE_409
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_409/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [410] = {
      ["ID"] = CREATURE_410
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_410/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [411] = {
      ["ID"] = CREATURE_411
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_411/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [412] = {
      ["ID"] = CREATURE_412
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_412/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [413] = {
      ["ID"] = CREATURE_413
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_413/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [414] = {
      ["ID"] = CREATURE_414
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_414/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [415] = {
      ["ID"] = CREATURE_415
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_415/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [416] = {
      ["ID"] = CREATURE_416
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_416/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [417] = {
      ["ID"] = CREATURE_417
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_417/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [418] = {
      ["ID"] = CREATURE_418
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_418/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [419] = {
      ["ID"] = CREATURE_419
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_419/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [420] = {
      ["ID"] = CREATURE_420
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_420/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [421] = {
      ["ID"] = CREATURE_421
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_421/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [422] = {
      ["ID"] = CREATURE_422
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_422/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [423] = {
      ["ID"] = CREATURE_423
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_423/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [424] = {
      ["ID"] = CREATURE_424
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_424/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [425] = {
      ["ID"] = CREATURE_425
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_425/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [426] = {
      ["ID"] = CREATURE_426
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_426/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [427] = {
      ["ID"] = CREATURE_427
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_427/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [428] = {
      ["ID"] = CREATURE_428
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_428/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [429] = {
      ["ID"] = CREATURE_429
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_429/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [430] = {
      ["ID"] = CREATURE_430
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_430/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [431] = {
      ["ID"] = CREATURE_431
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_431/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [432] = {
      ["ID"] = CREATURE_432
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_432/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [433] = {
      ["ID"] = CREATURE_433
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_433/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [434] = {
      ["ID"] = CREATURE_434
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_434/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [435] = {
      ["ID"] = CREATURE_435
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_435/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [436] = {
      ["ID"] = CREATURE_436
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_436/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [437] = {
      ["ID"] = CREATURE_437
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_437/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [438] = {
      ["ID"] = CREATURE_438
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_438/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [439] = {
      ["ID"] = CREATURE_439
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_439/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [440] = {
      ["ID"] = CREATURE_440
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_440/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [441] = {
      ["ID"] = CREATURE_441
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_441/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [442] = {
      ["ID"] = CREATURE_442
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_442/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [443] = {
      ["ID"] = CREATURE_443
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_443/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [444] = {
      ["ID"] = CREATURE_444
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_444/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [445] = {
      ["ID"] = CREATURE_445
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_445/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [446] = {
      ["ID"] = CREATURE_446
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_446/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [447] = {
      ["ID"] = CREATURE_447
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_447/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [448] = {
      ["ID"] = CREATURE_448
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_448/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [449] = {
      ["ID"] = CREATURE_449
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_449/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [450] = {
      ["ID"] = CREATURE_450
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_450/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [451] = {
      ["ID"] = CREATURE_451
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_451/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [452] = {
      ["ID"] = CREATURE_452
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_452/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [453] = {
      ["ID"] = CREATURE_453
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_453/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [454] = {
      ["ID"] = CREATURE_454
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_454/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [455] = {
      ["ID"] = CREATURE_455
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_455/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [456] = {
      ["ID"] = CREATURE_456
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_456/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [457] = {
      ["ID"] = CREATURE_457
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_457/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [458] = {
      ["ID"] = CREATURE_458
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_458/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [459] = {
      ["ID"] = CREATURE_459
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_459/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [460] = {
      ["ID"] = CREATURE_460
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_460/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [461] = {
      ["ID"] = CREATURE_461
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_461/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [462] = {
      ["ID"] = CREATURE_462
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_462/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [463] = {
      ["ID"] = CREATURE_463
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_463/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [464] = {
      ["ID"] = CREATURE_464
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_464/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [465] = {
      ["ID"] = CREATURE_465
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_465/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [466] = {
      ["ID"] = CREATURE_466
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_466/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [467] = {
      ["ID"] = CREATURE_467
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_467/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [468] = {
      ["ID"] = CREATURE_468
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_468/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [469] = {
      ["ID"] = CREATURE_469
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_469/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [470] = {
      ["ID"] = CREATURE_470
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_470/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [471] = {
      ["ID"] = CREATURE_471
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_471/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [472] = {
      ["ID"] = CREATURE_472
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_472/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [473] = {
      ["ID"] = CREATURE_473
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_473/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [474] = {
      ["ID"] = CREATURE_474
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_474/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [475] = {
      ["ID"] = CREATURE_475
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_475/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [476] = {
      ["ID"] = CREATURE_476
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_476/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [477] = {
      ["ID"] = CREATURE_477
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_477/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [478] = {
      ["ID"] = CREATURE_478
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_478/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [479] = {
      ["ID"] = CREATURE_479
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_479/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [480] = {
      ["ID"] = CREATURE_480
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_480/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [481] = {
      ["ID"] = CREATURE_481
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_481/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [482] = {
      ["ID"] = CREATURE_482
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_482/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [483] = {
      ["ID"] = CREATURE_483
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_483/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [484] = {
      ["ID"] = CREATURE_484
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_484/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [485] = {
      ["ID"] = CREATURE_485
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_485/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [486] = {
      ["ID"] = CREATURE_486
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_486/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [487] = {
      ["ID"] = CREATURE_487
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_487/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [488] = {
      ["ID"] = CREATURE_488
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_488/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [489] = {
      ["ID"] = CREATURE_489
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_489/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [490] = {
      ["ID"] = CREATURE_490
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_490/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [491] = {
      ["ID"] = CREATURE_491
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_491/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [492] = {
      ["ID"] = CREATURE_492
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_492/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [493] = {
      ["ID"] = CREATURE_493
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_493/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [494] = {
      ["ID"] = CREATURE_494
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_494/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [495] = {
      ["ID"] = CREATURE_495
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_495/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [496] = {
      ["ID"] = CREATURE_496
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_496/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [497] = {
      ["ID"] = CREATURE_497
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_497/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [498] = {
      ["ID"] = CREATURE_498
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_498/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [499] = {
      ["ID"] = CREATURE_499
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_499/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [500] = {
      ["ID"] = CREATURE_500
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_500/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [501] = {
      ["ID"] = CREATURE_501
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_501/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [502] = {
      ["ID"] = CREATURE_502
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_502/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [503] = {
      ["ID"] = CREATURE_503
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_503/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [504] = {
      ["ID"] = CREATURE_504
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_504/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [505] = {
      ["ID"] = CREATURE_505
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_505/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [506] = {
      ["ID"] = CREATURE_506
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_506/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [507] = {
      ["ID"] = CREATURE_507
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_507/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [508] = {
      ["ID"] = CREATURE_508
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_508/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [509] = {
      ["ID"] = CREATURE_509
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_509/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [510] = {
      ["ID"] = CREATURE_510
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_510/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [511] = {
      ["ID"] = CREATURE_511
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_511/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [512] = {
      ["ID"] = CREATURE_512
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_512/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [513] = {
      ["ID"] = CREATURE_513
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_513/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [514] = {
      ["ID"] = CREATURE_514
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_514/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [515] = {
      ["ID"] = CREATURE_515
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_515/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [516] = {
      ["ID"] = CREATURE_516
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_516/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [517] = {
      ["ID"] = CREATURE_517
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_517/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [518] = {
      ["ID"] = CREATURE_518
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_518/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [519] = {
      ["ID"] = CREATURE_519
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_519/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [520] = {
      ["ID"] = CREATURE_520
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_520/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [521] = {
      ["ID"] = CREATURE_521
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_521/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [522] = {
      ["ID"] = CREATURE_522
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_522/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [523] = {
      ["ID"] = CREATURE_523
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_523/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [524] = {
      ["ID"] = CREATURE_524
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_524/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [525] = {
      ["ID"] = CREATURE_525
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_525/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [526] = {
      ["ID"] = CREATURE_526
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_526/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [527] = {
      ["ID"] = CREATURE_527
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_527/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [528] = {
      ["ID"] = CREATURE_528
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_528/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [529] = {
      ["ID"] = CREATURE_529
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_529/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [530] = {
      ["ID"] = CREATURE_530
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_530/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [531] = {
      ["ID"] = CREATURE_531
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_531/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [532] = {
      ["ID"] = CREATURE_532
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_532/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [533] = {
      ["ID"] = CREATURE_533
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_533/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [534] = {
      ["ID"] = CREATURE_534
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_534/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [535] = {
      ["ID"] = CREATURE_535
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_535/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [536] = {
      ["ID"] = CREATURE_536
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_536/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [537] = {
      ["ID"] = CREATURE_537
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_537/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [538] = {
      ["ID"] = CREATURE_538
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_538/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [539] = {
      ["ID"] = CREATURE_539
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_539/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [540] = {
      ["ID"] = CREATURE_540
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_540/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [541] = {
      ["ID"] = CREATURE_541
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_541/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [542] = {
      ["ID"] = CREATURE_542
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_542/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [543] = {
      ["ID"] = CREATURE_543
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_543/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [544] = {
      ["ID"] = CREATURE_544
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_544/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [545] = {
      ["ID"] = CREATURE_545
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_545/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [546] = {
      ["ID"] = CREATURE_546
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_546/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [547] = {
      ["ID"] = CREATURE_547
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_547/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [548] = {
      ["ID"] = CREATURE_548
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_548/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [549] = {
      ["ID"] = CREATURE_549
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_549/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [550] = {
      ["ID"] = CREATURE_550
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_550/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [551] = {
      ["ID"] = CREATURE_551
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_551/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [552] = {
      ["ID"] = CREATURE_552
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_552/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [553] = {
      ["ID"] = CREATURE_553
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_553/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [554] = {
      ["ID"] = CREATURE_554
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_554/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [555] = {
      ["ID"] = CREATURE_555
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_555/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [556] = {
      ["ID"] = CREATURE_556
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_556/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [557] = {
      ["ID"] = CREATURE_557
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_557/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [558] = {
      ["ID"] = CREATURE_558
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_558/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [559] = {
      ["ID"] = CREATURE_559
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_559/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [560] = {
      ["ID"] = CREATURE_560
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_560/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [561] = {
      ["ID"] = CREATURE_561
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_561/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [562] = {
      ["ID"] = CREATURE_562
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_562/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [563] = {
      ["ID"] = CREATURE_563
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_563/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [564] = {
      ["ID"] = CREATURE_564
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_564/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [565] = {
      ["ID"] = CREATURE_565
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_565/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [566] = {
      ["ID"] = CREATURE_566
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_566/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [567] = {
      ["ID"] = CREATURE_567
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_567/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [568] = {
      ["ID"] = CREATURE_568
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_568/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [569] = {
      ["ID"] = CREATURE_569
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_569/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [570] = {
      ["ID"] = CREATURE_570
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_570/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [571] = {
      ["ID"] = CREATURE_571
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_571/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [572] = {
      ["ID"] = CREATURE_572
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_572/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [573] = {
      ["ID"] = CREATURE_573
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_573/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [574] = {
      ["ID"] = CREATURE_574
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_574/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [575] = {
      ["ID"] = CREATURE_575
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_575/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [576] = {
      ["ID"] = CREATURE_576
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_576/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [577] = {
      ["ID"] = CREATURE_577
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_577/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [578] = {
      ["ID"] = CREATURE_578
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_578/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [579] = {
      ["ID"] = CREATURE_579
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_579/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [580] = {
      ["ID"] = CREATURE_580
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_580/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [581] = {
      ["ID"] = CREATURE_581
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_581/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [582] = {
      ["ID"] = CREATURE_582
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_582/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [583] = {
      ["ID"] = CREATURE_583
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_583/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [584] = {
      ["ID"] = CREATURE_584
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_584/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [585] = {
      ["ID"] = CREATURE_585
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_585/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [586] = {
      ["ID"] = CREATURE_586
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_586/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [587] = {
      ["ID"] = CREATURE_587
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_587/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [588] = {
      ["ID"] = CREATURE_588
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_588/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [589] = {
      ["ID"] = CREATURE_589
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_589/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [590] = {
      ["ID"] = CREATURE_590
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_590/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [591] = {
      ["ID"] = CREATURE_591
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_591/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [592] = {
      ["ID"] = CREATURE_592
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_592/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [593] = {
      ["ID"] = CREATURE_593
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_593/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [594] = {
      ["ID"] = CREATURE_594
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_594/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [595] = {
      ["ID"] = CREATURE_595
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_595/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [596] = {
      ["ID"] = CREATURE_596
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_596/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [597] = {
      ["ID"] = CREATURE_597
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_597/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [598] = {
      ["ID"] = CREATURE_598
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_598/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [599] = {
      ["ID"] = CREATURE_599
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_599/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [600] = {
      ["ID"] = CREATURE_600
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_600/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [601] = {
      ["ID"] = CREATURE_601
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_601/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [602] = {
      ["ID"] = CREATURE_602
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_602/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [603] = {
      ["ID"] = CREATURE_603
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_603/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [604] = {
      ["ID"] = CREATURE_604
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_604/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [605] = {
      ["ID"] = CREATURE_605
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_605/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [606] = {
      ["ID"] = CREATURE_606
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_606/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [607] = {
      ["ID"] = CREATURE_607
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_607/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [608] = {
      ["ID"] = CREATURE_608
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_608/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [609] = {
      ["ID"] = CREATURE_609
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_609/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [610] = {
      ["ID"] = CREATURE_610
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_610/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [611] = {
      ["ID"] = CREATURE_611
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_611/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [612] = {
      ["ID"] = CREATURE_612
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_612/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [613] = {
      ["ID"] = CREATURE_613
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_613/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [614] = {
      ["ID"] = CREATURE_614
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_614/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [615] = {
      ["ID"] = CREATURE_615
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_615/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [616] = {
      ["ID"] = CREATURE_616
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_616/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [617] = {
      ["ID"] = CREATURE_617
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_617/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [618] = {
      ["ID"] = CREATURE_618
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_618/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [619] = {
      ["ID"] = CREATURE_619
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_619/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [620] = {
      ["ID"] = CREATURE_620
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_620/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [621] = {
      ["ID"] = CREATURE_621
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_621/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [622] = {
      ["ID"] = CREATURE_622
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_622/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [623] = {
      ["ID"] = CREATURE_623
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_623/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [624] = {
      ["ID"] = CREATURE_624
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_624/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [625] = {
      ["ID"] = CREATURE_625
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_625/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [626] = {
      ["ID"] = CREATURE_626
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_626/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [627] = {
      ["ID"] = CREATURE_627
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_627/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [628] = {
      ["ID"] = CREATURE_628
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_628/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [629] = {
      ["ID"] = CREATURE_629
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_629/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [630] = {
      ["ID"] = CREATURE_630
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_630/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [631] = {
      ["ID"] = CREATURE_631
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_631/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [632] = {
      ["ID"] = CREATURE_632
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_632/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [633] = {
      ["ID"] = CREATURE_633
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_633/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [634] = {
      ["ID"] = CREATURE_634
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_634/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [635] = {
      ["ID"] = CREATURE_635
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_635/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [636] = {
      ["ID"] = CREATURE_636
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_636/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [637] = {
      ["ID"] = CREATURE_637
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_637/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [638] = {
      ["ID"] = CREATURE_638
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_638/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [639] = {
      ["ID"] = CREATURE_639
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_639/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [640] = {
      ["ID"] = CREATURE_640
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_640/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [641] = {
      ["ID"] = CREATURE_641
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_641/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [642] = {
      ["ID"] = CREATURE_642
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_642/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [643] = {
      ["ID"] = CREATURE_643
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_643/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [644] = {
      ["ID"] = CREATURE_644
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_644/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [645] = {
      ["ID"] = CREATURE_645
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_645/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [646] = {
      ["ID"] = CREATURE_646
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_646/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [647] = {
      ["ID"] = CREATURE_647
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_647/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [648] = {
      ["ID"] = CREATURE_648
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_648/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [649] = {
      ["ID"] = CREATURE_649
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_649/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [650] = {
      ["ID"] = CREATURE_650
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_650/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [651] = {
      ["ID"] = CREATURE_651
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_651/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [652] = {
      ["ID"] = CREATURE_652
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_652/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [653] = {
      ["ID"] = CREATURE_653
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_653/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [654] = {
      ["ID"] = CREATURE_654
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_654/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [655] = {
      ["ID"] = CREATURE_655
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_655/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [656] = {
      ["ID"] = CREATURE_656
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_656/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [657] = {
      ["ID"] = CREATURE_657
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_657/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [658] = {
      ["ID"] = CREATURE_658
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_658/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [659] = {
      ["ID"] = CREATURE_659
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_659/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [660] = {
      ["ID"] = CREATURE_660
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_660/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [661] = {
      ["ID"] = CREATURE_661
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_661/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [662] = {
      ["ID"] = CREATURE_662
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_662/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [663] = {
      ["ID"] = CREATURE_663
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_663/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [664] = {
      ["ID"] = CREATURE_664
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_664/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [665] = {
      ["ID"] = CREATURE_665
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_665/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [666] = {
      ["ID"] = CREATURE_666
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_666/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [667] = {
      ["ID"] = CREATURE_667
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_667/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [668] = {
      ["ID"] = CREATURE_668
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_668/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [669] = {
      ["ID"] = CREATURE_669
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_669/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [670] = {
      ["ID"] = CREATURE_670
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_670/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [671] = {
      ["ID"] = CREATURE_671
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_671/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [672] = {
      ["ID"] = CREATURE_672
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_672/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [673] = {
      ["ID"] = CREATURE_673
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_673/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [674] = {
      ["ID"] = CREATURE_674
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_674/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [675] = {
      ["ID"] = CREATURE_675
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_675/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [676] = {
      ["ID"] = CREATURE_676
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_676/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [677] = {
      ["ID"] = CREATURE_677
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_677/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [678] = {
      ["ID"] = CREATURE_678
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_678/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [679] = {
      ["ID"] = CREATURE_679
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_679/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [680] = {
      ["ID"] = CREATURE_680
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_680/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [681] = {
      ["ID"] = CREATURE_681
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_681/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [682] = {
      ["ID"] = CREATURE_682
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_682/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [683] = {
      ["ID"] = CREATURE_683
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_683/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [684] = {
      ["ID"] = CREATURE_684
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_684/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [685] = {
      ["ID"] = CREATURE_685
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_685/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [686] = {
      ["ID"] = CREATURE_686
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_686/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [687] = {
      ["ID"] = CREATURE_687
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_687/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [688] = {
      ["ID"] = CREATURE_688
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_688/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [689] = {
      ["ID"] = CREATURE_689
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_689/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [690] = {
      ["ID"] = CREATURE_690
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_690/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [691] = {
      ["ID"] = CREATURE_691
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_691/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [692] = {
      ["ID"] = CREATURE_692
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_692/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [693] = {
      ["ID"] = CREATURE_693
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_693/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [694] = {
      ["ID"] = CREATURE_694
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_694/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [695] = {
      ["ID"] = CREATURE_695
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_695/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [696] = {
      ["ID"] = CREATURE_696
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_696/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [697] = {
      ["ID"] = CREATURE_697
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_697/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [698] = {
      ["ID"] = CREATURE_698
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_698/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [699] = {
      ["ID"] = CREATURE_699
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_699/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [700] = {
      ["ID"] = CREATURE_700
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_700/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [701] = {
      ["ID"] = CREATURE_701
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_701/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [702] = {
      ["ID"] = CREATURE_702
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_702/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [703] = {
      ["ID"] = CREATURE_703
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_703/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [704] = {
      ["ID"] = CREATURE_704
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_704/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [705] = {
      ["ID"] = CREATURE_705
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_705/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [706] = {
      ["ID"] = CREATURE_706
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_706/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [707] = {
      ["ID"] = CREATURE_707
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_707/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [708] = {
      ["ID"] = CREATURE_708
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_708/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [709] = {
      ["ID"] = CREATURE_709
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_709/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [710] = {
      ["ID"] = CREATURE_710
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_710/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [711] = {
      ["ID"] = CREATURE_711
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_711/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [712] = {
      ["ID"] = CREATURE_712
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_712/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [713] = {
      ["ID"] = CREATURE_713
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_713/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [714] = {
      ["ID"] = CREATURE_714
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_714/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [715] = {
      ["ID"] = CREATURE_715
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_715/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [716] = {
      ["ID"] = CREATURE_716
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_716/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [717] = {
      ["ID"] = CREATURE_717
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_717/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [718] = {
      ["ID"] = CREATURE_718
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_718/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [719] = {
      ["ID"] = CREATURE_719
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_719/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [720] = {
      ["ID"] = CREATURE_720
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_720/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [721] = {
      ["ID"] = CREATURE_721
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_721/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [722] = {
      ["ID"] = CREATURE_722
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_722/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [723] = {
      ["ID"] = CREATURE_723
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_723/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [724] = {
      ["ID"] = CREATURE_724
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_724/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [725] = {
      ["ID"] = CREATURE_725
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_725/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [726] = {
      ["ID"] = CREATURE_726
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_726/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [727] = {
      ["ID"] = CREATURE_727
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_727/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [728] = {
      ["ID"] = CREATURE_728
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_728/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [729] = {
      ["ID"] = CREATURE_729
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_729/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [730] = {
      ["ID"] = CREATURE_730
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_730/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [731] = {
      ["ID"] = CREATURE_731
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_731/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [732] = {
      ["ID"] = CREATURE_732
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_732/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [733] = {
      ["ID"] = CREATURE_733
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_733/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [734] = {
      ["ID"] = CREATURE_734
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_734/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [735] = {
      ["ID"] = CREATURE_735
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_735/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [736] = {
      ["ID"] = CREATURE_736
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_736/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [737] = {
      ["ID"] = CREATURE_737
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_737/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [738] = {
      ["ID"] = CREATURE_738
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_738/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [739] = {
      ["ID"] = CREATURE_739
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_739/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [740] = {
      ["ID"] = CREATURE_740
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_740/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [741] = {
      ["ID"] = CREATURE_741
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_741/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [742] = {
      ["ID"] = CREATURE_742
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_742/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [743] = {
      ["ID"] = CREATURE_743
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_743/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [744] = {
      ["ID"] = CREATURE_744
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_744/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [745] = {
      ["ID"] = CREATURE_745
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_745/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [746] = {
      ["ID"] = CREATURE_746
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_746/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [747] = {
      ["ID"] = CREATURE_747
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_747/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [748] = {
      ["ID"] = CREATURE_748
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_748/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [749] = {
      ["ID"] = CREATURE_749
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_749/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [750] = {
      ["ID"] = CREATURE_750
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_750/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [751] = {
      ["ID"] = CREATURE_751
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_751/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [752] = {
      ["ID"] = CREATURE_752
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_752/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [753] = {
      ["ID"] = CREATURE_753
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_753/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [754] = {
      ["ID"] = CREATURE_754
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_754/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [755] = {
      ["ID"] = CREATURE_755
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_755/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [756] = {
      ["ID"] = CREATURE_756
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_756/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [757] = {
      ["ID"] = CREATURE_757
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_757/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [758] = {
      ["ID"] = CREATURE_758
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_758/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [759] = {
      ["ID"] = CREATURE_759
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_759/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [760] = {
      ["ID"] = CREATURE_760
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_760/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [761] = {
      ["ID"] = CREATURE_761
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_761/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [762] = {
      ["ID"] = CREATURE_762
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_762/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [763] = {
      ["ID"] = CREATURE_763
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_763/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [764] = {
      ["ID"] = CREATURE_764
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_764/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [765] = {
      ["ID"] = CREATURE_765
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_765/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [766] = {
      ["ID"] = CREATURE_766
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_766/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [767] = {
      ["ID"] = CREATURE_767
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_767/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [768] = {
      ["ID"] = CREATURE_768
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_768/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [769] = {
      ["ID"] = CREATURE_769
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_769/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [770] = {
      ["ID"] = CREATURE_770
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_770/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [771] = {
      ["ID"] = CREATURE_771
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_771/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [772] = {
      ["ID"] = CREATURE_772
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_772/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [773] = {
      ["ID"] = CREATURE_773
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_773/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [774] = {
      ["ID"] = CREATURE_774
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_774/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [775] = {
      ["ID"] = CREATURE_775
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_775/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [776] = {
      ["ID"] = CREATURE_776
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_776/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [777] = {
      ["ID"] = CREATURE_777
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_777/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [778] = {
      ["ID"] = CREATURE_778
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_778/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [779] = {
      ["ID"] = CREATURE_779
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_779/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [780] = {
      ["ID"] = CREATURE_780
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_780/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [781] = {
      ["ID"] = CREATURE_781
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_781/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [782] = {
      ["ID"] = CREATURE_782
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_782/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [783] = {
      ["ID"] = CREATURE_783
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_783/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [784] = {
      ["ID"] = CREATURE_784
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_784/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [785] = {
      ["ID"] = CREATURE_785
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_785/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [786] = {
      ["ID"] = CREATURE_786
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_786/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [787] = {
      ["ID"] = CREATURE_787
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_787/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [788] = {
      ["ID"] = CREATURE_788
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_788/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [789] = {
      ["ID"] = CREATURE_789
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_789/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [790] = {
      ["ID"] = CREATURE_790
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_790/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [791] = {
      ["ID"] = CREATURE_791
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_791/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [792] = {
      ["ID"] = CREATURE_792
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_792/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [793] = {
      ["ID"] = CREATURE_793
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_793/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [794] = {
      ["ID"] = CREATURE_794
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_794/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [795] = {
      ["ID"] = CREATURE_795
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_795/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [796] = {
      ["ID"] = CREATURE_796
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_796/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [797] = {
      ["ID"] = CREATURE_797
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_797/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [798] = {
      ["ID"] = CREATURE_798
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_798/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [799] = {
      ["ID"] = CREATURE_799
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_799/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [800] = {
      ["ID"] = CREATURE_800
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_800/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [801] = {
      ["ID"] = CREATURE_801
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_801/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [802] = {
      ["ID"] = CREATURE_802
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_802/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [803] = {
      ["ID"] = CREATURE_803
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_803/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [804] = {
      ["ID"] = CREATURE_804
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_804/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [805] = {
      ["ID"] = CREATURE_805
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_805/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [806] = {
      ["ID"] = CREATURE_806
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_806/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [807] = {
      ["ID"] = CREATURE_807
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_807/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [808] = {
      ["ID"] = CREATURE_808
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_808/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [809] = {
      ["ID"] = CREATURE_809
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_809/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [810] = {
      ["ID"] = CREATURE_810
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_810/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [811] = {
      ["ID"] = CREATURE_811
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_811/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [812] = {
      ["ID"] = CREATURE_812
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_812/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [813] = {
      ["ID"] = CREATURE_813
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_813/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [814] = {
      ["ID"] = CREATURE_814
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_814/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [815] = {
      ["ID"] = CREATURE_815
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_815/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [816] = {
      ["ID"] = CREATURE_816
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_816/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [817] = {
      ["ID"] = CREATURE_817
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_817/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [818] = {
      ["ID"] = CREATURE_818
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_818/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [819] = {
      ["ID"] = CREATURE_819
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_819/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [820] = {
      ["ID"] = CREATURE_820
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_820/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [821] = {
      ["ID"] = CREATURE_821
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_821/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [822] = {
      ["ID"] = CREATURE_822
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_822/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [823] = {
      ["ID"] = CREATURE_823
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_823/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [824] = {
      ["ID"] = CREATURE_824
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_824/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [825] = {
      ["ID"] = CREATURE_825
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_825/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [826] = {
      ["ID"] = CREATURE_826
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_826/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [827] = {
      ["ID"] = CREATURE_827
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_827/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [828] = {
      ["ID"] = CREATURE_828
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_828/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [829] = {
      ["ID"] = CREATURE_829
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_829/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [830] = {
      ["ID"] = CREATURE_830
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_830/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [831] = {
      ["ID"] = CREATURE_831
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_831/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [832] = {
      ["ID"] = CREATURE_832
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_832/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [833] = {
      ["ID"] = CREATURE_833
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_833/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [834] = {
      ["ID"] = CREATURE_834
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_834/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [835] = {
      ["ID"] = CREATURE_835
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_835/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [836] = {
      ["ID"] = CREATURE_836
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_836/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [837] = {
      ["ID"] = CREATURE_837
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_837/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [838] = {
      ["ID"] = CREATURE_838
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_838/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [839] = {
      ["ID"] = CREATURE_839
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_839/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [840] = {
      ["ID"] = CREATURE_840
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_840/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [841] = {
      ["ID"] = CREATURE_841
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_841/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [842] = {
      ["ID"] = CREATURE_842
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_842/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [843] = {
      ["ID"] = CREATURE_843
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_843/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [844] = {
      ["ID"] = CREATURE_844
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_844/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [845] = {
      ["ID"] = CREATURE_845
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_845/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [846] = {
      ["ID"] = CREATURE_846
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_846/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [847] = {
      ["ID"] = CREATURE_847
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_847/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [848] = {
      ["ID"] = CREATURE_848
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_848/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [849] = {
      ["ID"] = CREATURE_849
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_849/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [850] = {
      ["ID"] = CREATURE_850
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_850/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [851] = {
      ["ID"] = CREATURE_851
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_851/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [852] = {
      ["ID"] = CREATURE_852
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_852/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [853] = {
      ["ID"] = CREATURE_853
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_853/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [854] = {
      ["ID"] = CREATURE_854
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_854/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [855] = {
      ["ID"] = CREATURE_855
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_855/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [856] = {
      ["ID"] = CREATURE_856
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_856/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [857] = {
      ["ID"] = CREATURE_857
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_857/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [858] = {
      ["ID"] = CREATURE_858
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_858/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [859] = {
      ["ID"] = CREATURE_859
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_859/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [860] = {
      ["ID"] = CREATURE_860
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_860/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [861] = {
      ["ID"] = CREATURE_861
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_861/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [862] = {
      ["ID"] = CREATURE_862
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_862/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [863] = {
      ["ID"] = CREATURE_863
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_863/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [864] = {
      ["ID"] = CREATURE_864
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_864/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [865] = {
      ["ID"] = CREATURE_865
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_865/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [866] = {
      ["ID"] = CREATURE_866
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_866/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [867] = {
      ["ID"] = CREATURE_867
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_867/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [868] = {
      ["ID"] = CREATURE_868
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_868/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [869] = {
      ["ID"] = CREATURE_869
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_869/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [870] = {
      ["ID"] = CREATURE_870
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_870/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [871] = {
      ["ID"] = CREATURE_871
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_871/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [872] = {
      ["ID"] = CREATURE_872
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_872/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [873] = {
      ["ID"] = CREATURE_873
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_873/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [874] = {
      ["ID"] = CREATURE_874
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_874/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [875] = {
      ["ID"] = CREATURE_875
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_875/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [876] = {
      ["ID"] = CREATURE_876
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_876/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [877] = {
      ["ID"] = CREATURE_877
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_877/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [878] = {
      ["ID"] = CREATURE_878
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_878/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [879] = {
      ["ID"] = CREATURE_879
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_879/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [880] = {
      ["ID"] = CREATURE_880
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_880/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [881] = {
      ["ID"] = CREATURE_881
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_881/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [882] = {
      ["ID"] = CREATURE_882
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_882/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [883] = {
      ["ID"] = CREATURE_883
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_883/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [884] = {
      ["ID"] = CREATURE_884
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_884/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [885] = {
      ["ID"] = CREATURE_885
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_885/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [886] = {
      ["ID"] = CREATURE_886
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_886/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [887] = {
      ["ID"] = CREATURE_887
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_887/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [888] = {
      ["ID"] = CREATURE_888
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_888/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [889] = {
      ["ID"] = CREATURE_889
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_889/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [890] = {
      ["ID"] = CREATURE_890
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_890/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [891] = {
      ["ID"] = CREATURE_891
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_891/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [892] = {
      ["ID"] = CREATURE_892
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_892/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [893] = {
      ["ID"] = CREATURE_893
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_893/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [894] = {
      ["ID"] = CREATURE_894
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_894/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [895] = {
      ["ID"] = CREATURE_895
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_895/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [896] = {
      ["ID"] = CREATURE_896
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_896/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [897] = {
      ["ID"] = CREATURE_897
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_897/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [898] = {
      ["ID"] = CREATURE_898
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_898/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [899] = {
      ["ID"] = CREATURE_899
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_899/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [900] = {
      ["ID"] = CREATURE_900
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_900/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [901] = {
      ["ID"] = CREATURE_901
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_901/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [902] = {
      ["ID"] = CREATURE_902
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_902/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [903] = {
      ["ID"] = CREATURE_903
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_903/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [904] = {
      ["ID"] = CREATURE_904
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_904/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [905] = {
      ["ID"] = CREATURE_905
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_905/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [906] = {
      ["ID"] = CREATURE_906
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_906/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [907] = {
      ["ID"] = CREATURE_907
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_907/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [908] = {
      ["ID"] = CREATURE_908
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_908/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [909] = {
      ["ID"] = CREATURE_909
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_909/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [910] = {
      ["ID"] = CREATURE_910
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_910/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [911] = {
      ["ID"] = CREATURE_911
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_911/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [912] = {
      ["ID"] = CREATURE_912
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_912/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [913] = {
      ["ID"] = CREATURE_913
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_913/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [914] = {
      ["ID"] = CREATURE_914
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_914/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [915] = {
      ["ID"] = CREATURE_915
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_915/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [916] = {
      ["ID"] = CREATURE_916
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_916/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [917] = {
      ["ID"] = CREATURE_917
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_917/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [918] = {
      ["ID"] = CREATURE_918
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_918/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [919] = {
      ["ID"] = CREATURE_919
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_919/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [920] = {
      ["ID"] = CREATURE_920
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_920/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [921] = {
      ["ID"] = CREATURE_921
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_921/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [922] = {
      ["ID"] = CREATURE_922
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_922/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [923] = {
      ["ID"] = CREATURE_923
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_923/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [924] = {
      ["ID"] = CREATURE_924
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_924/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [925] = {
      ["ID"] = CREATURE_925
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_925/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [926] = {
      ["ID"] = CREATURE_926
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_926/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [927] = {
      ["ID"] = CREATURE_927
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_927/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [928] = {
      ["ID"] = CREATURE_928
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_928/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [929] = {
      ["ID"] = CREATURE_929
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_929/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [930] = {
      ["ID"] = CREATURE_FIRE_MECHANICAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_930/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 829
    }
    , [931] = {
      ["ID"] = CREATURE_WATER_MECHANICAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_931/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 795
    }
    , [932] = {
      ["ID"] = CREATURE_EARTH_MECHANICAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_932/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 856
    }
    , [933] = {
      ["ID"] = CREATURE_AIR_MECHANICAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_933/Name.txt"
      , ["GROWTH"] = 4
      , ["TIER"] = 4
      , ["POWER"] = 813
    }
    , [934] = {
      ["ID"] = CREATURE_PHOENIX_MECHANICAL
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_934/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 7
      , ["POWER"] = 8576
    }
    , [935] = {
      ["ID"] = CREATURE_935
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_935/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [936] = {
      ["ID"] = CREATURE_936
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_936/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [937] = {
      ["ID"] = CREATURE_937
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_937/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [938] = {
      ["ID"] = CREATURE_938
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_938/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [939] = {
      ["ID"] = CREATURE_939
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_939/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [940] = {
      ["ID"] = CREATURE_940
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_940/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [941] = {
      ["ID"] = CREATURE_941
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_941/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [942] = {
      ["ID"] = CREATURE_942
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_942/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [943] = {
      ["ID"] = CREATURE_943
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_943/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [944] = {
      ["ID"] = CREATURE_944
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_944/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [945] = {
      ["ID"] = CREATURE_945
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_945/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [946] = {
      ["ID"] = CREATURE_946
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_946/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [947] = {
      ["ID"] = CREATURE_947
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_947/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [948] = {
      ["ID"] = CREATURE_948
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_948/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [949] = {
      ["ID"] = CREATURE_949
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_949/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [950] = {
      ["ID"] = CREATURE_950
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_950/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [951] = {
      ["ID"] = CREATURE_951
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_951/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [952] = {
      ["ID"] = CREATURE_952
      , ["NAME"] = "/Text/Game/Creatures/Preserve/T5_White_Unicorn.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1457
    }
    , [953] = {
      ["ID"] = CREATURE_953
      , ["NAME"] = "/Text/Game/Creatures/Haven/Cleric_Caldwell.txt"
      , ["GROWTH"] = 3
      , ["TIER"] = 5
      , ["POWER"] = 1523
    }
    , [954] = {
      ["ID"] = CREATURE_954
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_954/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [955] = {
      ["ID"] = CREATURE_Orlando2
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_955/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [956] = {
      ["ID"] = CREATURE_956
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_956/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [957] = {
      ["ID"] = CREATURE_957
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_957/Name.txt"
      , ["GROWTH"] = 1
      , ["TIER"] = 1
      , ["POWER"] = 0
    }
    , [958] = {
      ["ID"] = CREATURE_958
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_958/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [959] = {
      ["ID"] = CREATURE_959
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_959/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [960] = {
      ["ID"] = CREATURE_960
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_960/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [961] = {
      ["ID"] = CREATURE_961
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_961/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [962] = {
      ["ID"] = CREATURE_962
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_962/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [963] = {
      ["ID"] = CREATURE_963
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_963/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [964] = {
      ["ID"] = CREATURE_964
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_964/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [965] = {
      ["ID"] = CREATURE_965
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_965/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [966] = {
      ["ID"] = CREATURE_966
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_966/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [967] = {
      ["ID"] = CREATURE_967
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_967/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [968] = {
      ["ID"] = CREATURE_968
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_968/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [969] = {
      ["ID"] = CREATURE_969
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_969/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [970] = {
      ["ID"] = CREATURE_970
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_970/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [971] = {
      ["ID"] = CREATURE_971
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_971/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [972] = {
      ["ID"] = CREATURE_972
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_972/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [973] = {
      ["ID"] = CREATURE_973
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_973/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [974] = {
      ["ID"] = CREATURE_974
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_974/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [975] = {
      ["ID"] = CREATURE_975
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_975/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [976] = {
      ["ID"] = CREATURE_976
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_976/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [977] = {
      ["ID"] = CREATURE_977
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_977/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [978] = {
      ["ID"] = CREATURE_978
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_978/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [979] = {
      ["ID"] = CREATURE_979
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_979/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [980] = {
      ["ID"] = CREATURE_980
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_980/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [981] = {
      ["ID"] = CREATURE_981
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_981/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [982] = {
      ["ID"] = CREATURE_982
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_982/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [983] = {
      ["ID"] = CREATURE_983
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_983/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [984] = {
      ["ID"] = CREATURE_984
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_984/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [985] = {
      ["ID"] = CREATURE_985
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_985/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [986] = {
      ["ID"] = CREATURE_986
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_986/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [987] = {
      ["ID"] = CREATURE_987
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_987/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [988] = {
      ["ID"] = CREATURE_988
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_988/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [989] = {
      ["ID"] = CREATURE_989
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_989/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [990] = {
      ["ID"] = CREATURE_990
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_990/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [991] = {
      ["ID"] = CREATURE_991
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_991/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [992] = {
      ["ID"] = CREATURE_992
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_992/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [993] = {
      ["ID"] = CREATURE_993
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_993/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [994] = {
      ["ID"] = CREATURE_994
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_994/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [995] = {
      ["ID"] = CREATURE_995
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_995/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [996] = {
      ["ID"] = CREATURE_996
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_996/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [997] = {
      ["ID"] = CREATURE_997
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_997/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [998] = {
      ["ID"] = CREATURE_998
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_998/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
    }
    , [999] = {
      ["ID"] = CREATURE_999
      , ["NAME"] = "/Text/Game/Creatures/TTH_NCF_ALL/CREATURE_999/Name.txt"
      , ["GROWTH"] = 26
      , ["TIER"] = 1
      , ["POWER"] = 85
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
    TTH_FINAL = {};
    TTH_FINAL.NUM_MAX = 999999;
    TTH_FINAL.STANDARD_MOVEPOINT = 2500;
    TTH_FINAL.INTERVAL = 2;
    TTH_FINAL.PI = 3.1416;

    TTH_FINAL.GAMEVAR_COMBAT_ARTIFACT = "TTH_Artifact_Effect_Combat_";
    TTH_FINAL.GAMEVAR_COMBAT_ARTIFACTSET = "TTH_ArtifactSet_Effect_Combat_";
    TTH_FINAL.GAMEVAR_COMBAT_SKILL = "TTH_Skill_Effect_Combat_";

    TTH_FINAL.MILITARY_EXPEDITION = 1000;
    TTH_FINAL.MERMAIDS_FINE = 10000;

  -- 枚举
    TTH_ENUM = {};

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
      TTH_ENUM.FuncUpgradeMastery = 9;
      TTH_ENUM.FuncUpgradeShantiri = 10;

      TTH_ENUM.FuncAlways = 1;
      TTH_ENUM.FuncNotAtGate = 2;
      TTH_ENUM.FuncAtGate = 3;

    -- 玩家类型
      TTH_ENUM.Human = 0;
      TTH_ENUM.Ai = 1;

    -- 是否
      TTH_ENUM.No = 0;
      TTH_ENUM.Yes = 1;

    -- 简单/复杂
      TTH_ENUM.Simple = 0;
      TTH_ENUM.Complicated = 1;

    -- 可不可用
      TTH_ENUM.Unable = 0;
      TTH_ENUM.Enable = 1;

    -- 基础/高级
      TTH_ENUM.None = 1;
      TTH_ENUM.Basic = 2;
      TTH_ENUM.Advanced = 3;

    -- 英雄职业
      TTH_ENUM.Knight = 1;
      TTH_ENUM.Paladin = 2;
      TTH_ENUM.Retribution = 25;
      TTH_ENUM.Heretic = 3;
      TTH_ENUM.Ranger = 4;
      TTH_ENUM.Warden = 5;
      TTH_ENUM.Enchanter = 6;
      TTH_ENUM.GuildMaster = 7;
      TTH_ENUM.Wizard = 8;
      TTH_ENUM.ElementAlist = 9;
      TTH_ENUM.BeastMaster = 10;
      TTH_ENUM.Seer = 11;
      TTH_ENUM.Warlock = 12;
      TTH_ENUM.DeathKnight = 13;
      TTH_ENUM.Reaver = 14;
      TTH_ENUM.Necromancer = 15;
      TTH_ENUM.GateKeeper = 16;
      TTH_ENUM.DemonLord = 17;
      TTH_ENUM.Sorcerer = 18;
      TTH_ENUM.Engineer = 19;
      TTH_ENUM.Runemage = 20;
      TTH_ENUM.Flamekeepera = 21;
      TTH_ENUM.Barbarian = 22;

    -- 英雄职业类型
      TTH_ENUM.GroupMight = 1; -- 力量型英雄
      TTH_ENUM.GroupBalanceNotNec = 2; -- 平衡型英雄-非墓园
      TTH_ENUM.GroupBalanceNec = 4; -- 平衡型英雄-墓园
      TTH_ENUM.GroupMagic = 3; -- 魔法型英雄
      TTH_ENUM.GroupBarbarian = 5; -- 野蛮人英雄

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

    -- 套装
      TTH_ENUM.SET_CUSTOM = 0
      TTH_ENUM.SET_DRAGONISH = 1
      TTH_ENUM.SET_DWARVEN = 2
      TTH_ENUM.SET_LIONS = 3
      TTH_ENUM.SET_MAGIS = 4
      TTH_ENUM.SET_NECROMANCERS = 5
      TTH_ENUM.SET_NECROMANCERS_PELT = 51
      TTH_ENUM.SET_EDUCATIONAL = 6
      TTH_ENUM.SET_HUNTERS = 7
      TTH_ENUM.SET_OGRES = 8
      TTH_ENUM.SET_RUNIC = 9
      TTH_ENUM.SET_DEMONIC = 10
      TTH_ENUM.SET_MONK = 11
      TTH_ENUM.SET_GUARDIAN = 12
      TTH_ENUM.SET_ROOKIE = 13
      TTH_ENUM.SET_PIRATE = 14
      TTH_ENUM.SET_ELEMENT_AIR = 15
      TTH_ENUM.SET_ELEMENT_EARTH = 16
      TTH_ENUM.SET_ELEMENT_FIRE = 17
      TTH_ENUM.SET_ELEMENT_WATER = 18

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
        TTH_PATH.Visit["Shantiri"]["Wisdom"]["HasNoArtifact"] = TTH_PATH.Visit["Shantiri"]["Wisdom"]["Pre"].."HasNoArtifact.txt";
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
        TTH_PATH.Visit["WitchHut"]["Mastery"][1] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."1_logistics.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][2] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."2_enlightment.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][3] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."3_offense.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][4] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."4_defense.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][5] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."5_leadership.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][6] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."6_luck.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][7] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."7_warmachines.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][8] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."8_lightmagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][9] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."9_darkmagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][10] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."10_summoningmagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][11] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."11_destructivemagic.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][12] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."12_sorcery.txt";
        TTH_PATH.Visit["WitchHut"]["Mastery"][13] = TTH_PATH.Visit["WitchHut"]["Mastery"]["Pre"].."13_special.txt";
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
        TTH_PATH.Visit["WitchHut"]["Bonus"] = {};
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"] = TTH_PATH.Visit["WitchHut"]["Pre"].."Bonus/";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Text"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Text.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Option"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Option.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["NotOptionMastery"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."NotOptionMastery.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["NotEnoughGold"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Confirm"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Confirm.txt";
        TTH_PATH.Visit["WitchHut"]["Bonus"]["Success"] = TTH_PATH.Visit["WitchHut"]["Bonus"]["Pre"].."Success.txt";
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
        TTH_PATH.Talent["Cast"]["InGcd"] = TTH_PATH.Talent["Cast"]["Pre"].."InGcd.txt";
        TTH_PATH.Talent["Cast"]["CanCast"] = TTH_PATH.Talent["Cast"]["Pre"].."CanCast.txt";
        TTH_PATH.Talent["Cast"]["CantCast"] = TTH_PATH.Talent["Cast"]["Pre"].."CantCast.txt";
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
      -- Nathaniel 001 埃兰妮
        TTH_PATH.Talent["Nathaniel"] = {};
        TTH_PATH.Talent["Nathaniel"]["Pre"] = TTH_PATH.Talent["Pre"].."001/";
        TTH_PATH.Talent["Nathaniel"]["Text"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Nathaniel"]["NotEnoughCreature"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."NotEnoughCreature.txt";
        TTH_PATH.Talent["Nathaniel"]["ConfirmActive"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."ConfirmActive.txt";
        TTH_PATH.Talent["Nathaniel"]["LoseCreature"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."LoseCreature.txt";
        TTH_PATH.Talent["Nathaniel"]["Success"] = TTH_PATH.Talent["Nathaniel"]["Pre"].."Success.txt";
      -- Christian 007 维托利奥
        TTH_PATH.Talent["Christian"] = {};
        TTH_PATH.Talent["Christian"]["Pre"] = TTH_PATH.Talent["Pre"].."007-Christian/";
        TTH_PATH.Talent["Christian"]["UpgradeMasteryText"] = TTH_PATH.Talent["Christian"]["Pre"].."UpgradeMasteryText.txt";
        TTH_PATH.Talent["Christian"]["UpgradeShantiriText"] = TTH_PATH.Talent["Christian"]["Pre"].."UpgradeShantiriText.txt";
        TTH_PATH.Talent["Christian"]["SuccessUpgradeMastery"] = TTH_PATH.Talent["Christian"]["Pre"].."SuccessUpgradeMastery.txt";
        TTH_PATH.Talent["Christian"]["SuccessUpgradeShantiri"] = TTH_PATH.Talent["Christian"]["Pre"].."SuccessUpgradeShantiri.txt";
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
        TTH_PATH.Talent["RedHeavenHero06"]["Confirm"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["RedHeavenHero06"]["Success"] = TTH_PATH.Talent["RedHeavenHero06"]["Pre"].."Success.txt";
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
        TTH_PATH.Talent["Menel"]["Active"] = {};
        TTH_PATH.Talent["Menel"]["Active"]["Pre"] = TTH_PATH.Talent["Menel"]["Pre"].."Active/";
        TTH_PATH.Talent["Menel"]["Active"]["Text"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Menel"]["Active"]["NotMayor"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NotMayor.txt";
        TTH_PATH.Talent["Menel"]["Active"]["NotEnoughQuota"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NotEnoughQuota.txt";
        TTH_PATH.Talent["Menel"]["Active"]["NotEnoughRes"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NotEnoughRes.txt";
        TTH_PATH.Talent["Menel"]["Active"]["TipsDwellingLevel"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."TipsDwellingLevel.txt";
        TTH_PATH.Talent["Menel"]["Active"]["TipsDirection"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."TipsDirection.txt";
        TTH_PATH.Talent["Menel"]["Active"]["NegetivePlace"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."NegetivePlace.txt";
        TTH_PATH.Talent["Menel"]["Active"]["Success"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Menel"]["Active"]["Title"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Menel"]["Active"]["Desc"] = TTH_PATH.Talent["Menel"]["Active"]["Pre"].."Desc.txt";
        TTH_PATH.Talent["Menel"]["Building"] = {};
        TTH_PATH.Talent["Menel"]["Building"]["Pre"] = TTH_PATH.Talent["Menel"]["Pre"].."Building/";
        TTH_PATH.Talent["Menel"]["Building"]["BattleAcademy"] = TTH_PATH.Talent["Menel"]["Building"]["Pre"].."BattleAcademy.txt";
        TTH_PATH.Talent["Menel"]["Building"]["ShadowStone"] = TTH_PATH.Talent["Menel"]["Building"]["Pre"].."ShadowStone.txt";
        TTH_PATH.Talent["Menel"]["Building"]["Maze"] = TTH_PATH.Talent["Menel"]["Building"]["Pre"].."Maze.txt";
        TTH_PATH.Talent["Menel"]["Building"]["DungeonMilitaryPost"] = TTH_PATH.Talent["Menel"]["Building"]["Pre"].."DungeonMilitaryPost.txt";
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
      -- Almegir 071 伊蓓丝
        TTH_PATH.Talent["Almegir"] = {};
        TTH_PATH.Talent["Almegir"]["Pre"] = TTH_PATH.Talent["Pre"].."071-Almegir/";
        TTH_PATH.Talent["Almegir"]["Text"] = TTH_PATH.Talent["Almegir"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Almegir"]["NotEnoughTimes"] = TTH_PATH.Talent["Almegir"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Almegir"]["NotEnoughMana"] = TTH_PATH.Talent["Almegir"]["Pre"].."NotEnoughMana.txt";
        TTH_PATH.Talent["Almegir"]["Success"] = TTH_PATH.Talent["Almegir"]["Pre"].."Success.txt";
      -- LordHaart 077 罗德哈特
        TTH_PATH.Talent["LordHaart"] = {};
        TTH_PATH.Talent["LordHaart"]["Pre"] = TTH_PATH.Talent["Pre"].."077-LordHaart/";
        TTH_PATH.Talent["LordHaart"]["UpgradeMasteryText"] = TTH_PATH.Talent["LordHaart"]["Pre"].."UpgradeMasteryText.txt";
        TTH_PATH.Talent["LordHaart"]["UpgradeShantiriText"] = TTH_PATH.Talent["LordHaart"]["Pre"].."UpgradeShantiriText.txt";
        TTH_PATH.Talent["LordHaart"]["SuccessUpgradeMastery"] = TTH_PATH.Talent["LordHaart"]["Pre"].."SuccessUpgradeMastery.txt";
        TTH_PATH.Talent["LordHaart"]["SuccessUpgradeShantiri"] = TTH_PATH.Talent["LordHaart"]["Pre"].."SuccessUpgradeShantiri.txt";
      -- Nikolay 080 尼科莱
        TTH_PATH.Talent["Nikolay"] = {};
        TTH_PATH.Talent["Nikolay"]["Pre"] = TTH_PATH.Talent["Pre"].."080/";
        TTH_PATH.Talent["Nikolay"]["Text"] = TTH_PATH.Talent["Nikolay"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Nikolay"]["GainPower"] = TTH_PATH.Talent["Nikolay"]["Pre"].."GainPower.txt";
        TTH_PATH.Talent["Nikolay"]["NotNecTown"] = TTH_PATH.Talent["Nikolay"]["Pre"].."NotNecTown.txt";
        TTH_PATH.Talent["Nikolay"]["ConfirmActive"] = TTH_PATH.Talent["Nikolay"]["Pre"].."ConfirmActive.txt";
      -- Pelt 094 弗拉基米尔
        TTH_PATH.Talent["Pelt"] = {};
        TTH_PATH.Talent["Pelt"]["Pre"] = TTH_PATH.Talent["Pre"].."094/";
        TTH_PATH.Talent["Pelt"]["Text"] = TTH_PATH.Talent["Pelt"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Pelt"]["GainPower"] = TTH_PATH.Talent["Pelt"]["Pre"].."GainPower.txt";
        TTH_PATH.Talent["Pelt"]["NoCreature4Cast"] = TTH_PATH.Talent["Pelt"]["Pre"].."NoCreature4Cast.txt";
        TTH_PATH.Talent["Pelt"]["Success"] = TTH_PATH.Talent["Pelt"]["Pre"].."Success.txt";
      -- Marder 103 马巴斯
        TTH_PATH.Talent["Marder"] = {};
        TTH_PATH.Talent["Marder"]["Pre"] = TTH_PATH.Talent["Pre"].."103-Marder/";
        TTH_PATH.Talent["Marder"]["Text"] = TTH_PATH.Talent["Marder"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Marder"]["NotEnoughTimes"] = TTH_PATH.Talent["Marder"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Marder"]["Success"] = TTH_PATH.Talent["Marder"]["Pre"].."Success.txt";
      -- Orlando2 104 奥兰多
        TTH_ENUM.Orlando2AbilityVorpalSword = CREATURE_INFERNO_TOOL_Orlando2_AbilityVorpalSword;
        TTH_ENUM.Orlando2AbilityAxeOfSlaughter = CREATURE_INFERNO_TOOL_Orlando2_AbilityAxeOfSlaughter;
        TTH_ENUM.Orlando2AbilityUpgradeMastery = CREATURE_INFERNO_TOOL_Orlando2_AbilityUpgradeMastery;
        TTH_ENUM.Orlando2AbilityUpgradeShantiri = CREATURE_INFERNO_TOOL_Orlando2_AbilityUpgradeShantiri;
        TTH_PATH.Talent["Orlando2"] = {};
        TTH_PATH.Talent["Orlando2"]["Pre"] = TTH_PATH.Talent["Pre"].."104-Orlando2/";
        TTH_PATH.Talent["Orlando2"]["Text"] = TTH_PATH.Talent["Orlando2"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Orlando2"]["UpgradeMasteryText"] = TTH_PATH.Talent["Orlando2"]["Pre"].."UpgradeMasteryText.txt";
        TTH_PATH.Talent["Orlando2"]["UpgradeShantiriText"] = TTH_PATH.Talent["Orlando2"]["Pre"].."UpgradeShantiriText.txt";
        TTH_PATH.Talent["Orlando2"]["HasUpgrade"] = TTH_PATH.Talent["Orlando2"]["Pre"].."HasUpgrade.txt";
        TTH_PATH.Talent["Orlando2"][TTH_ENUM.Orlando2AbilityVorpalSword] = TTH_PATH.Talent["Orlando2"]["Pre"].."AbilityVorpalSword.txt";
        TTH_PATH.Talent["Orlando2"][TTH_ENUM.Orlando2AbilityAxeOfSlaughter] = TTH_PATH.Talent["Orlando2"]["Pre"].."AbilityAxeOfSlaughter.txt";
        TTH_PATH.Talent["Orlando2"][TTH_ENUM.Orlando2AbilityUpgrade] = TTH_PATH.Talent["Orlando2"]["Pre"].."AbilityUpgrade.txt";
        TTH_PATH.Talent["Orlando2"]["Confirm"] = TTH_PATH.Talent["Orlando2"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Orlando2"]["Success"] = TTH_PATH.Talent["Orlando2"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Orlando2"]["SuccessUpgradeMastery"] = TTH_PATH.Talent["Orlando2"]["Pre"].."SuccessUpgradeMastery.txt";
        TTH_PATH.Talent["Orlando2"]["SuccessUpgradeShantiri"] = TTH_PATH.Talent["Orlando2"]["Pre"].."SuccessUpgradeShantiri.txt";
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
      -- Oddrema 109 耶泽蓓丝
        TTH_PATH.Talent["Oddrema"] = {};
        TTH_PATH.Talent["Oddrema"]["Pre"] = TTH_PATH.Talent["Pre"].."109-Oddrema/";
        TTH_PATH.Talent["Oddrema"]["UpgradeMasteryText"] = TTH_PATH.Talent["Oddrema"]["Pre"].."UpgradeMasteryText.txt";
        TTH_PATH.Talent["Oddrema"]["UpgradeShantiriText"] = TTH_PATH.Talent["Oddrema"]["Pre"].."UpgradeShantiriText.txt";
        TTH_PATH.Talent["Oddrema"]["SuccessUpgradeMastery"] = TTH_PATH.Talent["Oddrema"]["Pre"].."SuccessUpgradeMastery.txt";
        TTH_PATH.Talent["Oddrema"]["SuccessUpgradeShantiri"] = TTH_PATH.Talent["Oddrema"]["Pre"].."SuccessUpgradeShantiri.txt";
      -- Calid2 115 卡利德  
        TTH_PATH.Talent["Calid2"] = {};
        TTH_PATH.Talent["Calid2"]["Pre"] = TTH_PATH.Talent["Pre"].."115-Calid2/";
        TTH_PATH.Talent["Calid2"]["Text"] = TTH_PATH.Talent["Calid2"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Calid2"]["NotEnoughTimes"] = TTH_PATH.Talent["Calid2"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Calid2"]["NotSuitableHero"] = TTH_PATH.Talent["Calid2"]["Pre"].."NotSuitableHero.txt";
        TTH_PATH.Talent["Calid2"]["Success"] = TTH_PATH.Talent["Calid2"]["Pre"].."Success.txt";
      -- Sheltem 116 谢尔坦
        TTH_PATH.Talent["Sheltem"] = {};
        TTH_PATH.Talent["Sheltem"]["Pre"] = TTH_PATH.Talent["Pre"].."116/";
        TTH_PATH.Talent["Sheltem"]["Text"] = TTH_PATH.Talent["Sheltem"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Sheltem"]["HasUsed"] = TTH_PATH.Talent["Sheltem"]["Pre"].."HasUsed.txt";
        TTH_PATH.Talent["Sheltem"]["Confirm"] = TTH_PATH.Talent["Sheltem"]["Pre"].."Confirm.txt";
        TTH_PATH.Talent["Sheltem"]["K2P"] = TTH_PATH.Talent["Sheltem"]["Pre"].."K2P.txt";
        TTH_PATH.Talent["Sheltem"]["P2K"] = TTH_PATH.Talent["Sheltem"]["Pre"].."P2K.txt";
      -- Maximus 118 马克西姆斯
        TTH_PATH.Talent["Maximus"] = {};
        TTH_PATH.Talent["Maximus"]["Pre"] = TTH_PATH.Talent["Pre"].."118-Maximus/";
        TTH_PATH.Talent["Maximus"]["UpgradeMasteryText"] = TTH_PATH.Talent["Maximus"]["Pre"].."UpgradeMasteryText.txt";
        TTH_PATH.Talent["Maximus"]["UpgradeShantiriText"] = TTH_PATH.Talent["Maximus"]["Pre"].."UpgradeShantiriText.txt";
        TTH_PATH.Talent["Maximus"]["SuccessUpgradeMastery"] = TTH_PATH.Talent["Maximus"]["Pre"].."SuccessUpgradeMastery.txt";
        TTH_PATH.Talent["Maximus"]["SuccessUpgradeShantiri"] = TTH_PATH.Talent["Maximus"]["Pre"].."SuccessUpgradeShantiri.txt";
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
      -- Azar 138 艾扎-埃克
        TTH_PATH.Talent["Azar"] = {};
        TTH_PATH.Talent["Azar"]["Pre"] = TTH_PATH.Talent["Pre"].."138-Azar/";
        TTH_PATH.Talent["Azar"]["Text"] = TTH_PATH.Talent["Azar"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Azar"]["NotEnoughTimes"] = TTH_PATH.Talent["Azar"]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Talent["Azar"]["NotEnoughGold"] = TTH_PATH.Talent["Azar"]["Pre"].."NotEnoughGold.txt";
        TTH_PATH.Talent["Azar"]["OptionTemplate"] = TTH_PATH.Talent["Azar"]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Talent["Azar"]["NoSuitableWolfLair"] = TTH_PATH.Talent["Azar"]["Pre"].."NoSuitableWolfLair.txt";
        TTH_PATH.Talent["Azar"]["RadioTips"] = TTH_PATH.Talent["Azar"]["Pre"].."RadioTips.txt";
        TTH_PATH.Talent["Azar"]["HasWolfLair"] = TTH_PATH.Talent["Azar"]["Pre"].."HasWolfLair.txt";
        TTH_PATH.Talent["Azar"]["ConfirmVisitWolfLair"] = TTH_PATH.Talent["Azar"]["Pre"].."ConfirmVisitWolfLair.txt";
        TTH_PATH.Talent["Azar"]["SuccessVisitWolfLair"] = TTH_PATH.Talent["Azar"]["Pre"].."SuccessVisitWolfLair.txt";
        TTH_PATH.Talent["Azar"]["Title"] = TTH_PATH.Talent["Azar"]["Pre"].."Title.txt";
        TTH_PATH.Talent["Azar"]["Desc"] = TTH_PATH.Talent["Azar"]["Pre"].."Desc.txt";
      -- Kraal 146 克拉尔
        TTH_PATH.Talent["Kraal"] = {};
        TTH_PATH.Talent["Kraal"]["Pre"] = TTH_PATH.Talent["Pre"].."146-Kraal/";
        TTH_PATH.Talent["Kraal"]["Text"] = TTH_PATH.Talent["Kraal"]["Pre"].."Text.txt";
        TTH_PATH.Talent["Kraal"]["Success"] = TTH_PATH.Talent["Kraal"]["Pre"].."Success.txt";
        TTH_PATH.Talent["Kraal"]["UpgradeMasteryText"] = TTH_PATH.Talent["Kraal"]["Pre"].."UpgradeMasteryText.txt";
        TTH_PATH.Talent["Kraal"]["UpgradeShantiriText"] = TTH_PATH.Talent["Kraal"]["Pre"].."UpgradeShantiriText.txt";
        TTH_PATH.Talent["Kraal"]["SuccessUpgradeMastery"] = TTH_PATH.Talent["Kraal"]["Pre"].."SuccessUpgradeMastery.txt";
        TTH_PATH.Talent["Kraal"]["SuccessUpgradeShantiri"] = TTH_PATH.Talent["Kraal"]["Pre"].."SuccessUpgradeShantiri.txt";

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

      -- ARTIFACT_SHANTIRI_05 163 龙神之证
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05] = {};
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"] = TTH_PATH.Artifact["Pre"].."163-Shantiri05/";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Text"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["HasUpgradeShantiri"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."HasUpgradeShantiri.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["HasNotUpgradeMastery"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."HasNotUpgradeMastery.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["NotEnoughHeroLevel"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."NotEnoughHeroLevel.txt";
        TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["NoOption"] = TTH_PATH.Artifact[ARTIFACT_SHANTIRI_05]["Pre"].."NoOption.txt";

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
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"] = TTH_PATH.Artifact["Pre"].."103/";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Text"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["HasLostTown"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."HasLostTown.txt";
        TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Confirm"] = TTH_PATH.Artifact[ARTIFACT_DIMENSION_DOOR]["Pre"].."Confirm.txt";

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
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"] = TTH_PATH.Artifact["Pre"].."112/";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Text"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."Text.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["NoCreature4Cast"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."NoCreature4Cast.txt";
        TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Success"] = TTH_PATH.Artifact[ARTIFACT_REINCARNATION]["Pre"].."Success.txt";

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
      -- HERO_SKILL_RECRUITMENT 028 募兵术
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT] = {};
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"] = TTH_PATH.Perk["Pre"] .."028/";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Text"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["HasRecruit"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."HasRecruit.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["NoDwelling"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."NoDwelling.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Pre"].."Confirm.txt";
      -- HERO_SKILL_ESTATES 029 理财术
        TTH_PATH.Perk[HERO_SKILL_ESTATES] = {};
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"] = TTH_PATH.Perk["Pre"] .."029/";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Text"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["OptionTips"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."OptionTips.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef20"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Coef20.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef50"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Coef50.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef80"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Coef80.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Coef100"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Coef100.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Success"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Success.txt";
        TTH_PATH.Perk[HERO_SKILL_ESTATES]["Repay"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Pre"].."Repay.txt";
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
      -- HERO_SKILL_TOUGHNESS 039 活力无限
        TTH_PATH.Perk[HERO_SKILL_TOUGHNESS] = {};
        TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Pre"] = TTH_PATH.Perk["Pre"] .."039/";
        TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Text"] = TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["NoBuildingOnAdvMap"] = TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Pre"].."NoBuildingOnAdvMap.txt";
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
      -- HERO_SKILL_PARIAH 083 堕落骑士
        TTH_PATH.Perk[HERO_SKILL_PARIAH] = {};
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"] = TTH_PATH.Perk["Pre"] .."083-Pariah/";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Text"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_PARIAH]["Success"] = TTH_PATH.Perk[HERO_SKILL_PARIAH]["Pre"].."Success.txt";
      -- HERO_SKILL_DEAD_LUCK 103 恶灵诅咒
        TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK] = {};
        TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK]["Pre"] = TTH_PATH.Perk["Pre"] .."103-DeadLuck/";
        TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK]["Text"] = TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK]["Success"] = TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK]["Pre"].."Success.txt";
      -- HERO_SKILL_TWILIGHT 109 微光黎明
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT] = {};
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"] = TTH_PATH.Perk["Pre"] .."109-Twilight/";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Text"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Confirm"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."Confirm.txt";
        TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Success"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Pre"].."Success.txt";
      -- HERO_SKILL_GRAIL_VISION 080 杉提瑞之触
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION] = {};
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"] = TTH_PATH.Perk["Pre"] .."080-Shantiri/";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Text"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["OptionTemplate"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."OptionTemplate.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["NoSuitableShantiri"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."NoSuitableShantiri.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["RadioTips"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."RadioTips.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Touch"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."Touch.txt";
        TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["NotEnoughCombat"] = TTH_PATH.Perk[HERO_SKILL_GRAIL_VISION]["Pre"].."NotEnoughCombat.txt";
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
      -- HERO_SKILL_DWARVEN_LUCK 159 矮人之幸
        TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK] = {};
        TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Pre"] = TTH_PATH.Perk["Pre"] .."159-DwarvenLuck/";
        TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Text"] = TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Pre"].."Text.txt";
        TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["NotEnoughTimes"] = TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Pre"].."NotEnoughTimes.txt";
        TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["NoOption"] = TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Pre"].."NoOption.txt";
        TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Success"] = TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Pre"].."Success.txt";
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
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["HasUsed"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"].."HasUsed.txt";
          TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["NotEnoughHeroLevel"] = TTH_PATH.Building[TOWN_DUNGEON][TOWN_BUILDING_SPECIAL_1]["Pre"].."NotEnoughHeroLevel.txt";
          
  -- 数据表
    TTH_TABLE = {};

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
            , ["Wulfstan"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initWulfstan"
            }
          -- 其他
            , ["Nathaniel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initNathaniel"
            }
            , ["Ildar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initIldar"
            }
            , ["Orlando2"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initOrlando2"
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
            , ["Pelt"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initPelt"
            }
            , ["Maahir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMaahir"
            }
            , ["Sheltem"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initSheltem"
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
            , ["Azar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initAzar"
            }
            , ["Metlirn"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initMetlirn"
            }
            , ["Razzak"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initRazzak"
            }
            , ["Azar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initAzar"
            }
            , ["Calid2"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initCalid2"
            }
            , ["Kraal"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.initKraal"
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
            , ["Avitus"] = {
              ["Text"] = TTH_PATH.Talent["Cast"]["Hero"]["Avitus"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCastCreature"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCastCreature"
            }
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
          -- 其他
            , ["Nathaniel"] = {
              ["Text"] = TTH_PATH.Talent["Nathaniel"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeNathaniel"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeNathaniel"
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
            , ["Orlando2"] = {
              ["Text"] = TTH_PATH.Talent["Orlando2"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeOrlando2"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeOrlando2"
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
            , ["Menel"] = {
              ["Text"] = TTH_PATH.Talent["Menel"]["Active"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeMenel"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeMenel"
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
            , ["Sheltem"] = {
              ["Text"] = TTH_PATH.Talent["Sheltem"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeSheltem"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeSheltem"
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
            , ["Azar"] = {
              ["Text"] = TTH_PATH.Talent["Azar"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeAzar"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeAzar"
            }
            , ["Calid2"] = {
              ["Text"] = TTH_PATH.Talent["Calid2"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeCalid2"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeCalid2"
            }
            , ["Kraal"] = {
              ["Text"] = TTH_PATH.Talent["Kraal"]["Text"]
              , [TTH_ENUM.FuncAtGate] = "TTH_TALENT.activeKraal"
              , [TTH_ENUM.FuncNotAtGate] = "TTH_TALENT.activeKraal"
            }
        }
        , [TTH_ENUM.FuncLevelUp] = {
          -- 其他
            ["Vinrael"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.levelUpVinrael"
            }
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
          -- 其他
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
            , ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklySylsai"
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
            , ["Azar"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyAzar"
            }
            , ["Metlirn"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyMetlirn"
            }
            , ["Calid2"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetWeeklyCalid2"
            }
        }
        , [TTH_ENUM.FuncDealDaily] = {
          -- 其他
            ["Menel"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyMenel"
            }
            , ["Sylsai"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailySylsai"
            }
            , ["Ufretin"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyUfretin"
            }
            , ["Wulfstan"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.dealDailyWulfstan"
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
          -- 其他
            , ["Maahir"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailyMaahir"
            }
            , ["Sheltem"] = {
              [TTH_ENUM.FuncAlways] = "TTH_TALENT.resetDailySheltem"
            }
        }
        , [TTH_ENUM.FuncUpgradeMastery] = {
          ["Orlando2"] = {
            ["Text"] = TTH_PATH.Talent["Orlando2"]["UpgradeMasteryText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeMasteryOrlando2"
          }
          , ["Oddrema"] = {
            ["Text"] = TTH_PATH.Talent["Oddrema"]["UpgradeMasteryText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeMasteryOddrema"
          }
          , ["LordHaart"] = {
            ["Text"] = TTH_PATH.Talent["LordHaart"]["UpgradeMasteryText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeMasteryLordHaart"
          }
          , ["Maximus"] = {
            ["Text"] = TTH_PATH.Talent["Maximus"]["UpgradeMasteryText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeMasteryMaximus"
          }
          , ["Kraal"] = {
            ["Text"] = TTH_PATH.Talent["Kraal"]["UpgradeMasteryText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeMasteryKraal"
          }
          , ["Christian"] = {
            ["Text"] = TTH_PATH.Talent["Christian"]["UpgradeMasteryText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeMasteryChristian"
          }
        }
        , [TTH_ENUM.FuncUpgradeShantiri] = {
          ["Orlando2"] = {
            ["Text"] = TTH_PATH.Talent["Orlando2"]["UpgradeShantiriText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeShantiriOrlando2"
          }
          , ["Oddrema"] = {
            ["Text"] = TTH_PATH.Talent["Oddrema"]["UpgradeShantiriText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeShantiriOddrema"
          }
          , ["LordHaart"] = {
            ["Text"] = TTH_PATH.Talent["LordHaart"]["UpgradeShantiriText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeShantiriLordHaart"
          }
          , ["Maximus"] = {
            ["Text"] = TTH_PATH.Talent["Maximus"]["UpgradeShantiriText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeShantiriMaximus"
          }
          , ["Kraal"] = {
            ["Text"] = TTH_PATH.Talent["Kraal"]["UpgradeShantiriText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeShantiriKraal"
          }
          , ["Christian"] = {
            ["Text"] = TTH_PATH.Talent["Christian"]["UpgradeShantiriText"]
            , [TTH_ENUM.FuncAlways] = "TTH_TALENT.upgradeShantiriChristian"
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
            , [TTH_ENUM.FuncNotAtGate] = "TTH_ARTI.active103"
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
            , ["NeedWear"] = TTH_ENUM.Yes
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
          [HERO_SKILL_RECRUITMENT] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_RECRUITMENT]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active028"
          }
          , [HERO_SKILL_ESTATES] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_ESTATES]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active029"
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
          , [HERO_SKILL_TOUGHNESS] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_TOUGHNESS]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active039"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active039"
          }
          , [HERO_SKILL_DEATH_TREAD] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DEATH_TREAD]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active099"
          }
          , [HERO_SKILL_HAUNT_MINE] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_HAUNT_MINE]["Text"]
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active110"
          }
          , [HERO_SKILL_DWARVEN_LUCK] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DWARVEN_LUCK]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active159"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active159"
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
          , [HERO_SKILL_DEAD_LUCK] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_DEAD_LUCK]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active103"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active103"
          }
          , [HERO_SKILL_TWILIGHT] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_TWILIGHT]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active109"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active109"
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
          , [HERO_SKILL_RAISE_ARCHERS] = {
            ["Text"] = TTH_PATH.Perk[HERO_SKILL_RAISE_ARCHERS]["Text"]
            , [TTH_ENUM.FuncAtGate] = "TTH_PERK.active061"
            , [TTH_ENUM.FuncNotAtGate] = "TTH_PERK.active061"
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
          , [HERO_SKILL_GRAIL_VISION] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.combatResult080"
          }
        }
        , [TTH_ENUM.FuncDealWeekly] = {
          [HERO_SKILL_ESTATES] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.dealWeekly029"
          }
        }
        , [TTH_ENUM.FuncResetWeekly] = {
          [HERO_SKILL_RECRUITMENT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly028"
          }
          , [HERO_SKILL_ESTATES] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly029"
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
          , [HERO_SKILL_DWARVEN_LUCK] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly159"
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
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetWeekly061"
          }
        }
        , [TTH_ENUM.FuncDealDaily] = {
          [HERO_SKILL_GOBLIN_SUPPORT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.dealDaily182"
          }
        }
        , [TTH_ENUM.FuncResetDaily] = {
          [HERO_SKILL_TOUGHNESS] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily039"
          }
          , [HERO_SKILL_PARIAH] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily083"
          }
          , [HERO_SKILL_TWILIGHT] = {
            [TTH_ENUM.FuncAlways] = "TTH_PERK.resetDaily109"
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

    -- 宝物
      TTH_TABLE.Artifact = {
        [ARTIFACT_SWORD_OF_RUINS] = {
          ["Id"] = ARTIFACT_SWORD_OF_RUINS
          , ["Text"] = "/Text/TTH/Artifact/001-SwordOfRuins/Text.txt"
        }
        , [ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING] = {
          ["Id"] = ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING
          , ["Text"] = "/Text/TTH/Artifact/002-GreatAxeOfGiantSlaying/Text.txt"
        }
        , [ARTIFACT_WAND_OF_X] = {
          ["Id"] = ARTIFACT_WAND_OF_X
          , ["Text"] = "/Text/TTH/Artifact/003-WandOfX/Text.txt"
        }
        , [ARTIFACT_UNICORN_HORN_BOW] = {
          ["Id"] = ARTIFACT_UNICORN_HORN_BOW
          , ["Text"] = "/Text/TTH/Artifact/004-UnicornHornBow/Text.txt"
        }
        , [ARTIFACT_TITANS_TRIDENT] = {
          ["Id"] = ARTIFACT_TITANS_TRIDENT
          , ["Text"] = "/Text/TTH/Artifact/005-TitansTrident/Text.txt"
        }
        , [ARTIFACT_STAFF_OF_VEXINGS] = {
          ["Id"] = ARTIFACT_STAFF_OF_VEXINGS
          , ["Text"] = "/Text/TTH/Artifact/006-StaffOfVexings/Text.txt"
        }
        , [ARTIFACT_SHACKLES_OF_WAR] = {
          ["Id"] = ARTIFACT_SHACKLES_OF_WAR
          , ["Text"] = "/Text/TTH/Artifact/007-ShacklesOfWar/Text.txt"
        }
        , [ARTIFACT_FOUR_LEAF_CLOVER] = {
          ["Id"] = ARTIFACT_FOUR_LEAF_CLOVER
          , ["Text"] = "/Text/TTH/Artifact/008-FourLeafClover/Text.txt"
        }
        , [ARTIFACT_ICEBERG_SHIELD] = {
          ["Id"] = ARTIFACT_ICEBERG_SHIELD
          , ["Text"] = "/Text/TTH/Artifact/009-IcebergShield/Text.txt"
        }
        , [ARTIFACT_GOLDEN_SEXTANT] = {
          ["Id"] = ARTIFACT_GOLDEN_SEXTANT
          , ["Text"] = "/Text/TTH/Artifact/010-GoldenSextant/Text.txt"
        }
        , [ARTIFACT_CROWN_OF_COURAGE] = {
          ["Id"] = ARTIFACT_CROWN_OF_COURAGE
          , ["Text"] = "/Text/TTH/Artifact/011-CrownOfCourage/Text.txt"
        }
        , [ARTIFACT_CROWN_OF_MANY_EYES] = {
          ["Id"] = ARTIFACT_CROWN_OF_MANY_EYES
          , ["Text"] = "/Text/TTH/Artifact/012-CrownOfManyEyes/Text.txt"
        }
        , [ARTIFACT_PLATE_MAIL_OF_STABILITY] = {
          ["Id"] = ARTIFACT_PLATE_MAIL_OF_STABILITY
          , ["Text"] = "/Text/TTH/Artifact/013-PlateMailOfStability/Text.txt"
        }
        , [ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD] = {
          ["Id"] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
          , ["Text"] = "/Text/TTH/Artifact/014-BreastplateOfPetrifiedWood/Text.txt"
        }
        , [ARTIFACT_PEDANT_OF_MASTERY] = {
          ["Id"] = ARTIFACT_PEDANT_OF_MASTERY
          , ["Text"] = "/Text/TTH/Artifact/015-PedantOfMastery/Text.txt"
        }
        , [ARTIFACT_NECKLACE_OF_BRAVERY] = {
          ["Id"] = ARTIFACT_NECKLACE_OF_BRAVERY
          , ["Text"] = "/Text/TTH/Artifact/016-NecklaceOfBravery/Text.txt"
        }
        , [ARTIFACT_WEREWOLF_CLAW_NECKLACE] = {
          ["Id"] = ARTIFACT_WEREWOLF_CLAW_NECKLACE
          , ["Text"] = "/Text/TTH/Artifact/017-WerewolfClawNecklace/Text.txt"
        }
        , [ARTIFACT_EVERCOLD_ICICLE] = {
          ["Id"] = ARTIFACT_EVERCOLD_ICICLE
          , ["Text"] = "/Text/TTH/Artifact/018-EvercoldIcicle/Text.txt"
        }
        , [ARTIFACT_NECKLACE_OF_POWER] = {
          ["Id"] = ARTIFACT_NECKLACE_OF_POWER
          , ["Text"] = "/Text/TTH/Artifact/019-NecklaceOfPower/Text.txt"
        }
        , [ARTIFACT_RING_OF_LIGHTING_PROTECTION] = {
          ["Id"] = ARTIFACT_RING_OF_LIGHTING_PROTECTION
          , ["Text"] = "/Text/TTH/Artifact/020-RingOfLightingProtection/Text.txt"
        }
        , [ARTIFACT_RING_OF_LIFE] = {
          ["Id"] = ARTIFACT_RING_OF_LIFE
          , ["Text"] = "/Text/TTH/Artifact/021-RingOfLife/Text.txt"
        }
        , [ARTIFACT_RING_OF_HASTE] = {
          ["Id"] = ARTIFACT_RING_OF_HASTE
          , ["Text"] = "/Text/TTH/Artifact/022-RingOfHaste/Text.txt"
        }
        , [ARTIFACT_NIGHTMARISH_RING] = {
          ["Id"] = ARTIFACT_NIGHTMARISH_RING
          , ["Text"] = "/Text/TTH/Artifact/023-NightmarishRing/Text.txt"
        }
        , [ARTIFACT_BOOTS_OF_SPEED] = {
          ["Id"] = ARTIFACT_BOOTS_OF_SPEED
          , ["Text"] = "/Text/TTH/Artifact/024-BootsOfSpeed/Text.txt"
        }
        , [ARTIFACT_GOLDEN_HORSESHOE] = {
          ["Id"] = ARTIFACT_GOLDEN_HORSESHOE
          , ["Text"] = "/Text/TTH/Artifact/025-GoldenHorseshoe/Text.txt"
        }
        , [ARTIFACT_WAYFARER_BOOTS] = {
          ["Id"] = ARTIFACT_WAYFARER_BOOTS
          , ["Text"] = "/Text/TTH/Artifact/026-WayfarerBoots/Text.txt"
        }
        , [ARTIFACT_BOOTS_OF_INTERFERENCE] = {
          ["Id"] = ARTIFACT_BOOTS_OF_INTERFERENCE
          , ["Text"] = "/Text/TTH/Artifact/027-BootsOfInterference/Text.txt"
        }
        , [ARTIFACT_ENDLESS_SACK_OF_GOLD] = {
          ["Id"] = ARTIFACT_ENDLESS_SACK_OF_GOLD
          , ["Text"] = "/Text/TTH/Artifact/028-EndlessSackOfGold/Text.txt"
        }
        , [ARTIFACT_ENDLESS_BAG_OF_GOLD] = {
          ["Id"] = ARTIFACT_ENDLESS_BAG_OF_GOLD
          , ["Text"] = "/Text/TTH/Artifact/029-EndlessBagOfGold/Text.txt"
        }
        , [ARTIFACT_ANGEL_WINGS] = {
          ["Id"] = ARTIFACT_ANGEL_WINGS
          , ["Text"] = "/Text/TTH/Artifact/030-AngelWings/Text.txt"
        }
        , [ARTIFACT_LION_HIDE_CAPE] = {
          ["Id"] = ARTIFACT_LION_HIDE_CAPE
          , ["Text"] = "/Text/TTH/Artifact/031-LionHideCape/Text.txt"
        }
        , [ARTIFACT_PHOENIX_FEATHER_CAPE] = {
          ["Id"] = ARTIFACT_PHOENIX_FEATHER_CAPE
          , ["Text"] = "/Text/TTH/Artifact/032-PhoenixFeatherCape/Text.txt"
        }
        , [ARTIFACT_CLOAK_OF_MOURNING] = {
          ["Id"] = ARTIFACT_CLOAK_OF_MOURNING
          , ["Text"] = "/Text/TTH/Artifact/033-CloakOfMourning/Text.txt"
        }
        , [ARTIFACT_HELM_OF_ENLIGHTMENT] = {
          ["Id"] = ARTIFACT_HELM_OF_ENLIGHTMENT
          , ["Text"] = "/Text/TTH/Artifact/034-HelmOfEnlightment/Text.txt"
        }
        , [ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT] = {
          ["Id"] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
          , ["Text"] = "/Text/TTH/Artifact/035-ChainMailOfEnlightment/Text.txt"
        }
        , [ARTIFACT_DRAGON_SCALE_ARMOR] = {
          ["Id"] = ARTIFACT_DRAGON_SCALE_ARMOR
          , ["Text"] = "/Text/TTH/Artifact/036-DragonScaleArmor/Text.txt"
        }
        , [ARTIFACT_DRAGON_SCALE_SHIELD] = {
          ["Id"] = ARTIFACT_DRAGON_SCALE_SHIELD
          , ["Text"] = "/Text/TTH/Artifact/037-DragonScaleShield/Text.txt"
        }
        , [ARTIFACT_DRAGON_BONE_GRAVES] = {
          ["Id"] = ARTIFACT_DRAGON_BONE_GRAVES
          , ["Text"] = "/Text/TTH/Artifact/038-DragonBoneGraves/Text.txt"
        }
        , [ARTIFACT_DRAGON_WING_MANTLE] = {
          ["Id"] = ARTIFACT_DRAGON_WING_MANTLE
          , ["Text"] = "/Text/TTH/Artifact/039-DragonWingMantle/Text.txt"
        }
        , [ARTIFACT_DRAGON_TEETH_NECKLACE] = {
          ["Id"] = ARTIFACT_DRAGON_TEETH_NECKLACE
          , ["Text"] = "/Text/TTH/Artifact/040-DragonTeethNecklace/Text.txt"
        }
        , [ARTIFACT_DRAGON_TALON_CROWN] = {
          ["Id"] = ARTIFACT_DRAGON_TALON_CROWN
          , ["Text"] = "/Text/TTH/Artifact/041-DragonTalonCrown/Text.txt"
        }
        , [ARTIFACT_DRAGON_EYE_RING] = {
          ["Id"] = ARTIFACT_DRAGON_EYE_RING
          , ["Text"] = "/Text/TTH/Artifact/042-DragonEyeRing/Text.txt"
        }
        , [ARTIFACT_DRAGON_FLAME_TONGUE] = {
          ["Id"] = ARTIFACT_DRAGON_FLAME_TONGUE
          , ["Text"] = "/Text/TTH/Artifact/043-DragonFlameTongue/Text.txt"
        }
        , [ARTIFACT_ROBE_OF_MAGI] = {
          ["Id"] = ARTIFACT_ROBE_OF_MAGI
          , ["Text"] = "/Text/TTH/Artifact/044-RobeOfMagi/Text.txt"
        }
        , [ARTIFACT_STAFF_OF_MAGI] = {
          ["Id"] = ARTIFACT_STAFF_OF_MAGI
          , ["Text"] = "/Text/TTH/Artifact/045-StaffOfMagi/Text.txt"
        }
        , [ARTIFACT_CROWN_OF_MAGI] = {
          ["Id"] = ARTIFACT_CROWN_OF_MAGI
          , ["Text"] = "/Text/TTH/Artifact/046-CrownOfMagi/Text.txt"
        }
        , [ARTIFACT_RING_OF_MAGI] = {
          ["Id"] = ARTIFACT_RING_OF_MAGI
          , ["Text"] = "/Text/TTH/Artifact/047-RingOfMagi/Text.txt"
        }
        , [ARTIFACT_DWARVEN_MITHRAL_CUIRASS] = {
          ["Id"] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
          , ["Text"] = "/Text/TTH/Artifact/048-DwarvenMithralCuirass/Text.txt"
        }
        , [ARTIFACT_DWARVEN_MITHRAL_GREAVES] = {
          ["Id"] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
          , ["Text"] = "/Text/TTH/Artifact/049-DwarvenMithralGreaves/Text.txt"
        }
        , [ARTIFACT_DWARVEN_MITHRAL_HELMET] = {
          ["Id"] = ARTIFACT_DWARVEN_MITHRAL_HELMET
          , ["Text"] = "/Text/TTH/Artifact/050-DwarvenMithralHelmet/Text.txt"
        }
        , [ARTIFACT_DWARVEN_MITHRAL_SHIELD] = {
          ["Id"] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
          , ["Text"] = "/Text/TTH/Artifact/051-DwarvenMithralShield/Text.txt"
        }
        , [ARTIFACT_SCROLL_OF_SPELL_X] = {
          ["Id"] = ARTIFACT_SCROLL_OF_SPELL_X
          , ["Text"] = "/Text/TTH/Artifact/052-ScrollOfSpellX/Text.txt"
        }
        , [ARTIFACT_GRAAL] = {
          ["Id"] = ARTIFACT_GRAAL
          , ["Text"] = "/Text/TTH/Artifact/053-Graal/Text.txt"
        }
        , [ARTIFACT_BOOTS_OF_LEVITATION] = {
          ["Id"] = ARTIFACT_BOOTS_OF_LEVITATION
          , ["Text"] = "/Text/TTH/Artifact/054-BootsOfLevitation/Text.txt"
        }
        , [ARTIFACT_SKULL_HELMET] = {
          ["Id"] = ARTIFACT_SKULL_HELMET
          , ["Text"] = "/Text/TTH/Artifact/055-SkullHelmet/Text.txt"
        }
        , [ARTIFACT_VALORIOUS_ARMOR] = {
          ["Id"] = ARTIFACT_VALORIOUS_ARMOR
          , ["Text"] = "/Text/TTH/Artifact/056-ValoriousArmor/Text.txt"
        }
        , [ARTIFACT_BOOTS_OF_SWIFTNESS] = {
          ["Id"] = ARTIFACT_BOOTS_OF_SWIFTNESS
          , ["Text"] = "/Text/TTH/Artifact/057-BootsOfSwiftness/Text.txt"
        }
        , [ARTIFACT_MOONBLADE] = {
          ["Id"] = ARTIFACT_MOONBLADE
          , ["Text"] = "/Text/TTH/Artifact/058-Moonblade/Text.txt"
        }
        , [ARTIFACT_RING_OF_CELERITY] = {
          ["Id"] = ARTIFACT_RING_OF_CELERITY
          , ["Text"] = "/Text/TTH/Artifact/059-RingOfCelerity/Text.txt"
        }
        , [ARTIFACT_BAND_OF_CONJURER] = {
          ["Id"] = ARTIFACT_BAND_OF_CONJURER
          , ["Text"] = "/Text/TTH/Artifact/060-BandOfConjurer/Text.txt"
        }
        , [ARTIFACT_EARTHSLIDERS] = {
          ["Id"] = ARTIFACT_EARTHSLIDERS
          , ["Text"] = "/Text/TTH/Artifact/061-EarthSliders/Text.txt"
        }
        , [ARTIFACT_RIGID_MANTLE] = {
          ["Id"] = ARTIFACT_RIGID_MANTLE
          , ["Text"] = "/Text/TTH/Artifact/062-RigidMantle/Text.txt"
        }
        , [ARTIFACT_RING_OF_THE_SHADOWBRAND] = {
          ["Id"] = ARTIFACT_RING_OF_THE_SHADOWBRAND
          , ["Text"] = "/Text/TTH/Artifact/063-JinxingBand/Text.txt"
        }
        , [ARTIFACT_BONESTUDDED_LEATHER] = {
          ["Id"] = ARTIFACT_BONESTUDDED_LEATHER
          , ["Text"] = "/Text/TTH/Artifact/064-BonestuddedLeather/Text.txt"
        }
        , [ARTIFACT_WISPERING_RING] = {
          ["Id"] = ARTIFACT_WISPERING_RING
          , ["Text"] = "/Text/TTH/Artifact/065-WisperingRing/Text.txt"
        }
        , [ARTIFACT_HELM_OF_CHAOS] = {
          ["Id"] = ARTIFACT_HELM_OF_CHAOS
          , ["Text"] = "/Text/TTH/Artifact/066-HelmOfChaos/Text.txt"
        }
        , [ARTIFACT_TWISTING_NEITHER] = {
          ["Id"] = ARTIFACT_TWISTING_NEITHER
          , ["Text"] = "/Text/TTH/Artifact/067-TwistingNeither/Text.txt"
        }
        , [ARTIFACT_ANGELIC_ALLIANCE] = {
          ["Id"] = ARTIFACT_ANGELIC_ALLIANCE
          , ["Text"] = "/Text/TTH/Artifact/068-AngelicAlliance/Text.txt"
        }
        , [ARTIFACT_SHAWL_OF_GREAT_LICH] = {
          ["Id"] = ARTIFACT_SHAWL_OF_GREAT_LICH
          , ["Text"] = "/Text/TTH/Artifact/069-ShawlOfGreatLich/Text.txt"
        }
        , [ARTIFACT_RING_OF_DEATH] = {
          ["Id"] = ARTIFACT_RING_OF_DEATH
          , ["Text"] = "/Text/TTH/Artifact/070-RingOfDeath/Text.txt"
        }
        , [ARTIFACT_NECROMANCER_PENDANT] = {
          ["Id"] = ARTIFACT_NECROMANCER_PENDANT
          , ["Text"] = "/Text/TTH/Artifact/071-NecromancerPendant/Text.txt"
        }
        , [ARTIFACT_FREIDA] = {
          ["Id"] = ARTIFACT_FREIDA
          , ["Text"] = "/Text/TTH/Artifact/072-Freida/Text.txt"
        }
        , [ARTIFACT_JINXING_BAND] = {
          ["Id"] = ARTIFACT_JINXING_BAND
          , ["Text"] = "/Text/TTH/Artifact/073-RingOfTheShadowbrand/Text.txt"
        }
        , [ARTIFACT_OGRE_CLUB] = {
          ["Id"] = ARTIFACT_OGRE_CLUB
          , ["Text"] = "/Text/TTH/Artifact/074-OgreClub/Text.txt"
        }
        , [ARTIFACT_OGRE_SHIELD] = {
          ["Id"] = ARTIFACT_OGRE_SHIELD
          , ["Text"] = "/Text/TTH/Artifact/075-OgreShield/Text.txt"
        }
        , [ARTIFACT_TOME_OF_DESTRUCTION] = {
          ["Id"] = ARTIFACT_TOME_OF_DESTRUCTION
          , ["Text"] = "/Text/TTH/Artifact/076-TomeOfDestruction/Text.txt"
        }
        , [ARTIFACT_TOME_OF_LIGHT_MAGIC] = {
          ["Id"] = ARTIFACT_TOME_OF_LIGHT_MAGIC
          , ["Text"] = "/Text/TTH/Artifact/077-TomeOfLightMagic/Text.txt"
        }
        , [ARTIFACT_TOME_OF_DARK_MAGIC] = {
          ["Id"] = ARTIFACT_TOME_OF_DARK_MAGIC
          , ["Text"] = "/Text/TTH/Artifact/078-TomeOfDarkMagic/Text.txt"
        }
        , [ARTIFACT_TOME_OF_SUMMONING_MAGIC] = {
          ["Id"] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
          , ["Text"] = "/Text/TTH/Artifact/079-TomeOfSummoningMagic/Text.txt"
        }
        , [ARTIFACT_BEGINNER_MAGIC_STICK] = {
          ["Id"] = ARTIFACT_BEGINNER_MAGIC_STICK
          , ["Text"] = "/Text/TTH/Artifact/080-BeginnerMagicStick/Text.txt"
        }
        , [ARTIFACT_RUNIC_WAR_AXE] = {
          ["Id"] = ARTIFACT_RUNIC_WAR_AXE
          , ["Text"] = "/Text/TTH/Artifact/081-RunicWarAxe/Text.txt"
        }
        , [ARTIFACT_RUNIC_WAR_HARNESS] = {
          ["Id"] = ARTIFACT_RUNIC_WAR_HARNESS
          , ["Text"] = "/Text/TTH/Artifact/082-RunicWarHarness/Text.txt"
        }
        , [ARTIFACT_SKULL_OF_MARKAL] = {
          ["Id"] = ARTIFACT_SKULL_OF_MARKAL
          , ["Text"] = "/Text/TTH/Artifact/083-SkullOfMarkal/Text.txt"
        }
        , [ARTIFACT_BEARHIDE_WRAPS] = {
          ["Id"] = ARTIFACT_BEARHIDE_WRAPS
          , ["Text"] = "/Text/TTH/Artifact/084-BearhideWraps/Text.txt"
        }
        , [ARTIFACT_DWARVEN_SMITHY_HUMMER] = {
          ["Id"] = ARTIFACT_DWARVEN_SMITHY_HUMMER
          , ["Text"] = "/Text/TTH/Artifact/085-DwarvenSmithyHummer/Text.txt"
        }
        , [ARTIFACT_RUNE_OF_FLAME] = {
          ["Id"] = ARTIFACT_RUNE_OF_FLAME
          , ["Text"] = "/Text/TTH/Artifact/086-RuneOfFlame/Text.txt"
        }
        , [ARTIFACT_TAROT_DECK] = {
          ["Id"] = ARTIFACT_TAROT_DECK
          , ["Text"] = "/Text/TTH/Artifact/087-TarotDeck/Text.txt"
        }
        , [ARTIFACT_CROWN_OF_LEADER] = {
          ["Id"] = ARTIFACT_CROWN_OF_LEADER
          , ["Text"] = "/Text/TTH/Artifact/088-CrownOfLeader/Text.txt"
        }
        , [ARTIFACT_MASK_OF_DOPPELGANGER] = {
          ["Id"] = ARTIFACT_MASK_OF_DOPPELGANGER
          , ["Text"] = "/Text/TTH/Artifact/089-MaskOfDoppelganger/Text.txt"
        }
        , [ARTIFACT_EDGE_OF_BALANCE] = {
          ["Id"] = ARTIFACT_EDGE_OF_BALANCE
          , ["Text"] = "/Text/TTH/Artifact/090-EdgeOfBalance/Text.txt"
        }
        , [ARTIFACT_RING_OF_MACHINE_AFFINITY] = {
          ["Id"] = ARTIFACT_RING_OF_MACHINE_AFFINITY
          , ["Text"] = "/Text/TTH/Artifact/091-RingOfMachineAffinity/Text.txt"
        }
        , [ARTIFACT_HORN_OF_PLENTY] = {
          ["Id"] = ARTIFACT_HORN_OF_PLENTY
          , ["Text"] = "/Text/TTH/Artifact/092-HornOfPlenty/Text.txt"
        }
        , [ARTIFACT_RING_OF_UNSUMMONING] = {
          ["Id"] = ARTIFACT_RING_OF_UNSUMMONING
          , ["Text"] = "/Text/TTH/Artifact/093-RingOfUnsummoning/Text.txt"
        }
        , [ARTIFACT_BOOK_OF_POWER] = {
          ["Id"] = ARTIFACT_BOOK_OF_POWER
          , ["Text"] = "/Text/TTH/Artifact/094-BookOfPower/Text.txt"
        }
        , [ARTIFACT_TREEBORN_QUIVER] = {
          ["Id"] = ARTIFACT_TREEBORN_QUIVER
          , ["Text"] = "/Text/TTH/Artifact/095-TreebornQuiver/Text.txt"
        }
        , [ARTIFACT_PRINCESS] = {
          ["Id"] = ARTIFACT_PRINCESS
          , ["Text"] = "/Text/TTH/Artifact/096-Princess/Text.txt"
        }
        , [ARTIFACT_RES_WOOD] = {
          ["Id"] = ARTIFACT_RES_WOOD
          , ["Text"] = "/Text/TTH/Artifact/097-ResWood/Text.txt"
        }
        , [ARTIFACT_RES_BASIC] = {
          ["Id"] = ARTIFACT_RES_BASIC
          , ["Text"] = "/Text/TTH/Artifact/098-ResBasic/Text.txt"
        }
        , [ARTIFACT_RES_ADVANCED] = {
          ["Id"] = ARTIFACT_RES_ADVANCED
          , ["Text"] = "/Text/TTH/Artifact/099-ResAdvanced/Text.txt"
        }
        , [ARTIFACT_RES_CRYSTAL] = {
          ["Id"] = ARTIFACT_RES_CRYSTAL
          , ["Text"] = "/Text/TTH/Artifact/100-ResCrystal/Text.txt"
        }
        , [ARTIFACT_PENDANT_OF_BLIND] = {
          ["Id"] = ARTIFACT_PENDANT_OF_BLIND
          , ["Text"] = "/Text/TTH/Artifact/101-PendantOfBlind/Text.txt"
        }
        , [ARTIFACT_GEM_OF_PHANTOM] = {
          ["Id"] = ARTIFACT_GEM_OF_PHANTOM
          , ["Text"] = "/Text/TTH/Artifact/102-GemOfPhantom/Text.txt"
        }
        , [ARTIFACT_DIMENSION_DOOR] = {
          ["Id"] = ARTIFACT_DIMENSION_DOOR
          , ["Text"] = "/Text/TTH/Artifact/103-DimensionDoor/Text.txt"
        }
        , [ARTIFACT_LEGION_BASIC] = {
          ["Id"] = ARTIFACT_LEGION_BASIC
          , ["Text"] = "/Text/TTH/Artifact/104-LegionBasic/Text.txt"
        }
        , [ARTIFACT_LEGION_T3] = {
          ["Id"] = ARTIFACT_LEGION_T3
          , ["Text"] = "/Text/TTH/Artifact/105-LegionT3/Text.txt"
        }
        , [ARTIFACT_DRUM_OF_CHARGE] = {
          ["Id"] = ARTIFACT_DRUM_OF_CHARGE
          , ["Text"] = "/Text/TTH/Artifact/106-DrumOfCharge/Text.txt"
        }
        , [ARTIFACT_LEGION_T5] = {
          ["Id"] = ARTIFACT_LEGION_T5
          , ["Text"] = "/Text/TTH/Artifact/107-LegionT5/Text.txt"
        }
        , [ARTIFACT_LEGION_ADVANCED] = {
          ["Id"] = ARTIFACT_LEGION_ADVANCED
          , ["Text"] = "/Text/TTH/Artifact/108-LegionAdvanced/Text.txt"
        }
        , [ARTIFACT_LEGION_EXPERT] = {
          ["Id"] = ARTIFACT_LEGION_EXPERT
          , ["Text"] = "/Text/TTH/Artifact/109-LegionExpert/Text.txt"
        }
        , [ARTIFACT_STEADFAST] = {
          ["Id"] = ARTIFACT_STEADFAST
          , ["Text"] = "/Text/TTH/Artifact/110-Steadfast/Text.txt"
        }
        , [ARTIFACT_BUCKLER] = {
          ["Id"] = ARTIFACT_BUCKLER
          , ["Text"] = "/Text/TTH/Artifact/111-Buckler/Text.txt"
        }
        , [ARTIFACT_REINCARNATION] = {
          ["Id"] = ARTIFACT_REINCARNATION
          , ["Text"] = "/Text/TTH/Artifact/112-Reincarnation/Text.txt"
        }
        , [ARTIFACT_PENDANT_OF_STARDUST] = {
          ["Id"] = ARTIFACT_PENDANT_OF_STARDUST
          , ["Text"] = "/Text/TTH/Artifact/113-PendantOfStardust/Text.txt"
        }
        , [ARTIFACT_CURSE_SHOULDER] = {
          ["Id"] = ARTIFACT_CURSE_SHOULDER
          , ["Text"] = "/Text/TTH/Artifact/114-CurseShoulder/Text.txt"
        }
        , [ARTIFACT_INHERITANCE] = {
          ["Id"] = ARTIFACT_INHERITANCE
          , ["Text"] = "/Text/TTH/Artifact/115-Inheritance/Text.txt"
        }
        , [ARTIFACT_MONK_01] = {
          ["Id"] = ARTIFACT_MONK_01
          , ["Text"] = "/Text/TTH/Artifact/116-Monk01/Text.txt"
        }
        , [ARTIFACT_MONK_02] = {
          ["Id"] = ARTIFACT_MONK_02
          , ["Text"] = "/Text/TTH/Artifact/117-Monk02/Text.txt"
        }
        , [ARTIFACT_MONK_03] = {
          ["Id"] = ARTIFACT_MONK_03
          , ["Text"] = "/Text/TTH/Artifact/118-Monk03/Text.txt"
        }
        , [ARTIFACT_MONK_04] = {
          ["Id"] = ARTIFACT_MONK_04
          , ["Text"] = "/Text/TTH/Artifact/119-Monk04/Text.txt"
        }
        , [ARTIFACT_GUARDIAN_01] = {
          ["Id"] = ARTIFACT_GUARDIAN_01
          , ["Text"] = "/Text/TTH/Artifact/120-Guardian01/Text.txt"
        }
        , [ARTIFACT_GUARDIAN_02] = {
          ["Id"] = ARTIFACT_GUARDIAN_02
          , ["Text"] = "/Text/TTH/Artifact/121-Guardian02/Text.txt"
        }
        , [ARTIFACT_GUARDIAN_03] = {
          ["Id"] = ARTIFACT_GUARDIAN_03
          , ["Text"] = "/Text/TTH/Artifact/122-Guardian03/Text.txt"
        }
        , [ARTIFACT_DRACONIC] = {
          ["Id"] = ARTIFACT_DRACONIC
          , ["Text"] = "/Text/TTH/Artifact/123-Draconic/Text.txt"
        }
        , [ARTIFACT_SENTINEL] = {
          ["Id"] = ARTIFACT_SENTINEL
          , ["Text"] = "/Text/TTH/Artifact/124-Sentinel/Text.txt"
        }
        , [ARTIFACT_EIGHTFOLD] = {
          ["Id"] = ARTIFACT_EIGHTFOLD
          , ["Text"] = "/Text/TTH/Artifact/125-Eightfold/Text.txt"
        }
        , [ARTIFACT_CODEX] = {
          ["Id"] = ARTIFACT_CODEX
          , ["Text"] = "/Text/TTH/Artifact/126-Codex/Text.txt"
        }
        , [ARTIFACT_PIRATE_HAT] = {
          ["Id"] = ARTIFACT_PIRATE_HAT
          , ["Text"] = "/Text/TTH/Artifact/127-PirateHat/Text.txt"
        }
        , [ARTIFACT_PIRATE_VEST] = {
          ["Id"] = ARTIFACT_PIRATE_VEST
          , ["Text"] = "/Text/TTH/Artifact/128-PirateVest/Text.txt"
        }
        , [ARTIFACT_PIRATE_RING] = {
          ["Id"] = ARTIFACT_PIRATE_RING
          , ["Text"] = "/Text/TTH/Artifact/129-PirateRing/Text.txt"
        }
        , [ARTIFACT_PIRATE_HOOK] = {
          ["Id"] = ARTIFACT_PIRATE_HOOK
          , ["Text"] = "/Text/TTH/Artifact/130-PirateHook/Text.txt"
        }
        , [ARTIFACT_PIRATE_BOOTS] = {
          ["Id"] = ARTIFACT_PIRATE_BOOTS
          , ["Text"] = "/Text/TTH/Artifact/131-PirateBoots/Text.txt"
        }
        , [ARTIFACT_PIRATE_CHARM] = {
          ["Id"] = ARTIFACT_PIRATE_CHARM
          , ["Text"] = "/Text/TTH/Artifact/132-PirateCharm/Text.txt"
        }
        , [ARTIFACT_MEDICAL01] = {
          ["Id"] = ARTIFACT_MEDICAL01
          , ["Text"] = "/Text/TTH/Artifact/133-Medical01/Text.txt"
        }
        , [ARTIFACT_MEDICAL02] = {
          ["Id"] = ARTIFACT_MEDICAL02
          , ["Text"] = "/Text/TTH/Artifact/134-Medical02/Text.txt"
        }
        , [ARTIFACT_MEDICAL03] = {
          ["Id"] = ARTIFACT_MEDICAL03
          , ["Text"] = "/Text/TTH/Artifact/135-Medical03/Text.txt"
        }
        , [ARTIFACT_MEDICAL04] = {
          ["Id"] = ARTIFACT_MEDICAL04
          , ["Text"] = "/Text/TTH/Artifact/136-Medical04/Text.txt"
        }
        , [ARTIFACT_POTION_MANA] = {
          ["Id"] = ARTIFACT_POTION_MANA
          , ["Text"] = "/Text/TTH/Artifact/137-PotionMana/Text.txt"
        }
        , [ARTIFACT_POTION_ENERGY] = {
          ["Id"] = ARTIFACT_POTION_ENERGY
          , ["Text"] = "/Text/TTH/Artifact/138-PotionEnergy/Text.txt"
        }
        , [ARTIFACT_POTION_REVIVE] = {
          ["Id"] = ARTIFACT_POTION_REVIVE
          , ["Text"] = "/Text/TTH/Artifact/139-PotionRevive/Text.txt"
        }
        , [ARTIFACT_BOOK_A1] = {
          ["Id"] = ARTIFACT_BOOK_A1
          , ["Text"] = "/Text/TTH/Artifact/140-BookA1/Text.txt"
        }
        , [ARTIFACT_BOOK_A2] = {
          ["Id"] = ARTIFACT_BOOK_A2
          , ["Text"] = "/Text/TTH/Artifact/141-BookA2/Text.txt"
        }
        , [ARTIFACT_BOOK_A3] = {
          ["Id"] = ARTIFACT_BOOK_A3
          , ["Text"] = "/Text/TTH/Artifact/142-BookA3/Text.txt"
        }
        , [ARTIFACT_BOOK_A4] = {
          ["Id"] = ARTIFACT_BOOK_A4
          , ["Text"] = "/Text/TTH/Artifact/143-BookA4/Text.txt"
        }
        , [ARTIFACT_BOOK_D1] = {
          ["Id"] = ARTIFACT_BOOK_D1
          , ["Text"] = "/Text/TTH/Artifact/144-BookD1/Text.txt"
        }
        , [ARTIFACT_BOOK_D2] = {
          ["Id"] = ARTIFACT_BOOK_D2
          , ["Text"] = "/Text/TTH/Artifact/145-BookD2/Text.txt"
        }
        , [ARTIFACT_BOOK_D3] = {
          ["Id"] = ARTIFACT_BOOK_D3
          , ["Text"] = "/Text/TTH/Artifact/146-BookD3/Text.txt"
        }
        , [ARTIFACT_BOOK_OF_MALASSA] = {
          ["Id"] = ARTIFACT_BOOK_OF_MALASSA
          , ["Text"] = "/Text/TTH/Artifact/147-BookOfMalassa/Text.txt"
        }
        , [ARTIFACT_BOOK_S1] = {
          ["Id"] = ARTIFACT_BOOK_S1
          , ["Text"] = "/Text/TTH/Artifact/148-BookS1/Text.txt"
        }
        , [ARTIFACT_BOOK_S2] = {
          ["Id"] = ARTIFACT_BOOK_S2
          , ["Text"] = "/Text/TTH/Artifact/149-BookS2/Text.txt"
        }
        , [ARTIFACT_BOOK_S3] = {
          ["Id"] = ARTIFACT_BOOK_S3
          , ["Text"] = "/Text/TTH/Artifact/150-BookS3/Text.txt"
        }
        , [ARTIFACT_BOOK_S4] = {
          ["Id"] = ARTIFACT_BOOK_S4
          , ["Text"] = "/Text/TTH/Artifact/151-BookS4/Text.txt"
        }
        , [ARTIFACT_BOOK_K1] = {
          ["Id"] = ARTIFACT_BOOK_K1
          , ["Text"] = "/Text/TTH/Artifact/152-BookK1/Text.txt"
        }
        , [ARTIFACT_BOOK_K2] = {
          ["Id"] = ARTIFACT_BOOK_K2
          , ["Text"] = "/Text/TTH/Artifact/153-BookK2/Text.txt"
        }
        , [ARTIFACT_BOOK_K3] = {
          ["Id"] = ARTIFACT_BOOK_K3
          , ["Text"] = "/Text/TTH/Artifact/154-BookK3/Text.txt"
        }
        , [ARTIFACT_BOOK_K4] = {
          ["Id"] = ARTIFACT_BOOK_K4
          , ["Text"] = "/Text/TTH/Artifact/155-BookK4/Text.txt"
        }
        , [ARTIFACT_BOOK_R1] = {
          ["Id"] = ARTIFACT_BOOK_R1
          , ["Text"] = "/Text/TTH/Artifact/156-BookR1/Text.txt"
        }
        , [ARTIFACT_BOOK_R2] = {
          ["Id"] = ARTIFACT_BOOK_R2
          , ["Text"] = "/Text/TTH/Artifact/157-BookR2/Text.txt"
        }
        , [ARTIFACT_BOOK_R3] = {
          ["Id"] = ARTIFACT_BOOK_R3
          , ["Text"] = "/Text/TTH/Artifact/158-BookR3/Text.txt"
        }
        , [ARTIFACT_SHANTIRI_01] = {
          ["Id"] = ARTIFACT_SHANTIRI_01
          , ["Text"] = "/Text/TTH/Artifact/159-Shantiri01/Text.txt"
        }
        , [ARTIFACT_SHANTIRI_02] = {
          ["Id"] = ARTIFACT_SHANTIRI_02
          , ["Text"] = "/Text/TTH/Artifact/160-Shantiri02/Text.txt"
        }
        , [ARTIFACT_SHANTIRI_03] = {
          ["Id"] = ARTIFACT_SHANTIRI_03
          , ["Text"] = "/Text/TTH/Artifact/161-Shantiri03/Text.txt"
        }
        , [ARTIFACT_SHANTIRI_04] = {
          ["Id"] = ARTIFACT_SHANTIRI_04
          , ["Text"] = "/Text/TTH/Artifact/162-Shantiri04/Text.txt"
        }
        , [ARTIFACT_SHANTIRI_05] = {
          ["Id"] = ARTIFACT_SHANTIRI_05
          , ["Text"] = "/Text/TTH/Artifact/163-Shantiri05/Text.txt"
        }
        , [ARTIFACT_CLOAK_OF_MALASSA] = {
          ["Id"] = ARTIFACT_CLOAK_OF_MALASSA
          , ["Text"] = "/Text/TTH/Artifact/164-CloakOfMalassa/Text.txt"
        }
        , [ARTIFACT_UPG_AR2] = {
          ["Id"] = ARTIFACT_UPG_AR2
          , ["Text"] = "/Text/TTH/Artifact/165-UpgAr2/Text.txt"
        }
        , [ARTIFACT_SHIELD_OF_WOLF_DUCHY] = {
          ["Id"] = ARTIFACT_SHIELD_OF_WOLF_DUCHY
          , ["Text"] = "/Text/TTH/Artifact/166-ShieldOfWolfDuchy/Text.txt"
        }
        , [ARTIFACT_UPG_HM1] = {
          ["Id"] = ARTIFACT_UPG_HM1
          , ["Text"] = "/Text/TTH/Artifact/167-UpgHm1/Text.txt"
        }
        , [ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT] = {
          ["Id"] = ARTIFACT_HELMET_OF_HEAVENLY_ENLIGHTENMENT
          , ["Text"] = "/Text/TTH/Artifact/168-HelmetOfHeavenlyEnlightenment/Text.txt"
        }
        , [ARTIFACT_RING_OF_HOLY_GRIFFIN] = {
          ["Id"] = ARTIFACT_RING_OF_HOLY_GRIFFIN
          , ["Text"] = "/Text/TTH/Artifact/169-RingOfHolyGriffin/Text.txt"
        }
        , [ARTIFACT_UPG_ST1] = {
          ["Id"] = ARTIFACT_UPG_ST1
          , ["Text"] = "/Text/TTH/Artifact/170-UpgSt1/Text.txt"
        }
        , [ARTIFACT_UPG_ST2] = {
          ["Id"] = ARTIFACT_UPG_ST2
          , ["Text"] = "/Text/TTH/Artifact/171-UpgSt2/Text.txt"
        }
        , [ARTIFACT_UPG_ST3] = {
          ["Id"] = ARTIFACT_UPG_ST3
          , ["Text"] = "/Text/TTH/Artifact/172-UpgSt3/Text.txt"
        }
        , [ARTIFACT_BADGE_OF_SUN_CROSS] = {
          ["Id"] = ARTIFACT_BADGE_OF_SUN_CROSS
          , ["Text"] = "/Text/TTH/Artifact/173-BadgeOfSunCross/Text.txt"
        }
        , [ARTIFACT_PENDANT_OF_INTERFERENCE] = {
          ["Id"] = ARTIFACT_PENDANT_OF_INTERFERENCE
          , ["Text"] = "/Text/TTH/Artifact/174-PendantOfInterference/Text.txt"
        }
        , [ARTIFACT_SPIRIT_OF_OPPRESSION] = {
          ["Id"] = ARTIFACT_SPIRIT_OF_OPPRESSION
          , ["Text"] = "/Text/TTH/Artifact/175-SpiritOfOppression/Text.txt"
        }
        , [ARTIFACT_FIZBIN] = {
          ["Id"] = ARTIFACT_FIZBIN
          , ["Text"] = "/Text/TTH/Artifact/176-Fizbin/Text.txt"
        }
        , [ARTIFACT_FORGING] = {
          ["Id"] = ARTIFACT_FORGING
          , ["Text"] = "/Text/TTH/Artifact/177-Forging/Text.txt"
        }
        , [ARTIFACT_URGASH_01] = {
          ["Id"] = ARTIFACT_URGASH_01
          , ["Text"] = "/Text/TTH/Artifact/178-Urgash01/Text.txt"
        }
        , [ARTIFACT_URGASH_02] = {
          ["Id"] = ARTIFACT_URGASH_02
          , ["Text"] = "/Text/TTH/Artifact/179-Urgash02/Text.txt"
        }
        , [ARTIFACT_RING_OF_FORGOTTEN] = {
          ["Id"] = ARTIFACT_RING_OF_FORGOTTEN
          , ["Text"] = "/Text/TTH/Artifact/180-RingOfForgotten/Text.txt"
        }
        , [ARTIFACT_ELRATH_02] = {
          ["Id"] = ARTIFACT_ELRATH_02
          , ["Text"] = "/Text/TTH/Artifact/181-Elrath02/Text.txt"
        }
        , [ARTIFACT_QUILL_OF_MAYOR] = {
          ["Id"] = ARTIFACT_QUILL_OF_MAYOR
          , ["Text"] = "/Text/TTH/Artifact/182-QuillOfMayor/Text.txt"
        }
        , [ARTIFACT_GOVERNOR_02] = {
          ["Id"] = ARTIFACT_GOVERNOR_02
          , ["Text"] = "/Text/TTH/Artifact/183-Governor02/Text.txt"
        }
        , [ARTIFACT_GEAR_01] = {
          ["Id"] = ARTIFACT_GEAR_01
          , ["Text"] = "/Text/TTH/Artifact/184-Gear01/Text.txt"
        }
        , [ARTIFACT_GEAR_02] = {
          ["Id"] = ARTIFACT_GEAR_02
          , ["Text"] = "/Text/TTH/Artifact/185-Gear02/Text.txt"
        }
        , [ARTIFACT_GEAR_03] = {
          ["Id"] = ARTIFACT_GEAR_03
          , ["Text"] = "/Text/TTH/Artifact/186-Gear03/Text.txt"
        }
        , [ARTIFACT_GEAR_04] = {
          ["Id"] = ARTIFACT_GEAR_04
          , ["Text"] = "/Text/TTH/Artifact/187-Gear04/Text.txt"
        }
        , [ARTIFACT_GEAR_05] = {
          ["Id"] = ARTIFACT_GEAR_05
          , ["Text"] = "/Text/TTH/Artifact/188-Gear05/Text.txt"
        }
        , [ARTIFACT_GEAR_06] = {
          ["Id"] = ARTIFACT_GEAR_06
          , ["Text"] = "/Text/TTH/Artifact/189-Gear06/Text.txt"
        }
        , [ARTIFACT_GEAR_07] = {
          ["Id"] = ARTIFACT_GEAR_07
          , ["Text"] = "/Text/TTH/Artifact/190-Gear07/Text.txt"
        }
        , [ARTIFACT_GEAR_08] = {
          ["Id"] = ARTIFACT_GEAR_08
          , ["Text"] = "/Text/TTH/Artifact/191-Gear08/Text.txt"
        }
        , [ARTIFACT_ORB_AIR] = {
          ["Id"] = ARTIFACT_ORB_AIR
          , ["Text"] = "/Text/TTH/Artifact/192-OrbAir/Text.txt"
        }
        , [ARTIFACT_ORB_EARTH] = {
          ["Id"] = ARTIFACT_ORB_EARTH
          , ["Text"] = "/Text/TTH/Artifact/193-OrbEarth/Text.txt"
        }
        , [ARTIFACT_ORB_FIRE] = {
          ["Id"] = ARTIFACT_ORB_FIRE
          , ["Text"] = "/Text/TTH/Artifact/194-OrbFire/Text.txt"
        }
        , [ARTIFACT_ORB_WATER] = {
          ["Id"] = ARTIFACT_ORB_WATER
          , ["Text"] = "/Text/TTH/Artifact/195-OrbWater/Text.txt"
        }
      }

    -- 宝物送魔法
      TTH_TABLE.Artifact4Magic = {
        [ARTIFACT_PENDANT_OF_BLIND] = {
          ["GiveMagic"] = SPELL_BLIND
        }
      };

    -- 宝物套装属性
      TTH_TABLE.ArtifactSetBonus = {
        [TTH_ENUM.SET_DWARVEN] = {
          ["Component"] = {
            [0] = ARTIFACT_DWARVEN_MITHRAL_CUIRASS
            , [1] = ARTIFACT_DWARVEN_MITHRAL_GREAVES
            , [2] = ARTIFACT_DWARVEN_MITHRAL_HELMET
            , [3] = ARTIFACT_DWARVEN_MITHRAL_SHIELD
          }
          , ["SetBonus"] = {
            [3] = {
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
        }
        , [TTH_ENUM.SET_LIONS] = {
          ["Component"] = {
            [0] = ARTIFACT_CROWN_OF_COURAGE
            , [1] = ARTIFACT_LION_HIDE_CAPE
            , [2] = ARTIFACT_NECKLACE_OF_BRAVERY
          }
          , ["SetBonus"] = {
            [2] = {
              [STAT_ATTACK] = 4
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 0
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
          }
        }
        , [TTH_ENUM.SET_MAGIS] = {
          ["Component"] = {
            [0] = ARTIFACT_ROBE_OF_MAGI
            , [1] = ARTIFACT_STAFF_OF_MAGI
            , [2] = ARTIFACT_CROWN_OF_MAGI
            , [3] = ARTIFACT_RING_OF_MAGI
          }
          , ["SetBonus"] = {
            [3] = {
              [STAT_ATTACK] = 0
              , [STAT_DEFENCE] = 0
              , [STAT_SPELL_POWER] = 6
              , [STAT_KNOWLEDGE] = 0
              , [STAT_LUCK] = 0
              , [STAT_MORALE] = 0
            }
          }
        }
        , [TTH_ENUM.SET_NECROMANCERS] = {
          ["Component"] = {
            [0] = ARTIFACT_CLOAK_OF_MOURNING
            , [1] = ARTIFACT_STAFF_OF_VEXINGS
            , [2] = ARTIFACT_RING_OF_DEATH
            , [3] = ARTIFACT_NECROMANCER_PENDANT
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
        , [TTH_ENUM.SET_NECROMANCERS_PELT] = {
          ["Component"] = {
            [0] = ARTIFACT_CLOAK_OF_MOURNING
            , [1] = ARTIFACT_STAFF_OF_VEXINGS
            , [2] = ARTIFACT_RING_OF_DEATH
            , [3] = ARTIFACT_NECROMANCER_PENDANT
            , [4] = ARTIFACT_SKULL_HELMET
            , [5] = ARTIFACT_SKULL_OF_MARKAL
          }
        }
        , [TTH_ENUM.SET_EDUCATIONAL] = {
          ["Component"] = {
            [0] = ARTIFACT_HELM_OF_ENLIGHTMENT
            , [1] = ARTIFACT_CHAIN_MAIL_OF_ENLIGHTMENT
          }
        }
        , [TTH_ENUM.SET_HUNTERS] = {
          ["Component"] = {
            [0] = ARTIFACT_UNICORN_HORN_BOW
            , [1] = ARTIFACT_TREEBORN_QUIVER
          }
        }
        , [TTH_ENUM.SET_OGRES] = {
          ["Component"] = {
            [0] = ARTIFACT_OGRE_CLUB
            , [1] = ARTIFACT_OGRE_SHIELD
          }
          , ["GiveMagic"] = {
            [2] = SPELL_WARCRY_CALL_OF_BLOOD
          }
        }
        , [TTH_ENUM.SET_RUNIC] = {
          ["Component"] = {
            [0] = ARTIFACT_RUNIC_WAR_AXE
            , [1] = ARTIFACT_RUNIC_WAR_HARNESS
          }
        }
        , [TTH_ENUM.SET_DEMONIC] = {
          ["Component"] = {
            [0] = ARTIFACT_NIGHTMARISH_RING
            , [1] = ARTIFACT_HELM_OF_CHAOS
          }
        }
        , [TTH_ENUM.SET_MONK] = {
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
        , [TTH_ENUM.SET_GUARDIAN] = {
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
        , [TTH_ENUM.SET_ROOKIE] = {
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
        , [TTH_ENUM.SET_PIRATE] = {
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
        , [TTH_ENUM.SET_ELEMENT_AIR] = {
          ["Component"] = {
            [0] = ARTIFACT_TITANS_TRIDENT
            , [1] = ARTIFACT_ORB_AIR
          }
        }
        , [TTH_ENUM.SET_ELEMENT_EARTH] = {
          ["Component"] = {
            [0] = ARTIFACT_EARTHSLIDERS
            , [1] = ARTIFACT_ORB_EARTH
          }
          , ["GiveMagic"] = {
            [2] = SPELL_IMPLOSION
          }
        }
        , [TTH_ENUM.SET_ELEMENT_FIRE] = {
          ["Component"] = {
            [0] = ARTIFACT_PHOENIX_FEATHER_CAPE
            , [1] = ARTIFACT_ORB_FIRE
          }
        }
        , [TTH_ENUM.SET_ELEMENT_WATER] = {
          ["Component"] = {
            [0] = ARTIFACT_EVERCOLD_ICICLE
            , [1] = ARTIFACT_ORB_WATER
          }
        }
      };

    -- 生物表 维度: 种族 & 等级
      TTH_TABLE.Creature8RaceAndLevel = {
        [TOWN_HEAVEN] = {
          [1] = {1, 2, 106}
          , [2] = {3, 4, 107}
          , [3] = {5, 6, 108}
          , [4] = {7, 8, 109}
          , [5] = {9, 10, 110}
          , [6] = {11, 12, 111}
          , [7] = {13, 14, 112}
        }
        , [TOWN_PRESERVE] = {
          [1] = {43, 44, 145}
          , [2] = {45, 46, 146}
          , [3] = {47, 48, 147}
          , [4] = {49, 50, 148}
          , [5] = {51, 52, 149}
          , [6] = {53, 54, 150}
          , [7] = {55, 56, 151}
        }
        , [TOWN_ACADEMY] = {
          [1] = {57, 58, 159}
          , [2] = {59, 60, 160}
          , [3] = {61, 62, 161}
          , [4] = {63, 64, 162}
          , [5] = {65, 66, 163}
          , [6] = {67, 68, 164}
          , [7] = {69, 70, 165}
        }
        , [TOWN_DUNGEON] = {
          [1] = {71, 72, 138}
          , [2] = {73, 74, 139}
          , [3] = {75, 76, 140}
          , [4] = {77, 78, 141}
          , [5] = {79, 80, 142}
          , [6] = {81, 82, 143}
          , [7] = {83, 84, 144}
        }
        , [TOWN_NECROMANCY] = {
          [1] = {29, 30, 152}
          , [2] = {31, 32, 153}
          , [3] = {33, 34, 154}
          , [4] = {35, 36, 155}
          , [5] = {37, 38, 156}
          , [6] = {39, 40, 157}
          , [7] = {41, 42, 158}
        }
        , [TOWN_INFERNO] = {
          [1] = {15, 16, 131}
          , [2] = {17, 18, 132}
          , [3] = {19, 20, 133}
          , [4] = {21, 22, 134}
          , [5] = {23, 24, 135}
          , [6] = {25, 26, 136}
          , [7] = {27, 28, 137}
        }
        , [TOWN_FORTRESS] = {
          [1] = {92, 93, 166}
          , [2] = {94, 95, 167}
          , [3] = {96, 97, 168}
          , [4] = {98, 99, 169}
          , [5] = {100, 101, 170}
          , [6] = {102, 103, 171}
          , [7] = {104, 105, 172}
        }
        , [TOWN_STRONGHOLD] = {
          [1] = {117, 118, 173}
          , [2] = {119, 120, 174}
          , [3] = {121, 122, 175}
          , [4] = {123, 124, 176}
          , [5] = {125, 126, 177}
          , [6] = {127, 128, 178}
          , [7] = {129, 130, 179}
        }
      };

    -- 生物产量表 维度: 种族 & 等级
      TTH_TABLE.CreatureGrowth8RaceAndLevel = {
        [TOWN_HEAVEN] = {
          [1] = 22
          , [2] = 12
          , [3] = 10
          , [4] = 5
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_PRESERVE] = {
          [1] = 10
          , [2] = 9
          , [3] = 7
          , [4] = 4
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_ACADEMY] = {
          [1] = 17
          , [2] = 15
          , [3] = 8
          , [4] = 5
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_DUNGEON] = {
          [1] = 20
          , [2] = 15
          , [3] = 9
          , [4] = 5
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_NECROMANCY] = {
          [1] = 20
          , [2] = 14
          , [3] = 9
          , [4] = 5
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_INFERNO] = {
          [1] = 7
          , [2] = 5
          , [3] = 6
          , [4] = 4
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_FORTRESS] = {
          [1] = 18
          , [2] = 14
          , [3] = 7
          , [4] = 6
          , [5] = 3
          , [6] = 2
          , [7] = 1
        }
        , [TOWN_STRONGHOLD] = {
          [1] = 25
          , [2] = 14
          , [3] = 11
          , [4] = 5
          , [5] = 5
          , [6] = 2
          , [7] = 1
        }
      };

    -- 英雄表 维度：种族 & 职业
      TTH_TABLE.Hero8RaceAndClass = {
        [TOWN_HEAVEN] = {
          [TTH_ENUM.Knight] = {"Nathaniel","Orrin","Mardigo","Ving","Sarge","Isabell","Christian","RedHeavenHero02","RedHeavenHero05","Brem"}
          -- , [TTH_ENUM.Paladin] = {"Nicolai","GodricMP","Alaric","Axel","SaintIsabell","Maeve","RedHeavenHero06","Caldwell","Tarkus"}
          , [TTH_ENUM.Paladin] = {"Nicolai","GodricMP","Alaric","Axel","SaintIsabell","Maeve","RedHeavenHero06","Tarkus"}
          , [TTH_ENUM.Retribution] = {"OrtanCassius", "Sanguinius", "Avitus"}
          , [TTH_ENUM.Heretic] = {"RedHeavenHero03","Orlando","Markal"}
        }
        , [TOWN_PRESERVE] = {
          [TTH_ENUM.Ranger] = {"Metlirn","Ossir","Nadaur","Linaas","Heam","Gelu","Arniel","Kyrre"}
          , [TTH_ENUM.Warden] = {"Gillion","Itil","Melodia","Jenova","Mephala","Gem"}
          , [TTH_ENUM.Enchanter] = {"Elleshar","Ildar","Vaniel","Vinrael","Diraya"}
        }
        , [TOWN_ACADEMY] = {
          [TTH_ENUM.GuildMaster] = {"Havez","Minasli","Isher","Davius","Dracon"}
          , [TTH_ENUM.Wizard] = {"Rissa","Razzak","Sufi","Cyrus","Maahir","Timerkhan","Tan"}
          , [TTH_ENUM.ElementAlist] = {"Emilia","Nur","Astral","Zehir","Faiz","Solmyr"}
        }
        , [TOWN_DUNGEON] = {
          [TTH_ENUM.BeastMaster] = {"Urunir","Menel","Ferigl","Sylsai","Welygg"}
          , [TTH_ENUM.Seer] = {"Ohtarig","Eruina","Dalom","Kelodin","Shadwyn","Thralsai"}
          , [TTH_ENUM.Warlock] = {"Agbeth","Almegir","Inagost","Kastore","Raelag","Ranleth","Sephinroth"}
        }
        , [TOWN_NECROMANCY] = {
          -- [TTH_ENUM.DeathKnight] = {"LordHaart","Berein","Gles","Nikolay","Straker","Tamika","Xerxon","Karissa"}
          [TTH_ENUM.DeathKnight] = {"LordHaart","Berein","Gles","Nikolay","Straker","Tamika","Xerxon"}
          , [TTH_ENUM.Reaver] = {"Aislinn","Effig","Giovanni","OrnellaNecro","Aberrar","Nimbus"}
          , [TTH_ENUM.Necromancer] = {"Muscip","Arantir","Nemor","Pelt","Sandro","Thant", "Adelaide","Vidomina"}
        }
        , [TOWN_INFERNO] = {
          [TTH_ENUM.GateKeeper] = {"Calid","Deleb","Jazaz","Marder","Orlando2"}
          , [TTH_ENUM.DemonLord] = {"Calh","Efion","Grok","Malustar","Nymus","Oddrema","Sovereign","Agrael","Zydar"}
          -- , [TTH_ENUM.Sorcerer] = {"Ash","Biara","Calid2","Sheltem","Jeddite"}
          , [TTH_ENUM.Sorcerer] = {"Ash","Biara","Calid2","Sheltem"}
        }
        , [TOWN_FORTRESS] = {
          [TTH_ENUM.Engineer] = {"Bersy","Maximus","Skeggy","Tazar","Vilma"}
          , [TTH_ENUM.Runemage] = {"Bart","Brand","Egil","KingTolghar","Ottar","Hangvul2","Una","Vegeyr"}
          , [TTH_ENUM.Flamekeepera] = {"Hangvul","Ingvar","Rolf","Ufretin","Wulfstan"}
        }
        , [TOWN_STRONGHOLD] = {
          [TTH_ENUM.Barbarian] = {"Hero9","Hero7","Hero8","Azar","Hero4","Hero6","Crag","Gottai","Hero1","Hero2","Hero3","Kraal","KujinMP","Kunyak","Matewa","Quroq","Shiva","Zouleika","Erika","Mokka"}
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
          , ["PreCreature"] = {
            [CREATURE_PEASANT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [CREATURE_MILITIAMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [CREATURE_LANDLORD] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1000
              }
            }
            , [CREATURE_ARCHER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_MARKSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_LONGBOWMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_FOOTMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 500
              }
            }
            , [CREATURE_SWORDSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 500
              }
            }
            , [CREATURE_VINDICATOR] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 500
              }
            }
            , [CREATURE_PRIEST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [CREATURE_CLERIC] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
            , [CREATURE_ZEALOT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_JUSTICAR
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 500
              }
            }
          }
        }
        , ["Sanguinius"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["PreCreature"] = {
            [CREATURE_FOOTMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_LEGATE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_SWORDSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_LEGATE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_VINDICATOR] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_LEGATE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 1
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          }
        }
        , ["Avitus"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["PreCreature"] = {
            [CREATURE_ARCHER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_CROSSBOW
              , ["MaxGcd"] = 4
              , ["HeroStep"] = 4
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_MARKSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_CROSSBOW
              , ["MaxGcd"] = 4
              , ["HeroStep"] = 4
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
            , [CREATURE_LONGBOWMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_CROSSBOW
              , ["MaxGcd"] = 4
              , ["HeroStep"] = 4
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 1
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 600
              }
            }
          }
        }
        , ["Gelu"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["PreCreature"] = {
            [CREATURE_ARCHER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2250
              }
            }
            , [CREATURE_MARKSMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2250
              }
            }
            , [CREATURE_LONGBOWMAN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2250
              }
            }
            , [CREATURE_AXE_FIGHTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2250
              }
            }
            , [CREATURE_AXE_THROWER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2250
              }
            }
            , [CREATURE_HARPOONER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 2250
              }
            }
            , [CREATURE_WOOD_ELF] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_GRAND_ELF] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_SHARP_SHOOTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_SNOW_APE
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 1
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          }
        }
        , ["Itil"] = {
          ["CastType"] = TTH_ENUM.Guide
          , ["PreCreature"] = {
            [CREATURE_UNICORN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_952
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [CREATURE_WAR_UNICORN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_952
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
            , [CREATURE_WHITE_UNICORN] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_952
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1000
              }
            }
          }
        }
        , ["Dracon"] = {
          ["CastType"] = TTH_ENUM.Training
          , ["PreCreature"] = {
            [CREATURE_PRIEST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_CLERIC] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_ZEALOT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_RUNE_MAGE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_FLAME_MAGE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_FLAME_KEEPER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 800
              }
            }
            , [CREATURE_MAGI] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1200
              }
            }
            , [CREATURE_ARCH_MAGI] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1200
              }
            }
            , [CREATURE_COMBAT_MAGE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_ENCHANTER_ACADEMY
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 0
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 1
                , [GOLD] = 1200
              }
            }
          }
        }
        , ["Adelaide"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["PreCreature"] = {
            [CREATURE_MANES] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_935
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
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
            , [CREATURE_GHOST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_935
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
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
            , [CREATURE_POLTERGEIST] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_935
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
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
        , ["Thant"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["PreCreature"] = {
            [CREATURE_SKELETON] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_SKELETON_ARCHER] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_SKELETON_WARRIOR] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_WALKING_DEAD] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_ZOMBIE] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_DISEASE_ZOMBIE] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_MANES] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_GHOST] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_POLTERGEIST] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_VAMPIRE] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_VAMPIRE_LORD] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_NOSFERATU] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_LICH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_DEMILICH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_LICH_MASTER] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_WIGHT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_WRAITH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_BANSHEE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_BONE_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_SHADOW_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
            , [CREATURE_HORROR_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_MUMMY
              , ["MaxGcd"] = 5
              , ["HeroStep"] = 5
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1200
              }
            }
          }
        }
        , ["LordHaart"] = {
          ["CastType"] = TTH_ENUM.Cast
          , ["PreCreature"] = {
            [CREATURE_SKELETON] = {
              ["Scale"] = 6
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_SKELETON_ARCHER] = {
              ["Scale"] = 6
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_SKELETON_WARRIOR] = {
              ["Scale"] = 6
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_WALKING_DEAD] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_ZOMBIE] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_DISEASE_ZOMBIE] = {
              ["Scale"] = 5
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_MANES] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_GHOST] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_POLTERGEIST] = {
              ["Scale"] = 4
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_VAMPIRE] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_VAMPIRE_LORD] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_NOSFERATU] = {
              ["Scale"] = 3
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_LICH] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_DEMILICH] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_LICH_MASTER] = {
              ["Scale"] = 2
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_WIGHT] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_WRAITH] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_BANSHEE] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_BONE_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_SHADOW_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
            , [CREATURE_HORROR_DRAGON] = {
              ["Scale"] = 1
              , ["PostCreatureId"] = CREATURE_DEATH_KNIGHT
              , ["MaxGcd"] = 6
              , ["HeroStep"] = 6
              , ["Res"] = {
                [WOOD] = 0
                , [ORE] = 0
                , [MERCURY] = 1
                , [CRYSTAL] = 0
                , [SULFUR] = 0
                , [GEM] = 0
                , [GOLD] = 1500
              }
            }
          }
        }
      };

    -- 英雄
      TTH_TABLE.Hero = {
        -- TOWN_HEAVEN
          -- Knight
            ["Nathaniel"] = {
              ["Id"] = 1
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nathaniel/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_PEASANT
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Orrin"] = {
              ["Id"] = 2
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Orrin/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_ARCHER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Mardigo"] = {
              ["Id"] = 3
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Mardigo/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_FOOTMAN
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Ving"] = {
              ["Id"] = 4
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ving/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_GRIFFIN
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Sarge"] = {
              ["Id"] = 5
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sarge/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_CAVALIER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Isabell"] = {
              ["Id"] = 6
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Isabell/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Christian"] = {
              ["Id"] = 7
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Christian/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["RedHeavenHero02"] = {
              ["Id"] = 8
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/RedHeavenHero02/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["RedHeavenHero05"] = {
              ["Id"] = 9
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/RedHeavenHero05/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Brem"] = {
              ["Id"] = 10
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Brem/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Knight
              , ["Group"] = TTH_ENUM.GroupMight
            }
          -- Paladin
            , ["Nicolai"] = {
              ["Id"] = 11
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nicolai/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["GodricMP"] = {
              ["Id"] = 12
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/GodricMP/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Alaric"] = {
              ["Id"] = 13
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Alaric/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Axel"] = {
              ["Id"] = 14
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Axel/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["SaintIsabell"] = {
              ["Id"] = 15
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/SaintIsabell/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Maeve"] = {
              ["Id"] = 16
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Maeve/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["RedHeavenHero06"] = {
              ["Id"] = 17
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/RedHeavenHero06/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Caldwell"] = {
              ["Id"] = 18
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Caldwell/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- Retribution
            , ["OrtanCassius"] = {
              ["Id"] = 155
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/OrtanCassius/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Retribution
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_JUSTICAR
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Sanguinius"] = {
              ["Id"] = 156
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sanguinius/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Retribution
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_LEGATE
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Avitus"] = {
              ["Id"] = 157
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Avitus/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Retribution
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_CROSSBOW
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Tarkus"] = {
              ["Id"] = 158
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Tarkus/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Paladin
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- Heretic
            , ["RedHeavenHero03"] = {
              ["Id"] = 19
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/RedHeavenHero03/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Heretic
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Orlando"] = {
              ["Id"] = 20
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Orlando/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Heretic
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Markal"] = {
              ["Id"] = 21
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Markal/name.txt"
              , ["Race"] = TOWN_HEAVEN
              , ["Class"] = TTH_ENUM.Heretic
              , ["Group"] = TTH_ENUM.GroupMagic
            }
        -- TOWN_PRESERVE
          -- Ranger
            , ["Metlirn"] = {
              ["Id"] = 22
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Metlirn/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Ossir"] = {
              ["Id"] = 23
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ossir/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_WOOD_ELF
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Nadaur"] = {
              ["Id"] = 24
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nadaur/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_BLADE_JUGGLER
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
                , [2] = {
                  ["CreatureId"] = CREATURE_WOOD_ELF
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
                , [3] = {
                  ["CreatureId"] = CREATURE_DRUID
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
              , ["Attribute"] = {
                ["Step"] = 5
                , ["Type"] = STAT_ATTACK
              }
            }
            , ["Linaas"] = {
              ["Id"] = 25
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Linaas/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Heam"] = {
              ["Id"] = 26
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Heam/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Gelu"] = {
              ["Id"] = 27
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Gelu/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_SNOW_APE
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Arniel"] = {
              ["Id"] = 28
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Arniel/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Kyrre"] = {
              ["Id"] = 29
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Kyrre/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Ranger
              , ["Group"] = TTH_ENUM.GroupMight
            }
          -- Warden
            , ["Gillion"] = {
              ["Id"] = 30
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Gillion/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Warden
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_BLADE_JUGGLER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Itil"] = {
              ["Id"] = 31
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Itil/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Warden
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_Itil_Unicorn
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Melodia"] = {
              ["Id"] = 32
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Melodia/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Warden
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Jenova"] = {
              ["Id"] = 33
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Jenova/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Warden
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Mephala"] = {
              ["Id"] = 34
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Mephala/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Warden
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_DEFENCE
              }
            }
            , ["Gem"] = {
              ["Id"] = 35
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Gem/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Warden
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- Enchanter
            , ["Elleshar"] = {
              ["Id"] = 36
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Elleshar/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Enchanter
              , ["Group"] = TTH_ENUM.GroupMagic
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_KNOWLEDGE
              }
            }
            , ["Ildar"] = {
              ["Id"] = 37
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ildar/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Enchanter
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Vaniel"] = {
              ["Id"] = 38
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Vaniel/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Enchanter
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Vinrael"] = {
              ["Id"] = 39
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Vinrael/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Enchanter
              , ["Group"] = TTH_ENUM.GroupMagic
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_KNOWLEDGE
              }
            }
            , ["Diraya"] = {
              ["Id"] = 40
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Diraya/name.txt"
              , ["Race"] = TOWN_PRESERVE
              , ["Class"] = TTH_ENUM.Enchanter
              , ["Group"] = TTH_ENUM.GroupMagic
            }
        -- TOWN_ACADEMY
          -- GuildMaster
            , ["Havez"] = {
              ["Id"] = 41
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Havez/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.GuildMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_GREMLIN
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Minasli"] = {
              ["Id"] = 42
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Minasli/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.GuildMaster
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Isher"] = {
              ["Id"] = 43
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Isher/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.GuildMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_IRON_GOLEM
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Davius"] = {
              ["Id"] = 44
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Davius/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.GuildMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_RAKSHASA
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Dracon"] = {
              ["Id"] = 45
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Dracon/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.GuildMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_ENCHANTER_ACADEMY
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
          -- Wizard
            , ["Rissa"] = {
              ["Id"] = 46
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Rissa/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Razzak"] = {
              ["Id"] = 47
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Razzak/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_MAGI
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Sufi"] = {
              ["Id"] = 48
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sufi/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Cyrus"] = {
              ["Id"] = 49
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Cyrus/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Maahir"] = {
              ["Id"] = 50
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Maahir/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_KNOWLEDGE
              }
            }
            , ["Timerkhan"] = {
              ["Id"] = 51
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Timerkhan/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Tan"] = {
              ["Id"] = 52
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Tan/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.Wizard
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- ElementAlist
            , ["Emilia"] = {
              ["Id"] = 53
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Emilia/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.ElementAlist
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Nur"] = {
              ["Id"] = 54
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nur/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.ElementAlist
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Astral"] = {
              ["Id"] = 55
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Astral/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.ElementAlist
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Zehir"] = {
              ["Id"] = 56
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Zehir/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.ElementAlist
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Faiz"] = {
              ["Id"] = 57
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Faiz/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.ElementAlist
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Solmyr"] = {
              ["Id"] = 58
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Solmyr/name.txt"
              , ["Race"] = TOWN_ACADEMY
              , ["Class"] = TTH_ENUM.ElementAlist
              , ["Group"] = TTH_ENUM.GroupMagic
            }
        -- TOWN_DUNGEON
          -- BeastMaster
            , ["Urunir"] = {
              ["Id"] = 59
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Urunir/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.BeastMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_WITCH
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Menel"] = {
              ["Id"] = 60
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Menel/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.BeastMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_MINOTAUR
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Ferigl"] = {
              ["Id"] = 61
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ferigl/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.BeastMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_RIDER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Sylsai"] = {
              ["Id"] = 62
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sylsai/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.BeastMaster
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Welygg"] = {
              ["Id"] = 63
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Welygg/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.BeastMaster
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_MANTICORE
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
          -- Seer
            , ["Ohtarig"] = {
              ["Id"] = 64
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ohtarig/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Seer
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_SCOUT
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Eruina"] = {
              ["Id"] = 65
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Eruina/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Seer
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_MATRON
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Dalom"] = {
              ["Id"] = 66
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Dalom/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Seer
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Kelodin"] = {
              ["Id"] = 67
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Kelodin/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Seer
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Shadwyn"] = {
              ["Id"] = 68
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Shadwyn/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Seer
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Thralsai"] = {
              ["Id"] = 69
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Thralsai/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Seer
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- Warlock
            , ["Agbeth"] = {
              ["Id"] = 70
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Agbeth/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Almegir"] = {
              ["Id"] = 71
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Almegir/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_KNOWLEDGE
              }
            }
            , ["Inagost"] = {
              ["Id"] = 72
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Inagost/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Kastore"] = {
              ["Id"] = 73
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Kastore/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Raelag"] = {
              ["Id"] = 74
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Raelag/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Ranleth"] = {
              ["Id"] = 75
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ranleth/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Sephinroth"] = {
              ["Id"] = 76
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sephinroth/name.txt"
              , ["Race"] = TOWN_DUNGEON
              , ["Class"] = TTH_ENUM.Warlock
              , ["Group"] = TTH_ENUM.GroupMagic
            }
        -- TOWN_NECROMANCY
          -- DeathKnight
            , ["LordHaart"] = {
              ["Id"] = 77
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/LordHaart/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_DEATH_KNIGHT
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Berein"] = {
              ["Id"] = 78
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Berein/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Gles"] = {
              ["Id"] = 79
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Gles/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Nikolay"] = {
              ["Id"] = 80
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nikolay/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Straker"] = {
              ["Id"] = 81
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Straker/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_WALKING_DEAD
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Tamika"] = {
              ["Id"] = 82
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Tamika/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_VAMPIRE
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Xerxon"] = {
              ["Id"] = 83
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Xerxon/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Karissa"] = {
              ["Id"] = 84
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Karissa/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.DeathKnight
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_SKELETON
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
          -- Reaver
            , ["Aislinn"] = {
              ["Id"] = 85
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Aislinn/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Reaver
              , ["Group"] = TTH_ENUM.GroupBalanceNec
            }
            , ["Effig"] = {
              ["Id"] = 86
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Effig/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Reaver
              , ["Group"] = TTH_ENUM.GroupBalanceNec
            }
            , ["Giovanni"] = {
              ["Id"] = 87
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Giovanni/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Reaver
              , ["Group"] = TTH_ENUM.GroupBalanceNec
            }
            , ["OrnellaNecro"] = {
              ["Id"] = 88
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/OrnellaNecro/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Reaver
              , ["Group"] = TTH_ENUM.GroupBalanceNec
            }
            , ["Aberrar"] = {
              ["Id"] = 89
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Aberrar/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Reaver
              , ["Group"] = TTH_ENUM.GroupBalanceNec
            }
            , ["Nimbus"] = {
              ["Id"] = 90
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nimbus/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Reaver
              , ["Group"] = TTH_ENUM.GroupBalanceNec
            }
          -- Necromancer
            , ["Muscip"] = {
              ["Id"] = 91
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Muscip/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Arantir"] = {
              ["Id"] = 92
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Arantir/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Nemor"] = {
              ["Id"] = 93
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nemor/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Pelt"] = {
              ["Id"] = 94
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Pelt/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Sandro"] = {
              ["Id"] = 95
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sandro/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Thant"] = {
              ["Id"] = 96
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Thant/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_MUMMY
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Vidomina"] = {
              ["Id"] = 97
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Vidomina/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Adelaide"] = {
              ["Id"] = 98
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Adelaide/name.txt"
              , ["Race"] = TOWN_NECROMANCY
              , ["Class"] = TTH_ENUM.Necromancer
              , ["Group"] = TTH_ENUM.GroupMagic
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_935
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
        -- TOWN_INFERNO
          -- GateKeeper
            , ["Calid"] = {
              ["Id"] = 100
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Calid/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.GateKeeper
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_HELL_HOUND
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Deleb"] = {
              ["Id"] = 101
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Deleb/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.GateKeeper
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Jazaz"] = {
              ["Id"] = 102
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Jazaz/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.GateKeeper
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Marder"] = {
              ["Id"] = 103
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Marder/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.GateKeeper
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Orlando2"] = {
              ["Id"] = 104
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Orlando2/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.GateKeeper
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- DemonLord
            , ["Calh"] = {
              ["Id"] = 99
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Calh/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_PIT_FIEND
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Efion"] = {
              ["Id"] = 105
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Efion/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Grok"] = {
              ["Id"] = 106
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Grok/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Malustar"] = {
              ["Id"] = 107
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Malustar/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Nymus"] = {
              ["Id"] = 108
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Nymus/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Oddrema"] = {
              ["Id"] = 109
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Oddrema/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_SUCCUBUS
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Sovereign"] = {
              ["Id"] = 110
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sovereign/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Agrael"] = {
              ["Id"] = 111
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Agrael/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Zydar"] = {
              ["Id"] = 112
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Zydar/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Jeddite"] = {
              ["Id"] = 156
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Jeddite/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.DemonLord
              , ["Group"] = TTH_ENUM.GroupMight
            }
          -- Sorcerer
            , ["Ash"] = {
              ["Id"] = 113
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ash/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.Sorcerer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Biara"] = {
              ["Id"] = 114
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Biara/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.Sorcerer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Calid2"] = {
              ["Id"] = 115
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Calid2/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.Sorcerer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Sheltem"] = {
              ["Id"] = 116
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Sheltem/name.txt"
              , ["Race"] = TOWN_INFERNO
              , ["Class"] = TTH_ENUM.Sorcerer
              , ["Group"] = TTH_ENUM.GroupMagic
            }
        -- TOWN_FORTRESS
          -- Engineer
            , ["Bersy"] = {
              ["Id"] = 117
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Bersy/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Engineer
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_BEAR_RIDER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Maximus"] = {
              ["Id"] = 118
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Maximus/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Engineer
              , ["Group"] = TTH_ENUM.GroupMight
            }
            , ["Skeggy"] = {
              ["Id"] = 119
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Skeggy/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Engineer
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_AXE_FIGHTER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Tazar"] = {
              ["Id"] = 120
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Tazar/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Engineer
              , ["Group"] = TTH_ENUM.GroupMight
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_DEFENCE
              }
            }
            , ["Vilma"] = {
              ["Id"] = 121
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Vilma/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Engineer
              , ["Group"] = TTH_ENUM.GroupMight
            }
          -- Runemage
            , ["Bart"] = {
              ["Id"] = 122
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Bart/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Brand"] = {
              ["Id"] = 123
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Brand/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Egil"] = {
              ["Id"] = 124
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Egil/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_RUNE_MAGE
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["KingTolghar"] = {
              ["Id"] = 125
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/KingTolghar/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Ottar"] = {
              ["Id"] = 126
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ottar/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Hangvul2"] = {
              ["Id"] = 127
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hangvul2/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
            , ["Una"] = {
              ["Id"] = 128
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Una/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
              , ["Attribute"] = {
                ["Step"] = 3
                , ["Type"] = STAT_KNOWLEDGE
              }
            }
            , ["Vegeyr"] = {
              ["Id"] = 129
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Vegeyr/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Runemage
              , ["Group"] = TTH_ENUM.GroupBalanceNotNec
            }
          -- Flamekeepera
            , ["Hangvul"] = {
              ["Id"] = 130
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hangvul/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Flamekeepera
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Ingvar"] = {
              ["Id"] = 131
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ingvar/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Flamekeepera
              , ["Group"] = TTH_ENUM.GroupMagic
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_DEFENDER
                  , ["Stat"] = STAT_KNOWLEDGE
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Rolf"] = {
              ["Id"] = 132
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Rolf/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Flamekeepera
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Ufretin"] = {
              ["Id"] = 133
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Ufretin/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Flamekeepera
              , ["Group"] = TTH_ENUM.GroupMagic
            }
            , ["Wulfstan"] = {
              ["Id"] = 134
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Wulfstan/name.txt"
              , ["Race"] = TOWN_FORTRESS
              , ["Class"] = TTH_ENUM.Flamekeepera
              , ["Group"] = TTH_ENUM.GroupMagic
            }
        -- TOWN_STRONGHOLD
          -- BARBARIAN
            , ["Hero9"] = {
              ["Id"] = 135
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero9/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_GOBLIN
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Hero7"] = {
              ["Id"] = 136
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero7/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_CENTAUR
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Hero8"] = {
              ["Id"] = 137
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero8/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_ORC_WARRIOR
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_BASIC
                }
              }
            }
            , ["Azar"] = {
              ["Id"] = 138
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Azar/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_WOLF
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Hero4"] = {
              ["Id"] = 139
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero4/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_ORCCHIEF_BUTCHER
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_ADVANCED
                }
              }
            }
            , ["Hero6"] = {
              ["Id"] = 140
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero6/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
              , ["Specialty"] = {
                [1] = {
                  ["CreatureId"] = CREATURE_WYVERN
                  , ["Stat"] = STAT_ATTACK
                  , ["ArtifactId"] = ARTIFACT_LEGION_EXPERT
                }
              }
            }
            , ["Crag"] = {
              ["Id"] = 141
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Crag/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Gottai"] = {
              ["Id"] = 142
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Gottai/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Hero1"] = {
              ["Id"] = 143
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero1/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Hero2"] = {
              ["Id"] = 144
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero2/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Hero3"] = {
              ["Id"] = 145
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Hero3/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Kraal"] = {
              ["Id"] = 146
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Kraal/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["KujinMP"] = {
              ["Id"] = 147
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/KujinMP/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Kunyak"] = {
              ["Id"] = 148
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Kunyak/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Matewa"] = {
              ["Id"] = 149
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Matewa/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Quroq"] = {
              ["Id"] = 150
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Quroq/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Shiva"] = {
              ["Id"] = 151
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Shiva/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Zouleika"] = {
              ["Id"] = 152
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Zouleika/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Erika"] = {
              ["Id"] = 153
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Erika/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
            }
            , ["Mokka"] = {
              ["Id"] = 154
              , ["Text"] = "/Text/Game/Heroes/TTH_ALL/Mokka/name.txt"
              , ["Race"] = TOWN_STRONGHOLD
              , ["Class"] = TTH_ENUM.Barbarian
              , ["Group"] = TTH_ENUM.GroupBarbarian
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

    -- 技能
      TTH_TABLE.Mastery = {
        -- 后勤学
          [1] = {
            ["Id"] = HERO_SKILL_LOGISTICS
            , ["Text"] = "/Text/TTH/Skills/Logistics/Mastery/NameNone.txt"
            , ["Perk"] = {
              [20] = { -- 侦察术
                ["Id"] = HERO_SKILL_SCOUTING
                , ["Text"] = "/Text/TTH/Skills/Logistics/020-Scouting/Name.txt"
              }
              , [138] = { -- 传送突袭
                ["Id"] = HERO_SKILL_TELEPORT_ASSAULT
                , ["Text"] = "/Text/TTH/Skills/Logistics/138-TeleportAssault/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SCOUTING
                }
              }
              , [19] = { -- 探路术
                ["Id"] = HERO_SKILL_PATHFINDING
                , ["Text"] = "/Text/TTH/Skills/Logistics/019-Pathfinding/Name.txt"
              }
              , [177] = { -- 战争之路
                ["Id"] = HERO_SKILL_PATH_OF_WAR
                , ["Text"] = "/Text/TTH/Skills/Logistics/177-PathOfWar/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_PATHFINDING
                }
              }
              , [168] = { -- 攫取
                ["Id"] = HERO_SKILL_SNATCH
                , ["Text"] = "/Text/TTH/Skills/Logistics/168-Snatch/Name.txt"
              }
              , [80] = { -- 杉提瑞之触
                ["Id"] = HERO_SKILL_GRAIL_VISION
                , ["Text"] = "/Text/TTH/Skills/Logistics/080-Shantiri/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SNATCH
                }
              }
              , [129] = { -- 战争掠劫
                ["Id"] = HERO_SKILL_SPOILS_OF_WAR
                , ["Text"] = "/Text/TTH/Skills/Logistics/129-SpoilsOfWar/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SNATCH
                }
              }
              , [93] = { -- 风暴突袭（终极）
                ["Id"] = HERO_SKILL_EXPLODING_CORPSES
                , ["Text"] = "/Text/TTH/Skills/Logistics/093-ExplodingCorpses/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 战争机械
          , [2] = {
            ["Id"] = HERO_SKILL_WAR_MACHINES
            , ["Text"] = "/Text/TTH/Skills/WarMachines/Mastery/NameNone.txt"
            , ["Perk"] = {
              [22] = { -- 急救帐篷
                ["Id"] = HERO_SKILL_FIRST_AID
                , ["Text"] = "/Text/TTH/Skills/WarMachines/022-FirstAid/Name.txt"
              }
              , [100] = { -- 瘟疫帐篷
                ["Id"] = HERO_SKILL_LAST_AID
                , ["Text"] = "/Text/TTH/Skills/WarMachines/100-LastAid/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_FIRST_AID
                }
              }
              , [24] = { -- 弹道学
                ["Id"] = HERO_SKILL_CATAPULT
                , ["Text"] = "/Text/TTH/Skills/WarMachines/024-Catapult/Name.txt"
              }
              , [99] = { -- 攻城大师
                ["Id"] = HERO_SKILL_DEATH_TREAD
                , ["Text"] = "/Text/TTH/Skills/WarMachines/099-DeathTread/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_CATAPULT
                }
              }
              , [23] = { -- 弹射学
                ["Id"] = HERO_SKILL_BALLISTA
                , ["Text"] = "/Text/TTH/Skills/WarMachines/023-Ballista/Name.txt"
              }
              , [74] = { -- 三箭连射
                ["Id"] = HERO_SKILL_TRIPLE_BALLISTA
                , ["Text"] = "/Text/TTH/Skills/WarMachines/074-TripleBallista/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BALLISTA
                }
              }
            }
          }
        -- 领导术
          , [4] = {
            ["Id"] = HERO_SKILL_LEADERSHIP
            , ["Text"] = "/Text/TTH/Skills/Leadership/Mastery/NameNone.txt"
            , ["Perk"] = {
              [28] = { -- 募兵术
                ["Id"] = HERO_SKILL_RECRUITMENT
                , ["Text"] = "/Text/TTH/Skills/Leadership/028-Recruitment/Name.txt"
              }
              , [115] = { -- 战地指挥官
                ["Id"] = HERO_SKILL_FOREST_GUARD_EMBLEM
                , ["Text"] = "/Text/TTH/Skills/Leadership/115-ForestGuardEmblem/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_RECRUITMENT
                }
              }
              , [29] = { -- 理财术
                ["Id"] = HERO_SKILL_ESTATES
                , ["Text"] = "/Text/TTH/Skills/Leadership/029-Estates/Name.txt"
              }
              , [30] = { -- 外交术
                ["Id"] = HERO_SKILL_DIPLOMACY
                , ["Text"] = "/Text/TTH/Skills/Leadership/030-Diplomacy/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ESTATES
                  , [2] = HERO_SKILL_ENCOURAGE
                }
              }
              , [75] = { -- 神圣指引
                ["Id"] = HERO_SKILL_ENCOURAGE
                , ["Text"] = "/Text/TTH/Skills/Leadership/075-Encourage/Name.txt"
              }
              , [128] = { -- 人造荣耀
                ["Id"] = HERO_SKILL_ARTIFICIAL_GLORY
                , ["Text"] = "/Text/TTH/Skills/Leadership/128-ArtificialGlory/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ENCOURAGE
                }
              }
              , [170] = { -- 入神
                ["Id"] = HERO_SKILL_EMPATHY
                , ["Text"] = "/Text/TTH/Skills/Leadership/170-Empathy/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ARTIFICIAL_GLORY
                }
              }
              , [141] = { -- 敏捷光环
                ["Id"] = HERO_SKILL_FAST_AND_FURIOUS
                , ["Text"] = "/Text/TTH/Skills/Leadership/141-FastAndFurious/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ENCOURAGE
                }
              }
              , [78] = { -- 守护天使
                ["Id"] = HERO_SKILL_GUARDIAN_ANGEL
                , ["Text"] = "/Text/TTH/Skills/Leadership/078-GuardianAngel/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ENCOURAGE
                }
              }
              , [56] = { -- 佑福仪式（终极）
                ["Id"] = HERO_SKILL_PRAYER
                , ["Text"] = "/Text/TTH/Skills/Leadership/078-GuardianAngel/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 幸运术
          , [5] = {
            ["Id"] = HERO_SKILL_LUCK
            , ["Text"] = "/Text/TTH/Skills/Luck/Mastery/NameNone.txt"
            , ["Perk"] = {
              [32] = { -- 士兵之幸
                ["Id"] = HERO_SKILL_LUCKY_STRIKE
                , ["Text"] = "/Text/TTH/Skills/Luck/032-LuckyStrike/Name.txt"
              }
              , [116] = { -- 幸运一击
                ["Id"] = HERO_SKILL_ELVEN_LUCK
                , ["Text"] = "/Text/TTH/Skills/Luck/116-ElvenLuck/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_LUCKY_STRIKE
                }
              }
              , [33] = { -- 资源富饶
                ["Id"] = HERO_SKILL_FORTUNATE_ADVENTURER
                , ["Text"] = "/Text/TTH/Skills/Luck/033-FortunateAdventurer/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_LUCKY_STRIKE
                }
              }
              , [179] = { -- 勇士之幸
                ["Id"] = HERO_SKILL_LUCK_OF_THE_BARBARIAN
                , ["Text"] = "/Text/TTH/Skills/Luck/179-LuckOfTheBarbarian/Name.txt"
              }
              , [31] = { -- 抗魔大法
                ["Id"] = HERO_SKILL_RESISTANCE
                , ["Text"] = "/Text/TTH/Skills/Luck/031-Resistance/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_LUCK_OF_THE_BARBARIAN
                }
              }
              , [145] = { -- 古怪魔力
                ["Id"] = HERO_SKILL_CHAOTIC_SPELLS
                , ["Text"] = "/Text/TTH/Skills/Luck/145-ChaoticSpells/Name.txt"
              }
              , [142] = { -- 术士之幸
                ["Id"] = HERO_SKILL_LUCKY_SPELLS
                , ["Text"] = "/Text/TTH/Skills/Luck/142-LuckySpells/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_CHAOTIC_SPELLS
                }
              }
              , [124] = { -- 自然之幸（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_LUCK
                , ["Text"] = "/Text/Game/Skills/Unique/Avenger/AbsoluteLuck/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
              , [159] = { -- 矮人之幸（终极）
                ["Id"] = HERO_SKILL_DWARVEN_LUCK
                , ["Text"] = "/Text/TTH/Skills/Luck/159-DwarvenLuck/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 攻击术
          , [6] = {
            ["Id"] = HERO_SKILL_OFFENCE
            , ["Text"] = "/Text/TTH/Skills/Offence/Mastery/NameNone.txt"
            , ["Perk"] = {
              [34] = { -- 战术部署
                ["Id"] = HERO_SKILL_TACTICS
                , ["Text"] = "/Text/TTH/Skills/Offence/034-Tactics/Name.txt"
              }
              , [160] = { -- 攻击编队
                ["Id"] = HERO_SKILL_OFFENSIVE_FORMATION
                , ["Text"] = "/Text/TTH/Skills/Offence/160-OffensiveFormation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_TACTICS
                }
              }
              , [35] = { -- 箭术
                ["Id"] = HERO_SKILL_ARCHERY
                , ["Text"] = "/Text/TTH/Skills/Offence/035-Archery/Name.txt"
              }
              , [104] = { -- 寒铁之刃
                ["Id"] = HERO_SKILL_CHILLING_STEEL
                , ["Text"] = "/Text/TTH/Skills/Offence/104-ChillingSteel/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ARCHERY
                }
              }
              , [130] = { -- 燃烧箭
                ["Id"] = HERO_SKILL_WILDFIRE
                , ["Text"] = "/Text/TTH/Skills/Offence/130-Wildfire/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ARCHERY
                }
              }
              , [36] = { -- 战争狂人
                ["Id"] = HERO_SKILL_FRENZY
                , ["Text"] = "/Text/TTH/Skills/Offence/036-Frenzy/Name.txt"
              }
              , [76] = { -- 报偿
                ["Id"] = HERO_SKILL_RETRIBUTION
                , ["Text"] = "/Text/TTH/Skills/Offence/076-Retribution/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_FRENZY
                }
              }
              , [143] = { -- 速度能量
                ["Id"] = HERO_SKILL_POWER_OF_HASTE
                , ["Text"] = "/Text/TTH/Skills/Offence/143-PowerOfHaste/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_FRENZY
                }
              }
              , [82] = { -- 怒火中烧（终极）
                ["Id"] = HERO_SKILL_ANCIENT_SMITHY
                , ["Text"] = "/Text/TTH/Skills/Offence/082-AncientSmithy/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 防御学
          , [7] = {
            ["Id"] = HERO_SKILL_DEFENCE
            , ["Text"] = "/Text/TTH/Skills/Defence/Mastery/NameNone.txt"
            , ["Perk"] = {
              [37] = { -- 抗魔保护
                ["Id"] = HERO_SKILL_PROTECTION
                , ["Text"] = "/Text/TTH/Skills/Defence/037-Protection/Name.txt"
              }
              , [106] = { -- 骸骨防护
                ["Id"] = HERO_SKILL_SPELLPROOF_BONES
                , ["Text"] = "/Text/TTH/Skills/Defence/106-SpellproofBones/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_PROTECTION
                }
              }
              , [133] = { -- 魔力转化
                ["Id"] = HERO_SKILL_MAGIC_CUSHION
                , ["Text"] = "/Text/TTH/Skills/Defence/133-MagicCushion/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_PROTECTION
                }
              }
              , [38] = { -- 闪避
                ["Id"] = HERO_SKILL_EVASION
                , ["Text"] = "/Text/TTH/Skills/Defence/038-Evasion/Name.txt"
              }
              , [161] = { -- 防御编队
                ["Id"] = HERO_SKILL_DEFENSIVE_FORMATION
                , ["Text"] = "/Text/TTH/Skills/Defence/161-DefensiveFormation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_EVASION
                }
              }
              , [39] = { -- 活力无限
                ["Id"] = HERO_SKILL_TOUGHNESS
                , ["Text"] = "/Text/TTH/Skills/Defence/039-Toughness/Name.txt"
              }
              , [77] = { -- 坚守阵地
                ["Id"] = HERO_SKILL_HOLD_GROUND
                , ["Text"] = "/Text/TTH/Skills/Defence/077-HoldGround/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_TOUGHNESS
                }
              }
              , [118] = { -- 屹立不倒
                ["Id"] = HERO_SKILL_LAST_STAND
                , ["Text"] = "/Text/TTH/Skills/Defence/118-LastStand/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_EVASION
                  , [2] = HERO_SKILL_TOUGHNESS
                }
              }
              , [171] = { -- 准备
                ["Id"] = HERO_SKILL_PREPARATION
                , ["Text"] = "/Text/TTH/Skills/Defence/171-Preparation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_HOLD_GROUND
                }
              }
              , [144] = { -- 耐力持久
                ["Id"] = HERO_SKILL_POWER_OF_STONE
                , ["Text"] = "/Text/TTH/Skills/Defence/144-PowerOfStone/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_TOUGHNESS
                }
              }
              , [167] = { -- 绝对保护（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_PROTECTION
                , ["Text"] = "/Text/TTH/Skills/Defence/167-AbsoluteProtection/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 反击术
          , [13] = {
            ["Id"] = HERO_SKILL_TRAINING
            , ["Text"] = "/Text/TTH/Skills/Training/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Engineer
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [55] = { -- 复仇打击
                ["Id"] = HERO_SKILL_HOLY_CHARGE
                , ["Text"] = "/Text/TTH/Skills/Training/055-HolyCharge/Name.txt"
              }
              , [95] = { -- 虚弱打击
                ["Id"] = HERO_SKILL_WEAKENING_STRIKE
                , ["Text"] = "/Text/TTH/Skills/Training/095-WeakeningStrike/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_HOLY_CHARGE
                }
              }
              , [85] = { -- 无敌冲锋
                ["Id"] = HERO_SKILL_ABSOLUTE_CHARGE
                , ["Text"] = "/Text/TTH/Skills/Training/085-AbsoluteCharge/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_HOLY_CHARGE
                }
              }
              , [91] = { -- 极度痛击
                ["Id"] = HERO_SKILL_CRITICAL_STRIKE
                , ["Text"] = "/Text/TTH/Skills/Training/091-CriticalStrike/Name.txt"
              }
              , [60] = { -- 咒骂印记
                ["Id"] = HERO_SKILL_DEMONIC_STRIKE
                , ["Text"] = "/Text/TTH/Skills/Training/060-DemonicStrike/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_CRITICAL_STRIKE
                }
              }
              , [131] = { -- 众志成城
                ["Id"] = HERO_SKILL_SEAL_OF_PROTECTION
                , ["Text"] = "/Text/TTH/Skills/Training/131-SealofProtection/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_CRITICAL_STRIKE
                }
              }
              , [175] = { -- 强力打击
                ["Id"] = HERO_SKILL_POWERFULL_BLOW
                , ["Text"] = "/Text/TTH/Skills/Training/175-PowerfullBlow/Name.txt"
              }
              , [180] = { -- 眩晕打击
                ["Id"] = HERO_SKILL_STUNNING_BLOW
                , ["Text"] = "/Text/TTH/Skills/Training/180-StunningBlow/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_POWERFULL_BLOW
                }
              }
            }
          }
        -- 复仇者
          , [16] = {
            ["Id"] = HERO_SKILL_AVENGER
            , ["Text"] = "/Text/TTH/Skills/Avenger/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
            }
            , ["Perk"] = {
              [66] = { -- 注魔之箭
                ["Id"] = HERO_SKILL_IMBUE_ARROW
                , ["Text"] = "/Text/TTH/Skills/Avenger/066-ImbueArrow/Name.txt"
              }
              , [113] = { -- 注魔弩车
                ["Id"] = HERO_SKILL_IMBUE_BALLISTA
                , ["Text"] = "/Text/TTH/Skills/Avenger/113-ImbueBallista/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_IMBUE_ARROW
                }
              }
              , [65] = { -- 精准射击
                ["Id"] = HERO_SKILL_SNIPE_DEAD
                , ["Text"] = "/Text/TTH/Skills/Avenger/065-SnipeDead/Name.txt"
              }
              , [64] = { -- 箭如雨下
                ["Id"] = HERO_SKILL_MULTISHOT
                , ["Text"] = "/Text/TTH/Skills/Avenger/064-Multishot/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SNIPE_DEAD
                }
              }
              , [114] = { -- 知己知彼
                ["Id"] = HERO_SKILL_CUNNING_OF_THE_WOODS
                , ["Text"] = "/Text/TTH/Skills/Avenger/114-CunningOfTheWoods/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SNIPE_DEAD
                }
              }
              , [117] = { -- 自然之怒（终极）
                ["Id"] = HERO_SKILL_FOREST_RAGE
                , ["Text"] = "/Text/TTH/Skills/Avenger/117-ForestRage/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 制宝术
          , [17] = {
            ["Id"] = HERO_SKILL_ARTIFICIER
            , ["Text"] = "/Text/TTH/Skills/Artificier/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
            }
            , ["Perk"] = {
              [68] = { -- 熔毁宝物
                ["Id"] = HERO_SKILL_MELT_ARTIFACT
                , ["Text"] = "/Text/TTH/Skills/Artificier/068-MeltArtifact/Name.txt"
              }
              , [69] = { -- 魔镜
                ["Id"] = HERO_SKILL_MAGIC_MIRROR
                , ["Text"] = "/Text/TTH/Skills/Artificier/069-MagicMirror/Name.txt"
              }
              , [67] = { -- 法师印记
                ["Id"] = HERO_SKILL_MAGIC_BOND
                , ["Text"] = "/Text/TTH/Skills/Sorcery/067-MagicBond/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MAGIC_MIRROR
                }
              }
              , [61] = { -- 宝物学者
                ["Id"] = HERO_SKILL_RAISE_ARCHERS
                , ["Text"] = "/Text/TTH/Skills/Artificier/061-RaiseArchers/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MELT_ARTIFACT
                  , [2] = HERO_SKILL_MAGIC_MIRROR
                }
              }
              , [125] = { -- 魔像行进
                ["Id"] = HERO_SKILL_MARCH_OF_THE_MACHINES
                , ["Text"] = "/Text/TTH/Skills/Artificier/125-MarchOfTheMachines/Name.txt"
              }
              , [126] = { -- 远程控制
                ["Id"] = HERO_SKILL_REMOTE_CONTROL
                , ["Text"] = "/Text/TTH/Skills/Artificier/126-RemoteControl/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MARCH_OF_THE_MACHINES
                }
              }
            }
          }
        -- 穿透魔抗
          , [18] = {
            ["Id"] = HERO_SKILL_INVOCATION
            , ["Text"] = "/Text/TTH/Skills/Invocation/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Heretic
              , TTH_ENUM.Enchanter
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [81] = { -- 神秘精髓
                ["Id"] = HERO_SKILL_CASTER_CERTIFICATE
                , ["Text"] = "/Text/TTH/Skills/Invocation/081-CasterCertificate/Name.txt"
              }
              , [72] = { -- 元素视觉
                ["Id"] = HERO_SKILL_ELEMENTAL_VISION
                , ["Text"] = "/Text/TTH/Skills/Invocation/072-ElementalVision/Name.txt"
                , ["DependType"] = TTH_ENUM.Complicated
                , ["Include"] = {
                  [1] = {
                    ["Class"] = {
                      TTH_ENUM.Warlock
                    }
                    , ["Depend"] = {
                      [1] = HERO_SKILL_CASTER_CERTIFICATE
                    }
                  }
                }
                , ["Depend"] = {
                  [1] = HERO_SKILL_ELEMENTAL_VISION
                }
              }
              , [70] = { -- 法术强效
                ["Id"] = HERO_SKILL_EMPOWERED_SPELLS
                , ["Text"] = "/Text/TTH/Skills/Invocation/070-EmpoweredSpells/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_CASTER_CERTIFICATE
                }
              }
              , [71] = { -- 黑暗仪式
                ["Id"] = HERO_SKILL_DARK_RITUAL
                , ["Text"] = "/Text/TTH/Skills/Invocation/071-DarkRitual/Name.txt"
              }
              , [149] = { -- 驱魔咒语
                ["Id"] = HERO_SKILL_ELEMENTAL_OVERKILL
                , ["Text"] = "/Text/TTH/Skills/Invocation/149-ElementalOverkill/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DARK_RITUAL
                }
              }
              , [150] = { -- 元素的愤怒（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_CHAINS
                , ["Text"] = "/Text/Game/Skills/Unique/Invocation/AbsoluteChains/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 亡灵巫术
          , [15] = {
            ["Id"] = HERO_SKILL_NECROMANCY
            , ["Text"] = "/Text/TTH/Skills/Necromancy/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
            }
            , ["Perk"] = {
              [63] = { -- 女妖尖叫
                ["Id"] = HERO_SKILL_DEATH_SCREAM
                , ["Text"] = "/Text/TTH/Skills/Necromancy/063-DeathScream/Name.txt"
              }
              , [110] = { -- 幽魂矿井
                ["Id"] = HERO_SKILL_HAUNT_MINE
                , ["Text"] = "/Text/TTH/Skills/Necromancy/110-HauntMine/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DEATH_SCREAM
                }
              }
              , [62] = { -- 永恒奴役
                ["Id"] = HERO_SKILL_NO_REST_FOR_THE_WICKED
                , ["Text"] = "/Text/TTH/Skills/Necromancy/062-NoRestForTheWicked/Name.txt"
              }
              , [101] = { -- 丧尸之王
                ["Id"] = HERO_SKILL_LORD_OF_UNDEAD
                , ["Text"] = "/Text/TTH/Skills/Necromancy/101-LordOfUndead/Name.txt"
              }
              , [108] = { -- 灵魂链接
                ["Id"] = HERO_SKILL_SPIRIT_LINK
                , ["Text"] = "/Text/TTH/Skills/Necromancy/108-SpiritLink/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_NO_REST_FOR_THE_WICKED
                  , [2] = HERO_SKILL_LORD_OF_UNDEAD
                }
              }
              , [73] = { -- 邪恶远征（终极）
                ["Id"] = HERO_SKILL_ROAD_HOME
                , ["Text"] = "/Text/TTH/Skills/Necromancy/073-RoadHome/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
              , [111] = { -- 惊魂嚎叫（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_FEAR
                , ["Text"] = "/Text/Game/Skills/Unique/Necromancy/AbsoluteFear/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
              , [103] = { -- 恶灵诅咒（终极）
                ["Id"] = HERO_SKILL_DEAD_LUCK
                , ["Text"] = "/Text/TTH/Skills/Luck/103-DeadLuck/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 异界传送
          , [14] = {
            ["Id"] = HERO_SKILL_GATING
            , ["Text"] = "/Text/TTH/Skills/Gating/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
            }
            , ["Perk"] = {
              [59] = { -- 地狱烈火
                ["Id"] = HERO_SKILL_DEMONIC_FIRE
                , ["Text"] = "/Text/TTH/Skills/Gating/059-DemonicFire/Name.txt"
              }
              , [94] = { -- 灼热之火
                ["Id"] = HERO_SKILL_DEMONIC_FLAME
                , ["Text"] = "/Text/TTH/Skills/Gating/094-DemonicFlame/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DEMONIC_FIRE
                }
              }
              , [58] = { -- 食尸者
                ["Id"] = HERO_SKILL_CONSUME_CORPSE
                , ["Text"] = "/Text/TTH/Skills/Gating/058-ConsumeCorpse/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DEMONIC_FLAME
                }
              }
              , [92] = { -- 地狱愤怒
                ["Id"] = HERO_SKILL_DEMONIC_RETALIATION
                , ["Text"] = "/Text/TTH/Skills/Gating/092-DemonicRetaliation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DEMONIC_FIRE
                }
              }
              , [89] = { -- 门禁大师
                ["Id"] = HERO_SKILL_GATING_MASTERY
                , ["Text"] = "/Text/TTH/Skills/Gating/089-GatingMastery/Name.txt"
              }
              , [86] = { -- 敏捷异界门
                ["Id"] = HERO_SKILL_QUICK_GATING
                , ["Text"] = "/Text/TTH/Skills/Gating/086-QuickGating/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_GATING_MASTERY
                }
              }
              , [90] = { -- 蜂拥之门
                ["Id"] = HERO_SKILL_CRITICAL_GATING
                , ["Text"] = "/Text/TTH/Skills/Gating/086-QuickGating/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_GATING_MASTERY
                }
              }
              , [98] = { -- 鄂加斯的呼唤（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_GATING
                , ["Text"] = "/Text/Game/Skills/Unique/Gating/AbsoluteGating/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 符文学
          , [151] = {
            ["Id"] = HERO_SKILL_RUNELORE
            , ["Text"] = "/Text/TTH/Skills/Runelore/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
            }
            , ["Perk"] = {
              [154] = { -- 精炼符文
                ["Id"] = HERO_SKILL_FINE_RUNE
                , ["Text"] = "/Text/TTH/Skills/Runelore/154-FineRune/Name.txt"
              }
              , [152] = { -- 轮转符文
                ["Id"] = HERO_SKILL_REFRESH_RUNE
                , ["Text"] = "/Text/TTH/Skills/Runelore/152-RefreshRune/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_FINE_RUNE
                }
              }
              , [153] = { -- 高等符文
                ["Id"] = HERO_SKILL_STRONG_RUNE
                , ["Text"] = "/Text/TTH/Skills/Runelore/153-StrongRune/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_FINE_RUNE
                }
              }
              , [158] = { -- 符文平衡
                ["Id"] = HERO_SKILL_RUNIC_ATTUNEMENT
                , ["Text"] = "/Text/TTH/Skills/Runelore/158-RunicAttunement/Name.txt"
              }
              , [157] = { -- 分流符文
                ["Id"] = HERO_SKILL_TAP_RUNES
                , ["Text"] = "/Text/TTH/Skills/Runelore/157-TapRunes/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_RUNIC_ATTUNEMENT
                }
              }
              , [156] = { -- 符文机械（终极）
                ["Id"] = HERO_SKILL_RUNIC_MACHINES
                , ["Text"] = "/Text/TTH/Skills/WarMachines/156-RunicMachines/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 血怒
          , [172] = {
            ["Id"] = HERO_SKILL_DEMONIC_RAGE
            , ["Text"] = "/Text/TTH/Skills/DemonicRage/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [184] = { -- 热血沸腾
                ["Id"] = HERO_SKILL_POWER_OF_BLOOD
                , ["Text"] = "/Text/TTH/Skills/DemonicRage/184-PowerOfBlood/Name.txt"
              }
              , [182] = { -- 地精支援
                ["Id"] = HERO_SKILL_GOBLIN_SUPPORT
                , ["Text"] = "/Text/TTH/Skills/DemonicRage/182-GoblinSupport/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_POWER_OF_BLOOD
                }
              }
              , [174] = { -- 血统记忆
                ["Id"] = HERO_SKILL_MEMORY_OF_OUR_BLOOD
                , ["Text"] = "/Text/TTH/Skills/DemonicRage/174-MemoryOfOurBlood/Name.txt"
              }
              , [178] = { -- 战斗喜悦
                ["Id"] = HERO_SKILL_BATTLE_ELATION
                , ["Text"] = "/Text/TTH/Skills/DemonicRage/178-BattleElation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MEMORY_OF_OUR_BLOOD
                }
              }
              , [176] = { -- 绝对狂暴（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_RAGE
                , ["Text"] = "/Text/Game/Skills/Unique/DemonicRage/AbsoluteRage/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 启蒙
          , [3] = {
            ["Id"] = HERO_SKILL_LEARNING
            , ["Text"] = "/Text/TTH/Skills/Learning/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [27] = { -- 神秘直觉
                ["Id"] = HERO_SKILL_EAGLE_EYE
                , ["Text"] = "/Text/TTH/Skills/Learning/027-EagleEye/Name.txt"
              }
              , [155] = { -- 闪电思维
                ["Id"] = HERO_SKILL_QUICKNESS_OF_MIND
                , ["Text"] = "/Text/TTH/Skills/Learning/155-QuicknessOfMind/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_EAGLE_EYE
                }
              }
              , [140] = { -- 黑暗启示
                ["Id"] = HERO_SKILL_DARK_REVELATION
                , ["Text"] = "/Text/TTH/Skills/Learning/140-DarkRevelation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_EAGLE_EYE
                }
              }
              , [25] = { -- 智慧学
                ["Id"] = HERO_SKILL_INTELLIGENCE
                , ["Text"] = "/Text/TTH/Skills/Learning/025-Intelligence/Name.txt"
              }
              , [79] = { -- 毕业奖励
                ["Id"] = HERO_SKILL_STUDENT_AWARD
                , ["Text"] = "/Text/TTH/Skills/Learning/079-StudentAward/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_INTELLIGENCE
                }
              }
              , [127] = { -- 教官奖励
                ["Id"] = HERO_SKILL_ACADEMY_AWARD
                , ["Text"] = "/Text/TTH/Skills/Learning/127-AcademyAward/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_INTELLIGENCE
                }
              }
              , [26] = { -- 学士
                ["Id"] = HERO_SKILL_SCHOLAR
                , ["Text"] = "/Text/TTH/Skills/Learning/026-Scholar/Name.txt"
              }
              , [87] = { -- 法力提升
                ["Id"] = HERO_SKILL_MASTER_OF_SECRETS
                , ["Text"] = "/Text/TTH/Skills/Learning/087-MasterOfSecrets/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SCHOLAR
                }
              }
              , [169] = { -- 良师益友
                ["Id"] = HERO_SKILL_MENTORING
                , ["Text"] = "/Text/TTH/Skills/Learning/169-Mentoring/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_SECRETS
                }
              }
              , [112] = { -- 励精图治
                ["Id"] = HERO_SKILL_DISGUISE_AND_RECKON
                , ["Text"] = "/Text/TTH/Skills/Learning/112-DisguiseAndReckon/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_SCHOLAR
                }
              }
            }
          }
        -- 巫术
          , [8] = {
            ["Id"] = HERO_SKILL_SORCERY
            , ["Text"] = "/Text/TTH/Skills/Sorcery/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [40] = { -- 魔力再生
                ["Id"] = HERO_SKILL_MYSTICISM
                , ["Text"] = "/Text/TTH/Skills/Sorcery/040-Mysticism/Name.txt"
              }
              , [148] = { -- 精炼魔力
                ["Id"] = HERO_SKILL_ELITE_CASTERS
                , ["Text"] = "/Text/TTH/Skills/Sorcery/148-EliteCasters/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MYSTICISM
                }
              }
              , [41] = { -- 洞察魔力
                ["Id"] = HERO_SKILL_WISDOM
                , ["Text"] = "/Text/TTH/Skills/Sorcery/041-Wisdom/Name.txt"
              }
              , [119] = { -- 神秘光芒
                ["Id"] = HERO_SKILL_INSIGHTS
                , ["Text"] = "/Text/TTH/Skills/Sorcery/119-Insights/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WISDOM
                }
              }
              , [42] = { -- 神秘训练
                ["Id"] = HERO_SKILL_ARCANE_TRAINING
                , ["Text"] = "/Text/TTH/Skills/Sorcery/042-ArcaneTraining/Name.txt"
              }
              , [132] = { -- 魔法抑制
                ["Id"] = HERO_SKILL_COUNTERSPELL
                , ["Text"] = "/Text/TTH/Skills/Sorcery/132-Counterspell/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WISDOM
                  , [2] = HERO_SKILL_ARCANE_TRAINING
                }
              }
              , [162] = { -- 干扰
                ["Id"] = HERO_SKILL_DISTRACT
                , ["Text"] = "/Text/TTH/Skills/Sorcery/162-Distract/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_ARCANE_TRAINING
                }
              }
              , [137] = { -- 神秘全知（终极）
                ["Id"] = HERO_SKILL_ABSOLUTE_WIZARDY
                , ["Text"] = "/Text/Game/Skills/Unique/Artificer/AbsoluteWizardy/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
              , [96] = { -- 潜能激发（终极）
                ["Id"] = HERO_SKILL_FIRE_PROTECTION
                , ["Text"] = "/Text/TTH/Skills/LightMagic/096-FireProtection/Name.txt"
                , ["IsAbsolute"] = TTH_ENUM.Yes
              }
            }
          }
        -- 光明魔法
          , [11] = {
            ["Id"] = HERO_SKILL_LIGHT_MAGIC
            , ["Text"] = "/Text/TTH/Skills/LightMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [51] = { -- 愤怒大师
                ["Id"] = HERO_SKILL_MASTER_OF_WRATH
                , ["Text"] = "/Text/TTH/Skills/LightMagic/051-MasterOfWrath/Name.txt"
              }
              , [122] = { -- 暴风来袭
                ["Id"] = HERO_SKILL_STORM_WIND
                , ["Text"] = "/Text/TTH/Skills/LightMagic/122-StormWind/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_WRATH
                }
              }
              , [49] = { -- 佑福大师
                ["Id"] = HERO_SKILL_MASTER_OF_BLESSING
                , ["Text"] = "/Text/TTH/Skills/LightMagic/049-MasterOfBlessing/Name.txt"
              }
              , [165] = { -- 不灭之光
                ["Id"] = HERO_SKILL_ETERNAL_LIGHT
                , ["Text"] = "/Text/TTH/Skills/LightMagic/165-EternalLight/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_BLESSING
                }
              }
              , [50] = { -- 防护大师
                ["Id"] = HERO_SKILL_MASTER_OF_ABJURATION
                , ["Text"] = "/Text/TTH/Skills/LightMagic/050-MasterOfAbjuration/Name.txt"
              }
              , [109] = { -- 微光黎明
                ["Id"] = HERO_SKILL_TWILIGHT
                , ["Text"] = "/Text/TTH/Skills/LightMagic/109-Twilight/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_ABJURATION
                }
              }
            }
          }
        -- 黑暗魔法
          , [10] = {
            ["Id"] = HERO_SKILL_DARK_MAGIC
            , ["Text"] = "/Text/TTH/Skills/DarkMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [47] = { -- 心智大师
                ["Id"] = HERO_SKILL_MASTER_OF_MIND
                , ["Text"] = "/Text/TTH/Skills/DarkMagic/047-MasterOfMind/Name.txt"
              }
              , [147] = { -- 黑暗再生
                ["Id"] = HERO_SKILL_PAYBACK
                , ["Text"] = "/Text/TTH/Skills/DarkMagic/147-Payback/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_MIND
                }
              }
              , [46] = { -- 诅咒大师
                ["Id"] = HERO_SKILL_MASTER_OF_CURSES
                , ["Text"] = "/Text/TTH/Skills/DarkMagic/046-MasterOfCurses/Name.txt"
              }
              , [121] = { -- 腐败土壤
                ["Id"] = HERO_SKILL_SOIL_BURN
                , ["Text"] = "/Text/TTH/Skills/DarkMagic/121-SoilBurn/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_CURSES
                }
              }
              , [48] = { -- 折磨大师
                ["Id"] = HERO_SKILL_MASTER_OF_SICKNESS
                , ["Text"] = "/Text/TTH/Skills/DarkMagic/048-MasterOfSickness/Name.txt"
              }
              , [83] = { -- 堕落骑士
                ["Id"] = HERO_SKILL_PARIAH
                , ["Text"] = "/Text/TTH/Skills/DarkMagic/083-Pariah/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_SICKNESS
                }
              }
            }
          }
        -- 召唤魔法
          , [12] = {
            ["Id"] = HERO_SKILL_SUMMONING_MAGIC
            , ["Text"] = "/Text/TTH/Skills/SummoningMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [52] = { -- 地血大师
                ["Id"] = HERO_SKILL_MASTER_OF_QUAKES
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/052-MasterOfQuakes/Name.txt"
              }
              , [123] = { -- 迷雾之墙
                ["Id"] = HERO_SKILL_FOG_VEIL
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/123-FogVeil/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_QUAKES
                }
              }
              , [53] = { -- 符咒大师
                ["Id"] = HERO_SKILL_MASTER_OF_CREATURES
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/053-MasterOfCreatures/Name.txt"
              }
              , [97] = { -- 烈火勇士
                ["Id"] = HERO_SKILL_FIRE_AFFINITY
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/097-FireAffinity/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_CREATURES
                }
              }
              , [88] = { -- 寒冰勇士
                ["Id"] = HERO_SKILL_TRIPLE_CATAPULT
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/088-WaterAffinity/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_CREATURES
                }
              }
              , [139] = { -- 雷暴勇士
                ["Id"] = HERO_SKILL_SHAKE_GROUND
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/139-AirAffinity/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_CREATURES
                }
              }
              , [54] = { -- 生命大师
                ["Id"] = HERO_SKILL_MASTER_OF_ANIMATION
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/054-MasterOfAnimation/Name.txt"
              }
              , [166] = { -- 符文盔甲
                ["Id"] = HERO_SKILL_RUNIC_ARMOR
                , ["Text"] = "/Text/TTH/Skills/SummoningMagic/166-RunicArmor/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_ANIMATION
                }
              }
            }
          }
        -- 破坏魔法
          , [9] = {
            ["Id"] = HERO_SKILL_DESTRUCTIVE_MAGIC
            , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Knight
              , TTH_ENUM.Paladin
              , TTH_ENUM.Retribution
              , TTH_ENUM.Heretic
              , TTH_ENUM.Ranger
              , TTH_ENUM.Warden
              , TTH_ENUM.Enchanter
              , TTH_ENUM.GuildMaster
              , TTH_ENUM.Wizard
              , TTH_ENUM.ElementAlist
              , TTH_ENUM.DemonLord
              , TTH_ENUM.GateKeeper
              , TTH_ENUM.Sorcerer
              , TTH_ENUM.DeathKnight
              , TTH_ENUM.Reaver
              , TTH_ENUM.Necromancer
              , TTH_ENUM.Engineer
              , TTH_ENUM.Runemage
              , TTH_ENUM.Flamekeepera
              , TTH_ENUM.BeastMaster
              , TTH_ENUM.Seer
              , TTH_ENUM.Warlock
            }
            , ["Perk"] = {
              [43] = { -- 寒冰大师
                ["Id"] = HERO_SKILL_MASTER_OF_ICE
                , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/043-MasterOfIce/Name.txt"
              }
              , [107] = { -- 致命深寒
                ["Id"] = HERO_SKILL_DEADLY_COLD
                , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/107-DeadlyCold/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_ICE
                }
              }
              , [44] = { -- 烈火大师
                ["Id"] = HERO_SKILL_MASTER_OF_FIRE
                , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/044-MasterOfFire/Name.txt"
              }
              , [163] = { -- 引燃
                ["Id"] = HERO_SKILL_SET_AFIRE
                , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/163-SetAfire/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_FIRE
                }
              }
              , [45] = { -- 风暴大师
                ["Id"] = HERO_SKILL_MASTER_OF_LIGHTNINGS
                , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/045-MasterOfLightnings/Name.txt"
              }
              , [146] = { -- 毁灭之道
                ["Id"] = HERO_SKILL_SECRETS_OF_DESTRUCTION
                , ["Text"] = "/Text/TTH/Skills/DestructiveMagic/146-SecretsOfDestruction/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MASTER_OF_LIGHTNINGS
                }
              }
            }
          }
        -- 启蒙（酋长）
          , [183] = {
            ["Id"] = HERO_SKILL_BARBARIAN_LEARNING
            , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [173] = { -- 抑魔之力
                ["Id"] = HERO_SKILL_MIGHT_OVER_MAGIC
                , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/173-MightOverMagic/Name.txt"
              }
              , [219] = { -- 萨满信仰
                ["Id"] = HERO_SKILL_BARBARIAN_DARK_REVELATION
                , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/219-BarbarianDarkRevelation/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_MIGHT_OVER_MAGIC
                }
              }
              , [185] = { -- 战斗学
                ["Id"] = HERO_SKILL_WARCRY_LEARNING
                , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/185-WarcryLearning/Name.txt"
              }
              , [220] = { -- 良师益友
                ["Id"] = HERO_SKILL_BARBARIAN_MENTORING
                , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/220-BarbarianMentoring/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WARCRY_LEARNING
                }
              }
              , [212] = { -- 智慧学
                ["Id"] = HERO_SKILL_BARBARIAN_INTELLIGENCE
                , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/212-BarbarianIntelligence/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WARCRY_LEARNING
                }
              }
              , [186] = { -- 耐力
                ["Id"] = HERO_SKILL_BODYBUILDING
                , ["Text"] = "/Text/TTH/Skills/BarbarianLearning/186-Bodybuilding/Name.txt"
              }
              , [181] = { -- 全体保卫
                ["Id"] = HERO_SKILL_DEFEND_US_ALL
                , ["Text"] = "/Text/TTH/Skills/DemonicRage/181-DefendUsAll/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BODYBUILDING
                }
              }
            }
          }
        -- 战嚎
          , [187] = {
            ["Id"] = HERO_SKILL_VOICE
            , ["Text"] = "/Text/TTH/Skills/Voice/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [188] = { -- 战嚎训练
                ["Id"] = HERO_SKILL_VOICE_TRAINING
                , ["Text"] = "/Text/TTH/Skills/Voice/188-VoiceTraining/Name.txt"
              }
              , [189] = { -- 强力战嚎
                ["Id"] = HERO_SKILL_MIGHTY_VOICE
                , ["Text"] = "/Text/TTH/Skills/Voice/189-MightyVoice/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_VOICE_TRAINING
                }
              }
              , [190] = { -- 狂暴战嚎
                ["Id"] = HERO_SKILL_VOICE_OF_RAGE
                , ["Text"] = "/Text/TTH/Skills/Voice/190-VoiceOfRage/Name.txt"
              }
              , [218] = { -- 干扰
                ["Id"] = HERO_SKILL_BARBARIAN_DISTRACT
                , ["Text"] = "/Text/TTH/Skills/Voice/218-BarbarianDistract/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_VOICE_OF_RAGE
                }
              }
              , [213] = { -- 魔力再生
                ["Id"] = HERO_SKILL_BARBARIAN_MYSTICISM
                , ["Text"] = "/Text/TTH/Skills/Voice/213-BarbarianMysticism/Name.txt"
              }
              , [214] = { -- 精炼魔力
                ["Id"] = HERO_SKILL_BARBARIAN_ELITE_CASTERS
                , ["Text"] = "/Text/TTH/Skills/Voice/214-BarbarianEliteCasters/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BARBARIAN_MYSTICISM
                }
              }
            }
          }
        -- 反光明魔法
          , [199] = {
            ["Id"] = HERO_SKILL_SHATTER_LIGHT_MAGIC
            , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [201] = { -- 弱化光明
                ["Id"] = HERO_SKILL_WEAKEN_LIGHT
                , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/201-WeakenLight/Name.txt"
              }
              , [200] = { -- 消耗光明
                ["Id"] = HERO_SKILL_CORRUPT_LIGHT
                , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/200-CorruptLight/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WEAKEN_LIGHT
                }
              }
              , [215] = { -- 暴风来袭
                ["Id"] = HERO_SKILL_BARBARIAN_STORM_WIND
                , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/215-BarbarianStormWind/Name.txt"
              }
              , [216] = { -- 御火术
                ["Id"] = HERO_SKILL_BARBARIAN_FIRE_PROTECTION
                , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/216-BarbarianFireProtection/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BARBARIAN_STORM_WIND
                }
              }
              , [202] = { -- 延迟光明
                ["Id"] = HERO_SKILL_DETAIN_LIGHT
                , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/202-DetainLight/Name.txt"
              }
              , [135] = { -- 压制光明
                ["Id"] = HERO_SKILL_SUPRESS_LIGHT
                , ["Text"] = "/Text/TTH/Skills/ShatterLightMagic/135-SupressLight/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DETAIN_LIGHT
                }
              }
            }
          }
        -- 反黑暗魔法
          , [195] = {
            ["Id"] = HERO_SKILL_SHATTER_DARK_MAGIC
            , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [197] = { -- 弱化黑暗
                ["Id"] = HERO_SKILL_WEAKEN_DARK
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/197-WeakenDark/Name.txt"
              }
              , [196] = { -- 消耗黑暗
                ["Id"] = HERO_SKILL_CORRUPT_DARK
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/196-CorruptDark/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WEAKEN_DARK
                }
              }
              , [210] = { -- 腐败大地
                ["Id"] = HERO_SKILL_BARBARIAN_SOIL_BURN
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/210-BarbarianSoilBurn/Name.txt"
              }
              , [209] = { -- 虚弱攻击
                ["Id"] = HERO_SKILL_BARBARIAN_WEAKENING_STRIKE
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/209-BarbarianWeakeningStrike/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BARBARIAN_SOIL_BURN
                }
              }
              , [198] = { -- 延迟黑暗
                ["Id"] = HERO_SKILL_DETAIN_DARK
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/198-DetainDark/Name.txt"
              }
              , [164] = { -- 无视黑暗
                ["Id"] = HERO_SKILL_SHRUG_DARKNESS
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/164-ShrugDarkness/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DETAIN_DARK
                }
              }
              , [134] = { -- 黑暗封印
                ["Id"] = HERO_SKILL_SUPRESS_DARK
                , ["Text"] = "/Text/TTH/Skills/ShatterDarkMagic/134-SupressDark/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DETAIN_DARK
                }
              }
            }
          }
        -- 反召唤魔法
          , [203] = {
            ["Id"] = HERO_SKILL_SHATTER_SUMMONING_MAGIC
            , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [205] = { -- 弱化召唤
                ["Id"] = HERO_SKILL_WEAKEN_SUMMONING
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/205-WeakenSummoning/Name.txt"
              }
              , [204] = { -- 消耗召唤
                ["Id"] = HERO_SKILL_CORRUPT_SUMMONING
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/204-CorruptSummoning/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WEAKEN_SUMMONING
                }
              }
              , [211] = { -- 迷雾之墙
                ["Id"] = HERO_SKILL_BARBARIAN_FOG_VEIL
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/211-BarbarianFogVeil/Name.txt"
              }
              , [207] = { -- 寂灭
                ["Id"] = HERO_SKILL_DEATH_TO_NONEXISTENT
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/207-DeathToNonexistent/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BARBARIAN_FOG_VEIL
                }
              }
              , [206] = { -- 延迟召唤
                ["Id"] = HERO_SKILL_DETAIN_SUMMONING
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/206-DetainSummoning/Name.txt"
              }
              , [84] = { -- 元素平衡
                ["Id"] = HERO_SKILL_ELEMENTAL_BALANCE
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/084-ElementalBalance/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DETAIN_SUMMONING
                }
              }
              , [136] = { -- 驱逐
                ["Id"] = HERO_SKILL_UNSUMMON
                , ["Text"] = "/Text/TTH/Skills/ShatterSummoningMagic/136-Unsummon/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_DETAIN_SUMMONING
                }
              }
            }
          }
        -- 反破坏魔法
          , [191] = {
            ["Id"] = HERO_SKILL_SHATTER_DESTRUCTIVE_MAGIC
            , ["Text"] = "/Text/TTH/Skills/ShatterDestructiveMagic/Mastery/NameNone.txt"
            , ["Class"] = {
              TTH_ENUM.Barbarian
            }
            , ["Perk"] = {
              [193] = { -- 弱化破坏
                ["Id"] = HERO_SKILL_WEAKEN_DESTRUCTIVE
                , ["Text"] = "/Text/TTH/Skills/ShatterDestructiveMagic/193-WeakenDestructive/Name.txt"
              }
              , [192] = { -- 消耗破坏
                ["Id"] = HERO_SKILL_CORRUPT_DESTRUCTIVE
                , ["Text"] = "/Text/TTH/Skills/ShatterDestructiveMagic/192-CorruptDestructive/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_WEAKEN_DESTRUCTIVE
                }
              }
              , [217] = { -- 魔力爆发
                ["Id"] = HERO_SKILL_BARBARIAN_SUN_FIRE
                , ["Text"] = "/Text/TTH/Skills/ShatterDestructiveMagic/217-BarbarianSunFire/Name.txt"
              }
              , [208] = { -- 恶魔血统
                ["Id"] = HERO_SKILL_BARBARIAN_ANCIENT_SMITHY
                , ["Text"] = "/Text/TTH/Skills/ShatterDestructiveMagic/208-BarbarianAncientSmithy/Name.txt"
                , ["DependType"] = TTH_ENUM.Simple
                , ["Depend"] = {
                  [1] = HERO_SKILL_BARBARIAN_SUN_FIRE
                }
              }
              , [194] = { -- 延迟破坏
                ["Id"] = HERO_SKILL_DETAIN_DESTRUCTIVE
                , ["Text"] = "/Text/TTH/Skills/ShatterDestructiveMagic/194-DetainDestructive/Name.txt"
              }
            }
          }
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