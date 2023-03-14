local QuestClientData = {}

QuestClientData.MainID = 20042
QuestClientData.ActorAlias = "20042"
QuestClientData.SubIDs =
{
    q2004201 = 2004201,
    q2004202 = 2004202,
	  q2004203 = 2004203,
    q2004204 = 2004204,
    q2004205 = 2004205,


}

QuestClientData.NunData =
{
	Npc = "Npc147101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 147101,
	  NPCPos = sceneData:GetDummyPoint(3,"Q20042NPC1Born").pos,
	  NPCDir = sceneData:GetDummyPoint(3,"Q20042NPC1Born").rot,
    NPCLeavePos = sceneData:GetDummyPoint(3,"Q20042NPC1Leave").pos,

}

QuestClientData.AlbertData =
{
	Npc = "Npc160201",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 160201,
	NPCPos = sceneData:GetDummyPoint(3,"Q20042NPC2Born").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Q20042NPC2Born").rot,
  NPCLeavePos = sceneData:GetDummyPoint(3,"Q20042NPC2Leave1").pos,

}


QuestClientData.RoutePoints =
{
	sceneData:GetDummyPoint(3,"Q20042NPC2Leave1").pos,
  sceneData:GetDummyPoint(3,"Q20042NPC2Leave2").pos,
  sceneData:GetDummyPoint(3,"Q20042NPC2Leave3").pos,
  sceneData:GetDummyPoint(3,"Q20042NPC2Leave4").pos,
}


QuestClientData.NarratorData = {
	Story1 = {
    	{dialogID = 200421101, audioEvtName = "", duration = 5},
	},
}



return QuestClientData
