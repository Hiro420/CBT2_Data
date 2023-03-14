local QuestClientData = {}

QuestClientData.MainID = 358
QuestClientData.ActorAlias = "358"
QuestClientData.SubIDs = 
{
	q35801 = 35801,
	q35802 = 35802,
}

QuestClientData.NarratorData = {
	Story2 = {
        {dialogID = 3571001, duration = 4},
	},
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
    PaimonID = 1005,
            
    Pos1 = sceneData:GetDummyPoint(1004,"Q358Paimon").pos,
	Dir1 = sceneData:GetDummyPoint(1004,"Q358Paimon").rot,    
	Pos2 = sceneData:GetDummyPoint(3,"Q358Paimon2").pos,
	Dir2 = sceneData:GetDummyPoint(3,"Q358Paimon2").rot, 
	Pos3 = sceneData:GetDummyPoint(3,"Q358Paimon1").pos,
    Dir3 = sceneData:GetDummyPoint(3,"Q358Paimon1").rot, 
}

QuestClientData.QinData = 
{
    Qin = "Qin",
    QinScript = "Actor/Quest/Q411/Qin",
    QinID = 1006,

    Pos1 = sceneData:GetDummyPoint(1004,"Q358Qin").pos,
    Dir1 = sceneData:GetDummyPoint(1004,"Q358Qin").rot,    
}

QuestClientData.AmborData = 
{
	Ambor = "Ambor",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,

	Pos1 = sceneData:GetDummyPoint(1004,"Q358Ambor").pos,
    Dir1 = sceneData:GetDummyPoint(1004,"Q358Ambor").rot,	
}

QuestClientData.GaiaData = 
{
	Gaia = "Gaia",
	GaiaScript = "Actor/Quest/Q301/Gaia301",
	GaiaID = 1004,

	Pos1 = sceneData:GetDummyPoint(1004,"Q358Kaeya").pos,
    Dir1 = sceneData:GetDummyPoint(1004,"Q358Kaeya").rot,	
}

QuestClientData.LisaData = 
{
	Lisa = "Lisa",
	LisaScript = "Actor/Quest/Q411/Lisa",
    LisaID = 1007,
    
	Pos1 = sceneData:GetDummyPoint(1004,"Q358Lisa").pos,
    Dir1 = sceneData:GetDummyPoint(1004,"Q358Lisa").rot,		
}

QuestClientData.InterData = {
    Cutscene1 = {
		type = CutsceneType.TIME_LINE_PREFAB,
		canSkip = true,
		castListPath = "Cs_CastList_Q358",
		resPath = "ART/Cutscene/Cs_MDAQ025_QinLisa_Convert",
		startPosType = CutsceneInitPosType.FREE,
		startOffset = {0, 0, 0},
		keepCamera = false,
		syncLoad = true,
		fadeInDuration = 0.0
    },
}

return QuestClientData