local QuestClientData = 
{
	MainID = 22000,

	ActorAlias = "22000",

	SubIDs = 
	{
		q2200001 = 2200001,
		q2200002 = 2200002,
		q2200003 = 2200003,
		q2200004 = 2200004,
		q2200005 = 2200005,
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
			{ dialogID = 220000601, audioEvtName = "", duration = 2, },
			{ dialogID = 220000602, audioEvtName = "", duration = 2, },
		},
	},
}

return QuestClientData
