local QuestClientData = {}

QuestClientData.MainID = 488
QuestClientData.ActorAlias = "488"
QuestClientData.SubIDs = 
{
	q48801 = 48801,
	q48802 = 48802,
    q48803 = 48803,
    q48804 = 48804,
    q48805 = 48805,
    q48806 = 48806,
    q48807 = 48807,
    q48808 = 48808,
}

QuestClientData.NpcData = 
{
	Alias = "Npc153301",
	Script = "Actor/Npc/TempNPC",
    ID = 153501,
    NPCPos0 = sceneData:GetDummyPoint(3,"Q48800NPC").pos,
    NPCDir0 = sceneData:GetDummyPoint(3,"Q48800NPC").rot,
	NPCPos1 = sceneData:GetDummyPoint(3,"Q48801NPC").pos,
    NPCDir1 = sceneData:GetDummyPoint(3,"Q48801NPC").rot,
    NPCPos2 = sceneData:GetDummyPoint(3,"Q48803NPC").pos,
	NPCDir2 = sceneData:GetDummyPoint(3,"Q48803NPC").rot,
	NPCPos3 = sceneData:GetDummyPoint(3,"Q48803NPCTo").pos,
	NPCDir3 = sceneData:GetDummyPoint(3,"Q48803NPCTo").rot,
	NPCPos4 = sceneData:GetDummyPoint(3,"Q48803Start").pos,
	NPCDir4 = sceneData:GetDummyPoint(3,"Q48803Start").rot,
	NPCPos5 = sceneData:GetDummyPoint(3,"Q48803Finish").pos,
	NPCDir5 = sceneData:GetDummyPoint(3,"Q48803Finish").rot,
}

QuestClientData.BarNpcData = 
{
	Alias = "NPC10030",
	Script = "Actor/Npc/TempNPC",
    ID = 10030,
    NPCPos0 = sceneData:GetDummyPoint(3,"Q48800NPC").pos,
	NPCDir0 = sceneData:GetDummyPoint(3,"Q48800NPC").rot,
	NPCPos1 = sceneData:GetDummyPoint(3,"Q48800NPCLeave").pos,
	NPCDir1 = sceneData:GetDummyPoint(3,"Q48800NPCLeave").rot,	
}


QuestClientData.LisaData = 
{
	Alias = "Lisa01",
	Script = "Actor/Quest/Q411/Lisa",
	ID = 100701,
	bornPos = sceneData:GetDummyPoint(3, "Q48800Lisa").pos,
	bornDir = sceneData:GetDummyPoint(3, "Q48800Lisa").rot,
	bornPos1 = sceneData:GetDummyPoint(3, "Q48800LisaLeave").pos,
	bornDir1 = sceneData:GetDummyPoint(3, "Q48800LisaLeave").rot,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	Pos = sceneData:GetDummyPoint(3,"Q46102Paimon").pos,
	Dir = sceneData:GetDummyPoint(3,"Q46102Paimon").rot,
}


return QuestClientData