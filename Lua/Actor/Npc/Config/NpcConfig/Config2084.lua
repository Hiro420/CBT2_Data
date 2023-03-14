require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2084",
		Alias = "Npc2084",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -619.5469,y = 226.6651,z = 334.0978}, rot = {x = 0,y = 222.41,z = 0}, }, freestyle = 1130, time = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
