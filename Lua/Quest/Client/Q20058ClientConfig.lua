local QuestClientData = {}

QuestClientData.MainID = 20058
QuestClientData.ActorAlias = "20058"
QuestClientData.SubIDs = 
{
	q2005801 = 2005801,
	q2005802 = 2005802,
    q2005803 = 2005803,
    q2005804 = 2005804,
    q2005805 = 2005805,
    q2005806 = 2005806,
    q2005807 = 2005807,
    q2005808 = 2005808,
}

QuestClientData.PosData = 
{	
    BornPos = sceneData:GetDummyPoint(3,"Q20058Transmit").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q20058Transmit").rot,
}

QuestClientData.NPCData01 = 
{
    Npc = "Npc160101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 160101,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q20058NPCBorn").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q20058NPCBorn").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20058NPCBorn").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20058NPCBorn").rot,

}

QuestClientData.NPCData03 = 
{
    Npc = "Npc160101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 160101,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q20058NPCBorn3").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q20058NPCBorn3").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20058NPCBorn3").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20058NPCBorn3").rot,

}

QuestClientData.NPCData02 = 
{
    Npc = "Paimon",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 1005,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q20058NPCBorn2").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q20058NPCBorn2").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20058NPCBorn2").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20058NPCBorn2").rot,

}

QuestClientData.NPCData04 = 
{
    Npc = "Npc142901",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 142901,
}

return QuestClientData