local QuestClientData = {}

QuestClientData.MainID = 20004
QuestClientData.ActorAlias = "20004"
QuestClientData.SubIDs = 
{
	q2000401 = 2000401,
	q2000402 = 2000402,
    q2000403 = 2000403,
    q2000404 = 2000404,
    q2000405 = 2000405,
    q2000406 = 2000406,
    q2000407 = 2000407,
    q2000408 = 2000408,
}

QuestClientData.PosData = 
{	
    BornPos = sceneData:GetDummyPoint(50008,"Racing_250008015_StartPos").pos,
    BornDir = sceneData:GetDummyPoint(50008,"Racing_250008015_StartPos").rot,
}



return QuestClientData