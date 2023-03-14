local QuestClientData = 
{
	MainID = 22002,

	ActorAlias = "22002",

	SubIDs = 
	{
		q2200201 = 2200201,
		q2200202 = 2200202,
		q2200203 = 2200203,
		q2200204 = 2200204,
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
		},
		Meng = 
		{
			alias = "Npc203101",
			script = "Actor/Npc/TempNPC",
			id = 203101,
			pos = sceneData:GetDummyPoint(3, "Q22000MengSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000MengSpawn").rot,
		},
		Fei = 
		{
			alias = "Npc203001",
			script = "Actor/Npc/TempNPC",
			id = 203001,
			pos = sceneData:GetDummyPoint(3, "Q22000FeiSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000FeiSpawn").rot,
		},
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
		NarratorTable = 
		{
			{ dialogID = 220020601, audioEvtName = "", duration = 2, },
		},
	},
}

return QuestClientData
