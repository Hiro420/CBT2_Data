local QuestClientData = {}

QuestClientData.MainID = 20000
QuestClientData.ActorAlias = "20000"
QuestClientData.SubIDs = 
{
	q2000001 = 2000001,
	q2000002 = 2000002,
    q2000003 = 2000003,
    q2000004 = 2000004,
    q2000005 = 2000005,
    q2000006 = 2000006,
    q2000007 = 2000007,
    q2000008 = 2000008,
}

QuestClientData.PosData = 
{	
    BornPos = sceneData:GetDummyPoint(3,"DUMMY_POS 3102001").pos,
    BornDir = sceneData:GetDummyPoint(3,"DUMMY_POS 3102001").rot,
}



return QuestClientData