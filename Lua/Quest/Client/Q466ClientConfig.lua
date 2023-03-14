local QuestClientData = {}

QuestClientData.MainID = 466
QuestClientData.ActorAlias = "466"
QuestClientData.SubIDs = 
{
	q46601 = 46601,
    q46602 = 46602,
	q46603 = 46603,
	q46604 = 46604,
	q46605 = 46605,
	q46606 = 46606,
	q46607 = 46607,
	q46608 = 46608,
	q46609 = 46609,
	q46610 = 46610,
	q46611 = 46611,
	q46612 = 46612,
    q46613 = 46613,
    q46614 = 46614,
	q46615 = 46615,
	q46616 = 46616,
	q46617 = 46617,
	q46618 = 46618,
	q46619 = 46619,
	q46620 = 46620,
	q46621 = 46621,
	q46622 = 46622,
	q46623 = 46623,
	q46624 = 46624,
	q46625 = 46625,
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,
}

QuestClientData.DilucData = 
{
	Diluc = "Diluc",
	DilucScript = "Actor/Quest/Q376/Diluc",
	DilucID = 1009,
    Pos1 = sceneData:GetDummyPoint(3,"Q465DilucTemp1").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q465DilucTemp1").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q466Diluc1").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q466Diluc1").rot,
    Pos3 = sceneData:GetDummyPoint(1009,"Q466Diluc2").pos,
	Dir3 = sceneData:GetDummyPoint(1009,"Q466Diluc2").rot,
	Pos4 = sceneData:GetDummyPoint(3,"Q466FrontDoor").pos,
	Dir4 = sceneData:GetDummyPoint(3,"Q466FrontDoor").rot,
	Pos5 = sceneData:GetDummyPoint(1018,"Q465Diluc5").pos,
    Dir5 = sceneData:GetDummyPoint(1018,"Q465Diluc5").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.KaeyaData = 
{
	Kaeya = "Gaia",
	KaeyaScript = "Actor/Quest/Q301/Gaia301",
	KaeyaID = 1004,
	Pos1 = sceneData:GetDummyPoint(1009,"Q466Kaeya1").pos,
	Dir1 = sceneData:GetDummyPoint(1009,"Q466Kaeya1").rot,
	Pos2 = sceneData:GetDummyPoint(1009,"Q466Kaeya2").pos,
	Dir2 = sceneData:GetDummyPoint(1009,"Q466Kaeya2").rot,
	hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,
}

QuestClientData.HoffmanData = 
{
	Hoffman = "Hoffman",
	HoffmanScript = "Actor/Quest/Q376/Soldier",
	HoffmanID = 1218,
    Pos1 = sceneData:GetDummyPoint(1009,"Q466Hoffman1").pos,
	Dir1 = sceneData:GetDummyPoint(1009,"Q466Hoffman1").rot,
	Pos2 = sceneData:GetDummyPoint(1009,"Q466Guard2").pos,
    Dir2 = sceneData:GetDummyPoint(1009,"Q466Guard2").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.ConorData = 
{
	Conor = "KangNa",
	ConorScript = "Actor/Quest/Q376/Soldier",
	ConorID = 10022,
    Pos1 = sceneData:GetDummyPoint(3,"Q466Conor1").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Conor1").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q466Conor2").pos,
	Dir2 = sceneData:GetDummyPoint(3,"Q466Conor2").rot,
	Pos3 = sceneData:GetDummyPoint(3,"Q466Conor3").pos,
    Dir3 = sceneData:GetDummyPoint(3,"Q466Conor3").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.GuardData = 
{
	Guard = "Guard",
	GuardScript = "Actor/Quest/Q376/Soldier",
	GuardID = 1217,
    Pos1 = sceneData:GetDummyPoint(1009,"Q466Guard1").pos,
	Dir1 = sceneData:GetDummyPoint(1009,"Q466Guard1").rot,
	Pos2 = sceneData:GetDummyPoint(1009,"Q466Guard2").pos,
    Dir2 = sceneData:GetDummyPoint(1009,"Q466Guard2").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.JoseData = 
{
	Jose = "Npc152301",
	GuardScript = "Actor/Quest/Q376/Soldier",
	GuardID = 152301,
    Pos1 = sceneData:GetDummyPoint(1009,"Q466Jose1").pos,
	Dir1 = sceneData:GetDummyPoint(1009,"Q466Jose1").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.BaitData = {
	Bait = "Bait",
	BaitID = 70300053,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Lure1").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Lure1").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q466Lure2").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q466Lure2").rot,
}

QuestClientData.LureData = {
	Lure = "Lure",
	LureID = 70300052,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Lure1").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Lure1").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q466Lure2").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q466Lure2").rot,
}

