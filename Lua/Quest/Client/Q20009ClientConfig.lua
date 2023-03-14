local QuestClientData = {}

QuestClientData.MainID = 20009
QuestClientData.ActorAlias = "20009"
QuestClientData.SubIDs =
{
    q2000901 = 2000901,
    q2000902 = 2000902,
	  q2000903 = 2000903,
    q2000904 = 2000904,
    q2000905 = 2000905,
    q2000906 = 2000906,
    q2000907 = 2000907,
    q2000908 = 2000908,
    q2000909 = 2000909,
    q2000910 = 2000910,
    q2000911 = 2000911,
    q2000908 = 2000912,
    q2000909 = 2000913,
    q2000910 = 2000914,
    q2000911 = 2000915,


}

QuestClientData.NPCData =
{
	Npc = "Npc156501",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 156501,
	  NPCPos1 = sceneData:GetDummyPoint(3,"Q20009NPC01").pos,
	  NPCDir1 = sceneData:GetDummyPoint(3,"Q20009NPC01").rot,
    NPCPos2 = sceneData:GetDummyPoint(3,"Q20009NPC05").pos,
	  NPCDir2 = sceneData:GetDummyPoint(3,"Q20009NPC05").rot,
    NPCDir3 = sceneData:GetDummyPoint(3,"Q20009NPC04").rot,

}

QuestClientData.HiliData =
{
	Npc = "Npc20025",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 20025,
	NPCPos = sceneData:GetDummyPoint(3,"Q20009Hili01").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Q20009Hili01").rot,

}

QuestClientData.PlayerData =
{
  PlayerPos = sceneData:GetDummyPoint(3,"Q20009PlayerPos").pos,
	PlayerDir = sceneData:GetDummyPoint(3,"Q20009PlayerPos").rot,

}


QuestClientData.RoutePoints =
{
	sceneData:GetDummyPoint(3,"Q20009NPC02").pos,
	sceneData:GetDummyPoint(3,"Q20009NPC03").pos,
	sceneData:GetDummyPoint(3,"Q20009NPC04").pos,
}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Q20009NPCLeave01").pos,
	sceneData:GetDummyPoint(3,"Q20009NPCLeave02").pos,
	sceneData:GetDummyPoint(3,"Q20009NPCLeave03").pos,
  sceneData:GetDummyPoint(3,"Q20009NPCLeave04").pos,

}

QuestClientData.NarratorData = {
	Story1 = {
    	{dialogID = 200091101, audioEvtName = "", duration = 5},
	},
}



return QuestClientData
