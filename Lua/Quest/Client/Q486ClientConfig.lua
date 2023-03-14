local QuestClientData = {}

QuestClientData.MainID = 486
QuestClientData.ActorAlias = "486"
QuestClientData.SubIDs = 
{
	q48601 = 48601,
	q48602 = 48602,
    q48603 = 48603,
    q48604 = 48604,
    q48605 = 48605,
    q48606 = 48606,
    q48607 = 48607,
    q48608 = 48608,
    q48608 = 48609,
    q48608 = 48610,
}

QuestClientData.QuestData = 
{	
    camPos1 = sceneData:GetDummyPoint(3,"Q48601lookat").pos,
    camDir1 = sceneData:GetDummyPoint(3,"Q48601lookat").rot,
    PlayerPos1 = sceneData:GetDummyPoint(1008,"Q48608Player").pos,
    PlayerDir1 = sceneData:GetDummyPoint(1008,"Q48608Player").rot,	
}

QuestClientData.KaeyaData = 
{
	Alias = "Gaia",
	Script = "Actor/Quest/Q301/Gaia301",
	ID = 1004,
	KaeyaPos = sceneData:GetDummyPoint(3,"Q48610Kaeya").pos,
	KaeyaDir = sceneData:GetDummyPoint(3,"Q48610Kaeya").rot,
	KaeyaPos1 = sceneData:GetDummyPoint(3,"Q48610KaeyaLeave").pos,
	KaeyaDir1 = sceneData:GetDummyPoint(3,"Q48610KaeyaLeave").rot,
}

QuestClientData.BarbaraData = 
{
	Alias = "Barbara",
	Script = "Actor/Quest/Q413/Barbara",
	ID = 1008,
    BabaraPos1 = sceneData:GetDummyPoint(1008,"Q48608Babara").pos,
    BabaraDir1 = sceneData:GetDummyPoint(1008,"Q48608Babara").rot,	
}

QuestClientData.QinData = 
{
	Alias = "Qin",
	Script = "Actor/Quest/Q411/Qin",
	ID = 1006,
	QinPos1 = sceneData:GetDummyPoint(1004,"Q48607Qin").pos,
	QinDir1 = sceneData:GetDummyPoint(1004,"Q48607Qin").rot,	
}

QuestClientData.BarNpcData = 
{
	Alias = "NPC10030",
	Script = "Actor/Npc/TempNPC",
	ID = 10030,
	NPCPos1 = sceneData:GetDummyPoint(3,"Q48603Npc").pos,
	NPCDir1 = sceneData:GetDummyPoint(3,"Q48603Npc").rot,	
}

QuestClientData.CatNpcData = 
{
	Alias = "CatNpc",
	--Script = "Actor/Npc/TempNPC",
	Script = "Actor/Npc/TempNPC",
	ID = 10031,
	NPCPos1 = sceneData:GetDummyPoint(3,"Q48605NPC").pos,
	NPCDir1 = sceneData:GetDummyPoint(3,"Q48605NPC").rot,
	NPCPos2 = sceneData:GetDummyPoint(3,"Q48605NpcLeave").pos,
	NPCDir2 = sceneData:GetDummyPoint(3,"Q48605NpcLeave").rot,
	NPCPos3 = sceneData:GetDummyPoint(3,"Q48701NPC").pos,
	NPCDir3 = sceneData:GetDummyPoint(3,"Q48701NPC").rot,	
}

QuestClientData.NarratorData = {
	Story1 = {
		{dialogID = 4860200, audioEvtName = "", duration = 4},
		{dialogID = 4860201, audioEvtName = "", duration = 4},
	},
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	--Pos = sceneData:GetDummyPoint(3,"Q46102Paimon").pos,
	--Dir = sceneData:GetDummyPoint(3,"Q46102Paimon").rot,
}

return QuestClientData