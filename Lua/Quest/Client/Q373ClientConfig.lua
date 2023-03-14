local QuestClientData = {}

QuestClientData.MainID = 373
QuestClientData.ActorAlias = "373"
QuestClientData.SubIDs = 
{
	q37301 = 37301,
    q37302 = 37302,
	q37303 = 37303,
	q37304 = 37304,
}

-- QuestClientData.PaimonData = 
-- {
-- 	Paimon = "Paimon",
-- 	PaimonScript = "Actor/Quest/Q352/Paimon",
-- 	PaimonID = 1005,

-- 	bornPos = sceneData:GetDummyPoint(1008,"Q373PaimonTemp").pos,
-- 	bornDir = sceneData:GetDummyPoint(1008,"Q373PaimonTemp").rot,	

-- }

QuestClientData.WendyData = 
{
	Wendy = "Wendy",
	WendyScript = "Actor/Quest/Q301/Wendy301",
	WendyID = 1001,

	bornPos = sceneData:GetDummyPoint(3,"Q37301Venti").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q37301Venti").rot,	
	bornPos2 = sceneData:GetDummyPoint(3,"Q372Venti").pos,
	bornDir2 = sceneData:GetDummyPoint(3,"Q372Venti").rot,

}

QuestClientData.NarratorFlow =
{
	{dialogID = 3730301, audioEvtName = "", duration = 3.5},
	{dialogID = 3730302, audioEvtName = "", duration = 4.5},
	{dialogID = 3730303, audioEvtName = "", duration = 3},
	{dialogID = 3730304, audioEvtName = "", duration = 3.5},
}

return QuestClientData