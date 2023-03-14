local QuestClientData = {}

QuestClientData.MainID = 1002
QuestClientData.ActorAlias = "1002"
QuestClientData.SubIDs = 
{
	q100201 = 100201,
	q100202 = 100202,
	q100203 = 100203,
	q100204 = 100204,
	q100205 = 100205,
}

QuestClientData.PlayerData = 
{
	BornPos = sceneData:GetDummyPoint(3,"Q1002_Player").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1002_Player").rot,
	BornPos2 = sceneData:GetDummyPoint(3,"Q1002_Player2").pos,
	BornDir2 = sceneData:GetDummyPoint(3,"Q1002_Player2").rot,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
    
	BornPos = sceneData:GetDummyPoint(3,"Q1002_Paimon2").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1002_Paimon2").rot,
}

QuestClientData.XianRenData = 
{
	Alias = "Npc2002801",
	Script = "Actor/Npc/TempNPC",
    ID = 2002801,
    
	BornPos = sceneData:GetDummyPoint(3,"Q1002_XianRen2").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1002_XianRen2").rot,
}

QuestClientData.TriggerData = 
{
	Alias = "Q1002Trigger",
	Script = "Actor/Gadget/Q1002Trigger",
    ID = 70900002,
    
	BornPos = sceneData:GetDummyPoint(3,"Q1002_Target2").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1002_Target2").rot,
}
return QuestClientData