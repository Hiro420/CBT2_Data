local QuestClientData = {}

QuestClientData.MainID = 993
QuestClientData.ActorAlias = "993"
QuestClientData.SubIDs = 
{
	q99301 = 99301,
    q99302 = 99302,
    q99303 = 99303,
    q99304 = 99304,

}

QuestClientData.SneakAI1Data =
{
	alias = "SneakAI1",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10061,
    dataIndex = 1,
	bornPos = sceneData:GetDummyPoint(1023,"Guard01").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard01").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(1023,"Guard01").pos,
        sceneData:GetDummyPoint(1023,"Guard0101").pos,

	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(1023,"Guard01").rot,
        sceneData:GetDummyPoint(1023,"Guard0101").rot,

	},
	PatrolNext = 1,
}

QuestClientData.SneakAI2Data =
{
	alias = "SneakAI2",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10062,
    dataIndex = 2,
	bornPos = sceneData:GetDummyPoint(1023,"Guard02").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard02").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(1023,"Guard02").pos,
        sceneData:GetDummyPoint(1023,"Guard0201").pos,
	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(1023,"Guard02").rot,
        sceneData:GetDummyPoint(1023,"Guard0201").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI3Data =
{
	alias = "SneakAI3",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10063,
    dataIndex = 3,
	bornPos = sceneData:GetDummyPoint(1023,"Guard03").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard03").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(1023,"Guard03").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(1023,"Guard03").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI4Data =
{
	alias = "SneakAI4",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10064,
    dataIndex = 4,
	bornPos = sceneData:GetDummyPoint(1023,"Guard0401").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard0401").rot,
    PatrolPosNum = 4,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(1023,"Guard0401").pos,
        sceneData:GetDummyPoint(1023,"Guard04").pos,
        sceneData:GetDummyPoint(1023,"Guard0402").pos,
        sceneData:GetDummyPoint(1023,"Guard04").pos,

	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(1023,"Guard0401").rot,
        sceneData:GetDummyPoint(1023,"Guard04").rot,
        sceneData:GetDummyPoint(1023,"Guard0402").rot,
        sceneData:GetDummyPoint(1023,"Guard04").rot,

	},
	PatrolNext = 1,
}

QuestClientData.SneakAI5Data =
{
	alias = "SneakAI5",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10065,
    dataIndex = 5,
	bornPos = sceneData:GetDummyPoint(1023,"Guard05").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard05").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(1023,"Guard05").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(1023,"Guard05").rot,
	},
	PatrolNext = 1,
}

QuestClientData.AwareReminder =
{
	{dialogID = 4150602, audioEvtName = "", duration = 2},
}
QuestClientData.DiscoverReminder =
{
	{dialogID = 4150603, audioEvtName = "", duration = 1},
}
QuestClientData.SneakAINum = 10

QuestClientData.SneakAI6Data =
{
	alias = "SneakAI6",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10066,
    dataIndex = 6,
	bornPos = sceneData:GetDummyPoint(1023,"Guard06").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard06").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(1023,"Guard06").pos,
        sceneData:GetDummyPoint(1023,"Guard0601").pos,

	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(1023,"Guard06").rot,
        sceneData:GetDummyPoint(1023,"Guard0601").rot,

	},
	PatrolNext = 1,
}

QuestClientData.SneakAI7Data =
{
	alias = "SneakAI7",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10067,
    dataIndex = 7,
	bornPos = sceneData:GetDummyPoint(1023,"Guard07").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard07").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(1023,"Guard07").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(1023,"Guard07").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI8Data =
{
	alias = "SneakAI8",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10068,
    dataIndex = 8,
	bornPos = sceneData:GetDummyPoint(1023,"Guard08").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard08").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(1023,"Guard08").pos,
		-- sceneData:GetDummyPoint(1023,"Guard0801").pos,

	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(1023,"Guard08").rot,
		-- sceneData:GetDummyPoint(1023,"Guard0801").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI9Data =
{
	alias = "SneakAI9",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10069,
    dataIndex = 9,
	bornPos = sceneData:GetDummyPoint(1023,"Guard09").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard09").rot,
    PatrolPosNum = 4,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(1023,"Guard09").pos,
        sceneData:GetDummyPoint(1023,"Guard0901").pos,
        sceneData:GetDummyPoint(1023,"Guard0902").pos,
        sceneData:GetDummyPoint(1023,"Guard0901").pos,
	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(1023,"Guard09").rot,
        sceneData:GetDummyPoint(1023,"Guard0901").rot,
        sceneData:GetDummyPoint(1023,"Guard0902").rot,
        sceneData:GetDummyPoint(1023,"Guard0901").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI10Data =
{
	alias = "SneakAI10",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10070,
    dataIndex = 10,
	bornPos = sceneData:GetDummyPoint(1023,"Guard10").pos,
    bornDir = sceneData:GetDummyPoint(1023,"Guard10").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(1023,"Guard10").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(1023,"Guard10").rot,
	},
	PatrolNext = 1,
}


return QuestClientData