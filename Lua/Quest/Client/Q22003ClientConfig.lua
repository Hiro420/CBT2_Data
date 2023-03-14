local QuestClientData =
{
	MainID = 22003,

	ActorAlias = "22003",

	SubIDs =
	{
		q2200301 = 2200301,
		q2200302 = 2200302,
		q2200303 = 2200303,
		q2200304 = 2200304,
		q2200305 = 2200305,
	},

	Actors =
	{
		YanXiaoData =
		{
			alias = "Npc220401",
			script = "Actor/Npc/TempNPC",
			id = 220401,
			pos = sceneData:GetDummyPoint(3, "Q22003YanXiaoBorn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22003YanXiaoBorn").rot,
		},
		JiangXueData =
		{
			alias = "Npc220101",
			script = "Actor/Npc/TempNPC",
			id = 220101,
			pos = sceneData:GetDummyPoint(3, "Q22003JiangXueBorn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22003JiangXueBorn").rot,
		},
		YanXiaoDailyData =
		{
			alias = "Npc2204",
			script = "",
			id = 2204,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		JiangXueDailyData =
		{
			alias = "Npc2201",
			script = "",
			id = 2201,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
	},

	Datas =
	{
	},
}

return QuestClientData
