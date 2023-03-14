require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1585",
		Alias = "Npc1585",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2223.487,y = 203.2406,z = -520.4644}, rot = {x = 0,y = 177.1195,z = 0}, }, freestyle = 4110, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
