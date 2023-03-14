local QuestClientData = {}

QuestClientData.MainID = 20043
QuestClientData.ActorAlias = "20043"
QuestClientData.SubIDs =
{
    q2004301 = 2004301,
    q2004302 = 2004302,
	  q2004303 = 2004303,
    q2004304 = 2004304,
    q2004305 = 2004305,


}

QuestClientData.MichelleData =
{
	Npc = "Npc142101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 142101,
	  NPCPos = sceneData:GetDummyPoint(3,"Q20043NPC1Born").pos,
	  NPCDir = sceneData:GetDummyPoint(3,"Q20043NPC1Born").rot,
    NPCLeavePos = sceneData:GetDummyPoint(3,"Q20043NPC1Leave").pos,
}

QuestClientData.QuinnData =
{
	Npc = "Npc140301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 140301,
	NPCPos = sceneData:GetDummyPoint(3,"Q20043NPC2Born").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Q20043NPC2Born").rot,

}

QuestClientData.PaimonData =
{
	Npc = "Paimon",
	NPCScript = "Actor/Quest/Q352/Paimon",
	NpcID = 1005,
}

QuestClientData.NarratorData = {
	Story1 = {
    	{dialogID = 200431001, audioEvtName = "", duration = 5},
      {dialogID = 200431002, audioEvtName = "", duration = 5},

	},
}


QuestClientData.RoutePoints =
{
}





return QuestClientData
