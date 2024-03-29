H55_TownGateEnabled = 1; 					-- 是否启用回城：1是启用 0是禁用
H55_TownConvEnabled = 1; 					-- 是否启用城镇转换：1是启用 0是禁用
H55_AmountExtraTownsDwellings = 23; 		-- 城镇转换数量限制
H55_GovernanceEnabled = 1; 					-- 是否启用内政官：1是启用 0是禁用
H55_GovernorExpCoef = 1; 					-- 内政官经验获取系数
H55_IgnoreExpAdjustment = 0; 				-- 根据地图大小经验调节
H55_NoMentoring = 0; 						-- 是否启用记忆导师：0是启用 1是禁用
H55_AIHandicap = 0; 						-- AI难度减弱：0是正常 1是减弱
H55_AICheatMode = 4; 						-- AI难度：0是AI不作弊 1是40% 2是60% 3是80% 4是100% 5是120%
H55_BanksDifficulty = 1; 					-- 银行难度系数
H55_NeutralStackSize = 1; 					-- 野怪初始数量系数
-- ☆☆☆☆☆☆☆☆☆☆☆☆ 以上配置为默认配置，推荐不要改动

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 以下配置为初始游戏配置，可随您的需求改动，目的是提高游戏性和可玩性，以及减少开局reload的次数
H55_AllAgainstOne = 0; 						-- 0是乱战也就是FFA 1是所有AI结盟
H55_AIArmyCoef = 1; 						-- AI的每周可招募兵力系数 1是正常兵力 3是3倍兵力 该数值推荐20以下，否则AI会分兵，反而会降低难度
H55_PlayerStartResource = 1; 				-- 玩家初始资源 0是全为0 1是当前难度正常资源
H55_BuildNeutralTowns = 1; 					-- 新开地图无主城镇的建筑等级：选择范围0~5 0就是1级城建 1就是6级城建（有1级魔法塔、铁匠铺、市场、酒馆） 每高一级，多5级左右城建

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 这部分是给AI送宝物和技能的选项，如果要提高游戏难度，可在此配置
H55_AISetBonus_Tear = 0; 					-- 是否送亚莎之泪：0是不送 1是送
H55_AISetBonus_Travel = 0; 					-- 是否送旅行者长靴：0是不送 1是送
H55_AISetBonus_Shield = 0; 					-- 是否送哨兵之盾：0是不送 1是送
H55_AISetBonus_Heavenly = 0; 					-- 是否送天启头盔：0是不送 1是送
H55_AISetBonus_Angelic_Alliance= 0; 		-- 是否送天使联盟：0是不送 1是送
H55_AISetBonus_Curse_Shoulder = 0; 			-- 是否送诅咒斗篷：0是不送 1是送
H55_AISetBonus_Phoenix = 0; 				-- 是否送大法师之书：0是不送 1是送
H55_AISetBonus_Draconic = 0; 				-- 是否送龙神胸甲：0是不送 1是送
H55_AISkillBonusBasic = 0; 					-- 是否送初始技能：0是不送 1是送
H55_AISkillBonusAbsolute = 0; 				-- 是否送终极技能：0是不送 1是送
H55_AITownLevel = 1; 						-- AI城镇的建筑等级：选择范围0~5 默认为1 0就是1级城建 1就是6级城建（有1级魔法塔、铁匠铺、市场、酒馆） 每高一级，多5级左右城建
H55_AICheats = 0; 							-- 该部分选项是否生效：0是不生效，1是生效
-- ☆☆☆☆☆☆☆☆☆☆☆☆

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 这部分是给玩家送宝物和技能的选项，如果要降低游戏难度，或者尝试玩多的新玩法，可在此配置
H55_PlayerSetBonus_Tear = 0; 				-- 是否送亚莎之泪：0是不送 1是送
H55_PlayerSetBonus_Travel = 0; 				-- 是否送旅行者长靴：0是不送 1是送
H55_PlayerSetBonus_Shield = 0; 				-- 是否送哨兵之盾：0是不送 1是送
H55_PlayerSetBonus_Heavenly = 0; 					-- 是否送天启头盔：0是不送 1是送
H55_PlayerSetBonus_Angelic_Alliance= 0; 	-- 是否送天使联盟：0是不送 1是送
H55_PlayerSetBonus_Curse_Shoulder = 0; 		-- 是否送诅咒斗篷：0是不送 1是送
H55_PlayerSetBonus_Phoenix = 0; 			-- 是否送大法师之书：0是不送 1是送
H55_PlayerSetBonus_Draconic = 0; 			-- 是否送龙神胸甲：0是不送 1是送
H55_PlayerSkillBonusBasic = 0; 				-- 是否送初始技能：0是不送 1是送
H55_PlayerSkillBonusAbsolute = 0; 			-- 是否送终极技能：0是不送 1是送
H55_PlayerTownLevel = 0; 					-- 玩家城镇的建筑等级：选择范围0~5 默认为0 0就是1级城建 1就是6级城建（有1级魔法塔、铁匠铺、市场、酒馆） 每高一级，多5级左右城建
H55_PlayerCheats = 0; 						-- 该部分选项是否生效：0是不生效，1是生效
-- ☆☆☆☆☆☆☆☆☆☆☆☆

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 这部分是为了解决，特定多英雄开局难题，减少reload次数
H55_ChooseHero_Name1 = ''; 					-- 填写英雄控制台ID，具体可查看【牙姐MOD资料汇总】→搜索英雄中文名→紧跟在后面的英文就是英雄的控制台ID（例如艾莲娜的ID就是Ving，直接在单引号中填入，写成 H55_ChooseHero_Name = 'Ving';）
H55_ChooseHero_Name2 = ''; 					-- 填写英雄控制台ID，具体可查看【牙姐MOD资料汇总】→搜索英雄中文名→紧跟在后面的英文就是英雄的控制台ID（例如艾莲娜的ID就是Ving，直接在单引号中填入，写成 H55_ChooseHero_Name = 'Ving';）
H55_ChooseHero_Switch = 0; 					-- 该部分选项是否生效：0是不生效，1是生效
-- ☆☆☆☆☆☆☆☆☆☆☆☆

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 这部分是为了解决，特定宝物开局难题，减少reload次数（该选项只在开局奖励选择【宝物奖励】时生效）
H55_ChooseArtifact_ID = 0; 					-- 填写宝物控制台ID，具体可查看【牙姐MOD资料汇总】→搜索宝物中文名→紧跟在后面的数值就是宝物的控制台ID（例如力量宝剑的ID就是1，直接将0改为ID，写成 H55_ChooseArtifact_ID = 1;）
H55_ChooseArtifact_Switch = 0; 				-- 该部分选项是否生效：0是不生效，1是生效
-- ☆☆☆☆☆☆☆☆☆☆☆☆

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 这部分是为了解决，特定兵力开局难题（该选项只在开局奖励选择【兵力奖励】时生效）
H55_StartCreatureBonusTier = 1; 			-- 填写相应种族的兵种等级 选择范围1~7，开局后英雄部队中会额外兵力，1~3级为周产，4级3个，5~7级为1个，6级会额外减少2000金币，7级会额外减少5000金币
-- ☆☆☆☆☆☆☆☆☆☆☆☆

-- ☆☆☆☆☆☆☆☆☆☆☆☆ 这部分是为了解决，特定女巫小屋开局，减少reload次数，直接填写编号，无需定制，直接写0
-- ☆☆☆☆☆☆☆☆☆☆☆☆ 1:后勤，2：启蒙，3：进攻，4：防御，5：领导，6：幸运，7：机械
-- ☆☆☆☆☆☆☆☆☆☆☆☆ 8：光明/反光明，9：黑暗/反黑暗，10：召唤/反召唤，11：破坏/反破坏，12：巫术/战嚎，13，反击/穿透
H55_Witch_1_1 = 0; 			-- 第一个女巫小屋的第一个技能
H55_Witch_1_2 = 0; 			-- 第一个女巫小屋的第一个技能
H55_Witch_2_1 = 0; 			-- 第二个女巫小屋的第一个技能
H55_Witch_2_2 = 0; 			-- 第二个女巫小屋的第二个技能
H55_Witch_3_1 = 0; 			-- 第三个女巫小屋的第一个技能
H55_Witch_3_2 = 0; 			-- 第三个女巫小屋的第二个技能
-- ☆☆☆☆☆☆☆☆☆☆☆☆