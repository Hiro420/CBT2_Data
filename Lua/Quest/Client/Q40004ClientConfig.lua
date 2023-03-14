local QuestClientData = {}

QuestClientData.MainID = 40004
QuestClientData.ActorAlias = "40004"
QuestClientData.SubIDs = 
{
    q4000401 = 4000401,
    q4000402 = 4000402,
    q4000403 = 4000403,
}

QuestClientData.PlayerData = 
{
	BornPos = sceneData:GetDummyPoint(3,"Q40004Player1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40004Player1").rot,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
}

QuestClientData.XiaoData = 
{
	Alias = "Xiao",
	Script = "Actor/Npc/TempNPC",
    ID = 10204,
}

QuestClientData.KeayaData = 
{
	Alias = "Keaya",
	Script = "Actor/Quest/Q301/Gaia301",
    ID = 1004,

	BornPos = sceneData:GetDummyPoint(1009,"Q40004_Kaeya").pos,
    BornDir = sceneData:GetDummyPoint(1009,"Q40004_Kaeya").rot,
}


QuestClientData.SpyData = 
{
	Alias = "Npc146101",
	Script = "Actor/Npc/TempNPC",
    ID = 146101,

	BornPos = sceneData:GetDummyPoint(3,"Q40004_Spy").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40004_Spy").rot,
}

QuestClientData.Thoarder1Data = 
{
	Alias = "Npc10207",
	Script = "Actor/Npc/TempNPC",
    ID = 10207,

	BornPos = sceneData:GetDummyPoint(3,"Q40004Thoarder1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40004Thoarder1").rot,
}

QuestClientData.Thoarder2Data = 
{
	Alias = "Npc10208",
	Script = "Actor/Npc/TempNPC",
    ID = 10208,

	BornPos = sceneData:GetDummyPoint(3,"Q40004Thoarder2").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40004Thoarder2").rot,
}

QuestClientData.NarratorData = {
	    Story1 = {
	        {dialogID = 400040001, duration = 3.6},
	    }
	}
	
return QuestClientData