require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1628",
		Alias = "Npc1628",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -579.0488,y = 226.0424,z = 1315.594}, rot = {x = 0,y = 197.1281,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
