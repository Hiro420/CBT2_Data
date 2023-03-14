local QuestClientData = {}

QuestClientData.MainID = 12001
QuestClientData.ActorAlias = "12001"
QuestClientData.SubIDs = 
{
	q1200101 = 1200101,
	q1200102 = 1200102,
    q1200103 = 1200103,
    q1200104 = 1200104,
    q1200105 = 1200105,
    q1200106 = 1200106,
    q1200107 = 1200107,
    q1200108 = 1200108,
    q1200109 = 1200109,
    q1200110 = 1200110,
    q1200111 = 1200111,
}

QuestClientData.PaimonData = 
{
    Alias = "Paimon",
    Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
    Pos1 = sceneData:GetDummyPoint(3,"Q1200101Trigger").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200101Trigger").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q1200104Trigger").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q1200104Trigger").rot,
}


 QuestClientData.XingQiuData = 
 {
 	Alias = "Npc10045",
 	Script = "Actor/Quest/Q301/Gaia301",---暂用凯亚资源，需替换
 	ID = 10045,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200005XQ").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200005XQ").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q1200108XQ").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q1200108XQ").rot,

 }
 QuestClientData.WlyData = 
 {
 	Alias = "Npc162601",
 	Script = "Actor/Npc/TempNPC",
 	ID = 162601,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200107Wly").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200107Wly").rot,
 }
 QuestClientData.ManagerData = 
 {
 	Alias = "Npc10048",
 	Script = "Actor/Npc/TempNPC",
 	ID = 10048,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200107manager").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200107manager").rot,
 }
 QuestClientData.CHData = 
 {
 	Alias = "Npc2062",
 	Script = "Actor/Npc/TempNPC",
 	ID = 2062,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200103Guard").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200103Guard").rot,
 }
 QuestClientData.GuardData = 
 {
 	Alias = "Npc10047",
 	Script = "Actor/Npc/TempNPC",
 	ID = 10047,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200103Guard").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200103Guard").rot,
 }
 QuestClientData.NarratorData1 = {

	{dialogID = 120010101, audioEvtName = "", duration = 3},
	{dialogID = 120010102, audioEvtName = "", duration = 3},


}
QuestClientData.NarratorData2 = {

    {dialogID = 610045701, audioEvtName = "", duration = 3},
	{dialogID = 610045702, audioEvtName = "", duration = 3},
}
 ----潜行数据
 QuestClientData.FailureNum = 0

QuestClientData.TreasureID = 100031
QuestClientData.KeyPos = sceneData:GetDummyPoint(3,"Q1200107Wly").pos


QuestClientData.MatchTime = 35

QuestClientData.AwareReminder =
{
	{dialogID = 610045502, audioEvtName = "", duration = 2},
}
QuestClientData.DiscoverReminder =
{
	{dialogID = 610045503, audioEvtName = "", duration = 1},
}
QuestClientData.FailReminder =
{
	{dialogID = 610045501, audioEvtName = "", duration = 1},
}
QuestClientData.SneakAINum = 10


