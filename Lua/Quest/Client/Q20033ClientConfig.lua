local QuestClientData = 
{
	MainID = 20033,

	ActorAlias = "20033",

	SubIDs = 
	{
		q2003301 = 2003301,
		q2003302 = 2003302,
		q2003303 = 2003303,
		q2003304 = 2003304,
		q2003305 = 2003305,
		q2003306 = 2003306,
	},

	Actors = 
	{
		NpcDataFishMan = 
		{
			alias = "Fishman",
			script = "Actor/Npc/TempNPC",
			id = 20032,
			pos = sceneData:GetDummyPoint(3, "Q306DungeonAmbor").pos,
			rot = sceneData:GetDummyPoint(3, "Q306DungeonAmbor").rot,
		},
		NpcDataLin = 
		{
			alias = "Npc1479",
			script = "Actor/Npc/NpcCommonScriptBehaviour",
			id = 1479,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
		NpcDataPaimon = 
		{
			alias = "Paimon",
			script = "Data/ScriptData/PropObject/SP_010",
			id = 1005,
			pos = { x = 0, y = 0, z = 0, },
			rot = { x = 0, y = 0, z = 0, },
		},
	},

	Datas = 
	{
		SpawnPointChestPos = sceneData:GetDummyPoint(3, "QUEST_20033").pos,
		SpawnPointChestRot = sceneData:GetDummyPoint(3, "QUEST_20033").rot,
		Position01Pos = sceneData:GetDummyPoint(3, "Q46701Paimon").pos,
		Position01Rot = sceneData:GetDummyPoint(3, "Q46701Paimon").rot,
		Narritor_LinCallPlayer = 
		{
			{ dialogID = 200130301, audioEvtName = "", duration = 5, },
			{ dialogID = 200130302, audioEvtName = "", duration = 5, },
		},
		RoutePointsData = 
		{
			sceneData:GetDummyPoint(3, "Rq10101Rescue1").pos,
			sceneData:GetDummyPoint(3, "QUEST_20033").pos,
			sceneData:GetDummyPoint(3, "QUEST_20033").pos,
		},
	},
}

return QuestClientData
