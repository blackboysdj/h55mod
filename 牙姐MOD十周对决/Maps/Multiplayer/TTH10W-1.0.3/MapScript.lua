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
end;

function TTH_MAP10W.init()
  TTH_MAP10W.initPath();
	for iPlayer = PLAYER_1, PLAYER_2 do
		print("TTH_MAP10W init-"..iPlayer);
		TTH_MAP10W.initArtifact(iPlayer);
    print("TTH_MAP10W initArtifact-"..iPlayer);
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
    TTH_MAP10W.initDebuff(iPlayer);
    print("TTH_MAP10W initDebuff-"..iPlayer);
	end;

  TTH_MAP10W.initNeutralTown();
  print("TTH_MAP10W initNeutralTown");
  TTH_FINAL.MARCH_OF_THE_MACHINES_SET_MAGIS = 4;
  startThread(TTH_MAP10W.threadInfinite);
end;

TTH_TABLE.Artifacts4Map10W = {
  [1] = {
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
    , [15] = ARTIFACT_RING_OF_UNSUMMONING
  }
  , [2] = {
    [0] = ARTIFACT_TITANS_TRIDENT
    , [1] = ARTIFACT_RING_OF_LIFE
    , [2] = ARTIFACT_EVERCOLD_ICICLE
    , [3] = ARTIFACT_PHOENIX_FEATHER_CAPE
    , [4] = ARTIFACT_VALORIOUS_ARMOR
    , [5] = ARTIFACT_EARTHSLIDERS
    , [6] = ARTIFACT_TAROT_DECK
    , [7] = ARTIFACT_WEREWOLF_CLAW_NECKLACE
    , [8] = ARTIFACT_SPIRIT_OF_OPPRESSION
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
    , [8] = ARTIFACT_MONK_02
    , [9] = ARTIFACT_MONK_04
    , [10] = ARTIFACT_PIRATE_HAT
    , [11] = ARTIFACT_PIRATE_VEST
    , [12] = ARTIFACT_PIRATE_RING
    , [13] = ARTIFACT_PIRATE_HOOK
    , [14] = ARTIFACT_PIRATE_BOOTS
  }
  , [4] = {
    [0] = ARTIFACT_DRUM_OF_CHARGE
    , [1] = ARTIFACT_MOONBLADE
    , [2] = ARTIFACT_BOOTS_OF_SWIFTNESS
    , [3] = ARTIFACT_INHERITANCE
    , [4] = ARTIFACT_GREAT_AXE_OF_GIANT_SLAYING
    , [5] = ARTIFACT_ICEBERG_SHIELD
    , [6] = ARTIFACT_NECKLACE_OF_POWER
    , [7] = ARTIFACT_NIGHTMARISH_RING
    , [8] = ARTIFACT_GOLDEN_HORSESHOE
    , [9] = ARTIFACT_RING_OF_CELERITY
    , [10] = ARTIFACT_BAND_OF_CONJURER
    , [11] = ARTIFACT_JINXING_BAND
    , [12] = ARTIFACT_BONESTUDDED_LEATHER
    , [13] = ARTIFACT_HELM_OF_CHAOS
    , [14] = ARTIFACT_RING_OF_THE_SHADOWBRAND
    , [15] = ARTIFACT_DWARVEN_SMITHY_HUMMER
    , [16] = ARTIFACT_BOOK_OF_POWER
    , [17] = ARTIFACT_SHIELD_OF_WOLF_DUCHY
    , [18] = ARTIFACT_RING_OF_FORGOTTEN
    , [19] = ARTIFACT_PENDANT_OF_INTERFERENCE
    , [20] = ARTIFACT_BADGE_OF_SUN_CROSS
    , [21] = ARTIFACT_CROWN_OF_LEADER
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
    [0] = ARTIFACT_PENDANT_OF_BLIND
    , [1] = ARTIFACT_UNICORN_HORN_BOW
    , [2] = ARTIFACT_PLATE_MAIL_OF_STABILITY
    , [3] = ARTIFACT_CLOAK_OF_MOURNING
    , [4] = ARTIFACT_STAFF_OF_MAGI
    , [5] = ARTIFACT_RING_OF_MAGI
    , [6] = ARTIFACT_TWISTING_NEITHER
    , [7] = ARTIFACT_SHAWL_OF_GREAT_LICH
    , [8] = ARTIFACT_TOME_OF_DESTRUCTION
    , [9] = ARTIFACT_TOME_OF_LIGHT_MAGIC
    , [10] = ARTIFACT_TOME_OF_DARK_MAGIC
    , [11] = ARTIFACT_TOME_OF_SUMMONING_MAGIC
    , [12] = ARTIFACT_RING_OF_MACHINE_AFFINITY
    , [13] = ARTIFACT_RING_OF_HOLY_GRIFFIN
    , [14] = ARTIFACT_CLOAK_OF_MALASSA
  }
};
TTH_TABLE.positionArtifact410W = {
	[PLAYER_1] = {
		["PosX"] = 6
		, ["PosY"] = 120
	}
	, [PLAYER_2] = {
		["PosX"] = 115
		, ["PosY"] = 120
	}
};
TTH_TABLE.settingArtifact410W = {
	[1] = 6
	, [2] = 3
	, [3] = 6
	, [4] = 6
	, [5] = 6
	, [6] = 5
};
TTH_VARI.filterRepeatArtifact410W = {};
function TTH_MAP10W.initArtifact(iPlayer)
	for iLevel, iCount in TTH_TABLE.settingArtifact410W do
    if TTH_VARI.filterRepeatArtifact410W[iLevel] == nil then
      TTH_VARI.filterRepeatArtifact410W[iLevel] = {};
    end;
		for i = 1, iCount do
			local iRandom = random(length(TTH_TABLE.Artifacts4Map10W[iLevel]));
			local iArtifactId = TTH_TABLE.Artifacts4Map10W[iLevel][iRandom];
			while contains(TTH_VARI.filterRepeatArtifact410W[iLevel], iArtifactId) ~= nil do
				iRandom = random(length(TTH_TABLE.Artifacts4Map10W[iLevel]));
				iArtifactId = TTH_TABLE.Artifacts4Map10W[iLevel][iRandom];
			end;
			TTH_VARI.filterRepeatArtifact410W[iLevel] = TTH_COMMON.push(TTH_VARI.filterRepeatArtifact410W[iLevel], iArtifactId);
			local iPosXGene = TTH_TABLE.positionArtifact410W[iPlayer]["PosX"] + (i - 1) * 3;
			local iPosYGene = TTH_TABLE.positionArtifact410W[iPlayer]["PosY"] - (iLevel - 1) * 3;
			CreateArtifact("", iArtifactId, iPosXGene, iPosYGene, 0);
		end;
	end;