----巡逻数据
QuestClientData.SneakAI1Data =
{
	alias = "SneakAI1",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10101,
    dataIndex = 1,
	bornPos = sceneData:GetDummyPoint(3,"AI1Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI1Pos1").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI1Pos1").pos,
		sceneData:GetDummyPoint(3,"AI1Pos2").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI1Pos1").rot,
		sceneData:GetDummyPoint(3,"AI1Pos2").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI2Data =
{
	alias = "SneakAI2",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10102,
    dataIndex = 2,
	bornPos = sceneData:GetDummyPoint(3,"AI2Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI2Pos1").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI2Pos1").pos,
		sceneData:GetDummyPoint(3,"AI2Pos2").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI2Pos1").rot,
		sceneData:GetDummyPoint(3,"AI2Pos2").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI3Data =
{
	alias = "SneakAI3",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10103,
    dataIndex = 3,
	bornPos = sceneData:GetDummyPoint(3,"AI3Pos2").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI3Pos2").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI3Pos2").pos,
		sceneData:GetDummyPoint(3,"AI3Pos1").pos,
		--sceneData:GetDummyPoint(3,"AI3Pos3").pos,
		--sceneData:GetDummyPoint(3,"AI3Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI3Pos2").rot,
		sceneData:GetDummyPoint(3,"AI3Pos1").rot,
		--sceneData:GetDummyPoint(3,"AI3Pos3").rot,
		--sceneData:GetDummyPoint(3,"AI3Pos4").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI4Data =
{
	alias = "SneakAI4",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10104,
    dataIndex = 4,
	bornPos = sceneData:GetDummyPoint(3,"AI4Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI4Pos1").rot,
    PatrolPosNum = 4,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI4Pos1").pos,
		sceneData:GetDummyPoint(3,"AI4Pos2").pos,
		sceneData:GetDummyPoint(3,"AI4Pos3").pos,
		sceneData:GetDummyPoint(3,"AI4Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI4Pos1").rot,
		sceneData:GetDummyPoint(3,"AI4Pos2").rot,
		sceneData:GetDummyPoint(3,"AI4Pos3").rot,
		sceneData:GetDummyPoint(3,"AI4Pos4").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI5Data =
{
	alias = "SneakAI5",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10105,
    dataIndex = 5,
	bornPos = sceneData:GetDummyPoint(3,"AI5Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI5Pos1").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI5Pos1").pos,
		sceneData:GetDummyPoint(3,"AI5Pos2").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos3").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI5Pos1").rot,
		sceneData:GetDummyPoint(3,"AI5Pos2").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos3").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos4").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI6Data =
{
	alias = "SneakAI6",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10106,
    dataIndex = 6,
	bornPos = sceneData:GetDummyPoint(3,"AI6Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI6Pos1").rot,
    PatrolPosNum = 4,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI6Pos1").pos,
		sceneData:GetDummyPoint(3,"AI6Pos2").pos,
		sceneData:GetDummyPoint(3,"AI6Pos3").pos,
		sceneData:GetDummyPoint(3,"AI6Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI6Pos1").rot,
		sceneData:GetDummyPoint(3,"AI6Pos2").rot,
		sceneData:GetDummyPoint(3,"AI6Pos3").rot,
		sceneData:GetDummyPoint(3,"AI6Pos4").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI7Data =
{
	alias = "SneakAI7",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10107,
    dataIndex = 7,
	bornPos = sceneData:GetDummyPoint(3,"AI7Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI7Pos1").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI7Pos1").pos,
		sceneData:GetDummyPoint(3,"AI7Pos2").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos3").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI7Pos1").rot,
		sceneData:GetDummyPoint(3,"AI7Pos2").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos3").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos4").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI8Data =
{
	alias = "SneakAI8",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10108,
    dataIndex = 8,
	bornPos = sceneData:GetDummyPoint(3,"AI8Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI8Pos1").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI8Pos1").pos,
		sceneData:GetDummyPoint(3,"AI8Pos2").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos3").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI8Pos1").rot,
		sceneData:GetDummyPoint(3,"AI8Pos2").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos3").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos4").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI9Data =
{
	alias = "SneakAI9",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10109,
    dataIndex = 9,
	bornPos = sceneData:GetDummyPoint(3,"AI9Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI9Pos1").rot,
    PatrolPosNum = 4,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI9Pos1").pos,
		sceneData:GetDummyPoint(3,"AI9Pos2").pos,
		sceneData:GetDummyPoint(3,"AI9Pos3").pos,
		sceneData:GetDummyPoint(3,"AI9Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI9Pos1").rot,
		sceneData:GetDummyPoint(3,"AI9Pos2").rot,
		sceneData:GetDummyPoint(3,"AI9Pos3").rot,
		sceneData:GetDummyPoint(3,"AI9Pos4").rot,
	},
	PatrolNext = 1,
}
QuestClientData.SneakAI10Data =
{
	alias = "SneakAI10",
	metaPath = "Actor/Npc/LYGSneakAI",
    configID = 10110,
    dataIndex = 10,
	bornPos = sceneData:GetDummyPoint(3,"AI10Pos1").pos,
    bornDir = sceneData:GetDummyPoint(3,"AI10Pos1").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"AI10Pos1").pos,
		sceneData:GetDummyPoint(3,"AI10Pos2").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos3").pos,
		--sceneData:GetDummyPoint(3,"AI5Pos4").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"AI10Pos1").rot,
		sceneData:GetDummyPoint(3,"AI10Pos2").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos3").rot,
		--sceneData:GetDummyPoint(3,"AI5Pos4").rot,
	},
	PatrolNext = 1,
}
return QuestClientData