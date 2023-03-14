local QuestClientData = 
{
	MainID = 22112,

	ActorAlias = "22112",

	SubIDs = 
	{
		q2211201 = 2211201,
		q2211202 = 2211202,
		q2211203 = 2211203,
		q2211204 = 2211204,
		q2211205 = 2211205,
	},

	Actors = 
	{
		NpcData = 
		{
			alias = "Npc220201",
			script = "Actor/Npc/TempNPC",
			id = 220201,
			point = sceneData:GetDummyPoint(3, "Event_26600_01"),
			NewTransfrom = sceneData:GetDummyPoint(3, "Event_26600_02"),
			BlackScreenText = "QUEST_Message_Q2211201",
		},
	},

	Datas = 
	{
	},
}

return QuestClientData
