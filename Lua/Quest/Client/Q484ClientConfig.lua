local QuestClientData = {}

QuestClientData.MainID = 484
QuestClientData.ActorAlias = "484"
QuestClientData.SubIDs = 
{
	q48401 = 48401,
	q48402 = 48402,
	q48403 = 48403,
	q48404 = 48404,
    q48405 = 48405,
    q48406 = 48406,
	q48407 = 48407,
	q48408 = 48408,
	q48409 = 48409,
    q48410 = 48410,
	q48411 = 48411,
	q48412 = 48412,
	q48413 = 48413,
	q48414 = 48414,
	q48415 = 48415,
	q48416 = 48416,
	q48417 = 48417,
	q48418 = 48418,
	q48419 = 48419,
	q48420 = 48420,
	q48421 = 48421,
	q48422 = 48422,
	q48423 = 48423,
	q48424 = 48424,
	q48425 = 48425,
	q48426 = 48426,
	q48427 = 48427,
	q48428 = 48428,
	q48429 = 48429,
	q48430 = 48430,
	q48431 = 48431,
	q48432 = 48432,
	q48433 = 48433,
}


QuestClientData.AmborData = 
{
	Ambor = "Ambor",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,

	bornPos = sceneData:GetDummyPoint(3,"Q484Ambor").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q484Ambor").rot,	
	bornPos2 = sceneData:GetDummyPoint(3,"Q48403Ambor").pos,
    bornDir2 = sceneData:GetDummyPoint(3,"Q48403Ambor").rot,	
    bornPos3 = sceneData:GetDummyPoint(3,"Q48405Ambor").pos,
    bornDir3 = sceneData:GetDummyPoint(3,"Q48405Ambor").rot,	
    bornPos4 = sceneData:GetDummyPoint(3,"Q48407Ambor").pos,
    bornDir4 = sceneData:GetDummyPoint(3,"Q48407Ambor").rot,	
    bornPos5 = sceneData:GetDummyPoint(3,"Q48415Mon3").pos,
    bornDir5 = sceneData:GetDummyPoint(3,"Q48415Mon3").rot,	
    bornPos6 = sceneData:GetDummyPoint(3,"Q48422Ambor").pos,
	bornDir6 = sceneData:GetDummyPoint(3,"Q48422Ambor").rot,	
	bornPos7 = sceneData:GetDummyPoint(3,"Q48431Ambor").pos,
	bornDir7 = sceneData:GetDummyPoint(3,"Q48431Ambor").rot,
}

QuestClientData.WitnessData = 
{
	Civil = "Civil",
	CivilScript = "Actor/Quest/Q484/Civil",
	CivilID = 1256,

	bornPos = sceneData:GetDummyPoint(3,"Q48413").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48413").rot,	
}

QuestClientData.Civil01Data = 
{
	Civil = "Civil01",
	CivilScript = "Actor/Quest/Q484/Civil",
	CivilID = 1257,

	bornPos = sceneData:GetDummyPoint(3,"Q48423Civil01").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48423Civil01").rot,	
}

QuestClientData.Civil02Data = 
{
	Civil = "Civil02",
	CivilScript = "Actor/Quest/Q484/Civil",
	CivilID = 1258,

	bornPos = sceneData:GetDummyPoint(3,"Q48423Civil02").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48423Civil02").rot,	
}

QuestClientData.Civil03Data = 
{
	Civil = "Civil03",
	CivilScript = "Actor/Quest/Q484/Civil",
	CivilID = 1259,

	bornPos = sceneData:GetDummyPoint(3,"Q48423Civil03").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48423Civil03").rot,	
}

QuestClientData.Clue1Narrator =
{
	{dialogID = 4840411, audioEvtName = "", duration = 5},
    {dialogID = 4840412, audioEvtName = "", duration = 5.5},
    {dialogID = 4840413, audioEvtName = "", duration = 3.5},
    {dialogID = 4840414, audioEvtName = "", duration = 4},
}

QuestClientData.Clue2Narrator =
{
	{dialogID = 4840801, audioEvtName = "", duration = 2.5},
    {dialogID = 4840802, audioEvtName = "", duration = 2.5},
    {dialogID = 4840803, audioEvtName = "", duration = 4.5},
	{dialogID = 4840804, audioEvtName = "", duration = 2.3},
	{dialogID = 4840805, audioEvtName = "", duration = 4},
}

QuestClientData.Clue3Narrator =
{
	{dialogID = 4840611, audioEvtName = "", duration = 4.3},
    {dialogID = 4840612, audioEvtName = "", duration = 4},
    {dialogID = 4840613, audioEvtName = "", duration = 5.5},
	{dialogID = 4840614, audioEvtName = "", duration = 4.5},
}

QuestClientData.AmbushNarrator =
{
	{dialogID = 4841601, audioEvtName = "", duration = 4.5},
    {dialogID = 4841602, audioEvtName = "", duration = 4.3},
    {dialogID = 4841603, audioEvtName = "", duration = 4.3},
	{dialogID = 4841604, audioEvtName = "", duration = 4.4},
	{dialogID = 4841605, audioEvtName = "", duration = 4.5},
	{dialogID = 4841606, audioEvtName = "", duration = 4.5},
}

return QuestClientData