end;
function TTH_MAP10W.testArtifact(initX, initY)
  local x = initX;
  local y = initY;
  for iLevel, arr in TTH_TABLE.Artifacts4Map10W do
    for iIndex, iArtifactId in arr do
      CreateArtifact("", iArtifactId, x, y, 0);
      x = x + 2;
    end
    x = initX;
    y = y - 2;
  end
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
  TTH_MANAGE.constructTown(strRandomTown, 6);
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
  if iMainTownRace ~= TOWN_ACADEMY and iOppositeRace ~= TOWN_ACADEMY then
    DestroyTownBuildingToLevel(strNeutralTown, TOWN_BUILDING_FORT, 0, 0);
  end;
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
    if iMainTownRace == TOWN_PRESERVE then
      AddObjectCreatures(strAvenger, objCreature4OppositeTown["CreatureId"], objCreature4OppositeTown["CreatureGrowth"] * 2);
    end;
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
    , [GOLD] = 200000
  }
  , [TOWN_PRESERVE] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 200000
  }
  , [TOWN_ACADEMY] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 78
    , [GOLD] = 200000
  }
  , [TOWN_DUNGEON] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 200000
  }
  , [TOWN_NECROMANCY] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 200000
  }
  , [TOWN_INFERNO] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 200000
  }
  , [TOWN_FORTRESS] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 200000
  }
  , [TOWN_STRONGHOLD] = {
    [WOOD] = 80
    , [ORE] = 80
    , [MERCURY] = 55
    , [CRYSTAL] = 55
    , [SULFUR] = 55
    , [GEM] = 55
    , [GOLD] = 200000
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
    ["CastQuota"] = 50
    , ["PreCreature"] = {
      [CREATURE_PRIEST] = {
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
    ["CastQuota"] = 50
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
    ["CastQuota"] = 95
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
    ["CastQuota"] = 45
    , ["PreCreature"] = {
      [CREATURE_WOOD_ELF] = {
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
    ["CastQuota"] = 45
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
    ["CastQuota"] = 65
    , ["PreCreature"] = {
      [CREATURE_MAGI] = {
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
  , ["Thant"] = {
    ["CastQuota"] = 81
    , ["PreCreature"] = {
      [CREATURE_LICH] = {
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
    }
  }
  , ["LordHaart"] = {
    ["CastQuota"] = 36
    , ["PreCreature"] = {
      [CREATURE_WIGHT] = {
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
    }
  }
  , ["Adelaide"] = {
    ["CastQuota"] = 190
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
  , ["Azar"] = {
    ["CastQuota"] = 121
    , ["PreCreature"] = {
      [CREATURE_GOBLIN] = {
        ["Scale"] = 1
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
        ["Scale"] = 1
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
        ["Scale"] = 1
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

  TTH_VISIT.checkPreVisitCastCreature410W4NotEnoughQuota(iPlayer, strHero);
end;
function TTH_VISIT.checkPreVisitCastCreature410W4NotEnoughQuota(iPlayer, strHero)
  if TTH_VARI.recordCastCreature410W[strHero] == nil then
    TTH_VARI.recordCastCreature410W[strHero] = TTH_TABLE.CastCreature410W[strHero]["CastQuota"];
  end;
  if TTH_VARI.recordCastCreature410W[strHero] <= 0 then
    local strText = TTH_PATH.Visit["CastCreature410W"]["NotEnoughQuota"];
    TTH_GLOBAL.sign(strHero, strText);
    return nil;
  end;

  TTH_VISIT.checkPreVisitCastCreature410W4CreatureExsit(iPlayer, strHero);
end;
function TTH_VISIT.checkPreVisitCastCreature410W4CreatureExsit(iPlayer, strHero)
  local arrCreature4Hero = TTH_GLOBAL.getHeroCreatureInfo(strHero);
  local arrPreCreature = TTH_TABLE.CastCreature410W[strHero]["PreCreature"];
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
  local iPostCreatureNum8Scale = TTH_COMMON.floor(iPreCreatureCount / objPreCreature["Scale"]);
  local iPostCreatureNum8Quota = TTH_VARI.recordCastCreature410W[strHero];
  local iPostCreatureNum = iPostCreatureNum8Scale;
  if iPostCreatureNum8Scale > iPostCreatureNum8Quota then
    iPostCreatureNum = iPostCreatureNum8Quota;
  end;
  local iPreCreatureNum = iPostCreatureNum * objPreCreature["Scale"];
  local strPreCreatureName = TTH_TABLE_NCF_CREATURES[iPreCreatureId]["NAME"];
  local iPostCreatureId = objPreCreature["PostCreatureId"];
  local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iPostCreatureId]["NAME"];

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
  local iPreCreatureNum = iPostCreatureNum * objPreCreature["Scale"];
  local strPreCreatureName = TTH_TABLE_NCF_CREATURES[iPreCreatureId]["NAME"];
  local iPostCreatureId = objPreCreature["PostCreatureId"];
  local strPostCreatureName = TTH_TABLE_NCF_CREATURES[iPostCreatureId]["NAME"];

  TTH_VARI.recordCastCreature410W[strHero] = TTH_VARI.recordCastCreature410W[strHero] - iPostCreatureNum;
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

  TTH_COMMON.optionRadio(iPlayer, strHero, arrOption);
end;
function TTH_VISIT.implVisitChooseSpecialArtifact410W(iPlayer, strHero, iArtifactId)
  TTH_VARI.recordChooseSpecialArtifact410W[iPlayer] = TTH_ENUM.Yes;
  TTH_GLOBAL.giveHeroArtifact(strHero, iArtifactId);
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
  if iMainTownRace == TOWN_ACADEMY then
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_MORALE, -3);
    TTH_GLOBAL.signChangeHeroStat(strHero, STAT_LUCK, -2);
  end;
end

function TTH_MAP10W.dealDaily(iPlayer)
	print("TTH_MAP10W dealDaily-"..iPlayer.." day-"..TTH_VARI.day);
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