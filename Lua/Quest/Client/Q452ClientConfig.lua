local QuestClientData = {}

QuestClientData.MainID = 452
QuestClientData.ActorAlias = "452"
QuestClientData.SubIDs = 
{
	q45201 = 45201,
    q45202 = 45202,
	q45203 = 45203,
	q45206 = 45206,
    q45204 = 45204,
    q45205 = 45205,
}

QuestClientData.AmborData = 
{
	Alias = "Ambor",
	Script = "Actor/Quest/Q301/Ambor301",
	ID = 1002,
	BornPos = sceneData:GetDummyPoint(3,"Q452AmborBorn").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q452AmborBorn").rot,
	LeavePos201 = sceneData:GetDummyPoint(3,"Q45201AmborLeave").pos,
	LeaveDir201 = sceneData:GetDummyPoint(3,"Q45201AmborLeave").rot,
    FightPos = sceneData:GetDummyPoint(3,"Q452AmborFight").pos,
	FightDir = sceneData:GetDummyPoint(3,"Q452AmborFight").rot,
	EndPos = sceneData:GetDummyPoint(3,"Q452AmborEnd").pos,
	EndDir = sceneData:GetDummyPoint(3,"Q452AmborEnd").rot,
	LeavePos203 = sceneData:GetDummyPoint(3,"Q45203AmborLeave").pos,
	LeaveDir203 = sceneData:GetDummyPoint(3,"Q45203AmborLeave").rot,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos = { sceneData:GetDummyPoint(3,"Q452AmborBorn").pos.x+1, sceneData:GetDummyPoint(3,"Q452AmborBorn").pos.y, sceneData:GetDummyPoint(3,"Q452AmborBorn").pos.z },
	BornDir = sceneData:GetDummyPoint(3,"Q452AmborBorn").rot,	
}

QuestClientData.FarmerData = 
{
	Alias = "Npc163101",
	Script = "Actor/Npc/TempNPC",
	ID = 163101, --157101替换成复制人齐格芙丽雅
	BornPos = sceneData:GetDummyPoint(3,"Q452FightFarmer").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q452FightFarmer").rot,
}


return QuestClientData