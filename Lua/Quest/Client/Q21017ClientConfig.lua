local QuestClientData = {}

QuestClientData.MainID = 21017
QuestClientData.ActorAlias = "21017"
QuestClientData.SubIDs = 
{
	q2101701 = 2101701,
	q2101702 = 2101702,
    q2101703 = 2101703,
    q2101704 = 2101704,
    q2101705 = 2101705,
    q2101706 = 2101706,
    q2101707 = 2101707,
    q2101708 = 2101708,
    q2101709 = 2101709,
    q2101710 = 2101710,
    q2101711 = 2101711,
    q2101712 = 2101712,
}

QuestClientData.PosData = 
{	
    BornPos = sceneData:GetDummyPoint(3,"Racing_133105220_StartPos").pos,
    BornDir = sceneData:GetDummyPoint(3,"Racing_133105220_StartPos").rot,
}



return QuestClientData