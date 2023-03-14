local QuestClientData = {}

QuestClientData.MainID = 10100
QuestClientData.ActorAlias = "10100"
QuestClientData.SubIDs = 
{
	q1010001 = 1010001,
	q1010002 = 1010002,
	q1010003 = 1010003,
	q1010004 = 1010004,
	q1010005 = 1010005,
	q1010006 = 1010006,
	q1010007 = 1010007,
	q1010008 = 1010008,
	q1010009 = 1010009,
	q1010029 = 1010029,
	q1010041 = 1010041,
	q1010042 = 1010042,
	q1010043 = 1010043,
	q1010044 = 1010044,
	q1010045 = 1010045,
	q1010046 = 1010046,
	q1010047 = 1010047,
}

QuestClientData.LisaData = 
{
	Lisa = "Lisa",
	LisaScript = "Actor/Quest/Q411/Lisa",
    LisaID = 1007,
    
	BornPos = sceneData:GetDummyPoint(1004,"Q10100Lisa").pos,
	BornDir = sceneData:GetDummyPoint(1004,"Q10100Lisa").rot,
	BornPos2 = sceneData:GetDummyPoint(3,"Q10100Lisa2").pos,
	BornDir2 = sceneData:GetDummyPoint(3,"Q10100Lisa2").rot,
	BornPos3 = sceneData:GetDummyPoint(3,"Q1010009Lisa").pos,
	BornDir3 = sceneData:GetDummyPoint(3,"Q1010009Lisa").rot,
	BornPos4 = sceneData:GetDummyPoint(3,"Q1010004Lisa").pos,
	BornDir4 = sceneData:GetDummyPoint(3,"Q1010004Lisa").rot,
	BornPos5 = sceneData:GetDummyPoint(3,"Q1010003Lisa").pos,
	BornDir5 = sceneData:GetDummyPoint(3,"Q1010003Lisa").rot,
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,

	BornPos = sceneData:GetDummyPoint(3,"Q1010003Paimon").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1010003Paimon").rot,
	
}

QuestClientData.PlayerData = 
{
	BornPos = sceneData:GetDummyPoint(3,"Q1010003Player").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q1010003Player").rot,
	BornPos2 = sceneData:GetDummyPoint(3,"Q1010009Player").pos,
	BornDir2 = sceneData:GetDummyPoint(3,"Q1010009Player").rot,
	BornPos3 = sceneData:GetDummyPoint(3,"Q1010004Player").pos,
	BornDir3 = sceneData:GetDummyPoint(3,"Q1010004Player").rot,
}

QuestClientData.Book1Data = 
{
	Alias = "Q10100Book1",
	BookID = 70700005,

	BornPos = sceneData:GetDummyPoint(3,"Q10100Book1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q10100Book1").rot,
}

QuestClientData.Book2Data = 
{
	Alias = "Q10100Book2",
	BookID = 70700007,

	BornPos = sceneData:GetDummyPoint(3,"Q10100Book2").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q10100Book2").rot,
}

QuestClientData.Book3Data = 
{
	Alias = "Q10100Book3",
	BookID = 70700008,


	BornPos = sceneData:GetDummyPoint(3,"Q10100Book3").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q10100Book3").rot,
}

QuestClientData.Book4Data = 
{
	Alias = "Q10100Book4",
	BookID = 70700005,

	BornPos = sceneData:GetDummyPoint(3,"Q10100Book4").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q10100Book4").rot,
}

QuestClientData.NarratorData =
{
	Story1 = {
		{dialogID = 101006101, audioEvtName = "", duration = 4},
	},
	Story2 = {
		{dialogID = 101006201, audioEvtName = "", duration = 4},
	},
	Story3 = {
		{dialogID = 101006301, audioEvtName = "", duration = 4},
	},
	Story4 = {
		{dialogID = 101006302, audioEvtName = "", duration = 4},
	},
}

return QuestClientData