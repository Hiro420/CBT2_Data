local QuestClientData = {}

QuestClientData.MainID = 481
QuestClientData.ActorAlias = "481"
QuestClientData.SubIDs = 
{
	q48101 = 48101,
	q48102 = 48102,
	q48103 = 48103,
	q48101 = 48104,
	q48102 = 48105,
	q48103 = 48106,
}

QuestClientData.AmborData = 
{
	Ambor = "Ambor",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,

	bornPos = sceneData:GetDummyPoint(3,"Q481Ambor").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q481Ambor").rot,	
	desPos = sceneData:GetDummyPoint(3,"Q481AmborDes").pos,

}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,

	bornPos = sceneData:GetDummyPoint(3,"Q481Paimon").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q481Paimon").rot,	

}

return QuestClientData