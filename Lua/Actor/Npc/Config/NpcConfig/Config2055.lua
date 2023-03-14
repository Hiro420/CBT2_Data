require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2055",
		Alias = "Npc2055",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -574.7038,y = 229.1581,z = 373.5529}, rot = {x = 0,y = 277.0757,z = 0}, }, freestyle = 1170, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -667.5811,y = 220.0272,z = 221.4828}, rot = {x = 0,y = 342.5456,z = 0}, }, freestyle = 8063, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
