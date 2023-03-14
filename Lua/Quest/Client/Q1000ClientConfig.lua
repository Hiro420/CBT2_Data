local QuestClientData = {}

QuestClientData.MainID = 1000
QuestClientData.ActorAlias = "1000"
QuestClientData.SubIDs = 
{
    100000,
    100001,
    100002,
    100003,
    100004,
    100005,
    100006,
	100007,
	100021,
	100022,
	100023,
	100024,
	100025,
	100026,
	100008,
	100015,
	100009,
	100010,
	100011,
	100012,
	100013,
	100014,

}

QuestClientData.QingXianCfg =
{
	type = CutsceneType.TIME_LINE_PREFAB,
	canSkip = true,
	castListPath = "Cs_CastList_Q1000Gongzi",
	resPath = "ART/Cutscene/Cs_LYAQ002_QingXian_Convert",
	startPosType = CutsceneInitPosType.FREE,
	startOffset = {0, 0, 0},
	keepCamera = false
}

QuestClientData.GongziDebutCfg =
{
	type = CutsceneType.TIME_LINE_PREFAB,
	canSkip = true,
	castListPath = "Cs_CastList_Q1000Gongzi",
	resPath = "ART/Cutscene/Cs_LYAQ003_GongziDebut_Convert",
	startPosType = CutsceneInitPosType.FREE,
	startOffset = {0, 0, 0},
	keepCamera = false
}

QuestClientData.AwareReminder =
{
	{dialogID = 10001240, audioEvtName = "", duration = 2},
}
QuestClientData.DiscoverReminder =
{
	{dialogID = 10001241, audioEvtName = "", duration = 1},
}

QuestClientData.NarratorFlow01 =
{
	{dialogID = 10000701, audioEvtName = "", duration = 6},

}

QuestClientData.NarratorFlow =
{
	{dialogID = 10001521, audioEvtName = "", duration = 4},
	{dialogID = 10001522, audioEvtName = "", duration = 6.8},
	{dialogID = 10001523, audioEvtName = "", duration = 3.8},

}

QuestClientData.SneakWarning =
{
	{dialogID = 10001051, audioEvtName = "", duration = 2},


}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,

	bornPos1 = sceneData:GetDummyPoint(3,"Q100000Paimon").pos,
	bornDir1 = sceneData:GetDummyPoint(3,"Q100000Paimon").rot,	

}

QuestClientData.GongziData = 
{
	Alias = "Npc10200",
	ID = 10200,

}  

QuestClientData.YixianData = 
{
	Alias = "Npc201801",
	ID = 201801,

}  

QuestClientData.YizhuData = 
{
	Alias = "Npc200701",
	ID = 200701,

}  

QuestClientData.BolaiData = 
{
	Alias = "Npc201301",
	ID = 201301,

}  

QuestClientData.AweiData = 
{
	Alias = "Npc200801",
	ID = 200801,
}  

QuestClientData.XingxiData = 
{
	Alias = "Npc202001",
	ID = 202001,
} 

QuestClientData.DeangongData = 
{
	Alias = "Npc200901",
	ID = 200901,
} 

QuestClientData.ChaboshiData = 
{
	Alias = "Npc201001",
	ID = 201001,
} 

QuestClientData.FaneryeData = 
{
	Alias = "Npc201101",
	ID = 201101,
} 

QuestClientData.JifangData = 
{
	Alias = "Npc162501",
	ID = 162501,
} 

QuestClientData.XiaoanData = 
{
	Alias = "Npc201201",
	ID = 201201,
} 

QuestClientData.JiangzhouData = 
{
	Alias = "Npc202601",
	ID = 202601,
} 

QuestClientData.GuanhaiData = 
{
	Alias = "Npc203601",
	ID = 203601,
} 

QuestClientData.HuihuiData = 
{
	Alias = "Npc202101",
	ID = 202101,
} 
QuestClientData.LicaiData = 
{
	Alias = "Npc202201",
	ID = 202201,
} 
QuestClientData.LinlangData = 
{
	Alias = "Npc202301",
	ID = 202301,
} 
QuestClientData.XiuhuaData = 
{
	Alias = "Npc209101",
	ID = 209101,
} 
QuestClientData.ChangchangData = 
{
	Alias = "Npc202501",
	ID = 202501,
} 

QuestClientData.IvanData = 
{
	Alias = "Npc207201",
	ID = 207201,
} 

QuestClientData.ChangshunData = 
{
	Alias = "Npc209001",
	ID = 209001,
} 

QuestClientData.NingguangData = 
{
	Alias = "Npc10211",
	ID = 10211,
} 

QuestClientData.Maid1Data = 
{
	Alias = "Npc2002901",
	ID = 2002901,
} 

QuestClientData.Maid2Data = 
{
	Alias = "Npc2003001",
	ID = 2003001,
} 

