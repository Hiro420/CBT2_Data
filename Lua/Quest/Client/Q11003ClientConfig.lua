local QuestClientData = {}

QuestClientData.MainID = 11003
QuestClientData.ActorAlias = "11003"
QuestClientData.SubIDs = 
{
	q1100301 = 1100301,
	q1100302 = 1100302,
	q1100303 = 1100303,
	q1100304 = 1100304,
}

QuestClientData.XianglingData = 
{
	Alias = "Xiangling",
	Script = "Actor/Npc/TempNPC",
	ID = 1012,
    BornPos = sceneData:GetDummyPoint(3,"Q1100302XL").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1100302XL").rot,

}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos = sceneData:GetDummyPoint(3,"Q451WolfRunStart").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q451WolfRunStart").rot,

}

QuestClientData.OlafData = 
{
	Alias = "Npc163001",
	Script = "Actor/Npc/TempNPC",
	ID = 163001,
	BornPos = sceneData:GetDummyPoint(3,"Q1100302Olaf").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1100302Olaf").rot,

}

QuestClientData.NarratorFlow1 =  --发现老猎人开车
{
	{dialogID = 110030101, audioEvtName = "", duration = 1.6},
	{dialogID = 110030102, audioEvtName = "", duration = 1.6},

}

return QuestClientData