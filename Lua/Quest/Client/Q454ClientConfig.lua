local QuestClientData = {}

QuestClientData.MainID = 454
QuestClientData.ActorAlias = "454"
QuestClientData.SubIDs =
{
	q45407 = 45407,
	q45401 = 45401,
	q45410 = 45410,
	q45411 = 45411,
	q45412 = 45412,
	q45413 = 45413,
	q45414 = 45414,
	q45408 = 45408,
	q45409 = 45409,
	q45415 = 45415,
    q45402 = 45402,
	q45403 = 45403,
	q45404 = 45404,
	q45416 = 45416,
	q45417 = 45417,
    q45405 = 45405,
    q45406 = 45406,
}

QuestClientData.AmborData =
{
	Alias = "Ambor",
	Script = "Actor/Quest/Q301/Ambor301",
	ID = 1002,
	BornPos = sceneData:GetDummyPoint(3,"Q454Ambor").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q454Ambor").rot,
	BornPos01 = sceneData:GetDummyPoint(3,"Q45401Ambor").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q45401Ambor").rot,
	BornPos11 = sceneData:GetDummyPoint(3,"Q45411Ambor").pos,
	BornDir11 = sceneData:GetDummyPoint(3,"Q45411Ambor").rot,
	BornPos13 = sceneData:GetDummyPoint(3,"Q45413Ambor").pos,
	BornDir13 = sceneData:GetDummyPoint(3,"Q45413Ambor").rot,
	EndPos = sceneData:GetDummyPoint(3,"Q454AmborEnd").pos,
	EndDir = sceneData:GetDummyPoint(3,"Q454AmborEnd").rot,
	End2Pos = sceneData:GetDummyPoint(3,"Q454Ambor2End").pos,
	End2Dir = sceneData:GetDummyPoint(3,"Q454Ambor2End").rot,
	LeavePos01 = sceneData:GetDummyPoint(3,"Q45401AmborLeave").pos,
	LeaveDir01 = sceneData:GetDummyPoint(3,"Q45401AmborLeave").rot,
	LeavePos11 = sceneData:GetDummyPoint(3,"Q45411AmborLeave").pos,
	LeaveDir11 = sceneData:GetDummyPoint(3,"Q45411AmborLeave").rot,
}

QuestClientData.PaimonData =
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos = { sceneData:GetDummyPoint(3,"Q454Ambor").pos.x+1,
	sceneData:GetDummyPoint(3,"Q454Ambor").pos.y,
	sceneData:GetDummyPoint(3,"Q454Ambor").pos.z },
	BornDir = sceneData:GetDummyPoint(3,"Q454Ambor").rot,
	EndPos = sceneData:GetDummyPoint(3,"Q454PaimonEnd").pos,
	EndDir = sceneData:GetDummyPoint(3,"Q454PaimonEnd").rot,
}

QuestClientData.RazorData =
{
	Alias = "Razor",
	Script = "Actor/Npc/Razor",
	ID = 1011,
    BornPos = sceneData:GetDummyPoint(3,"Q454Razor").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q454Razor").rot,
	BornPos01 = sceneData:GetDummyPoint(3,"Q45401Razor").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q45401Razor").rot,
	BornPos11 = sceneData:GetDummyPoint(3,"Q45411Razor").pos,
	BornDir11 = sceneData:GetDummyPoint(3,"Q45411Razor").rot,
	LeavePos01 = sceneData:GetDummyPoint(3,"Q45401RazorLeave").pos,
	LeaveDir01 = sceneData:GetDummyPoint(3,"Q45401RazorLeave").rot,
	LeavePos11 = sceneData:GetDummyPoint(3,"Q45411RazorLeave").pos,
	LeaveDir11 = sceneData:GetDummyPoint(3,"Q45411RazorLeave").rot,
	BornPos13 = sceneData:GetDummyPoint(3,"Q45413Razor").pos,
	BornDir13 = sceneData:GetDummyPoint(3,"Q45413Razor").rot,
	EndPos = sceneData:GetDummyPoint(3,"Q45406Razor").pos,
	EndDir = sceneData:GetDummyPoint(3,"Q45406Razor").rot,
}

QuestClientData.WolfWoundData =
{
	Alias = "WolfWound",
	Script = "Actor/Npc/RazorWolfWound",
	ID = 1165,
    BornPos = sceneData:GetDummyPoint(3,"Q454WolfWound").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q454WolfWound").rot,
	BornPos13 = sceneData:GetDummyPoint(3,"Q45413WoundWolf").pos,
	BornDir13 = sceneData:GetDummyPoint(3,"Q45413WoundWolf").rot,
}

QuestClientData.WolfBossData =
{
	Alias = "WolfBoss",
	Script = "Actor/Npc/RazorWolfBoss",
	ID = 1176,
    BornPos = sceneData:GetDummyPoint(3,"Q454WolfBoss").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q454WolfBoss").rot,
	EndPos = sceneData:GetDummyPoint(3,"Q454WolfBossEnd").pos,
	EndDir = sceneData:GetDummyPoint(3,"Q454WolfBossEnd").rot,
}

QuestClientData.Farmer1Data =
{
	Alias = "Npc154301",
	Script = "Actor/Npc/TempNPC",
	ID = 154301, --1174替换成复制人神奇的霍普金斯
	BornPos = sceneData:GetDummyPoint(3,"Q454FarmerBorn1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q454FarmerBorn1").rot,
    TalkPos = sceneData:GetDummyPoint(3,"Q454FarmerTalk1").pos,
    TalkDir = sceneData:GetDummyPoint(3,"Q454FarmerTalk1").rot,
}

QuestClientData.Farmer2Data =
{
	Alias = "Npc163201",
	Script = "Actor/Npc/TempNPC",
	ID = 163201, --157501替换成复制人约顿
	BornPos = sceneData:GetDummyPoint(3,"Q454FarmerBorn2").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q454FarmerBorn2").rot,
    TalkPos = sceneData:GetDummyPoint(3,"Q454FarmerTalk2").pos,
    TalkDir = sceneData:GetDummyPoint(3,"Q454FarmerTalk2").rot,
}

QuestClientData.HerbData =
{
	Alias = "Herb",
	ID = 100016,
	BornPos = sceneData:GetDummyPoint(3,"Q454Herb").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q454Herb").rot,
}

QuestClientData.BloodHintData =
{
	Alias = "BloodHint",
	ID = 70300074,
	BornPos = sceneData:GetDummyPoint(3,"Q45411BloodHint").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q45411BloodHint").rot,
}

QuestClientData.NarratorFlow1 =
{
	{dialogID = 4540801, audioEvtName = "", duration = 1.2},
	{dialogID = 4540802, audioEvtName = "", duration = 2},
}

QuestClientData.NarratorFlow2 =
{
	{dialogID = 4540901, audioEvtName = "", duration = 3.2},
	{dialogID = 4540902, audioEvtName = "", duration = 3},
}

QuestClientData.CsCfg =
{
	type = CutsceneType.TIME_LINE_PREFAB,
	canSkip = true,
	castListPath = "Cs_CastList_Q454",
	resPath = "ART/Cutscene/Cs_RZLQ004_Rzwolf_Convert",
	startPosType = CutsceneInitPosType.FREE,
	startOffset = {0, 0, 0},
	keepCamera = true,
	syncLoad = true,
	fadeInDuration = 0.5,
	fadeOutDuration = 1.5
}


return QuestClientData