local QuestClientData = {}

QuestClientData.MainID = 10202
QuestClientData.ActorAlias = "10202"
QuestClientData.SubIDs = 
{
    q1020200 = 1020200,
    q1020201 = 1020201,
	q1020202 = 1020202,
	q1020203 = 1020203,
    q1020204 = 1020204,
}

QuestClientData.DoorData = 
{
	Door = "Npc10092",
	DoorScript = "Actor/Npc/TempNPC",
	DoorID = 10092,
	bornPos1 = sceneData:GetDummyPoint(1004,"Q10202DoorSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1004,"Q10202DoorSpawn").rot,	

}

QuestClientData.KleeData = 
{
	Klee = "Npc10090",
	KleeScript = "Actor/Npc/TempNPC",
	KleeID = 10090,
	bornPos1 = sceneData:GetDummyPoint(1004,"Q10202KleeSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1004,"Q10202KleeSpawn").rot,	

}

QuestClientData.QinData = 
{
	Qin = "Qin",
	QinScript = "Actor/Quest/Q411/Qin",
	QinID = 1006,
	bornPos1 = sceneData:GetDummyPoint(1004,"Q10202QinSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1004,"Q10202QinSpawn").rot,	

}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,		
}


return QuestClientData