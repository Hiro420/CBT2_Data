local QuestClientData = 
{
	MainID = 22001,

	ActorAlias = "22001",

	SubIDs = 
	{
		q2200101 = 2200101,
		q2200102 = 2200102,
		q2200103 = 2200103,
		q2200106 = 2200106,
		q2200104 = 2200104,
		q2200105 = 2200105,
	},

	Actors = 
	{
		Lulu = 
		{
			alias = "Npc207401",
			script = "Actor/Npc/TempNPC",
			id = 207401,
			pos = sceneData:GetDummyPoint(3, "Q22000LuluSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000LuluSpawn").rot,
			pos2 = sceneData:GetDummyPoint(3, "Q22001LuluSpawn").pos,
			rot2 = sceneData:GetDummyPoint(3, "Q22001LuluSpawn").rot,
		},
		Meng = 
		{
			alias = "Npc203101",
			script = "Actor/Npc/TempNPC",
			id = 203101,
			pos = sceneData:GetDummyPoint(3, "Q22000MengSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000MengSpawn").rot,
			pos2 = sceneData:GetDummyPoint(3, "Q22001MengSpawn").pos,
			rot2 = sceneData:GetDummyPoint(3, "Q22001MengSpawn").rot,
		},
		Fei = { alias = "Npc203001", script = "Actor/Npc/TempNPC", id = 203001, pos = sceneData:GetDummyPoint(3, "Q22000FeiSpawn").pos, rot = sceneData:GetDummyPoint(3, "Q22000FeiSpawn").rot, },
		Paimon = 
		{
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
	},

	Datas = 
	{
		RoutePointsData1 = 
		{
			sceneData:GetDummyPoint(3, "Q22001Route1").pos,
			sceneData:GetDummyPoint(3, "Q22001Route2").pos,
			sceneData:GetDummyPoint(3, "Q22001Route3").pos,
			sceneData:GetDummyPoint(3, "Q22001Route4").pos,
			sceneData:GetDummyPoint(3, "Q22001Route5").pos,
			sceneData:GetDummyPoint(3, "Q22001Route6").pos,
		},
		RoutePointsData2 = 
		{
			sceneData:GetDummyPoint(3, "Q22001Route11").pos,
			sceneData:GetDummyPoint(3, "Q22001Route12").pos,
			sceneData:GetDummyPoint(3, "Q22001Route13").pos,
			sceneData:GetDummyPoint(3, "Q22001Route14").pos,
			sceneData:GetDummyPoint(3, "Q22001Route15").pos,
			sceneData:GetDummyPoint(3, "Q22001Route16").pos,
		},
		RoutePointsData3 = 
		{
			sceneData:GetDummyPoint(3, "Q22001Route21").pos,
			sceneData:GetDummyPoint(3, "Q22001Route22").pos,
			sceneData:GetDummyPoint(3, "Q22001Route23").pos,
			sceneData:GetDummyPoint(3, "Q22001Route24").pos,
			sceneData:GetDummyPoint(3, "Q22001Route25").pos,
			sceneData:GetDummyPoint(3, "Q22001Route26").pos,
		},
		beFollowLen = 5,
		beFollowFailed = 20,
		NarratorTable1 = 
		{
			{ dialogID = 220010502, audioEvtName = "", duration = 2, },
			{ dialogID = 220010503, audioEvtName = "", duration = 2, },
		},
		NarratorTable2 = 
		{
			{ dialogID = 220010501, audioEvtName = "", duration = 2, },
		},
		NarratorTable3 = 
		{
			{ dialogID = 220010504, audioEvtName = "", duration = 2, },
		},
	},
}

return QuestClientData
