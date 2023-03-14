local QuestClientData = {}

QuestClientData.MainID = 20028
QuestClientData.ActorAlias = "20028"
QuestClientData.SubIDs = 
{
    q2002800 = 2002800,
    q2002801 = 2002801,
    q2002802 = 2002802,
	q2002803 = 2002803,
	q2002803 = 2002804,
	q2002803 = 2002805,
    
}

QuestClientData.NPCData = 
{
	Npc = "Npc157501",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 157501,
	NPCPos = sceneData:GetDummyPoint(3,"Event_20202").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Event_20202").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20202").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20202").rot,

}

QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200280201, audioEvtName = "", duration = 3 },
	   {dialogID = 200280202, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200280301, audioEvtName = "", duration = 2 },
		{dialogID = 200280302, audioEvtName = "", duration = 2 },
	 },
	 Story3 = {
		{dialogID = 200280401, audioEvtName = "", duration = 4 },
		{dialogID = 200280402, audioEvtName = "", duration = 4 },
		{dialogID = 200280403, audioEvtName = "", duration = 4 },
	 },

 }
 
 QuestClientData.RoutePoints1 =
 {
	 sceneData:GetDummyPoint(3,"Event_20202").pos,
	 sceneData:GetDummyPoint(3,"Event_20202_01").pos,
	 sceneData:GetDummyPoint(3,"Event_20202_02").pos,
 }



return QuestClientData