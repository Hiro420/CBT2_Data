local QuestClientData = {}

QuestClientData.MainID = 20035
QuestClientData.ActorAlias = "20035"
QuestClientData.SubIDs = 
{
    q2003500 = 2003500,
    q2003501 = 2003501,
    q2003502 = 2003502,
	q2003503 = 2003503,
    q2003504 = 2003504
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
	   {dialogID = 200350701, audioEvtName = "", duration = 3 },
	   {dialogID = 200350702, audioEvtName = "", duration = 4 },
	   {dialogID = 200350703, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200350801, audioEvtName = "", duration = 4 },
	 },
	 Story3 = {
		{dialogID = 200350802, audioEvtName = "", duration = 4 },
	 },

 }



return QuestClientData