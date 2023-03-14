local QuestClientData = {}

QuestClientData.MainID = 453
QuestClientData.ActorAlias = "453"
QuestClientData.SubIDs =
{
	q45301 = 45301,
    q45302 = 45302,
    q45303 = 45303,
    q45304 = 45304,
    q45305 = 45305,
	q45306 = 45306,
	
	q45307 = 45307,
	q45308 = 45308,
}

QuestClientData.AmborData =
{
	Alias = "Ambor",
	Script = "Actor/Quest/Q301/Ambor301",
	ID = 1002,
	BornPos = sceneData:GetDummyPoint(3,"Q453AmborTalk").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q453AmborTalk").rot,
	CluePos = sceneData:GetDummyPoint(3,"Q453AmborClue").pos,
	ClueDir = sceneData:GetDummyPoint(3,"Q453AmborClue").rot,
	LeavePos305 = sceneData:GetDummyPoint(3,"Q45305AmborLeave").pos,
	LeaveDir305 = sceneData:GetDummyPoint(3,"Q45305AmborLeave").rot,
	LeavePos306 = sceneData:GetDummyPoint(3,"Q45306AmborLeave").pos,
	LeaveDir306 = sceneData:GetDummyPoint(3,"Q45306AmborLeave").rot,
}

QuestClientData.PaimonData =
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos07 = sceneData:GetDummyPoint(3,"Q453PaimonPaw").pos,
	BornDir07 = sceneData:GetDummyPoint(3,"Q453PaimonPaw").rot,
	BornPos08 = sceneData:GetDummyPoint(3,"Q453PaimonTooth").pos,
	BornDir08 = sceneData:GetDummyPoint(3,"Q453PaimonTooth").rot,
}

QuestClientData.FarmerOldData =
{
	Alias = "Npc153701",
	Script = "Actor/Npc/TempNPC",
	ID = 153701, --1167替换成复制人杜拉夫
	BornPos = sceneData:GetDummyPoint(3,"Q453FarmerOld").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q453FarmerOld").rot,
}

QuestClientData.FarmerAngryData =
{
	Alias = "Npc163201",
	Script = "Actor/Npc/TempNPC",
	ID = 163201, --153901替换成复制人约顿
	BornPos = sceneData:GetDummyPoint(3,"Q453Farmer1").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q453Farmer1").rot,
	LeavePos = sceneData:GetDummyPoint(3,"Q453Famer1Leave").pos,
    LeaveDir = sceneData:GetDummyPoint(3,"Q453Famer1Leave").rot,
}


QuestClientData.FarmerWound1Data =
{
	Alias = "Npc154301",
	Script = "Actor/Npc/TempNPC",
	ID = 154301, --1171替换成复制人神奇的霍普金斯
	BornPos = sceneData:GetDummyPoint(3,"Q453FarmerWound1").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q453FarmerWound1").rot,
	LeavePos = sceneData:GetDummyPoint(3,"Q453FarmerW1Leave").pos,
    LeaveDir = sceneData:GetDummyPoint(3,"Q453FarmerW1Leave").rot,
}


QuestClientData.PawHintData =
{
	Alias = "PawHint",
	ID = 70300071,
	BornPos = sceneData:GetDummyPoint(3,"Q453PawHint").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q453PawHint").rot,
}

QuestClientData.ToothHintData =
{
	Alias = "ToothHint",
	ID = 70300072,
	BornPos = sceneData:GetDummyPoint(3,"Q453ToothHint").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q453ToothHint").rot,
}

QuestClientData.HairHintData =
{
	Alias = "HairHint",
	ID = 70300073,
	BornPos = sceneData:GetDummyPoint(3,"Q453HairHint").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q453HairHint").rot,
}

-- QuestClientData.NarratorFlow1 =
-- {
-- 	{dialogID = 4530201, audioEvtName = "", duration = 4},
-- }

-- QuestClientData.NarratorFlow2 =
-- {
-- 	{dialogID = 4530202, audioEvtName = "", duration = 4},
-- }


return QuestClientData