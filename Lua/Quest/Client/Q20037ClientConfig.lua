local QuestClientData = {}

QuestClientData.MainID = 20037
QuestClientData.ActorAlias = "20037"
QuestClientData.SubIDs = 
{
    q2003701 = 2003701,
	q2003702 = 2003702,
    q2003703 = 2003703,
    q2003704 = 2003704,
    q2003705 = 2003705,
    q2003706 = 2003706,
    q2003707 = 2003707,
	
}

QuestClientData.NPCData01 = 
{
	Npc = "Npc155301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 155301,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").rot,

}

QuestClientData.NPCData02 = 
{
	Npc = "Paimon",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 1005,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20037NPC01GDWTBG").rot,

}


return QuestClientData