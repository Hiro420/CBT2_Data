local QuestClientData = {}

QuestClientData.MainID = 451
QuestClientData.ActorAlias = "451"
QuestClientData.SubIDs = 
{
	q45109 = 45109,
	q45101 = 45101,
	q45102 = 45102,
	q45107 = 45107,
    q45103 = 45103,
	q45104 = 45104,
	q45107 = 45108,
	q45105 = 45105,
	q45106 = 45106,


}

QuestClientData.RazorData = 
{
	Alias = "Razor",
	Script = "Actor/Npc/Razor",
	ID = 1011,
    BornPos = sceneData:GetDummyPoint(3,"Q451Razor").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q451Razor").rot,
	LeavePos = sceneData:GetDummyPoint(3,"Q451RazorLeave").pos,
	LeaveDir = sceneData:GetDummyPoint(3,"Q451RazorLeave").rot,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos = sceneData:GetDummyPoint(3,"Q451WolfRunStart").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q451WolfRunStart").rot,
	EndPos = sceneData:GetDummyPoint(3,"Q451PaimonEnd").pos,
	EndDir = sceneData:GetDummyPoint(3,"Q451PaimonEnd").rot,
}

QuestClientData.NarratorFlow1 =
{
	{dialogID = 4510001, audioEvtName = "", duration = 3},
	{dialogID = 4510002, audioEvtName = "", duration = 3},
	{dialogID = 4510003, audioEvtName = "", duration = 4},
}

QuestClientData.NarratorFlow2 =
{
	{dialogID = 4510801, audioEvtName = "", duration = 4},
	{dialogID = 4510802, audioEvtName = "", duration = 3},
	{dialogID = 4510803, audioEvtName = "", duration = 5},
	{dialogID = 4510804, audioEvtName = "", duration = 6},
}

QuestClientData.CsCfg =
{
	type = CutsceneType.TIME_LINE_PREFAB,
	canSkip = true,
	castListPath = "Cs_CastList_Q451",
	resPath = "ART/Cutscene/CutScene_RZLQ001_RzArrived_Convert",
	startPosType = CutsceneInitPosType.FREE,
	startOffset = {0, 0, 0},
	keepCamera = true,
	syncLoad = true,
	fadeInDuration = 0.5,
	fadeOutDuration = 1.5
}

return QuestClientData