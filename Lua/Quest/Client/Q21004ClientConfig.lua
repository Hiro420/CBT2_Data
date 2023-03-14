local QuestClientData = {}

QuestClientData.MainID = 21004
QuestClientData.ActorAlias = "21004"
QuestClientData.SubIDs = 
{	
    q2100401 = 2100401,
    q2100402 = 2100402,
    q2100403 = 2100403,
    q2100410 = 2100410,
    q2100411 = 2100411,
    q2100412 = 2100412,
    q2100413 = 2100413,
    q2100420 = 2100420,
    q2100421 = 2100421,
    q2100430 = 2100430,
    q2100440 = 2100440,
    q2100450 = 2100450,
}

QuestClientData.InterData = {
	Cutscene1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        resPath = "ART/Cutscene/Cs_LYIQ21004_TheLostTreasure",
        canSkip = false,
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false
	},
}


return QuestClientData