local QuestClientData = {}

QuestClientData.MainID = 20501
QuestClientData.ActorAlias = "20501"
QuestClientData.SubIDs = 
{
	q2050101 = 2050101,
    q2050102 = 2050102,
    q2050103 = 2050103,
    q2050104 = 2050104,
    q2050105 = 2050105,
    q2050106 = 2050106,
    q2050107 = 2050107,
    q2050108 = 2050108,
    q2050109 = 2050109,
    q2050110 = 2050110,
}

QuestClientData.JackData = 
{
	Jack = "Npc141301",
	JackScript = "Actor/Npc/TempNPC",
    JackID = 141301,

    BornPos = sceneData:GetDummyPoint(40100, "Q2050105_Jack").pos,
    BornDir = sceneData:GetDummyPoint(40100, "Q2050105_Jack").rot,	
    BornPos2 = sceneData:GetDummyPoint(40200, "Q2050105_Jack").pos,
    BornDir2 = sceneData:GetDummyPoint(40200, "Q2050105_Jack").rot,	
    BornPos3 = sceneData:GetDummyPoint(40300, "Q2050105_Jack").pos,
    BornDir3 = sceneData:GetDummyPoint(40300, "Q2050105_Jack").rot,	
    BornPos4 = sceneData:GetDummyPoint(40400, "Q2050105_Jack").pos,
    BornDir4 = sceneData:GetDummyPoint(40400, "Q2050105_Jack").rot,	
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,

	BornPos = sceneData:GetDummyPoint(40100, "Q2050105_Paimon").pos,
    BornDir = sceneData:GetDummyPoint(40100, "Q2050105_Paimon").rot,
    BornPos2 = sceneData:GetDummyPoint(40200, "Q2050105_Paimon").pos,
    BornDir2 = sceneData:GetDummyPoint(40200, "Q2050105_Paimon").rot,
    BornPos3 = sceneData:GetDummyPoint(40300, "Q2050105_Paimon").pos,
    BornDir3 = sceneData:GetDummyPoint(40300, "Q2050105_Paimon").rot,
    BornPos4 = sceneData:GetDummyPoint(40400, "Q2050105_Paimon").pos,
	BornDir4 = sceneData:GetDummyPoint(40400, "Q2050105_Paimon").rot,
}

return QuestClientData