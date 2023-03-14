local QuestClientData = {}

QuestClientData.MainID = 11001
QuestClientData.ActorAlias = "11001"
QuestClientData.SubIDs = 
{
	q1100101 = 1100101,
	q1100102 = 1100102,
	q1100103 = 1100103,
	q1100104 = 1100104,
}

QuestClientData.XianglingData = 
{
	Alias = "Xiangling",
	Script = "Actor/Npc/TempNPC",
	ID = 1012,
    BornPos01 = sceneData:GetDummyPoint(3,"Q1100101XL").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100101XL").rot,
	LeavePos = sceneData:GetDummyPoint(3,"Q1100103XLL1").pos,
	LeaveDir = sceneData:GetDummyPoint(3,"Q1100103XLL1").rot,
	LeavePos03 = sceneData:GetDummyPoint(3,"Q1100103XLleave").pos,
	LeaveDir03 = sceneData:GetDummyPoint(3,"Q1100103XLleave").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100103XL").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100103XL").rot,

}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos01 = sceneData:GetDummyPoint(3,"Q1100101Paimon").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100101Paimon").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100103Paimon").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100103Paimon").rot,
}

QuestClientData.DraffData = 
{
	Alias = "Npc153701",
	Script = "Actor/Npc/TempNPC",
	ID = 153701,
	BornPos01 = sceneData:GetDummyPoint(3,"Q1100101Draff").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100101Draff").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100103Draff").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100103Draff").rot,

}

QuestClientData.BrookData = 
{
	Alias = "Npc154101",
	Script = "Actor/Npc/TempNPC",
	ID = 154101,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100103Brook").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100103Brook").rot,

}

QuestClientData.NarratorFlow1 =  --遇到布洛克前闻到食物香味
{
	{dialogID = 110010301, audioEvtName = "", duration = 5.2},
	{dialogID = 110010302, audioEvtName = "", duration = 6.6},

}

QuestClientData.NarratorFlow2 =  --遇到布洛克前闻到食物香味
{
	{dialogID = 110010303, audioEvtName = "", duration = 2.7},
	{dialogID = 110010304, audioEvtName = "", duration = 1.5},
	
}


return QuestClientData