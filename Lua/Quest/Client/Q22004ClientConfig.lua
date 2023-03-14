local QuestClientData =
{
	MainID = 22004,

	ActorAlias = "22004",

	SubIDs =
	{
		q2200401 = 2200401,
		q2200402 = 2200402,
		q2200403 = 2200403,
		q2200404 = 2200404,
		q2200405 = 2200405,
	},

	Actors =
	{
		JiangXueData =
		{
			alias = "Npc220101",
			script = "Actor/Npc/TempNPC",
			id = 220101,
			pos = sceneData:GetDummyPoint(3, "Q22004JiangXueBorn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22004JiangXueBorn").rot,
			TurnRot = sceneData:GetDummyPoint(3, "Q22004JiangXueTurn").rot,
		},
		JiangXueDailyData =
		{
			alias = "Npc2201",
			script = "",
			id = 2201,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		PlayerData =
		{
			alias = "",
			script = "",
			id = 0,
			pos = sceneData:GetDummyPoint(3, "Q22004Player").pos,
			rot = sceneData:GetDummyPoint(3, "Q22004Player").rot,
		},
		PaimonData =
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
		JiangXueReminder01 =
		{
			{ dialogID = 220040201, audioEvtName = "", duration = 5, },
			{ dialogID = 220040202, audioEvtName = "", duration = 5, },
		},
		JiangXueReminder02 =
		{
			{ dialogID = 220040203, audioEvtName = "", duration = 5, },
			{ dialogID = 220040204, audioEvtName = "", duration = 5, },
			{ dialogID = 220040205, audioEvtName = "", duration = 5, },
		},
		PaimonReminder =
		{
			{ dialogID = 220040206, audioEvtName = "", duration = 3, },
			{ dialogID = 220040207, audioEvtName = "", duration = 3, },
			{ dialogID = 220040208, audioEvtName = "", duration = 3, },
			{ dialogID = 220040209, audioEvtName = "", duration = 5, },
			{ dialogID = 220040210, audioEvtName = "", duration = 4, },
		},
		CameraFocus = sceneData:GetDummyPoint(3, "Q22004Target").pos,
	},
}

return QuestClientData
