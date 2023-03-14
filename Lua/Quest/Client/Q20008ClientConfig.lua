local QuestClientData = {}

QuestClientData.MainID = 20008
QuestClientData.ActorAlias = "20008"
QuestClientData.SubIDs = 
{
    q2000800 = 2000800,
    q2000801 = q2000801,
    q2000802 = q2000802,
	q2000803 = q2000803,
	q2000803 = q2000804,
	q2000803 = q2000805,
    
}

QuestClientData.NPCData = 
{
	Npc = "Npc156901",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 156901,
	NPCPos = sceneData:GetDummyPoint(3,"Event_20200").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Event_20200").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20200").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20200").rot,

}

QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200080201, audioEvtName = "", duration = 3 },
	   {dialogID = 200080202, audioEvtName = "", duration = 4 },
	},
	Story2 = {
		{dialogID = 200080301, audioEvtName = "", duration = 2 },
		{dialogID = 200080302, audioEvtName = "", duration = 2 },
	 },
	 Story3 = {
		{dialogID = 200080401, audioEvtName = "", duration = 4 },
		{dialogID = 200080402, audioEvtName = "", duration = 4 },
		{dialogID = 200080403, audioEvtName = "", duration = 4 },
	 },

 }

 QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Event_20200").pos,
	sceneData:GetDummyPoint(3,"Event_20200_01").pos,
}





return QuestClientData