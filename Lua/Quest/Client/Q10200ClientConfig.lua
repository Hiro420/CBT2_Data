local QuestClientData = {}

QuestClientData.MainID = 10200
QuestClientData.ActorAlias = "10200"
QuestClientData.SubIDs = 
{
    q1020000 = 1020000,
    q1020001 = 1020001,
    q1020002 = 1020002,
	q1020003 = 1020003,
	q1020004 = 1020004,	
	q1020005 = 1020005,
	q1020006 = 1020006,
	q1020007 = 1020007,
	q1020008 = 1020008,
	q1020009 = 1020009,
	q1020010 = 1020010,
	q1020011 = 1020011,
	q1020012 = 1020012,
	q1020013 = 1020013,
	q1020014 = 1020014,
	q1020015 = 1020015,
}

QuestClientData.QinData = 
{
	Qin = "Qin",
	QinScript = "Actor/Quest/Q411/Qin",
	QinID = 1006,
	bornPos1 = sceneData:GetDummyPoint(1004,"Q10200Qin").pos,
	bornDir1 = sceneData:GetDummyPoint(1004,"Q10200Qin").rot,	

}

QuestClientData.BruceData = 
{
	Bruce = "Npc160301",
	BruceScript = "Actor/Npc/TempNPC",
	BruceID = 160301,
	bornPos1 = sceneData:GetDummyPoint(1009,"Q10200BruceSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1009,"Q10200BruceSpawn").rot,	

}

QuestClientData.JackData = 
{
	Jack = "Npc141401",
	JackScript = "Actor/Npc/TempNPC",
	JackID = 141401,
	bornPos1 = sceneData:GetDummyPoint(1009,"Q10200JackSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1009,"Q10200JackSpawn").rot,	

}

QuestClientData.JoseData = 
{
	Jose = "Npc152301",
	JoseScript = "Actor/Npc/TempNPC",
	JoseID = 152301,
	bornPos1 = sceneData:GetDummyPoint(1009,"Q10200JoseSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1009,"Q10200JoseSpawn").rot,	

}

QuestClientData.KleeData = 
{
	Klee = "Npc10090",
	KleeScript = "Actor/Npc/TempNPC",
	KleeID = 10090,
	bornPos1 = sceneData:GetDummyPoint(1004,"Q10200KleeSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1004,"Q10200KleeSpawn").rot,	

}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,	
	bornPos1 = sceneData:GetDummyPoint(1009,"Q10200PaimonSpawn").pos,
	bornDir1 = sceneData:GetDummyPoint(1009,"Q10200PaimonSpawn").rot,		
}

QuestClientData.NarratorData = {
	Story1 = {
       {dialogID = 102000101, audioEvtName = "", duration = 1 },
	   {dialogID = 102000102, audioEvtName = "", duration = 1 },
	   {dialogID = 102000103, audioEvtName = "", duration = 1 },
       {dialogID = 102000104, audioEvtName = "", duration = 1 },
	},
	Story2 = {
		{dialogID = 102000301, audioEvtName = "", duration = 2 },
		{dialogID = 102000302, audioEvtName = "", duration = 2 },
	 },
}
return QuestClientData