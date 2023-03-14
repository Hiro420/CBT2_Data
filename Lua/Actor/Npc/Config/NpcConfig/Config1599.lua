require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1599",
		Alias = "Npc1599",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 1008, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -4.411755,y = 0.02498571,z = 31.9575}, rot = {x = 0,y = 358.6281,z = 0}, }, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
