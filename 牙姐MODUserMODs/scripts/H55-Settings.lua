------------------------------------------------------------------------------------------------------------------------------------------------
--	MIGHT & MAGIC: HEROES 5.5 - PLAYER SETTINGS
------------------------------------------------------------------------------------------------------------------------------------------------

--Author: Magnomagus
--Website: http://heroescommunity.com/viewthread.php3?TID=41303

------------------------------------------------------------------------------------------------------------------------------------------------
--	Note: All settings in this document are script variables always follow guidelines behind "--", otherwise the game can run in critical bugs.
------------------------------------------------------------------------------------------------------------------------------------------------

H55_TownGateEnabled = 1; --Activates Town Gate, allows teleportation of heroes to any town (0 = deactivated).

H55_TownConvEnabled = 1; --Activates Town and Dwelling Conversion (0 = deactivated)
H55_AmountExtraTownsDwellings = 23; --Allows to increase amount of allowed conversions for dwellings and towns (1 = balanced like RC3, zero can also be used).

H55_GovernanceEnabled = 1; --Allows the creation of governor heroes (0 = deactivated).
H55_GovernorExpCoef = 1; --Multiplier for experience gain of governors (do not set to zero) Example: 1.2 = 20% more, 0.8 = 20% less.

H55_IgnoreExpAdjustment = 0; --If this is set to 1, the game will not adjust the experience gain to the size of the neutral stacks (so higher difficulty will not be as hard).

H55_NoMentoring = 0; --If this is set to 1, Memory Mentoring is not allowed, all Memory Mentors on the adventure map will offer a choice between +2 Spellpower or Knowledge.

--	WARNING!!! Use the Build town functions only for playing ARMG maps and multiplayer maps, these functions will not build Shipyards, Tear of Asha and various special buildings.

H55_BuildNeutralTowns = 1; --Use this if you want neutral towns on the map to be of higher level than 1, Only accepts numbers 0,1,2,3,4,5; each number builds up the town ~20% more,
H55_BuildPlayerTowns = 0; --Use this if you want player towns on the map to be of higher level than 1, Only accepts numbers 0,1,2,3,4,5; each number builds up the town ~20% more.

--	WARNING!!! Use AllAgainstOne function only for playing ARMG maps and multiplayer maps. Option is skipped if multiple humans are playing.


--	WARNING!!! The AICheatMode setting does not affect 'casual game' mode, in this mode Cheating is always off!

H55_AIHandicap = 0; --Set this to 1 to make AI start with fewer resources for easier game. Also makes casual game easier. Don't use for Campaign.
H55_AICheatMode = 4; --Makes AI Cheating more or less difficult, Only accepts numbers 0,1,2,3,4,5,6;

--	GUIDELINES for AICheatMode setting:
--	0 = Cheating is ALWAYS off, allows choosing bonus without cheating, casual game mode is still a little easier above hard since AI starts with less resources.
--	1 = 40%, 2 = 60%, 3 = 80%.
--	4 = 100% same difficulty as previous releases.
--	6 = 5 = 120%, 6 = 140%.

H55_BanksDifficulty = 1; --Multiplier for neutral stack size in Battle Sites (do not set to zero) Example: 1.2 = 20% more, 0.8 = 20% less.

--	WARNING!!! modifying the H55_NeutralStackSize parameter can cause the game to lag heavily when the game starts,
--	time depends on the amount of stacks that need to be processed. The job is done when you can open your townscreen!

H55_NeutralStackSize = 1; --Multiplier for neutral stack size standing on the adventure map (do not set to zero) Example: 1.2 = 20% more, 0.8 = 20% less.

--	GUIDELINES for tweaking the Advanced RMG monsters:
--	Strong creatures x1.58 = Halfway between Strong & very Strong.
--	Very Strong creatures x0.75 = Halfway between Strong & very Strong.
--	Very Strong x1.55 = Halfway between Very Strong and Impossible.
--	Impossible x 0.5 = Halfway between Very Strong and Impossible.

H55_StartCreatureBonusTier = 1;

H55_AllAgainstOne = 0; --If this is set to 1, all AI players will always be teamed up against a single human player automatically.
H55_AIArmyCoef = 1;

H55_AISetBonus_Tear = 0;
H55_AISetBonus_Set = 0;
H55_AISetBonus_Travel = 0;
H55_AISetBonus_Shield = 0;
H55_AISetBonus_Phoenix = 0;
H55_AISetBonus_Draconic = 0;
H55_AISkillBonusBasic = 0;
H55_AISkillBonusAbsolute = 0;
H55_AICheats = 0;

H55_PlayerSetBonus_Tear = 0;
H55_PlayerSetBonus_Set = 0;
H55_PlayerSetBonus_Travel = 0;
H55_PlayerSetBonus_Shield = 0;
H55_PlayerSetBonus_Phoenix = 0;
H55_PlayerSetBonus_Draconic = 0;
H55_PlayerSkillBonusBasic = 0;
H55_PlayerSkillBonusAbsolute = 0;
H55_PlayerCheats = 0;

H55_ChooseHero_Name = '';
H55_ChooseHero_Switch = 0;

