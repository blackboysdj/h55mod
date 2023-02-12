print("TTH-MapScript")

TTH_TABLE.BuildingName410W = {
  ["MainTown"] = {
    [PLAYER_1] = "MainTown1"
    , [PLAYER_2] = "MainTown2"
  }
  , ["SubTown"] = {
    [PLAYER_1] = "SubTown1"
    , [PLAYER_2] = "SubTown2"
  }
  , ["RandomTown"] = {
    [PLAYER_1] = "RandomTown1"
    , [PLAYER_2] = "RandomTown2"
  }
  , ["NeutralTown"] = "NeutralTown"
  , ["Avenger"] = {
    [PLAYER_1] = "Avenger1"
    , [PLAYER_2] = "Avenger2"
  }
  , ["Garrison"] = {
    [PLAYER_1] = "Garrison1"
    , [PLAYER_2] = "Garrison2"
  }
  , ["Cast"] = {
    [PLAYER_1] = "Cast1"
    , [PLAYER_2] = "Cast2"
  }
  , ["Artifact"] = {
    [PLAYER_1] = "Artifact1"
    , [PLAYER_2] = "Artifact2"
  }
  , ["Prison"] = {
    [PLAYER_1] = "Prison1"
    , [PLAYER_2] = "Prison2"
  }
  , ["Exp"] = {
    [PLAYER_1] = {
      ["01"] = "Exp1_01"
      , ["10"] = "Exp1_10"
      , ["20"] = "Exp1_20"
      , ["28"] = "Exp1_28"
    }
    , [PLAYER_2] = {
      ["01"] = "Exp2_01"
      , ["10"] = "Exp2_10"
      , ["20"] = "Exp2_20"
      , ["28"] = "Exp2_28"
    }
  }
}
function TTH_MAP10W.initPath()
  TTH_PATH.Visit["CastCreature410W"] = {};
  TTH_PATH.Visit["CastCreature410W"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/CastCreature410W/";
  TTH_PATH.Visit["CastCreature410W"]["Text"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."Text.txt";
  TTH_PATH.Visit["CastCreature410W"]["Title"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."Title.txt";
  TTH_PATH.Visit["CastCreature410W"]["Description"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."Description.txt";
  TTH_PATH.Visit["CastCreature410W"]["NotCastHero"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."NotCastHero.txt";
  TTH_PATH.Visit["CastCreature410W"]["NotEnoughQuota"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."NotEnoughQuota.txt";
  TTH_PATH.Visit["CastCreature410W"]["NoSuitableCreature"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."NoSuitableCreature.txt";
  TTH_PATH.Visit["CastCreature410W"]["Confirm"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."Confirm.txt";
  TTH_PATH.Visit["CastCreature410W"]["Success"] = TTH_PATH.Visit["CastCreature410W"]["Pre"].."Success.txt";
  TTH_PATH.Visit["ChooseSpecialArtifact410W"] = {};
  TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/ChooseSpecialArtifact410W/";
  TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Text"] = TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Pre"].."Text.txt";
  TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Title"] = TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Pre"].."Title.txt";
  TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Description"] = TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Pre"].."Description.txt";
  TTH_PATH.Visit["ChooseSpecialArtifact410W"]["HasChosen"] = TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Pre"].."HasChosen.txt";
  TTH_PATH.Visit["Prison410W"] = {};
  TTH_PATH.Visit["Prison410W"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/Prison410W/";
  TTH_PATH.Visit["Prison410W"]["NoForeignAssistance"] = TTH_PATH.Visit["Prison410W"]["Pre"].."NoForeignAssistance.txt";
end;

function TTH_MAP10W.init()
  TTH_MAP10W.initPath();
	for iPlayer = PLAYER_1, PLAYER_2 do
		print("TTH_MAP10W init-"..iPlayer);
    TTH_MAP10W.initBuilding(iPlayer);
    print("TTH_MAP10W initBuilding-"..iPlayer);
    TTH_MAP10W.initArmy(iPlayer);
    print("TTH_MAP10W initArmy-"..iPlayer);
    TTH_MAP10W.initResource(iPlayer);
    print("TTH_MAP10W initResource-"..iPlayer);
    TTH_VISIT.initVisitCastCreature410W(iPlayer);
    print("TTH_MAP10W initVisitCastCreature410W-"..iPlayer);
    TTH_VISIT.initChooseSpecialArtifact410W(iPlayer);
    print("TTH_MAP10W initChooseSpecialArtifact410W-"..iPlayer);
    TTH_MAP10W.initVisitLearningStone(iPlayer);
    print("TTH_MAP10W initVisitLearningStone-"..iPlayer);
    TTH_MAP10W.initVisitPrison410W(iPlayer);
    print("TTH_MAP10W initVisitPrison410W-"..iPlayer);
    TTH_MAP10W.initDebuff(iPlayer);
    print("TTH_MAP10W initDebuff-"..iPlayer);
	end;

  TTH_MAP10W.initArtifact();
  print("TTH_MAP10W initArtifact");
  TTH_MAP10W.initNeutralTown();
  print("TTH_MAP10W initNeutralTown");
  startThread(TTH_MAP10W.threadInfinite);
end;

TTH_TABLE.Artifacts4Map10W8Minor = {
  [0] = ARTIFACT_SWORD_OF_RUINS
  , [1] = ARTIFACT_BREASTPLATE_OF_PETRIFIED_WOOD
  , [2] = ARTIFACT_SKULL_HELMET
  , [3] = ARTIFACT_WISPERING_RING
  , [4] = ARTIFACT_BEGINNER_MAGIC_STICK
  , [5] = ARTIFACT_EDGE_OF_BALANCE
  , [6] = ARTIFACT_STEADFAST
  , [7] = ARTIFACT_BUCKLER
  , [8] = ARTIFACT_FOUR_LEAF_CLOVER
  , [9] = ARTIFACT_GOLDEN_SEXTANT
  , [10] = ARTIFACT_CROWN_OF_MANY_EYES
  , [11] = ARTIFACT_RING_OF_LIGHTING_PROTECTION
  , [12] = ARTIFACT_BOOTS_OF_INTERFERENCE
  , [13] = ARTIFACT_RIGID_MANTLE
  , [14] = ARTIFACT_BEARHIDE_WRAPS
  , [15] = ARTIFACT_TITANS_TRIDENT
  , [16] = ARTIFACT_RING_OF_LIFE
  , [17] = ARTIFACT_EVERCOLD_ICICLE
  , [18] = ARTIFACT_PHOENIX_FEATHER_CAPE
  , [19] = ARTIFACT_VALORIOUS_ARMOR
  , [20] = ARTIFACT_EARTHSLIDERS
  , [21] = ARTIFACT_TAROT_DECK
  , [22] = ARTIFACT_WEREWOLF_CLAW_NECKLACE
  , [23] = ARTIFACT_SPIRIT_OF_OPPRESSION
};
TTH_TABLE.Artifacts4Map10W8Major = {
  [0] = ARTIFACT_NECKLACE_OF_BRAVERY
  , [1] = ARTIFACT_LION_HIDE_CAPE
  , [2] = ARTIFACT_RING_OF_DEATH
  , [3] = ARTIFACT_RUNIC_WAR_AXE
  , [4] = ARTIFACT_RUNIC_WAR_HARNESS
  , [5] = ARTIFACT_TREEBORN_QUIVER
  , [6] = ARTIFACT_DRUM_OF_CHARGE
  , [7] = ARTIFACT_WAYFARER_BOOTS
  , [8] = ARTIFACT_MOONBLADE
  , [9] = ARTIFACT_BOOTS_OF_SWIFTNESS
  , [10] = ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING
  , [11] = ARTIFACT_ICEBERG_SHIELD
  , [12] = ARTIFACT_NECKLACE_OF_POWER
  , [13] = ARTIFACT_NIGHTMARISH_RING
  , [14] = ARTIFACT_GOLDEN_HORSESHOE
  , [15] = ARTIFACT_RING_OF_CELERITY
  , [16] = ARTIFACT_BAND_OF_CONJURER
  , [17] = ARTIFACT_JINXING_BAND
  , [18] = ARTIFACT_BONESTUDDED_LEATHER
  , [19] = ARTIFACT_HELM_OF_CHAOS
  , [20] = ARTIFACT_RING_OF_THE_SHADOWBRAND
  , [21] = ARTIFACT_DWARVEN_SMITHY_HUMMER
  , [22] = ARTIFACT_BOOK_OF_POWER
  , [23] = ARTIFACT_SHIELD_OF_WOLF_DUCHY
  , [24] = ARTIFACT_RING_OF_FORGOTTEN
  , [25] = ARTIFACT_PENDANT_OF_INTERFERENCE
  , [26] = ARTIFACT_BADGE_OF_SUN_CROSS
  , [27] = ARTIFACT_HORN_OF_CHARGE
}
TTH_TABLE.Artifacts4Map10W8Relic = {
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
  , [25] = ARTIFACT_RING_OF_MACHINE_AFFINITY
  , [26] = ARTIFACT_PENDANT_OF_BLIND
  , [27] = ARTIFACT_UNICORN_HORN_BOW
  , [28] = ARTIFACT_PLATE_MAIL_OF_STABILITY
  , [29] = ARTIFACT_CLOAK_OF_MOURNING
  , [30] = ARTIFACT_STAFF_OF_MAGI
  , [31] = ARTIFACT_RING_OF_MAGI
  , [32] = ARTIFACT_SHAWL_OF_GREAT_LICH
  , [33] = ARTIFACT_TOME_OF_DESTRUCTION
  , [34] = ARTIFACT_TOME_OF_LIGHT_MAGIC
  , [35] = ARTIFACT_TOME_OF_DARK_MAGIC
  , [36] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
  , [37] = ARTIFACT_RING_OF_HOLY_GRIFFIN
  , [38] = ARTIFACT_INHERITANCE
  , [39] = ARTIFACT_FLAG_OF_CHARGE
}
TTH_TABLE.positionArtifact410W = {
	[PLAYER_1] = {
		["PosX"] = 6
		, ["PosY"] = {
      ["Minor"] = 122
      , ["Major"] = 118
      , ["Relic"] = 114
    }
	}
	, [PLAYER_2] = {
		["PosX"] = 118
		, ["PosY"] = {
      ["Minor"] = 122
      , ["Major"] = 118
      , ["Relic"] = 114
    }
	}
};
function TTH_MAP10W.initArtifact()
  TTH_MAP10W.geneArtifact(TTH_TABLE.Artifacts4Map10W8Minor, "Minor");
  TTH_MAP10W.geneArtifact(TTH_TABLE.Artifacts4Map10W8Major, "Major");
  TTH_MAP10W.geneArtifact(TTH_TABLE.Artifacts4Map10W8Relic, "Relic");
end;
function TTH_MAP10W.geneArtifact(arrArtifact, strLevelY)
  local iLenTotal = length(arrArtifact);
  local iLenLeft = TTH_COMMON.floor(length(arrArtifact) / 3 * 2);
  if mod(iLenLeft, 2) ~= 0 then
    iLenLeft = iLenLeft + 1;
  end;
  local i = 0;
  repeat
    iLenTotal = length(arrArtifact);
    local iPlayer = mod(i, 2) + 1;
    local iRandom = random(1000);
    local iIndex = mod(iRandom, iLenTotal);
    local iArtifactId = arrArtifact[iIndex];
    local iDiffX = mod(TTH_COMMON.floor(i / 2), 6) * 2;
    local iDiffY = TTH_COMMON.floor(TTH_COMMON.floor(i / 2) / 6) * 2;
    local iPosX = TTH_TABLE.positionArtifact410W[iPlayer]["PosX"] + iDiffX;
    local iPosY = TTH_TABLE.positionArtifact410W[iPlayer]["PosY"][strLevelY] - iDiffY;
    CreateArtifact("", iArtifactId, iPosX, iPosY, 0);
    arrArtifact = TTH_COMMON.remove8Value(arrArtifact, iArtifactId);
    iLenLeft = iLenLeft - 1;
    i = i + 1;
  until iLenLeft == 0;
end;
function TTH_MAP10W.testArtifact(initX, initY)
  local x = initX;
  local y = initY;
  for iArtifactId = 1, 195 do
    CreateArtifact("", iArtifactId, x, y, 0);
    x = x + 2;
    if mod(iArtifactId, 20) == 0 then
      x = initX;
      y = y - 2;
    end;
  end;
end;

TTH_TABLE.PlayerInitArmy = {
  [TOWN_HEAVEN] = {
    [1] = {
      ["CreatureId"] = 1
      , ["CreatureNum"] = 480
      , ["CreatureGrowth"] = 22
    }
    , [2] = {
      ["CreatureId"] = 3
      , ["CreatureNum"] = 240
      , ["CreatureGrowth"] = 12
    }
    , [3] = {
      ["CreatureId"] = 5
      , ["CreatureNum"] = 175
      , ["CreatureGrowth"] = 10
    }
    , [4] = {
      ["CreatureId"] = 7
      , ["CreatureNum"] = 95
      , ["CreatureGrowth"] = 5
    }
    , [5] = {
      ["CreatureId"] = 9
      , ["CreatureNum"] = 55
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 11
      , ["CreatureNum"] = 50
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 13
      , ["CreatureNum"] = 17
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_PRESERVE] = {
    [1] = {
      ["CreatureId"] = 43
      , ["CreatureNum"] = 240
      , ["CreatureGrowth"] = 10
    }
    , [2] = {
      ["CreatureId"] = 45
      , ["CreatureNum"] = 250
      , ["CreatureGrowth"] = 9
    }
    , [3] = {
      ["CreatureId"] = 47
      , ["CreatureNum"] = 133
      , ["CreatureGrowth"] = 7
    }
    , [4] = {
      ["CreatureId"] = 49
      , ["CreatureNum"] = 78
      , ["CreatureGrowth"] = 4
    }
    , [5] = {
      ["CreatureId"] = 51
      , ["CreatureNum"] = 54
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 53
      , ["CreatureNum"] = 45
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 55
      , ["CreatureNum"] = 17
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_ACADEMY] = {
    [1] = {
      ["CreatureId"] = 57
      , ["CreatureNum"] = 400
      , ["CreatureGrowth"] = 20
    }
    , [2] = {
      ["CreatureId"] = 59
      , ["CreatureNum"] = 280
      , ["CreatureGrowth"] = 14
    }
    , [3] = {
      ["CreatureId"] = 61
      , ["CreatureNum"] = 171
      , ["CreatureGrowth"] = 9
    }
    , [4] = {
      ["CreatureId"] = 63
      , ["CreatureNum"] = 95
      , ["CreatureGrowth"] = 5
    }
    , [5] = {
      ["CreatureId"] = 65
      , ["CreatureNum"] = 72
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 67
      , ["CreatureNum"] = 36
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 69
      , ["CreatureNum"] = 17
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_DUNGEON] = {
    [1] = {
      ["CreatureId"] = 71
      , ["CreatureNum"] = 150
      , ["CreatureGrowth"] = 7
    }
    , [2] = {
      ["CreatureId"] = 73
      , ["CreatureNum"] = 140
      , ["CreatureGrowth"] = 5
    }
    , [3] = {
      ["CreatureId"] = 75
      , ["CreatureNum"] = 140
      , ["CreatureGrowth"] = 6
    }
    , [4] = {
      ["CreatureId"] = 77
      , ["CreatureNum"] = 80
      , ["CreatureGrowth"] = 4
    }
    , [5] = {
      ["CreatureId"] = 79
      , ["CreatureNum"] = 57
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 81
      , ["CreatureNum"] = 38
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 83
      , ["CreatureNum"] = 18
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_NECROMANCY] = {
    [1] = {
      ["CreatureId"] = 29
      , ["CreatureNum"] = 920
      , ["CreatureGrowth"] = 20
    }
    , [2] = {
      ["CreatureId"] = 31
      , ["CreatureNum"] = 450
      , ["CreatureGrowth"] = 15
    }
    , [3] = {
      ["CreatureId"] = 33
      , ["CreatureNum"] = 256
      , ["CreatureGrowth"] = 9
    }
    , [4] = {
      ["CreatureId"] = 35
      , ["CreatureNum"] = 190
      , ["CreatureGrowth"] = 5
    }
    , [5] = {
      ["CreatureId"] = 37
      , ["CreatureNum"] = 81
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 39
      , ["CreatureNum"] = 36
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 41
      , ["CreatureNum"] = 26
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_INFERNO] = {
    [1] = {
      ["CreatureId"] = 15
      , ["CreatureNum"] = 336
      , ["CreatureGrowth"] = 16
    }
    , [2] = {
      ["CreatureId"] = 17
      , ["CreatureNum"] = 336
      , ["CreatureGrowth"] = 15
    }
    , [3] = {
      ["CreatureId"] = 19
      , ["CreatureNum"] = 160
      , ["CreatureGrowth"] = 8
    }
    , [4] = {
      ["CreatureId"] = 21
      , ["CreatureNum"] = 100
      , ["CreatureGrowth"] = 5
    }
    , [5] = {
      ["CreatureId"] = 23
      , ["CreatureNum"] = 66
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 25
      , ["CreatureNum"] = 38
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 27
      , ["CreatureNum"] = 18
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_FORTRESS] = {
    [1] = {
      ["CreatureId"] = 92
      , ["CreatureNum"] = 360
      , ["CreatureGrowth"] = 18
    }
    , [2] = {
      ["CreatureId"] = 94
      , ["CreatureNum"] = 280
      , ["CreatureGrowth"] = 14
    }
    , [3] = {
      ["CreatureId"] = 96
      , ["CreatureNum"] = 133
      , ["CreatureGrowth"] = 7
    }
    , [4] = {
      ["CreatureId"] = 98
      , ["CreatureNum"] = 152
      , ["CreatureGrowth"] = 6
    }
    , [5] = {
      ["CreatureId"] = 100
      , ["CreatureNum"] = 63
      , ["CreatureGrowth"] = 3
    }
    , [6] = {
      ["CreatureId"] = 102
      , ["CreatureNum"] = 36
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 104
      , ["CreatureNum"] = 17
      , ["CreatureGrowth"] = 1
    }
  }
  , [TOWN_STRONGHOLD] = {
    [1] = {
      ["CreatureId"] = 117
      , ["CreatureNum"] = 800
      , ["CreatureGrowth"] = 25
    }
    , [2] = {
      ["CreatureId"] = 119
      , ["CreatureNum"] = 280
      , ["CreatureGrowth"] = 14
    }
    , [3] = {
      ["CreatureId"] = 121
      , ["CreatureNum"] = 209
      , ["CreatureGrowth"] = 11
    }
    , [4] = {
      ["CreatureId"] = 123
      , ["CreatureNum"] = 95
      , ["CreatureGrowth"] = 5
    }
    , [5] = {
      ["CreatureId"] = 125
      , ["CreatureNum"] = 90
      , ["CreatureGrowth"] = 5
    }
    , [6] = {
      ["CreatureId"] = 127
      , ["CreatureNum"] = 36
      , ["CreatureGrowth"] = 2
    }
    , [7] = {
      ["CreatureId"] = 129
      , ["CreatureNum"] = 17
      , ["CreatureGrowth"] = 1
    }
  }
};
function TTH_MAP10W.initBuilding(iPlayer)
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][iPlayer];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  TTH_MANAGE.constructTown(strMainTown, 6);
  if iMainTownRace == TOWN_ACADEMY then
    DestroyTownBuildingToLevel(strMainTown, TOWN_BUILDING_SPECIAL_3, 0, 0);
  end;
  DestroyTownBuildingToLevel(strMainTown, TOWN_BUILDING_TAVERN, 0, 0);

  local strSubTown = TTH_TABLE.BuildingName410W["SubTown"][iPlayer];
  local iSubTownRace = TTH_GLOBAL.getRace8Town(strSubTown);
  TTH_MANAGE.constructTown(strSubTown, 6);
  if iSubTownRace == TOWN_ACADEMY then
    DestroyTownBuildingToLevel(strSubTown, TOWN_BUILDING_SPECIAL_3, 0, 0);
  end;
  DestroyTownBuildingToLevel(strSubTown, TOWN_BUILDING_TAVERN, 0, 0);

  local strRandomTown = TTH_TABLE.BuildingName410W["RandomTown"][iPlayer];
  local iRandomTownRace = TTH_GLOBAL.getRace8Town(strRandomTown);
  TTH_MANAGE.constructTown(strRandomTown, 6);
  if iMainTownRace == TOWN_FORTRESS then
    if iRandomTownRace == TOWN_FORTRESS then
      DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_SPECIAL_1, 0, 0);
    elseif iRandomTownRace == TOWN_ACADEMY then
      DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_SPECIAL_3, 0, 0);
    elseif iRandomTownRace == TOWN_DUNGEON then
      DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_SPECIAL_4, 0, 0);
    end;
  end;
  DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_TAVERN, 0, 0);
end;
function TTH_MAP10W.initNeutralTown()
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][1];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  local strOppositeTown = TTH_TABLE.BuildingName410W["MainTown"][2];
  local iOppositeRace = TTH_GLOBAL.getRace8Town(strOppositeTown);
  local strNeutralTown = TTH_TABLE.BuildingName410W["NeutralTown"];
  local iNeutralRace = TTH_GLOBAL.getRace8Town(strNeutralTown);
  TTH_MANAGE.constructTown(strNeutralTown, 6);
  DestroyTownBuildingToLevel(strNeutralTown, TOWN_BUILDING_TAVERN, 0, 0);
  local listCreature = TTH_GLOBAL.getObjectCreatureInfo(strNeutralTown);
  for i, objCreature in listCreature do
    if objCreature["Id"] > 0 then
      RemoveObjectCreatures(strNeutralTown, objCreature["Id"], objCreature["Count"]);
    end;
  end;
  for iLevel = 1, 7 do
    local objCreature4NeutralTown = TTH_TABLE.PlayerInitArmy[iNeutralRace][iLevel];
    SetObjectDwellingCreatures(strNeutralTown, objCreature4NeutralTown["CreatureId"], 0);
  end;
  DestroyTownBuildingToLevel(strNeutralTown, TOWN_BUILDING_FORT, 0, 0);
end;
function TTH_MAP10W.initArmy(iPlayer)
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][iPlayer];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  local strOppositeTown = TTH_TABLE.BuildingName410W["MainTown"][3 - iPlayer];
  local iOppositeRace = TTH_GLOBAL.getRace8Town(strOppositeTown);
  local strSubTown = TTH_TABLE.BuildingName410W["SubTown"][iPlayer];
  local iSubTownRace = TTH_GLOBAL.getRace8Town(strSubTown);
  local strRandomTown = TTH_TABLE.BuildingName410W["RandomTown"][iPlayer];
  local iRandomTownRace = TTH_GLOBAL.getRace8Town(strRandomTown);
  local strAvenger = TTH_TABLE.BuildingName410W["Avenger"][iPlayer];

  for iLevel = 1, 7 do
    local objCreature4MainTown = TTH_TABLE.PlayerInitArmy[iMainTownRace][iLevel];
    local objCreature4OppositeTown = TTH_TABLE.PlayerInitArmy[iOppositeRace][iLevel];
    local objCreature4SubTown = TTH_TABLE.PlayerInitArmy[iSubTownRace][iLevel];
    local objCreature4RandomTown = TTH_TABLE.PlayerInitArmy[iRandomTownRace][iLevel];
    AddObjectCreatures(strMainTown, objCreature4MainTown["CreatureId"], objCreature4MainTown["CreatureNum"]);
    if iMainTownRace == TOWN_NECROMANCY then
        SetObjectDwellingCreatures(strMainTown, objCreature4MainTown["CreatureId"], objCreature4MainTown["CreatureGrowth"] * 2 + objCreature4RandomTown["CreatureGrowth"]);
    else
      if iMainTownRace == iRandomTownRace then
        SetObjectDwellingCreatures(strMainTown, objCreature4MainTown["CreatureId"], objCreature4MainTown["CreatureGrowth"] * 3);
      else
        SetObjectDwellingCreatures(strMainTown, objCreature4MainTown["CreatureId"], objCreature4MainTown["CreatureGrowth"] * 2);
      end;
    end;
    SetObjectDwellingCreatures(strSubTown, objCreature4SubTown["CreatureId"], 0);
    SetObjectDwellingCreatures(strRandomTown, objCreature4RandomTown["CreatureId"], 0);
    AddObjectCreatures(strAvenger, objCreature4OppositeTown["CreatureId"], objCreature4OppositeTown["CreatureGrowth"] * 2);
  end;
end;

TTH_TABLE.PlayerInitResource = {
  [TOWN_HEAVEN] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 90000
  }
  , [TOWN_PRESERVE] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 50000
  }
  , [TOWN_ACADEMY] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 78
    , [GOLD] = 50000
  }
  , [TOWN_DUNGEON] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 50000
  }
  , [TOWN_NECROMANCY] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 50000
  }
  , [TOWN_INFERNO] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 50000
  }
  , [TOWN_FORTRESS] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 50000
  }
  , [TOWN_STRONGHOLD] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 50000
  }
};
function TTH_MAP10W.initResource(iPlayer)
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][iPlayer];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  for enumResource = WOOD, GOLD do
    SetPlayerResource(iPlayer, enumResource, TTH_TABLE.PlayerInitResource[iMainTownRace][enumResource]);
  end;
