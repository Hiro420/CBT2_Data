local QuestClientData = {}

QuestClientData.MainID = 397
QuestClientData.ActorAlias = "397"
QuestClientData.SubIDs = 
{
	q39701 = 39701,
    q39702 = 39702,
    q39703 = 39703,
    q39704 = 39704,
}

QuestClientData.WendyData =
{
	Wendy = "Wendy",
	WendyScript = "Actor/Quest/Q301/Wendy301",
    WendyID = 1001,
    bornPos = sceneData:GetDummyPoint(3,"Q39702Wendy").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q39702Wendy").rot,
    bornPos2 = sceneData:GetDummyPoint(3,"Q384Wendy").pos,
    bornDir2 = sceneData:GetDummyPoint(3,"Q384Wendy").rot,
}

QuestClientData.DilucData =
{
	Diluc = "Diluc",
	DilucScript = "Actor/Quest/Q376/Diluc",
	DilucID = 1009,
    bornPos = sceneData:GetDummyPoint(3,"Q39702Diluc").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q39702Diluc").rot,
    bornPos2 = sceneData:GetDummyPoint(3,"Q384Diluc").pos,
    bornDir2 = sceneData:GetDummyPoint(3,"Q384Diluc").rot,
}

QuestClientData.QinData =
{
	Qin = "Qin",
	QinScript = "Actor/Quest/Q411/Qin",
	QinID = 1006,
	bornPos = sceneData:GetDummyPoint(3,"Q39702Qin").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q39702Qin").rot,	
    bornPos2 = sceneData:GetDummyPoint(3,"Q384Qin").pos,
    bornDir2 = sceneData:GetDummyPoint(3,"Q384Qin").rot,	
}

QuestClientData.PaimonData =
{
    Paimon = "Paimon",
    PaimonScript = "Actor/Quest/Q352/Paimon",
    PaimonID = 1005,
    bornPos = sceneData:GetDummyPoint(3,"Q39702Paimon").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q39702Paimon").rot,	
    bornPos = sceneData:GetDummyPoint(3,"Q38406Paimon").pos,
    bornDir = sceneData:GetDummyPoint(3,"Q38406Paimon").rot,	
}

QuestClientData.PlayerData = 
{
	bornPos = sceneData:GetDummyPoint(3,"Q39702Player").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q39702Player").rot,
	bornPos2 = sceneData:GetDummyPoint(3,"Q38406Player").pos,
	bornDir2 = sceneData:GetDummyPoint(3,"Q38406Player").rot,
}

QuestClientData.NarratorData =
{
    {dialogID = 3970301, duration = 3},
    {dialogID = 3970302, duration = 3},
}

return QuestClientData