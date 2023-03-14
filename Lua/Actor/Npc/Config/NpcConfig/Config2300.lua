require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2300",
		Alias = "Npc2300",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1722.355,y = 246.2367,z = 610.8403}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1720.11,y = 246.2582,z = 613.2842}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 8040, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