end;

TTH_TABLE.CastCreature410W = {
  ["OrtanCassius"] = {
    ["PreCreature"] = {
      [CREATURE_FOOTMAN] = {
        ["Scale"] = 4
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
      , [CREATURE_SWORDSMAN] = {
        ["Scale"] = 4
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
      , [CREATURE_VINDICATOR] = {
        ["Scale"] = 4
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
    ["PreCreature"] = {
      [CREATURE_FOOTMAN] = {
        ["Scale"] = 6
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
        ["Scale"] = 6
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
        ["Scale"] = 6
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
    ["PreCreature"] = {
      [CREATURE_ARCHER] = {
        ["Scale"] = 2.5
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
        ["Scale"] = 2.5
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
        ["Scale"] = 2.5
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
    ["PreCreature"] = {
      [CREATURE_WOOD_ELF] = {
        ["Scale"] = 4
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
        ["Scale"] = 4
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
        ["Scale"] = 4
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
    ["PreCreature"] = {
      [CREATURE_UNICORN] = {
        ["Scale"] = 1.2
        , ["PostCreatureId"] = CREATURE_WING_UNICORN
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
        ["Scale"] = 1.2
        , ["PostCreatureId"] = CREATURE_WING_UNICORN
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
        ["Scale"] = 1.2
        , ["PostCreatureId"] = CREATURE_WING_UNICORN
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
    ["PreCreature"] = {
      [CREATURE_MAGI] = {
        ["Scale"] = 1.5
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
        ["Scale"] = 1.5
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
        ["Scale"] = 1.5
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
  , ["Thant"] = {
    ["PreCreature"] = {
      [CREATURE_WALKING_DEAD] = {
        ["Scale"] = 6
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
        ["Scale"] = 6
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
        ["Scale"] = 6
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
    ["PreCreature"] = {
      [CREATURE_WALKING_DEAD] = {
        ["Scale"] = 10
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
        ["Scale"] = 10
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
        ["Scale"] = 10
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
  , ["Adelaide"] = {
    ["PreCreature"] = {
      [CREATURE_WALKING_DEAD] = {
        ["Scale"] = 2.5
        , ["PostCreatureId"] = CREATURE_SIREN
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
      , [CREATURE_ZOMBIE] = {
        ["Scale"] = 2.5
        , ["PostCreatureId"] = CREATURE_SIREN
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
      , [CREATURE_DISEASE_ZOMBIE] = {
        ["Scale"] = 2.5
        , ["PostCreatureId"] = CREATURE_SIREN
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
  , ["Azar"] = {
    ["PreCreature"] = {
      [CREATURE_GOBLIN] = {
        ["Scale"] = 6
        , ["PostCreatureId"] = CREATURE_WOLF
        , ["MaxGcd"] = 4
        , ["HeroStep"] = 4
        , ["Res"] = {
          [WOOD] = 0
          , [ORE] = 0
          , [MERCURY] = 0
          , [CRYSTAL] = 0
          , [SULFUR] = 0
          , [GEM] = 0
          , [GOLD] = 600
        }
      }
      , [CREATURE_GOBLIN_TRAPPER] = {
        ["Scale"] = 6
        , ["PostCreatureId"] = CREATURE_WOLF
        , ["MaxGcd"] = 4
        , ["HeroStep"] = 4
        , ["Res"] = {
          [WOOD] = 0
          , [ORE] = 0
          , [MERCURY] = 0
          , [CRYSTAL] = 0
          , [SULFUR] = 0
          , [GEM] = 0
          , [GOLD] = 600
        }
      }
      , [CREATURE_GOBLIN_DEFILER] = {
        ["Scale"] = 6
        , ["PostCreatureId"] = CREATURE_WOLF
        , ["MaxGcd"] = 4
        , ["HeroStep"] = 4
        , ["Res"] = {
          [WOOD] = 0
          , [ORE] = 0
          , [MERCURY] = 0
          , [CRYSTAL] = 0
          , [SULFUR] = 0
          , [GEM] = 0
          , [GOLD] = 600
        }
      }
    }
  }
};
TTH_VARI.recordCastCreature410W = {};
function TTH_VISIT.initVisitCastCreature410W(iPlayer)
  local strCast = TTH_TABLE.BuildingName410W["Cast"][iPlayer];
  SetTrigger(OBJECT_TOUCH_TRIGGER, strCast, "TTH_VISIT.visitCastCreature410W");
  SetObjectEnabled(strCast, nil);
  OverrideObjectTooltipNameAndDescription(strCast, TTH_PATH.Visit["CastCreature410W"]["Title"], TTH_PATH.Visit["CastCreature410W"]["Description"]);
end;
function TTH_VISIT.visitCastCreature410W(strHero, strBuildingName)
  TTH_COMMON.initNavi(TTH_PATH.Visit["CastCreature410W"]["Text"]);

  local funcCallback = "TTH_VISIT.visitCastCreature410W";
  MarkObjectAsVisited(strBuildingName, strHero);
  local iPlayer = GetObjectOwner(strHero);
  if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
    print("AI Player: "..iPlayer.." Visits CastCreature410W");
    TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
  else
    TTH_VISIT.checkPreVisitCastCreature410W4NotCastHero(iPlayer, strHero, strBuildingName);
  end;
end;
function TTH_VISIT.checkPreVisitCastCreature410W4NotCastHero(iPlayer, strHero)
  local bIsCastHero = TTH_ENUM.No;
  for strCastHero, objCastCreatureInfo in TTH_TABLE.CastCreature410W do
    if strHero == strCastHero then
      bIsCastHero = TTH_ENUM.Yes;
      break;
    end;
  end;
  if bIsCastHero == TTH_ENUM.No then
    local strText = TTH_PATH.Visit["CastCreature410W"]["NotCastHero"];
    TTH_GLOBAL.sign(strHero, strText);
    return nil;
  end;

  TTH_VISIT.checkPreVisitCastCreature410W4CreatureExsit(iPlayer, strHero);
end;
function TTH_VISIT.checkPreVisitCastCreature410W4CreatureExsit(iPlayer, strHero)
  local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
  local arrPreCreature = TTH_TABLE.CastCreature410W[strHero]["PreCreature"];
  local i = 1;
  local arrOption = {};
  for iIndexSlot = 0, 6 do
    local iSlotCreatureId = arrCreature4Hero[iIndexSlot]["Id"];
    for iPreCreatureId, objPreCreature in arrPreCreature do
      if iPreCreatureId == iSlotCreatureId then
        arrOption[i] = {
          ["Id"] = iSlotCreatureId
          , ["Text"] = TTH_TABLE.Creature[iPreCreatureId]["NAME"]
          , ["Callback"] = "TTH_VISIT.comfirmVisitCastCreature410W"
        };
        i = i + 1;
      end;
    end;
  end;

  if length(arrOption) == 0 then
    local strText = TTH_PATH.Visit["CastCreature410W"]["NoSuitableCreature"];
    TTH_GLOBAL.sign(strHero, strText);
    return nil;
  end;

  TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
end;
function TTH_VISIT.comfirmVisitCastCreature410W(iPlayer, strHero, iPreCreatureId)
  local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
  local iPreCreatureCount = 0;
  for iIndexSlot = 0, 6 do
    if iPreCreatureId == arrCreature4Hero[iIndexSlot]["Id"] then
      iPreCreatureCount = arrCreature4Hero[iIndexSlot]["Count"];
      break;
    end;
  end;
  local objPreCreature = TTH_TABLE.CastCreature410W[strHero]["PreCreature"][iPreCreatureId];
  local iPostCreatureNum = TTH_COMMON.floor(iPreCreatureCount / objPreCreature["Scale"]);
  local iPreCreatureNum = iPostCreatureNum * objPreCreature["Scale"];
  local strPreCreatureName = TTH_TABLE.Creature[iPreCreatureId]["NAME"];
  local iPostCreatureId = objPreCreature["PostCreatureId"];
  local strPostCreatureName = TTH_TABLE.Creature[iPostCreatureId]["NAME"];

  local strText = {
    TTH_PATH.Visit["CastCreature410W"]["Confirm"]
    ;iPreCreatureNum=iPreCreatureNum
    ,strPreCreatureName=strPreCreatureName
    ,iPostCreatureNum=iPostCreatureNum
    ,strPostCreatureName=strPostCreatureName
  };
  local strCallbackOk = "TTH_VISIT.implVisitCastCreature410W("..iPlayer..","..TTH_COMMON.psp(strHero)..","..iPreCreatureId..","..iPostCreatureNum..")";
  local strCallbackCancel = "TTH_COMMON.cancelOption()";
  TTH_GLOBAL.showDialog8Frame(iPlayer, strHero, TTH_ENUM.QuestionBox, strText, strCallbackOk, strCallbackCancel);
end;
function TTH_VISIT.implVisitCastCreature410W(iPlayer, strHero, iPreCreatureId, iPostCreatureNum)
  local objPreCreature = TTH_TABLE.CastCreature410W[strHero]["PreCreature"][iPreCreatureId];
  local iPreCreatureNum = TTH_COMMON.ceil(iPostCreatureNum * objPreCreature["Scale"]);
  local strPreCreatureName = TTH_TABLE.Creature[iPreCreatureId]["NAME"];
  local iPostCreatureId = objPreCreature["PostCreatureId"];
  local strPostCreatureName = TTH_TABLE.Creature[iPostCreatureId]["NAME"];

  TTH_GLOBAL.replaceCreature4Hero(strHero, iPreCreatureId, iPreCreatureNum, iPostCreatureId, iPostCreatureNum);
  local strText = TTH_PATH.Visit["CastCreature410W"]["Success"];
  TTH_GLOBAL.sign(strHero, strText);
end;

TTH_VARI.recordChooseSpecialArtifact410W = {};
function TTH_VISIT.initChooseSpecialArtifact410W(iPlayer)
  local strArtifact = TTH_TABLE.BuildingName410W["Artifact"][iPlayer];
  SetTrigger(OBJECT_TOUCH_TRIGGER, strArtifact, "TTH_VISIT.visitChooseSpecialArtifact410W");
  SetObjectEnabled(strArtifact, nil);
  OverrideObjectTooltipNameAndDescription(strArtifact, TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Title"], TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Description"]);
end;
function TTH_VISIT.visitChooseSpecialArtifact410W(strHero, strBuildingName)
  TTH_COMMON.initNavi(TTH_PATH.Visit["ChooseSpecialArtifact410W"]["Text"]);

  local funcCallback = "TTH_VISIT.visitChooseSpecialArtifact410W";
  MarkObjectAsVisited(strBuildingName, strHero);
  local iPlayer = GetObjectOwner(strHero);
  if TTH_GLOBAL.isAi(iPlayer) == TTH_ENUM.Yes then
    print("AI Player: "..iPlayer.." Visits ChooseSpecialArtifact410W");
    TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
  else
    TTH_VISIT.checkPreVisitChooseSpecialArtifact410W4HasChosen(iPlayer, strHero, strBuildingName);
  end;
end;
function TTH_VISIT.checkPreVisitChooseSpecialArtifact410W4HasChosen(iPlayer, strHero)
  if TTH_VARI.recordChooseSpecialArtifact410W[iPlayer] ~= nil and TTH_VARI.recordChooseSpecialArtifact410W[iPlayer] == TTH_ENUM.Yes then
    local strText = TTH_PATH.Visit["ChooseSpecialArtifact410W"]["HasChosen"];
    TTH_GLOBAL.sign(strHero, strText);
    return nil;
  end;

  TTH_VISIT.radioVisitChooseSpecialArtifact410W(iPlayer, strHero);
end;
function TTH_VISIT.radioVisitChooseSpecialArtifact410W(iPlayer, strHero)
  local i = 1;
  local arrOption = {};
  arrOption[i] = {
    ["Id"] = ARTIFACT_PEDANT_OF_MASTERY
    , ["Text"] = TTH_TABLE.Artifact[ARTIFACT_PEDANT_OF_MASTERY]["Text"]
    , ["Callback"] = "TTH_VISIT.implVisitChooseSpecialArtifact410W"
  };
  i = i + 1;
  arrOption[i] = {
    ["Id"] = ARTIFACT_PENDANT_OF_STARDUST
    , ["Text"] = TTH_TABLE.Artifact[ARTIFACT_PENDANT_OF_STARDUST]["Text"]
    , ["Callback"] = "TTH_VISIT.implVisitChooseSpecialArtifact410W"
  };
  i = i + 1;
  arrOption[i] = {
    ["Id"] = ARTIFACT_TWISTING_NEITHER
    , ["Text"] = TTH_TABLE.Artifact[ARTIFACT_TWISTING_NEITHER]["Text"]
    , ["Callback"] = "TTH_VISIT.implVisitChooseSpecialArtifact410W"
  };
  i = i + 1;

  TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
end;
function TTH_VISIT.implVisitChooseSpecialArtifact410W(iPlayer, strHero, iArtifactId)
  TTH_VARI.recordChooseSpecialArtifact410W[iPlayer] = TTH_ENUM.Yes;
  TTH_GLOBAL.giveHeroArtifact(strHero, iArtifactId);
end;

function TTH_MAP10W.initVisitPrison410W(iPlayer)
  local strPrison = TTH_TABLE.BuildingName410W["Prison"][iPlayer];
  SetTrigger(OBJECT_TOUCH_TRIGGER, strPrison, "TTH_VISIT.visitPrison410W");
  SetObjectEnabled(strPrison, nil);
end;
function TTH_VISIT.visitPrison410W(strHero, strBuildingName)
  local iPlayer = GetObjectOwner(strHero);
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][iPlayer];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  if iMainTownRace == TOWN_ACADEMY then
    local strText = TTH_PATH.Visit["Prison410W"]["NoForeignAssistance"];
    TTH_GLOBAL.sign(strHero, strText);
  else
    local funcCallback = "TTH_VISIT.visitPrison410W";
    TTH_VISIT.visitBuildingWithoutScript(strHero, strBuildingName, funcCallback);
    TTH_MAP10W.dealConvertTown(iPlayer);
  end;
end;
TTH_VARI.recordHasConvertTown410W = {};
function TTH_MAP10W.dealConvertTown(iPlayer)
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][iPlayer];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  local strRandomTown = TTH_TABLE.BuildingName410W["RandomTown"][iPlayer];
  local iRandomTownRace = TTH_GLOBAL.getRace8Town(strRandomTown);
  repeat
    sleep(10);
  until length(GetPlayerHeroes(iPlayer)) > 1;
  if TTH_VARI.recordHasConvertTown410W[iPlayer] == nil then
    TTH_VARI.recordHasConvertTown410W[iPlayer] = TTH_ENUM.Yes;
    local strHero = GetPlayerHeroes(iPlayer)[1];
    local iHeroRace = TTH_TABLE.Hero[strHero]["Race"];
    if iHeroRace ~= iRandomTownRace then
      TransformTown(strRandomTown, iHeroRace);
      sleep(1);
      TTH_MANAGE.constructTown(strRandomTown, 6);
      if iMainTownRace == TOWN_FORTRESS then
        if iHeroRace == TOWN_FORTRESS then
          DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_SPECIAL_1, 0, 0);
        elseif iHeroRace == TOWN_ACADEMY then
          DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_SPECIAL_3, 0, 0);
        elseif iHeroRace == TOWN_DUNGEON then
          DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_SPECIAL_4, 0, 0);
        end;
      end;
      DestroyTownBuildingToLevel(strRandomTown, TOWN_BUILDING_TAVERN, 0, 0);
      for iLevel = 1, 7 do
        local objCreature4RandomTown = TTH_TABLE.PlayerInitArmy[iHeroRace][iLevel];
        SetObjectDwellingCreatures(strRandomTown, objCreature4RandomTown["CreatureId"], 0);
      end;
    end;
  end;
end;

function TTH_MAP10W.initVisitLearningStone(iPlayer)
  local objExp = TTH_TABLE.BuildingName410W["Exp"][iPlayer];
  local strExp01 = objExp["01"];
  local strExp10 = objExp["10"];
  local strExp20 = objExp["20"];
  local strExp28 = objExp["28"];
  SetTrigger(OBJECT_TOUCH_TRIGGER, strExp01, "TTH_VISIT.visitLearningStone01");
  SetObjectEnabled(strExp01, nil);
  SetTrigger(OBJECT_TOUCH_TRIGGER, strExp10, "TTH_VISIT.visitLearningStone10");
  SetObjectEnabled(strExp10, nil);
  SetTrigger(OBJECT_TOUCH_TRIGGER, strExp20, "TTH_VISIT.visitLearningStone20");
  SetObjectEnabled(strExp20, nil);
  SetTrigger(OBJECT_TOUCH_TRIGGER, strExp28, "TTH_VISIT.visitLearningStone28");
  SetObjectEnabled(strExp28, nil);
  TTH_PATH.Visit["LearningStone"] = {};
  TTH_PATH.Visit["LearningStone"]["Pre"] = "/Text/Game/Scripts/TTH_Path/Visit/LearningStone/";
  TTH_PATH.Visit["LearningStone"]["Title"] = TTH_PATH.Visit["LearningStone"]["Pre"].."Title.txt";
  TTH_PATH.Visit["LearningStone"]["Description01"] = TTH_PATH.Visit["LearningStone"]["Pre"].."Description01.txt";
  TTH_PATH.Visit["LearningStone"]["Description10"] = TTH_PATH.Visit["LearningStone"]["Pre"].."Description10.txt";
  TTH_PATH.Visit["LearningStone"]["Description20"] = TTH_PATH.Visit["LearningStone"]["Pre"].."Description20.txt";
  TTH_PATH.Visit["LearningStone"]["Description28"] = TTH_PATH.Visit["LearningStone"]["Pre"].."Description28.txt";
  OverrideObjectTooltipNameAndDescription(strExp01, TTH_PATH.Visit["LearningStone"]["Title"], TTH_PATH.Visit["LearningStone"]["Description01"]);
  OverrideObjectTooltipNameAndDescription(strExp10, TTH_PATH.Visit["LearningStone"]["Title"], TTH_PATH.Visit["LearningStone"]["Description10"]);
  OverrideObjectTooltipNameAndDescription(strExp20, TTH_PATH.Visit["LearningStone"]["Title"], TTH_PATH.Visit["LearningStone"]["Description20"]);
  OverrideObjectTooltipNameAndDescription(strExp28, TTH_PATH.Visit["LearningStone"]["Title"], TTH_PATH.Visit["LearningStone"]["Description28"]);
end;
function TTH_VISIT.visitLearningStone01(strHero, strBuildingName)
  SetTrigger(OBJECT_TOUCH_TRIGGER, strBuildingName, nil);
  local iExp = TTH_TABLE.Exp4LevelUp[1];
  TTH_GLOBAL.giveExp(strHero, iExp);
  MarkObjectAsVisited(strBuildingName, strHero);
end;
function TTH_VISIT.visitLearningStone10(strHero, strBuildingName)
  SetTrigger(OBJECT_TOUCH_TRIGGER, strBuildingName, nil);
  local iExp = TTH_TABLE.Exp4LevelUp[10] - TTH_TABLE.Exp4LevelUp[1];
  TTH_GLOBAL.giveExp(strHero, iExp);
  MarkObjectAsVisited(strBuildingName, strHero);
end;
function TTH_VISIT.visitLearningStone20(strHero, strBuildingName)
  SetTrigger(OBJECT_TOUCH_TRIGGER, strBuildingName, nil);
  local iExp = TTH_TABLE.Exp4LevelUp[20] - TTH_TABLE.Exp4LevelUp[10];
  TTH_GLOBAL.giveExp(strHero, iExp);
  MarkObjectAsVisited(strBuildingName, strHero);
end;
function TTH_VISIT.visitLearningStone28(strHero, strBuildingName)
  SetTrigger(OBJECT_TOUCH_TRIGGER, strBuildingName, nil);
  local iExp = TTH_TABLE.Exp4LevelUp[35] - TTH_TABLE.Exp4LevelUp[20];
  TTH_GLOBAL.giveExp(strHero, iExp);
  MarkObjectAsVisited(strBuildingName, strHero);
end;

function TTH_MAP10W.initDebuff(iPlayer)
  Trigger(OBJECT_CAPTURE_TRIGGER, TTH_TABLE.BuildingName410W["Garrison"][iPlayer], "TTH_MAP10W.initDebuff4Garrison")
end;
function TTH_MAP10W.initDebuff4Garrison(iOldPlayer, iNewPlayer, strHero, strObject)
  local strMainTown = TTH_TABLE.BuildingName410W["MainTown"][iNewPlayer];
  local iMainTownRace = TTH_GLOBAL.getRace8Town(strMainTown);
  local strOppositeTown = TTH_TABLE.BuildingName410W["MainTown"][3 - iNewPlayer];
  local iOppositeRace = TTH_GLOBAL.getRace8Town(strOppositeTown);
  local strRandomTown = TTH_TABLE.BuildingName410W["RandomTown"][iNewPlayer];
  local iRandomTownRace = TTH_GLOBAL.getRace8Town(strRandomTown);
  if iMainTownRace == TOWN_ACADEMY
    and (
      iOppositeRace == TOWN_DUNGEON
      or iOppositeRace == TOWN_INFERNO
    ) then
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_MORALE, -3);
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_LUCK, -2);
  end;
  if iMainTownRace == TOWN_INFERNO then
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_DEFENCE, 5);
  end;
  if iRandomTownRace == TOWN_STRONGHOLD then
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_ATTACK, 2);
  end;

  if TTH_TABLE.Hero[strHero]["Class"] == TTH_ENUM.Enchanter
    and (
      iOppositeRace == TOWN_ACADEMY
      or iOppositeRace == TOWN_NECROMANCY
      or iOppositeRace == TOWN_FORTRESS
    ) then
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_ATTACK, 3);
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_DEFENCE, 3);
  end;

  TTH_GLOBAL.setGameVar4HeroLevel(strHero);
  TTH_GLOBAL.giveHero4Attribute(strHero);
  TTH_GLOBAL.dealSkillBonus8Hero(strHero);
  if HasHeroSkill(strHero, HERO_SKILL_POWER_OF_HASTE) then
    TTH_PERK.active143(iNewPlayer, strHero);
  end;
  if HasHeroSkill(strHero, HERO_SKILL_POWER_OF_STONE) then
    TTH_PERK.active144(iNewPlayer, strHero);
  end;
  if HasHeroSkill(strHero, HERO_SKILL_PARIAH) then
    TTH_PERK.active083(iNewPlayer, strHero);
  end;
  if HasHeroSkill(strHero, HERO_SKILL_TWILIGHT) then
    TTH_PERK.active109(iNewPlayer, strHero);
  end;
  if HasHeroSkill(strHero, HERO_SKILL_FOREST_GUARD_EMBLEM) then
    TTH_PERK.active115(iNewPlayer, strHero);
  end;
end

function TTH_MAP10W.dealDaily(iPlayer)
	print("TTH_MAP10W dealDaily-"..iPlayer.." day-"..TTH_VARI.day);
end;

TTH_TABLE.PerkOperTimes = {
  HERO_SKILL_POWER_OF_HASTE
  , HERO_SKILL_POWER_OF_STONE
  , HERO_SKILL_PARIAH
  , HERO_SKILL_TWILIGHT
};
function TTH_MAP10W.getPerkOperTimes(iSkillId)
  local iTimes = 0;
  if contains(TTH_TABLE.PerkOperTimes, iSkillId) then
    iTimes = 1;
  end;
  return iTimes;
end;

function TTH_MAP10W.threadInfinite()
  while TTH_ENUM.Yes do
    sleep(10);
    TTH.run();
    for iPlayer = PLAYER_1, PLAYER_2 do
      local arrHero = GetPlayerHeroes(iPlayer);
      for i, strHero in arrHero do
        ControlHeroCustomAbility(strHero, CUSTOM_ABILITY_3, CUSTOM_ABILITY_DISABLED);
      end;
    end;
  end;
end;