QuestClientData.TargetData = {
    Target1 = "Target1",
    Target2 = "Target2",
    TargetID = 70900201,
    
	Pos1 = sceneData:GetDummyPoint(3,"Q466Target1").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q466Target1").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q466Target2").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q466Target2").rot,
}

QuestClientData.Monster1Data = {
	Monster = "Monster1",
	MonsterID = 20011401,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q466Slime").rot,
}

QuestClientData.Monster2Data = {
	Monster = "Monster2",
	MonsterID = 20011201,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime2").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q466Slime2").rot,
}

QuestClientData.Monster3Data = {
	Monster = "Monster3",
	MonsterID = 20011001,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime3").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Slime3").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q466Slime5").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q466Slime5").rot,
}

QuestClientData.Monster4Data = {
	Monster = "Monster4",
	MonsterID = 20010901,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime4").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Slime4").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q466Slime6").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q466Slime6").rot,
}

QuestClientData.Monster5Data = {
	Monster = "Slime7",
	MonsterID = 20010801,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime7").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Slime7").rot,
}

QuestClientData.Monster6Data = {
	Monster = "Slime8",
	MonsterID = 20010801,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime8").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Slime8").rot,
}

QuestClientData.Monster7Data = {
	Monster = "Slime9",
	MonsterID = 20010801,
	Pos1 = sceneData:GetDummyPoint(3,"Q466Slime9").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q466Slime9").rot,
}

QuestClientData.NarratorData = {
	Story1 = {
		{dialogID = 4660001, audioEvtName = "", duration = 4},
		{dialogID = 4660008, audioEvtName = "", duration = 4},
		{dialogID = 4660009, audioEvtName = "", duration = 4},
    },
    Story2 = {
    	{dialogID = 4660002, audioEvtName = "", duration = 4},
	},
	Story3 = {
    	{dialogID = 4660003, audioEvtName = "", duration = 7},
    	{dialogID = 4660012, audioEvtName = "", duration = 6},
	},
	Story4 = {
		{dialogID = 4660004, audioEvtName = "", duration = 4},
    	{dialogID = 4660005, audioEvtName = "", duration = 4},
	},
	Story5 = {
		{dialogID = 3500201, audioEvtName = "", duration = 3},
    	{dialogID = 4660006, audioEvtName = "", duration = 6},
	},
	Story6 = {
    	{dialogID = 4660007, audioEvtName = "", duration = 4},
	},
	Story7 = {
		{dialogID = 4660010, audioEvtName = "", duration = 3},
		{dialogID = 4660011, audioEvtName = "", duration = 5},
	},
	Story8 = {
    	{dialogID = 4660019, audioEvtName = "", duration = 5},
	},
}

QuestClientData.InterData = {
	Cutscene1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
		canSkip = true,
		--castListPath = "Cs_CastList_Q351",
		resPath = "ART/Cutscene/Cs_DLCLQ003_DLCbattle02_Convert",
		startPosType = CutsceneInitPosType.FREE,
		startOffset = {0, 0, 0},
		keepCamera = false,
		syncLoad = true,
		fadeInDuration = 0.0
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