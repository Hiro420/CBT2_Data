local QuestClientData = {}

QuestClientData.MainID = 20023
QuestClientData.ActorAlias = "20023"
QuestClientData.SubIDs = 
{
    q2002300 = 2002300,
    q2002301 = 2002301,
    q2002302 = 2002302,
	q2002303 = 2002303,
	q2002304 = 2002304,	
	q2002305 = 2002305,
	q2002306 = 2002306,	
	q2002307 = 2002307,
	q2002308 = 2002308,	
}

QuestClientData.NPC1Data = 
{
	Npc = "Npc146101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 146101,
	--temp NPC ID
	NPCBornPos1 = sceneData:GetDummyPoint(1009,"Event22600Spawn1").pos,
    NPCBornDir1 = sceneData:GetDummyPoint(1009,"Event22600Spawn1").rot,
    NPCBornPos2 = sceneData:GetDummyPoint(3,"Event22600NPCSpawn2").pos,
	NPCBornDir2 = sceneData:GetDummyPoint(3,"Event22600NPCSpawn2").rot,
}

QuestClientData.NPC2Data = 
{
	Npc = "Npc140301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 140301,
	--temp NPC ID
	NPCBornPos1 = sceneData:GetDummyPoint(3,"Event22600NPCSpawn1").pos,
    NPCBornDir1 = sceneData:GetDummyPoint(3,"Event22600NPCSpawn1").rot,

}

QuestClientData.NPC3Data = 
{
	Npc = "Npc147101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 147101,
	--temp NPC ID
	NPCBornPos1 = sceneData:GetDummyPoint(3,"Event22600NPCSpawn3").pos,
    NPCBornDir1 = sceneData:GetDummyPoint(3,"Event22600NPCSpawn3").rot,

}


QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200230601, audioEvtName = "", duration = 2 },
	   {dialogID = 200230602, audioEvtName = "", duration = 2 },
	},
	Story2 = {
		{dialogID = 200230603, audioEvtName = "", duration = 2 },
		{dialogID = 200230604, audioEvtName = "", duration = 2 },
	},
    Story3 = {
		{dialogID = 200230605, audioEvtName = "", duration = 2 },
	},
    Story4 = {
        {dialogID = 200230606, audioEvtName = "", duration = 2 },
        {dialogID = 200230607, audioEvtName = "", duration = 2 },
        {dialogID = 200230608, audioEvtName = "", duration = 2 },
	},

 }

return QuestClientData