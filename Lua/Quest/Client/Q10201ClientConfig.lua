local QuestClientData = {}

QuestClientData.MainID = 10201
QuestClientData.ActorAlias = "10201"
QuestClientData.SubIDs = 
{
    q1020100 = 1020100,
    q1020101 = 1020101,
    q1020102 = 1020102,
	q1020103 = 1020103,
	q1020104 = 1020104,	
	q1020105 = 1020105,
	q1020106 = 1020106,
	q1020107 = 1020107,	
	q1020108 = 1020108,
	q1020109 = 1020109,	
	q1020110 = 1020110,
	q1020111 = 1020111,
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,		
}

QuestClientData.NarratorData = {
	Story1 = {
       {dialogID = 102010101, audioEvtName = "", duration = 2 },
       {dialogID = 102010102, audioEvtName = "", duration = 2 },
	},
}

QuestClientData.KleeData = 
{
	Klee = "Npc10090",
	KleeScript = "Actor/Npc/TempNPC",
	KleeID = 10090,
	bornPos1 = sceneData:GetDummyPoint(3,"Q10201KleeSpawn1").pos,
	bornDir1 = sceneData:GetDummyPoint(3,"Q10201KleeSpawn1").rot,	

	bornPos2 = sceneData:GetDummyPoint(3,"Q10201KleeSpawn2").pos,
	bornDir2 = sceneData:GetDummyPoint(3,"Q10201KleeSpawn2").rot,

	bornPos3 = sceneData:GetDummyPoint(20031,"Q10201KleeSpawn3").pos,
	bornDir3 = sceneData:GetDummyPoint(20031,"Q10201KleeSpawn3").rot,	

}

QuestClientData.AbyssData = 
{
	Abyss = "Npc10093",
	AbyssScript = "Actor/Npc/TempNPC",
	AbyssID = 10093,
	bornPos1 = sceneData:GetDummyPoint(20031,"Q1020102AbyssSpawn6").pos,
	bornDir1 = sceneData:GetDummyPoint(20031,"Q1020102AbyssSpawn6").rot,	

}

QuestClientData.NPCData =
{
	Npc = "Npc10091",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 10091,
	NPCPos1 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn").pos,
	NPCDir1 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn").rot,
	NPCPos2 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute2").pos,
	NPCDir2 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute2").rot,
	NPCPos3 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn2").pos,
	NPCDir3 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn2").rot,

	NPCPos4 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute3").pos,
	NPCDir4 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute3").rot,
	NPCPos5 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute5").pos,
	NPCDir5 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute5").rot,
	NPCPos6 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn3").pos,
	NPCDir6 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn3").rot,

	NPCPos7 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute6").pos,
	NPCDir7 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute6").rot,
	NPCPos8 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute7").pos,
	NPCDir8 = sceneData:GetDummyPoint(3,"Q1020102AbyssRoute7").rot,
	NPCPos9 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn4").pos,
	NPCDir9 = sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn4").rot,

	NPCPos10 = sceneData:GetDummyPoint(20031,"Q1020102AbyssSpawn5").pos,
	NPCDir10 = sceneData:GetDummyPoint(20031,"Q1020102AbyssSpawn5").rot,

	NPCPos11 = sceneData:GetDummyPoint(3,"Q10201Chaseend").pos,
	NPCDir11 = sceneData:GetDummyPoint(3,"Q10201Chaseend").rot,
}

QuestClientData.RouteData1 ={
	routeConfig = {
	sceneData:GetDummyPoint(3,"Q1020102AbyssRoute1").pos,
	sceneData:GetDummyPoint(3,"Q1020102AbyssRoute2").pos,
	sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn2").pos,
	},
	beFollowLen = 15,
	beFollowFailed = 50
}

QuestClientData.RouteData2 ={
	routeConfig = {
    sceneData:GetDummyPoint(3,"Q1020102AbyssRoute3").pos,
    sceneData:GetDummyPoint(3,"Q1020102AbyssRoute4").pos,
	sceneData:GetDummyPoint(3,"Q1020102AbyssRoute5").pos,
	sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn3").pos,
	},
	beFollowLen = 15,
	beFollowFailed = 50
}

QuestClientData.RouteData3 ={
	routeConfig = {
	sceneData:GetDummyPoint(3,"Q1020102AbyssRoute6").pos,
	sceneData:GetDummyPoint(3,"Q1020102AbyssRoute7").pos,
	},
	beFollowLen = 15,
	beFollowFailed = 50
}

QuestClientData.RouteData4 ={
	routeConfig = {
	sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn4").pos,
	sceneData:GetDummyPoint(3,"Q10201Chaseend").pos,
	},
	beFollowLen = 15,
	beFollowFailed = 50
}

QuestClientData.NarratorData = {
	Story1 = {
       {dialogID = 102010201, audioEvtName = "", duration = 6.9 },
	   {dialogID = 102010202, audioEvtName = "", duration = 8.0 },
	},
	Story2 = {
		{dialogID = 102010208, audioEvtName = "", duration = 3 },
		{dialogID = 102010209, audioEvtName = "", duration = 1.87 },
	 },
	Story3 = {
		{dialogID = 102010203, audioEvtName = "", duration = 5.24 },
		{dialogID = 102010204, audioEvtName = "", duration = 6.87 },
	 },
	Story4 = {
		{dialogID = 102010205, audioEvtName = "", duration = 4.8 },
	 },
}

return QuestClientData