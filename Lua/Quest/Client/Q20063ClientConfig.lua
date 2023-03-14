local QuestClientData =
{
	MainID = 20063,

	ActorAlias = "20063",

	SubIDs =
	{
		q2006301 = 2006301,
		q2006302 = 2006302,
		q2006303 = 2006303,
		q2006304 = 2006304,
		q2006305 = 2006305,
		q2006306 = 2006306,
		q2006307 = 2006307,
		q2006308 = 2006308,
		q2006309 = 2006309,
		q2006310 = 2006310,
	},

	Actors =
	{
		StanleyData =
		{
			alias = "Npc141101",
			script = "Actor/Npc/TempNPC",
			id = 141101,
			pos = sceneData:GetDummyPoint(3, "Q20063StanleyBorn").pos,
			rot = sceneData:GetDummyPoint(3, "Q20063StanleyBorn").rot,
		},
		JackData =
		{
			alias = "Npc141301",
			script = "Actor/Npc/TempNPC",
			id = 141301,
			pos = sceneData:GetDummyPoint(3, "Q20063JackBorn").pos,
			rot = sceneData:GetDummyPoint(3, "Q20063JackBorn").rot,
			leavepos = sceneData:GetDummyPoint(3, "Q20063JackLeave").pos,
		},
		CyrusData =
		{
			alias = "Npc140901",
			script = "Actor/Npc/TempNPC",
			id = 140901,
			pos = sceneData:GetDummyPoint(3, "Q20063CyrusBorn").pos,
			rot = sceneData:GetDummyPoint(3, "Q20063CyrusBorn").rot,
		},
		StanleyDaily1Data =
		{
			alias = "Npc1411",
			script = "",
			id = 1411,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		StanleyDaily2Data =
		{
			alias = "Npc1412",
			script = "",
			id = 1412,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		CyrusDaily1Data =
		{
			alias = "Npc1410",
			script = "",
			id = 1410,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		CyrusDaily2Data =
		{
			alias = "Npc1409",
			script = "",
			id = 1409,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		JackDaily1Data =
		{
			alias = "Npc1413",
			script = "",
			id = 1413,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		JackDaily2Data =
		{
			alias = "Npc1414",
			script = "",
			id = 1414,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
	},

	Datas =
	{
		FireSlimeReminder =
		{
			{ dialogID = 200630701, audioEvtName = "", duration = 5, },
			{ dialogID = 200630702, audioEvtName = "", duration = 5, },
			{ dialogID = 200630703, audioEvtName = "", duration = 5, },

		},
		ShieldHiliReminder =
		{
			{ dialogID = 200630901, audioEvtName = "", duration = 5, },
			{ dialogID = 200630902, audioEvtName = "", duration = 5, },
			{ dialogID = 200630903, audioEvtName = "", duration = 5, },
		},
		IceSlimeReminder =
		{
			{ dialogID = 200631101, audioEvtName = "", duration = 5, },
			{ dialogID = 200631102, audioEvtName = "", duration = 5, },
			{ dialogID = 200631103, audioEvtName = "", duration = 5, },

		},
		FireSlimeFinishReminder =
		{
			{ dialogID = 200630401, audioEvtName = "", duration = 5, },
			{ dialogID = 200630402, audioEvtName = "", duration = 5, },
		},
		ShieldHiliFinishReminder =
		{
			{ dialogID = 200630501, audioEvtName = "", duration = 5, },
			{ dialogID = 200630502, audioEvtName = "", duration = 5, },
		},
		IceSlimeFinishReminder =
		{
			{ dialogID = 200631501, audioEvtName = "", duration = 5, },
			{ dialogID = 200631502, audioEvtName = "", duration = 5, },
		},

	},
}

return QuestClientData
