local QuestClientData = {}

QuestClientData.MainID = 20019
QuestClientData.ActorAlias = "20019"
QuestClientData.SubIDs = 
{
    q2001900 = 2001900,
    q2001901 = 2001901,
    q2001902 = 2001902,
	q2001903 = 2001903,
    q2001904 = 2001904
}

QuestClientData.NPCData = 
{
	Npc = "Npc155101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 155101,
	NPCPos = sceneData:GetDummyPoint(3,"Q20005NPC").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Q20005NPC").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20005NPC").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20005NPC").rot,
	KEY01Pos = sceneData:GetDummyPoint(3,"Q20005KEY01").pos,
	KEY02Pos = sceneData:GetDummyPoint(3,"Q20005KEY02").pos,
}

QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200190701, audioEvtName = "", duration = 3 },
	   {dialogID = 200190702, audioEvtName = "", duration = 4 },
	   {dialogID = 200190703, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200190801, audioEvtName = "", duration = 4 },
	 },
	 Story3 = {
		{dialogID = 200190802, audioEvtName = "", duration = 4 },
	 },

 }
 


return QuestClientData