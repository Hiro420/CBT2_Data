local QuestClientData = {}

QuestClientData.MainID = 992
QuestClientData.ActorAlias = "992"
QuestClientData.SubIDs = 
{
	q99201 = 99201,
	q99202 = 99202,
	q99203 = 99203,
}

QuestClientData.AmborData = 
{
	Ambor = "Ambor992",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,
	bornPos1 = sceneData:GetDummyPoint(3,"Q991PosD").pos,
	bornDir1 = sceneData:GetDummyPoint(3,"Q991PosD").rot,
	bornPos2 = sceneData:GetDummyPoint(3,"Q991PosE").pos,
	bornDir2 = sceneData:GetDummyPoint(3,"Q991PosE").rot,
	bornPos3 = sceneData:GetDummyPoint(3,"Q991PosF").pos,
	bornDir3 = sceneData:GetDummyPoint(3,"Q991PosF").rot,	
}  
return QuestClientData