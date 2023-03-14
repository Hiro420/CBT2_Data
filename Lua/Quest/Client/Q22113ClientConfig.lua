local QuestClientData = 
{
	MainID = 22113,

	ActorAlias = "22113",

	SubIDs = 
	{
		q2211301 = 2211301,
		q2211302 = 2211302,
		q2211303 = 2211303,
		q2211304 = 2211304,
		q2211305 = 2211305,
	},

	Actors = 
	{
		NpcData = 
		{
			alias = "Npc220201",
			script = "Actor/Npc/TempNPC",
			id = 220201,
			point = sceneData:GetDummyPoint(3, "Event_26700_01"),
			NewTransfrom = sceneData:GetDummyPoint(3, "Event_26700_03"),
			BlackScreenText = "QUEST_Message_Q2211201",
		},
	},

	Datas = 
	{
	},
}

return QuestClientData
