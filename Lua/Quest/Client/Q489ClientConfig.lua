local QuestClientData = {}

QuestClientData.MainID = 489
QuestClientData.ActorAlias = "489"
QuestClientData.SubIDs = 
{
	q48901 = 48901,
	q48902 = 48902,
    q48903 = 48903,
    q48904 = 48904,
    q48905 = 48905,
    q48906 = 48906,
    q48907 = 48907,
    q48908 = 48908,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	--Pos = sceneData:GetDummyPoint(3,"Q46102Paimon").pos,
	--Dir = sceneData:GetDummyPoint(3,"Q46102Paimon").rot,
}

QuestClientData.AmborData = 
{	
	Alias = "Amber01",
	Script = "Actor/Quest/Q301/Ambor301",
	ID = 100201,
	Pos = sceneData:GetDummyPoint(3,"Q48901Amber").pos,
	Dir = sceneData:GetDummyPoint(3,"Q48901Amber").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q48901Amber2").pos,
	Dir2 = sceneData:GetDummyPoint(3,"Q48901Amber2").rot,
}

QuestClientData.WindData = {
	
}

return QuestClientData