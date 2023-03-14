local QuestClientData = {}

QuestClientData.MainID = 20027
QuestClientData.ActorAlias = "20027"
QuestClientData.SubIDs = 
{
    q2002700 = 2002700,
    q2002701 = 2002701,
    q2002702 = 2002702,
	q2002703 = 2002703,
	q2002703 = 2002704,
	q2002703 = 2002705,
    
}

QuestClientData.NPCData = 
{
	Npc = "Npc153301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 153301,
	NPCPos = sceneData:GetDummyPoint(3,"Event_20201").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Event_20201").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20201").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20201").rot,

}
QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200270201, audioEvtName = "", duration = 3 },
	   {dialogID = 200270202, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200270301, audioEvtName = "", duration = 2 },
		{dialogID = 200270302, audioEvtName = "", duration = 2 },
	 },
	 Story3 = {
		{dialogID = 200270401, audioEvtName = "", duration = 4 },
		{dialogID = 200270402, audioEvtName = "", duration = 4 },
		{dialogID = 200270403, audioEvtName = "", duration = 4 },
	 },

 }
 
 QuestClientData.RoutePoints1 =
 {
	 sceneData:GetDummyPoint(3,"Event_20201").pos,
	 sceneData:GetDummyPoint(3,"Event_20201_01").pos,
	 sceneData:GetDummyPoint(3,"Event_20201_02").pos,
 }




return QuestClientData