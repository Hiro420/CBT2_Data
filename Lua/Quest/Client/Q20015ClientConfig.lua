local QuestClientData = {}

QuestClientData.MainID = 20015
QuestClientData.ActorAlias = "20015"
QuestClientData.SubIDs =
{
    q2001501 = 2001501,
    q2001502 = 2001502,
	  q2001503 = 2001503,
    q2001504 = 2001504,
    q2001505 = 2001505,
    q2001506 = 2001506,
    q2001507 = 2001507,
    q2001508 = 2001508,
    q2001509 = 2001509,
    q2001510 = 2001510,
    q2001511 = 2001511,
    q2001508 = 2001512,
    q2001509 = 2001513,
    q2001510 = 2001514,
    q2001511 = 2001515,


}

QuestClientData.NPCData =
{
	Npc = "Npc156501",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 156501,
	  NPCPos1 = sceneData:GetDummyPoint(3,"Q20015NPC01").pos,
	  NPCDir1 = sceneData:GetDummyPoint(3,"Q20015NPC01").rot,
    NPCPos2 = sceneData:GetDummyPoint(3,"Q20015NPC05").pos,
	  NPCDir2 = sceneData:GetDummyPoint(3,"Q20015NPC05").rot,
    NPCDir3 = sceneData:GetDummyPoint(3,"Q20015NPC04").rot,

}

QuestClientData.HiliData =
{
	Npc = "Npc20025",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 20025,
	NPCPos = sceneData:GetDummyPoint(3,"Q20015Hili01").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Q20015Hili01").rot,

}

QuestClientData.PlayerData =
{
  PlayerPos = sceneData:GetDummyPoint(3,"Q20015PlayerPos").pos,
	PlayerDir = sceneData:GetDummyPoint(3,"Q20015PlayerPos").rot,

}


QuestClientData.RoutePoints =
{
	sceneData:GetDummyPoint(3,"Q20015NPC02").pos,
	sceneData:GetDummyPoint(3,"Q20015NPC03").pos,
	sceneData:GetDummyPoint(3,"Q20015NPC04").pos,
}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Q20015NPCLeave01").pos,
	sceneData:GetDummyPoint(3,"Q20015NPCLeave02").pos,
	sceneData:GetDummyPoint(3,"Q20015NPCLeave03").pos,
  sceneData:GetDummyPoint(3,"Q20015NPCLeave04").pos,

}

QuestClientData.NarratorData = {
	Story1 = {
    	{dialogID = 200151101, audioEvtName = "", duration = 5},
	},
}



return QuestClientData
