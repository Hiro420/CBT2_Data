local QuestClientData = {}

QuestClientData.MainID = 20005
QuestClientData.ActorAlias = "20005"
QuestClientData.SubIDs = 
{
    q2000500 = 2000500,
    q2000501 = 2000501,
    q2000502 = 2000502,
	q2000503 = 2000503,
    q2000504 = 2000504
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
	   {dialogID = 200050701, audioEvtName = "", duration = 3 },
	   {dialogID = 200050702, audioEvtName = "", duration = 4 },
	   {dialogID = 200050703, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200050801, audioEvtName = "", duration = 4 },
	 },
	 Story3 = {
		{dialogID = 200050802, audioEvtName = "", duration = 4 },
	 },

 }
 


return QuestClientData