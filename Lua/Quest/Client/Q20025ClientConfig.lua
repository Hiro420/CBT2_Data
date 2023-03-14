local QuestClientData = {}

QuestClientData.MainID = 20025
QuestClientData.ActorAlias = "20025"
QuestClientData.SubIDs = 
{
    q2002500 = 2002500,
    q2002501 = 2002501,
    q2002502 = 2002502,
	q2002503 = 2002503,
    q2002504 = 2002504
}

QuestClientData.NPCData = 
{
	Npc = "Npc155101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 155101,
	NPCPos = sceneData:GetDummyPoint(3,"Q20025NPC").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Q20025NPC").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20025NPC").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20025NPC").rot,
}

QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200250701, audioEvtName = "", duration = 3 },
	   {dialogID = 200250702, audioEvtName = "", duration = 4 },
	   {dialogID = 200250703, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200250801, audioEvtName = "", duration = 4 },
	 },
	 Story3 = {
		{dialogID = 200250802, audioEvtName = "", duration = 4 },
	 },

 }



return QuestClientData