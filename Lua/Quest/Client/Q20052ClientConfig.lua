local QuestClientData = 
{
	MainID = 20052,

	ActorAlias = "20052",

	SubIDs = 
	{
		q2005201 = 2005201,
		q2005202 = 2005202,
	},

	TempNPCData = 
	{
		alias = "TempNPC",
		script = "Actor/Npc/TempNPC",
		id = 20004,
		pos = sceneData:GetDummyPoint(3, "Event_22100_NPC").pos,
		rot = sceneData:GetDummyPoint(0, "Event_22100_NPC").rot,
	},

	DP_Event_22100_NPC = sceneData:GetDummyPoint(3, "Event_22100_NPC").pos,
}

return QuestClientData
