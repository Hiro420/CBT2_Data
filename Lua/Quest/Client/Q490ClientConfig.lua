local QuestClientData = {}

QuestClientData.MainID = 490
QuestClientData.ActorAlias = "490"
QuestClientData.SubIDs = 
{
	q49001 = 49001,
	q49002 = 49002,
    q49003 = 49003,
    q49004 = 49004,
    q49005 = 49005,
    q49006 = 49006,
    q49007 = 49007,
	q49008 = 49008,
	q49009 = 49009,
	q49010 = 490010,
	q49011 = 490011,
	q49012 = 490012,
	q49013 = 490013,
}

QuestClientData.NarratorData = {
	Story1 = {
    	{dialogID = 4900001, audioEvtName = "", duration = 6},
		{dialogID = 4900002, audioEvtName = "", duration = 8},
	},
	Story2 = {
    	{dialogID = 4900008, audioEvtName = "", duration = 3},
		{dialogID = 4900009, audioEvtName = "", duration = 3},
		{dialogID = 4900010, audioEvtName = "", duration = 7},
	},
}

QuestClientData.QuestData = 
{	
    PlayerPos1 = sceneData:GetDummyPoint(3,"Q49010Player").pos,
    PlayerDir1 = sceneData:GetDummyPoint(3,"Q49010Player").rot,	
}

QuestClientData.BarbaraData = 
{
	Alias = "Barbara",
	Script = "Actor/Npc/TempNPC",
	ID = 1008,
    BabaraPos1 = sceneData:GetDummyPoint(1008,"Q49001Babara").pos,
	BabaraDir1 = sceneData:GetDummyPoint(1008,"Q49001Babara").rot,
}

QuestClientData.BarbaraPublic = 
{
	Alias = "Barbara01",
	Script = "Actor/Npc/TempNPC",
	ID = 100801,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Babara").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Babara").rot,
}

QuestClientData.AmborPublic = 
{
	Alias = "Amber01",
	Script = "Actor/Npc/TempNPC",
	ID = 100201,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Ambor").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Ambor").rot,
}

QuestClientData.KaeyaPublic = 
{
	Alias = "Kaeya01",
	Script = "Actor/Quest/Q301/Gaia301",
	ID = 100401,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Kaeya").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Kaeya").rot,
}


QuestClientData.LisaPublic = 
{
	Alias = "Lisa01",
	Script = "Actor/Npc/TempNPC",
	ID = 100701,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Lisa").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Lisa").rot,
}


QuestClientData.DilukePublic = 
{
	Alias = "Diluc01",
	Script = "Actor/Npc/TempNPC",
	ID = 100901,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Diluke").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Diluke").rot,
}

QuestClientData.WindyPublic = 
{
	Alias = "Venti02",
	Script = "Actor/Quest/Q301/Wendy301",
	ID = 100102,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Windy").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Windy").rot,
}

QuestClientData.WindyPublic1 = 
{
	Alias = "Venti01",
	Script = "Actor/Npc/TempNPC",
	ID = 100101,
    Pos = sceneData:GetDummyPoint(1009,"Q49010Windy").pos,
	Dir = sceneData:GetDummyPoint(1009,"Q49010Windy").rot,
}

QuestClientData.PaimonPublic = 
{
	Alias = "Paimon01",
	Script = "Actor/Npc/TempNPC",
	ID = 100501,
    --Pos = sceneData:GetDummyPoint(1009,"Q49010Paimon").pos,
	--Dir = sceneData:GetDummyPoint(1009,"Q49010Paimon").rot,
}


QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	--Pos = sceneData:GetDummyPoint(3,"Q46102Paimon").pos,
	--Dir = sceneData:GetDummyPoint(3,"Q46102Paimon").rot,
}

QuestClientData.MonsterData = 
{
	Alias = "AbyssFire",
	Script = "Actor/Npc/TempNPC",
	ID = 10032,
	Pos1 = sceneData:GetDummyPoint(3,"Q46102Paimon").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q46102Paimon").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q46102Paimon").pos,
	Dir2 = sceneData:GetDummyPoint(3,"Q46102Paimon").rot,
}

QuestClientData.QinData = 
{
	QinRoutePoints=
	{
		sceneData:GetDummyPoint(3,"Q49003QinLeave").pos,
		sceneData:GetDummyPoint(3,"Q49003QinLeave2").pos,
		sceneData:GetDummyPoint(3,"Q49003QinLeave3").pos,
		sceneData:GetDummyPoint(3,"Q49003QinLeave4").pos,
		sceneData:GetDummyPoint(3,"Q49003QinLeave5").pos,
	},
	Alias = "Qin",
	Script = "Actor/Quest/Q411/Qin",
	ID = 1006,
	QinPos1 = sceneData:GetDummyPoint(3,"Q49001Qin").pos,
    QinDir1 = sceneData:GetDummyPoint(3,"Q49001Qin").rot,
    QinPos2 = sceneData:GetDummyPoint(3,"Q49007Qin").pos,
    QinDir2 = sceneData:GetDummyPoint(3,"Q49007Qin").rot,
    QinPos3 = sceneData:GetDummyPoint(3,"Q49010Qin").pos,
    QinDir3 = sceneData:GetDummyPoint(3,"Q49010Qin").rot,
    QinPos4 = sceneData:GetDummyPoint(20022,"Q49006Qin").pos,
    QinDir4 = sceneData:GetDummyPoint(20022,"Q49006Qin").rot,
    QinPos5 = sceneData:GetDummyPoint(1009,"Q49009Qin").pos,
	QinDir5 = sceneData:GetDummyPoint(1009,"Q49009Qin").rot,
	QinPos7 = sceneData:GetDummyPoint(20022,"Q49012Qin").pos,
	QinDir7 = sceneData:GetDummyPoint(20022,"Q49012Qin").rot,
	QinPos8 = sceneData:GetDummyPoint(20022,"Q49006QinLeave").pos,
	QinDir8 = sceneData:GetDummyPoint(20022,"Q49006QinLeave").rot,
	QinPos9 = sceneData:GetDummyPoint(3,"Q49007QinLeave").pos,
	QinDir9 = sceneData:GetDummyPoint(3,"Q49007QinLeave").rot,
}

QuestClientData.BallData = {
	Ball = "Ball",
	BallID = 2025,
	BallPos = sceneData:GetDummyPoint(20022,"Q49012Qin").pos,
    BallDir = sceneData:GetDummyPoint(20022,"Q49012Qin").rot,
}

QuestClientData.InterData = {
    Cutscene1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
		canSkip = true,
		castListPath = "Cs_CastList_Q490",
		resPath = "ART/Cutscene/Cs_KYLQ005_QinPraying_Convert",
		startPosType = CutsceneInitPosType.FREE,
		startOffset = {0, 0, 0},
		keepCamera = true,
		syncLoad = true,
		fadeInDuration = 0.0,
	},
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 3500001,
			}
		},
	}
}



return QuestClientData