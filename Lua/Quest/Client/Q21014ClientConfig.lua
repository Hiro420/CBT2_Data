local QuestClientData = {}

QuestClientData.MainID = 21014
QuestClientData.ActorAlias = "21014"
QuestClientData.SubIDs = 
{	
    q2101400 = 2101400,
}

QuestClientData.InterData = {
	Cutscene1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        resPath = "ART/Cutscene/Cs_LYIQ21014_LiYueShow",
        canSkip = false,
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false
	},
}


return QuestClientData