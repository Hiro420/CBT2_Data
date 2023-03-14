local QuestClientData = {}

QuestClientData.MainID = 21016
QuestClientData.ActorAlias = "21016"
QuestClientData.SubIDs = 
{
	q2101601 = 2101601,
	q2101602 = 2101602,
    q2101603 = 2101603,
    q2101604 = 2101604,
    q2101605 = 2101605,
    q2101606 = 2101606,
    q2101607 = 2101607,
    q2101608 = 2101608,
    q2101609 = 2101609,
    q2101610 = 2101610,
    q2101611 = 2101611,
    q2101612 = 2101612,
}

QuestClientData.PosData = 
{	
    BornPos = sceneData:GetDummyPoint(3,"Racing_StartPos_133101062").pos,
    BornDir = sceneData:GetDummyPoint(3,"Racing_StartPos_133101062").rot,
}



return QuestClientData