QuestClientData.SneakAI1Data =
{
	alias = "SneakAI1",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10061,
    dataIndex = 1,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard01").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard01").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(3,"Q1000Guard01").pos,
        sceneData:GetDummyPoint(3,"Q1000Guard0101").pos,

	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(3,"Q1000Guard01").rot,
        sceneData:GetDummyPoint(3,"Q1000Guard0101").rot,

	},
	PatrolNext = 1,
}

QuestClientData.SneakAI2Data =
{
	alias = "SneakAI2",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10062,
    dataIndex = 2,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard02").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard02").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(3,"Q1000Guard02").pos,
        sceneData:GetDummyPoint(3,"Q1000Guard0201").pos,
	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(3,"Q1000Guard02").rot,
        sceneData:GetDummyPoint(3,"Q1000Guard0201").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI3Data =
{
	alias = "SneakAI3",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10063,
    dataIndex = 3,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard03").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard03").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard03").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard03").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI4Data =
{
	alias = "SneakAI4",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10064,
    dataIndex = 4,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard0401").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard0401").rot,
    PatrolPosNum = 4,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(3,"Q1000Guard0401").pos,
        sceneData:GetDummyPoint(3,"Q1000Guard04").pos,
        sceneData:GetDummyPoint(3,"Q1000Guard0402").pos,
        sceneData:GetDummyPoint(3,"Q1000Guard04").pos,

	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(3,"Q1000Guard0401").rot,
        sceneData:GetDummyPoint(3,"Q1000Guard04").rot,
        sceneData:GetDummyPoint(3,"Q1000Guard0402").rot,
        sceneData:GetDummyPoint(3,"Q1000Guard04").rot,

	},
	PatrolNext = 1,
}

QuestClientData.SneakAI7Data =
{
	alias = "SneakAI7",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10067,
    dataIndex = 7,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard07").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard07").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard07").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard07").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI8Data =
{
	alias = "SneakAI8",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10068,
    dataIndex = 8,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard08").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard08").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard08").pos,
		-- sceneData:GetDummyPoint(3,"Q1000Guard0801").pos,

	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard08").rot,
		-- sceneData:GetDummyPoint(3,"Q1000Guard0801").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI10Data =
{
	alias = "SneakAI10",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10070,
    dataIndex = 10,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard10").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard10").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard10").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard10").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI11Data =
{
	alias = "SneakAI11",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10071,
    dataIndex = 11,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard11").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard11").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard11").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard11").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI12Data =
{
	alias = "SneakAI12",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10072,
    dataIndex = 12,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard12").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard12").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard12").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard12").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI13Data =
{
	alias = "SneakAI13",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10073,
    dataIndex = 13,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard13").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard13").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard13").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard13").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI14Data =
{
	alias = "SneakAI14",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10074,
    dataIndex = 14,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard14").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard14").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard14").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard14").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI15Data =
{
	alias = "SneakAI15",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10075,
    dataIndex = 15,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard15").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard15").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard15").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard15").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI16Data =
{
	alias = "SneakAI16",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10076,
    dataIndex = 16,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard16").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard16").rot,
    PatrolPosNum = 2,
    PatrolPos = 
	{
        sceneData:GetDummyPoint(3,"Q1000Guard16").pos,
        sceneData:GetDummyPoint(3,"Q1000Guard1601").pos,
	},
	PatrolDir =
	{
        sceneData:GetDummyPoint(3,"Q1000Guard16").rot,
        sceneData:GetDummyPoint(3,"Q1000Guard1601").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI17Data =
{
	alias = "SneakAI17",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10077,
    dataIndex = 17,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard17").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard17").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard17").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard17").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI31Data =
{
	alias = "SneakAI31",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10078,
    dataIndex = 31,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard31").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard31").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard31").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard31").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI32Data =
{
	alias = "SneakAI32",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10079,
    dataIndex = 32,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard32").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard32").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard32").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard32").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI33Data =
{
	alias = "SneakAI33",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10080,
    dataIndex = 33,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard33").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard33").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard33").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard33").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI34Data =
{
	alias = "SneakAI34",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10081,
    dataIndex = 34,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard34").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard34").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard34").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard34").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI35Data =
{
	alias = "SneakAI35",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10082,
    dataIndex = 35,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard35").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard35").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard35").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard35").rot,
	},
	PatrolNext = 1,
}

QuestClientData.SneakAI36Data =
{
	alias = "SneakAI36",
	metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10083,
    dataIndex = 36,
	bornPos = sceneData:GetDummyPoint(3,"Q1000Guard36").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q1000Guard36").rot,
    PatrolPosNum = 1,
    PatrolPos = 
	{
		sceneData:GetDummyPoint(3,"Q1000Guard36").pos,
	},
	PatrolDir =
	{
		sceneData:GetDummyPoint(3,"Q1000Guard36").rot,
	},
	PatrolNext = 1,
}
return QuestClientData